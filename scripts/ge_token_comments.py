"""Comment each host-token enumerator in GE.h with its route and payload.

Usage: ge_token_comments.py [GE_H]     default: GE.h

For every `KONA_HP_<name> = 0x...,` line of `enum kona_hp_token` that has no
comment yet, appends one built from tables read from the shipped programs
(IRIX 6.5.30m):

  ucode/icu_map.tsv        the firmware's token map: ARM handler, or routed
                           with word count (bits 6-10), command number
                           (bits 15-23) and type (bits 29-30)
  ucode/arm1_handlers.tsv  the ARM handler's group and the engine handlers
                           its code names
  ucode/ged_route.tsv      a routed token's distributor entry and handler
  ucode/hw_route.tsv       the handler-table entry for bound command numbers
  libglcore/payloads.tsv   the payload words libGLcore stores, and where

Lines that already carry a comment are left alone, so hand-written comments
win. Rerun after the tables change; delete a generated comment to refresh it.
"""
import re
import sys


def rows(path, key=0):
    out = {}
    hdr = None
    for line in open(path):
        if line.startswith('#'):
            continue
        f = line.rstrip('\n').split('\t')
        if hdr is None:
            hdr = f
            continue
        out.setdefault(f[key], dict(zip(hdr, f)))
    return out


def main():
    path = sys.argv[1] if len(sys.argv) > 1 else 'GE.h'
    icu = rows('ucode/icu_map.tsv')
    arm = rows('ucode/arm1_handlers.tsv')
    ged = rows('ucode/ged_route.tsv')
    hw = rows('ucode/hw_route.tsv')
    pay = rows('libglcore/payloads.tsv')
    types = {'2': 'single', '3': 'double', '0': 'untyped', '1': 'type 1'}
    lines = open(path).read().split('\n')
    inside = False
    for i, ln in enumerate(lines):
        if ln.startswith('enum kona_hp_token'):
            inside = True
            continue
        if inside and ln.startswith('}'):
            break
        m = re.match(r'(\s+KONA_HP_\w+\s+= 0x([0-9a-f]{3}),)\s*$', ln)
        if not inside or not m:
            continue
        tok = '0x' + m.group(2)
        e = icu.get(tok)
        if not e:
            continue
        if e['route'] == 'arm':
            a = arm.get(tok, {})
            g = a.get('group', '')
            if g == 'unsupported':
                c = 'ARM %s: refused, ends in the error handler' % e['arm_handler']
            elif g == 'ignored':
                c = 'ARM %s: accepted and ignored' % e['arm_handler']
            else:
                c = 'ARM %s (%s)' % (e['arm_handler'], g)
                if a.get('ge_handlers'):
                    h = a['ge_handlers'].split(',')
                    c += ', sends %s%s' % (' '.join(h[:3]), ' +%d' % (len(h) - 3) if len(h) > 3 else '')
        else:
            n = int(e['bits6_10'] or 0) or 32
            c = 'routed: command %s, %d word%s, %s' % (e['bits15_23'], n, '' if n == 1 else 's',
                                                      types.get(e['bits29_30'], 'type ' + e['bits29_30']))
            h = hw.get(tok, {})
            d = ged.get(tok, {})
            if d.get('bound') == 'yes' and h.get('bound'):
                c += ', engine handler %s' % h['bound']
            elif d.get('source'):
                c += ', distributor entry %s at %s:%s' % (d['entry'], d['source'], d['line'])
                if d.get('handlers'):
                    c += ' (%s)' % d['handlers'].replace(',', ' ')
        p = pay.get(tok)
        if p:
            c += '; libGLcore %s stores %s word%s' % (p['function'], p['words'], '' if p['words'] == '1' else 's')
        lines[i] = '%s  /* %s */' % (m.group(1), c)
    open(path, 'w').write('\n'.join(lines))


if __name__ == '__main__':
    main()
