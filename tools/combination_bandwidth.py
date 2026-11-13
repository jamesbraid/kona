"""Evaluate the video-bandwidth check of a combination, as the shipped X module does.

Usage: combination_bandwidth.py [--class C] FILE.cmb [FILE.cmb ...]
       combination_bandwidth.py [--class C] --mix FMT[*N],FMT[*N],... [--align]

Ports the sums of `vfmtIsKonaCombinationValidForTarget` (kona.so, IRIX 6.5.30m,
0x428590-0x428fec) that decide "Video bandwidth exceeded" (devices/dg/README.md, "Video
bandwidth check"). Channel fields come from the .cmb; the format fields the check
reads (swaps per frame, fields per frame, the first field's line skip, old-style
stereo) come from the .vfo the channel names, found next to the .cmb under
../vfo. The raster-manager count and the resolved pixel depth feed only the
cycle total the routine prints, not the verdict, so neither is an input.

--class is the target's board-set class (0, 1, 2 or 3; class 2 forces four
tiles per request and uses a different request capacity).

--mix builds a combination without a file: each FMT is a .vfo name without the
extension (for example 1024x768_60 or 640x480_60*6), run at its own size and
frame rate with the other fields of the shipped 8@640x480_60 combination. The
channels are packed left to right in rows 2560 pixels wide; with --align each
origin is rounded up to a multiple of 160 (the tile width).

Output per combination: the three load percentages (requests, data bits,
pixels) and the verdict.
"""
import argparse
import os
import struct
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import sdb_dump  # noqa: E402


def f32(x):
    return struct.unpack('>f', struct.pack('>f', x))[0]


def tdiv(a, b):
    """C integer division (truncates toward zero)."""
    q = abs(a) // abs(b)
    return q if (a >= 0) == (b >= 0) else -q


def tmod(a, b):
    return a - tdiv(a, b) * b


def load_vfo(path, cache={}):
    if path not in cache:
        _, _, v = sdb_dump.load(path)
        cache[path] = v
    return cache[path]


def loads(v, vfo_dir, cls):
    """The three sums of the check, as percentages of their capacities."""
    fast = f32(v['fastlistChunksize'][0])
    s_req = s_bits = s_pix = 0.0
    scaled = False
    for k in range(15):
        p = 'ch%d' % k
        if p + 'Enable' not in v or not v[p + 'Enable'][0]:
            continue
        fmt = load_vfo(os.path.join(vfo_dir, v[p + 'FormatName'][0]))
        w, h_raw = v[p + 'MaxSize'][0], v[p + 'MaxSize'][1]
        if fmt.get('OldStyleStereo', [0])[0]:
            h = tdiv(h_raw, 2)
        else:
            h = tdiv(h_raw, fmt['FieldLineSkip'][0] + 1)
        rate = f32(f32(float(fmt['SwapsPerFrame'][0])) * f32(v[p + 'FrameRate'][0]))
        swaps_per_frame = int(rate / f32(v[p + 'FrameRate'][0]))
        fields_per_swap = tdiv(fmt['FieldsPerFrame'][0], swaps_per_frame)
        pf = v[p + 'PixelFormat'][0]
        if pf in (0, 4):
            bits = 32
        elif pf in (1, 2, 3):
            bits = 42
        else:
            raise SystemExit('illegal pixel format %d' % pf)
        tiles = (w + tmod(v[p + 'InputOrigin'][0], 160) + 159) // 160
        if v[p + 'PlacementRes'][0] == 1 or tiles != (w + 159) // 160:
            tiles += 1
        max_req = 4 if cls == 2 else v[p + 'MaxTilesPerRequest'][0]
        if max_req <= 0:
            raise SystemExit('illegal MaxTilesPerRequest')
        requests = (max_req + tiles - 1) // max_req
        pixels = int(float(w * h) * ((fast / 31.0 * 9.0) + 102.0) / 100.0)
        if v[p + 'SourceChannel'][0] == k:
            s_req += float(fields_per_swap * requests * h) * rate
            s_bits += float(fields_per_swap * bits * tiles * h * 160) * rate
            s_pix += float(fields_per_swap * pixels) * rate
        out, inp = v[p + 'OutputSize'], v[p + 'InputSize']
        if out[0] < inp[0] or out[1] < inp[1]:
            scaled = True
    base = 62500000.0 if scaled else 75000000.0
    cap = base * 4.0 / 5.0
    factor = 0.006060606060606061 if cls == 2 else 0.01
    caps = [c * (1.0 - 8.0 / 100.0) for c in (cap * factor, cap * 160.0, base * 4.0)]
    return [s_req * 100.0 / caps[0], s_bits * 100.0 / caps[1], s_pix * 100.0 / caps[2]]


def mix(spec, template, align):
    """A combination of the listed formats in the layout of the template file."""
    _, _, v = sdb_dump.load(template)
    vfo_dir = os.path.join(os.path.dirname(os.path.abspath(template)), '..', 'vfo')
    names = []
    for part in spec.split(','):
        name, _, n = part.partition('*')
        names += [name] * int(n or 1)
    x = y = row_h = 0
    for k in range(15):
        p = 'ch%d' % k
        if p + 'Enable' not in v:
            continue
        if k >= len(names):
            v[p + 'Enable'] = [0]
            continue
        fmt = load_vfo(os.path.join(vfo_dir, names[k] + '.vfo'))
        w, h = fmt['ActivePixelsPerLine'][0], fmt['ActiveLinesPerFrame'][0]
        if align:
            x = (x + 159) // 160 * 160
        if x + w > 2560:
            x, y, row_h = 0, y + row_h, 0
        v[p + 'FormatName'] = [names[k] + '.vfo']
        v[p + 'SourceChannel'] = [k]
        v[p + 'InputOrigin'] = [x, y]
        for f in ('InputSize', 'MaxSize', 'OutputSize'):
            v[p + f] = [w, h]
        v[p + 'FrameRate'] = [float(fmt['FramesPerSecond'][0])]
        x, row_h = x + w, max(row_h, h)
    return v, vfo_dir


def main(argv):
    ap = argparse.ArgumentParser()
    ap.add_argument('--class', dest='cls', type=int, default=1, choices=(0, 1, 2, 3))
    ap.add_argument('--mix')
    ap.add_argument('--align', action='store_true')
    ap.add_argument('files', nargs='*')
    a = ap.parse_args(argv)
    jobs = []
    if a.mix:
        tmpl = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..',
                            'root/usr/gfx/ucode/KONA/dg4/cmb/8@640x480_60.cmb')
        v, vd = mix(a.mix, tmpl, a.align)
        jobs.append((a.mix + (' aligned' if a.align else ' packed'), v, vd))
    for f in a.files:
        _, _, v = sdb_dump.load(f)
        jobs.append((os.path.basename(f), v, os.path.join(os.path.dirname(os.path.abspath(f)), '..', 'vfo')))
    for name, v, vd in jobs:
        pct = loads(v, vd, a.cls)
        print('%-44s class %d  requests %6.1f%%  bits %6.1f%%  pixels %6.1f%%  %s' % (
            name, a.cls, pct[0], pct[1], pct[2],
            'REJECT (video bandwidth exceeded)' if max(pct) > 100.0 else 'accept'))
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv[1:]))
