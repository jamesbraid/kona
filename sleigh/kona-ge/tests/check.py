#!/usr/bin/env python3
"""Compare the KONA-GE Ghidra module's output with the documents.

Usage: check.py [OUTDIR]   (default .cache/kona-ge; run-ghidra.sh writes it)

  (a) every listed word of ucode/KONA/ge.u: Ghidra's fields equal those of
      scripts/ge_disasm.py (ucode/ge_listing/), field for field;

Prints one line per test and the failures; exits non-zero if any test fails.
"""
import collections
import glob
import os
import re
import sys

OUT = sys.argv[1] if len(sys.argv) > 1 else '.cache/kona-ge'
LST = re.compile(r'^([0-9a-f]{4}): ([0-9a-f]{18}) f\d+\s+(.*?)(?:  ; .*)?$')
XF_PY = re.compile(r'xfer(\d)(\.rel)? c(\d+) cc=([0-9a-f]+) -> ([0-9a-f]+)(?: <[^>]*>)?')
XF_GH = re.compile(r'xfer0x([0-9a-f]+)(\.rel)?\s+c0x([0-9a-f]+)\s+cc=0x([0-9a-f]+)\s+->\s+0x([0-9a-f]+)')
KV = re.compile(r'\b([A-Za-z][A-Za-z0-9]*)=(0x[0-9a-f]+(?::0x[0-9a-f]+)?|[0-9a-f]+)')


def fields(text, ghidra):
    """Transfer tuple and {group: value} from one listing's instruction text."""
    xf = (XF_GH if ghidra else XF_PY).search(text)
    t = None
    if xf:
        op, rel, grp, cc, tgt = xf.groups()
        t = (int(op, 16 if ghidra else 10), bool(rel), int(grp, 16 if ghidra else 10),
             int(cc, 16), int(tgt, 16))
        text = text[:xf.start()] + text[xf.end():]
    kv = {}
    for k, v in KV.findall(text):
        if ':' in v:
            hi, lo = v.split(':')
            kv[k] = (int(hi, 16) << 32) | int(lo, 16)
        else:
            kv[k] = int(v, 16)
    return t, kv


def ghidra_listing(path):
    res = {}
    for line in open(path):
        a, w, text = line.rstrip('\n').split('\t')
        res[int(a, 16)] = (w, text)
    return res


def test_a():
    gh = ghidra_listing(os.path.join(OUT, 'prod.listing'))
    n = bad = 0
    shown = []
    for f in sorted(glob.glob('ucode/ge_listing/*.lst')):
        for line in open(f):
            m = LST.match(line.rstrip('\n'))
            if not m:
                continue
            a, w, text = int(m.group(1), 16), m.group(2), m.group(3)
            n += 1
            gw, gtext = gh.get(a, ('', '<missing>'))
            mn, _, rest = gtext.partition(' ')
            ok = gw == w and gtext != '<none>'
            if ok:
                if text == 'nop':
                    ok = fields(rest, True) == (None, {}) and mn.lstrip('_') == 'nop'
                else:
                    ok = fields(text, False) == fields(rest, True)
            if not ok:
                bad += 1
                if len(shown) < 5:
                    shown.append('  %04x py: %s\n       gh: %s %s' % (a, text, gw, gtext))
    print('(a) %s: %d of %d listed words match field for field' % ('PASS' if not bad and n else 'FAIL',
                                                                    n - bad, n))
    for s in shown:
        print(s)
    return not bad and n > 0


def test_imports():
    """ge11.u and ge.hex import to the same words as ge.u; ge_diag_init too."""
    ok = True
    base = ghidra_listing(os.path.join(OUT, 'prod.listing'))
    for name, ref in (('ge11.u', base), ('ge.hex', base), ('ge_diag_init.hex', None)):
        p = os.path.join(OUT, name + '.listing')
        got = ghidra_listing(p) if os.path.exists(p) else {}
        if ref is None:
            good = len(got) == 283 and all(t != '<none>' for _, t in got.values())
        else:
            good = got == ref
        ok &= good
        print('(import) %s %s: %d words' % ('PASS' if good else 'FAIL', name, len(got)))
    return ok


def main():
    results = [test_a(), test_imports()]
    sys.exit(0 if all(results) else 1)


if __name__ == '__main__':
    main()
