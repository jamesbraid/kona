#!/usr/bin/env python3
"""Compare the KONA-GE Ghidra module's output with the documents.

Usage: check.py [OUTDIR]   (default .cache/kona-ge; run-ghidra.sh writes it)

  (a) every listed word of ucode/KONA/ge.u: Ghidra's fields equal those of
      scripts/ge_disasm.py (ucode/ge_listing/), field for field;
  (b) irsaudit's 172-word instruction test (ucode/ge_inst_results.tsv):
      each output word decodes as the output store, and each operation the
      operation table of ucode/ge_ops.md fixes decodes as that operation;

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


# Documented operation per expected index (ucode/ge_ops.md, operation table).
OPS = {48: 'iadd', 49: 'iadd', 50: 'iadd', 136: 'iadd', 137: 'and', 138: 'not', 139: 'or',
       140: 'isub', 141: 'xor', 142: 'mov', 143: 'movb', 144: 'fadd', 145: 'fmin', 146: 'fmax',
       147: 'fsub', 148: 'itof', 149: 'dadd', 151: 'dsub', 153: 'clamp', 154: 'clamp',
       155: 'clamp', 156: 'fmul', 157: 'fmov', 158: 'u2_0x5', 159: 'rcpstep', 160: 'rsqstep',
       161: 'dmul', 163: 'dmov', 165: 'u2_0x7', 167: 'rcpseed', 168: 'rsqseed',
       169: 'rcpseed', 170: 'rsqseed'}
OPS.update({i: 'fmul.iadd' for i in range(128, 136)})


def producer(gh, addr, reg):
    """Nearest earlier word whose unit result is written to register reg."""
    for a in range(addr - 1, max(addr - 400, -1), -1):
        if a not in gh:
            continue
        mn, _, rest = gh[a][1].lstrip('_').partition(' ')
        _, kv = fields(rest, True)
        m = kv.get('M', 0x6ff)
        u1, u2 = (m & 0x7f) != 0x7f, (m >> 7) != 0xd
        if (u1 and kv.get('Q', 0x1f) == reg) or (u2 and kv.get('P', 0x1f) == reg):
            return a, mn, kv
    return None, None, None


def test_b():
    gh = ghidra_listing(os.path.join(OUT, 'diag.listing'))
    rows = [l.rstrip('\n').split('\t') for l in open('ucode/ge_inst_results.tsv') if l[0].isdigit()]
    bad = []
    nops = 0
    for row in rows:
        i, a = int(row[0]), int(row[1], 16)
        mn, _, rest = gh[a][1].lstrip('_').partition(' ')
        _, kv = fields(rest, True)
        if not (mn in ('st', 'mov', 'movb', 'fmov') and kv.get('r213') == 3 and kv.get('B') in (9, 10, 11)
                and kv.get('M') in (0x6ca, 0x6cb, 0x27f)):
            bad.append('  out %d @%04x: %s' % (i, a, gh[a][1]))
            continue
        if i not in OPS:
            continue
        nops += 1
        reg = kv.get('r148', 0) >> 5
        pa, pmn, pkv = producer(gh, a, reg)
        want = OPS[i]
        if want in ('rcpseed', 'rsqseed'):
            # The seed reaches a register through the unit-2 move r110 = 0x68d.
            if pkv is None or pkv.get('r110') != 0x68d:
                bad.append('  op %d: no seed move before %04x' % (i, a))
                continue
            for b in range(pa - 1, pa - 40, -1):
                bmn = gh.get(b, ('', ''))[1].lstrip('_').split(' ')[0]
                if bmn in ('rcpseed', 'rsqseed'):
                    pa, pmn = b, bmn
                    break
        if pmn != want:
            bad.append('  op %d (out @%04x, R%d): want %s, got %s @%s' % (
                i, a, reg, want, pmn, '%04x' % pa if pa is not None else '-'))
    ok = not bad and len(rows) == 172
    print('(b) %s: %d output words, %d documented operations; %d mismatches' % (
        'PASS' if ok else 'FAIL', len(rows), nops, len(bad)))
    for s in bad[:12]:
        print(s)
    return ok


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
    results = [test_a(), test_b(), test_imports()]
    sys.exit(0 if all(results) else 1)


if __name__ == '__main__':
    main()
