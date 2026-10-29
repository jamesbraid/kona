"""Write the per-token comments of GE.h: one labelled, cited entry per host token.

Usage: ge_token_comments.py [GE_H]     default: GE.h

Rewrites three parts of GE.h (IRIX 6.5.30m throughout):

  enum kona_hp_token        the 512 host tokens 0x000-0x1ff
  enum kona_kpm_spare_token kpm's name-table rows 0x200-0x20f
  the shadow-row block      kpm's name-table rows 0x210-0x268, between the
                            "shadow rows" marker comments

Each entry is a comment paragraph that ends on the line above its enumerator
(or stands alone, for the shadow rows). It states what the token carries and
what the pipe does with it (the ROLES table below, read by hand from the cited
code), then the routing facts this script takes from the tables extracted from
the shipped programs:

  ucode/icu_map.tsv        the firmware's token map: ARM handler, or routed
                           with word count, command number and type
  ucode/arm1_handlers.tsv  the ARM handler's address and the engine handlers
                           its code names
  ucode/ged_route.tsv      a routed token's distributor entry and handlers
  ucode/hw_route.tsv       the engine handler bound to a routed command number
  ucode/befshadow.tsv      the shadow word behind each kpm row past 0x20f
  ucode/arm1.s             the arm1.u code that writes each shadow word
  libglcore/payloads.tsv   the payload words libGLcore stores, and where

Lines are wrapped so that no comment line names more than three identifiers
(the inventory's rule: a line naming more documents none of them). Every
generated comment is replaced on each run; change ROLES, not GE.h.
"""
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from inventory import line_items  # noqa: E402  (the inventory's own item count)

WIDTH = 78
MAX_ITEMS = 3

# token -> label, payload words, what the words carry, what the pipe does,
# where it was read, who sends it. Read by hand from the cited addresses in
# arm1.u, ge.u, ged1b.u and the senders; the label is established when every
# claim was read from code, inferred when one rests on reasoning.
ROLES_TSV = r"""
"""

# kpm rows 0x210-0x268: what the mirrored raster register holds, read from
# the field names kpm's register table gives it (RM.h).
SHADOW_TSV = r"""
0x210	host-interface pack mode, the 7-bit byte-packing setting of a pixel read-back
0x211	host output-DMA line length of a pixel read-back
0x212	host output-DMA line stride of a pixel read-back
0x213	first scissor word, the x minimum and maximum the pixel and texture generators clip to
0x214	second scissor word, the y minimum and maximum
0x215	first of eight words with start and step fields in x and y and two ZX and ZY fields
0x216	second of the eight start-and-step words that begin at 0x3fc4
0x217	third of the eight start-and-step words that begin at 0x3fc4
0x218	fourth of the eight start-and-step words that begin at 0x3fc4
0x219	fifth of the eight start-and-step words that begin at 0x3fc4
0x21a	sixth of the eight start-and-step words that begin at 0x3fc4
0x21b	seventh of the eight start-and-step words that begin at 0x3fc4
0x21c	eighth of the eight start-and-step words that begin at 0x3fc4
0x21d	first word of the pixel draw rectangle (origin, width, scan direction, zoom and cache enables)
0x21e	second word of the pixel draw rectangle
0x21f	third word of the pixel draw rectangle
0x220	first word of the generator buffer sizes (point, line and triangle buffer sizes, image width and height)
0x221	second word of the generator buffer sizes
0x222	third word of the generator buffer sizes
0x223	fourth word of the generator buffer sizes
0x224	generator enables: texture generator, scan, ZPU and draw-pixels path
0x225	first multisample location word, the x and y offsets of sample positions 0 to 7
0x226	second multisample location word
0x227	pixel generator general mode (flat shading enable, direction mask)
0x228	pixel generator point specification (point width and height)
0x229	pixel generator bloat value used for wide primitives
0x22a	pixel generator depth offset
0x22b	pixel generator sample-mask and rasterisation-rule controls for lines, triangles and points
0x22c	window x offset added to screen coordinates
0x22d	window y offset added to screen coordinates
0x22e	pixel generator sample mask
0x22f	first stipple word (enable, offset, invert, two pattern halves, x and y modulus)
0x230	second stipple word
0x231	third stipple word
0x232	fourth stipple word
0x233	pixel generator PRU field
0x234	image-processor configuration: pixel size, colour format, per-channel write masks, read format
0x235	image-processor operation: draw buffer, clear packet controls, read-back and depth options
0x236	image-processor multisample control: enable, sample count and mask operation
0x237	image-processor window clip: enable, reference and mask of the window-id test
0x238	image-processor stencil set-up: enable, size, function, reference, mask and write mask
0x239	image-processor stencil operations and depth test: fail and pass actions, depth enable, size, function and write mask
0x23a	image-processor depth clear value
0x23b	image-processor framebuffer layout: colour, multisample, stencil, depth and accumulation base addresses
0x23c	image-processor blend and logic-op control: enables, equations and source and destination factors
0x23d	first image-processor per-bit write mask word (red, green, blue, alpha)
0x23e	second image-processor per-bit write mask word
0x23f	common input pixel format (pack field) used by read and texture-read paths
0x240	texture-load mode: texel size, scissor enable, target bank, tiling and s and t widths
0x241	texture-load first s start and r start
0x242	texture-load s and t start
0x243	texture-load s, t and r sizes
0x244	texture-load s and t end
0x245	texture-load global offset in texture memory
0x246	texture-draw global offset in texture memory
0x247	texture-memory geometry (s and t address bits)
0x248	texture-generator and texture-memory texture size and address-control (wrap) fields for s, t and r
0x249	texture mode word: minify and magnify filters, environment, texel format and related enables
0x24a	minimum and maximum mipmap level
0x24b	level-of-detail scale in s and t
0x24c	level-of-detail scale in r
0x24d	detail and clip-map texture sizes, clip level offset and clip enable
0x24e	texture-memory detail-map address
0x24f	texture-memory texture size and address-control fields
0x250	clip-map s and t offsets in texture memory
0x251	clip-map break point
0x252	clip-map s centre
0x253	clip-map t centre
0x254	texel scale-and-bias enables per component
0x255	per-component texel scale
0x256	per-component texel bias
0x257	texture colour lookup table: address, component count and enable
0x258	shadow-texture ambient value
0x259	texture-memory redundancy setting
0x25a	texture generator priority and compression
0x25b	alpha test: reference value, comparison and enable
0x25c	texture enable in the texture filter
0x25d	texture environment: colour and alpha combine functions
0x25e	texture environment constant colour, red and green
0x25f	texture environment constant colour, blue and alpha
0x260	texture filter base and template controls (DGBASE, DGTPL fields)
0x261	alpha-to-mask fade lookup entries
0x262	fog mode: colour and fog modes, table address, offset and enable bits
0x263	fog colour, red and green
0x264	fog colour, blue
0x265	fog depth offset
0x266	texture filter output pixel format
0x267	texture filter colour format
0x268	alpha mask controls: alpha-to-mask, fade mask and alpha-to-one enables
"""

TYPES = {'2': 'single floats', '3': 'doubles', '0': 'untyped words', '1': 'type 1'}


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


def table(text, cols):
    out = {}
    for ln in text.strip('\n').split('\n'):
        if not ln.strip() or ln.startswith('token\t'):
            continue
        f = ln.split('\t')
        f += [''] * (len(cols) - len(f))
        out[f[0]] = dict(zip(cols, f))
    return out


def wrap(text, indent=''):
    """Comment lines for one paragraph: at most WIDTH columns and MAX_ITEMS
    identifiers a line, closed on its last text line."""
    lines, cur = [], []
    for w in text.split():
        trial = cur + [w]
        s = ' '.join(trial)
        if cur and (len(indent) + 3 + len(s) > WIDTH or line_items(s) > MAX_ITEMS):
            lines.append(' '.join(cur))
            cur = [w]
        else:
            cur = trial
    if cur:
        lines.append(' '.join(cur))
    out = []
    for i, ln in enumerate(lines):
        lead = '/* ' if i == 0 else ' * '
        tail = ' */' if i == len(lines) - 1 else ''
        out.append(indent + lead + ln + tail)
    return out


def sentence(s):
    s = s.strip()
    if s and s[-1] not in '.!?':
        s += '.'
    return s[:1].upper() + s[1:] if s else s


def count_words(n):
    return '%d word%s' % (n, '' if n == 1 else 's')


def code(name):
    return '`%s`' % name


def token_text(tok, kpm, icu, arm, ged, hw, pay, roles):
    e = icu.get(tok)
    r = roles.get(tok)
    # without a role read by hand, the routing facts carry no label
    est = 'Established: ' if r else 'Route: '
    parts = []
    aside = ''
    if r:
        parts.append('%s (%s). %s: %s' % (code(kpm), tok, r['label'].strip().capitalize(), sentence(r['action'])))
        w, c = r['words'].strip(), r['carries'].strip()
        if w or c:
            parts.append(sentence('Payload %s%s' % (w, (': ' + c) if c else '')))
    else:
        parts.append('%s (%s).' % (code(kpm), tok))
    if e and e['route'] == 'arm':
        a = arm.get(tok, {})
        s = est + 'the token map runs %s at arm1.u %s' % (code(e['arm_handler']), a.get('address', '?'))
        if a.get('group') == 'unsupported':
            s += ', a stub that ends in %s' % code('arm_badcmd')
        elif a.get('ge_handlers'):
            h = a['ge_handlers'].split(',')
            aside = 'Engine handlers whose slots the code of %s loads, in order: %s.' % (
                code(e['arm_handler']), ', '.join(code(x) for x in h))
        parts.append(s + '.')
    elif e:
        n = int(e['bits6_10'] or 0) or 32
        s = (est + 'routed by the host interface with no ARM code, map entry %s: command %s, '
             'count field %d, %s' % (e['entry'], e['bits15_23'], n,
                                     TYPES.get(e['bits29_30'], 'type ' + e['bits29_30'])))
        h = hw.get(tok, {})
        d = ged.get(tok, {})
        if d.get('bound') == 'yes' and h.get('bound'):
            s += '; engine handler %s (index %s of the handler table)' % (code(h['bound']), h['index'])
        elif d.get('source'):
            s += '; distributor entry %s at ged1b.u %s:%s' % (d['entry'], d['source'], d['line'])
            if d.get('handlers'):
                aside = 'Engine handlers relocated into the span of distributor entry %s: %s.' % (
                    d['entry'], ', '.join(code(x) for x in d['handlers'].split(',')))
        parts.append(s + '.')
    p = pay.get(tok)
    if p:
        parts.append(est + 'libGLcore.so %s stores %s after the token.' % (
            code(p['function']), count_words(int(p['words']))))
    if r and r['emitter'].strip():
        parts.append(sentence('Sent by ' + r['emitter'].strip()))
    if r and r['cite'].strip():
        parts.append(sentence('Read at ' + r['cite'].strip()))
    return aside, ' '.join(parts)


def spare_text(tok, kpm):
    v = int(tok, 16)
    s = ('kpm row %s, printed as "%s". Inferred: the row names shadow slot 0x%x and no host token, '
         'because the firmware token map (built by arm1.u at 0x0c001c60) has 512 entries and ends at '
         '0x1ff.' % (tok, kpm, v - 0x100))
    aside = ''
    if v == 0x20f:
        s += (' Established: slot 0x10f is the high half of the address word 0x010f087f, a write to '
              'raster register 0x87f that the shadow does not keep, loaded at arm1.u 0x0c02926c and '
              '0x0c035a90.')
        aside = 'The two loads of 0x010f087f sit in `PixelRestore` and `XPixelRestore`.'
    return aside, s


def shadow_text(tok, kpm, sh, gloss, writers):
    i = int(tok, 16) - 0x210
    w = sh.get(str(i), {})
    s = ('%s (kpm row %s). Established: names word %d of the geometry board register shadow, which '
         'mirrors raster register %s (arm1.u table at 0x04067c0c, start-up value %s).' % (
             code(kpm), tok, i, w.get('addr', '?'), w.get('init', '?')))
    g = gloss.get(tok)
    if g:
        s += ' Inferred from its kpm field names: %s.' % g['what']
    ws = writers.get(tok, [])
    aside = ''
    if ws:
        s += (' Established: arm1.u code writes it through slot 0x%x, loading that address word at %d '
              'place%s, first at %s.' % (0x110 + i, len(ws), '' if len(ws) == 1 else 's', ws[0][1]))
        aside = 'Functions that load the slot 0x%x address word: %s.' % (
            0x110 + i, ', '.join('%s (%s)' % (code(f), a) for f, a in ws))
    else:
        s += (' Established: no arm1.u code loads its slot 0x%x address word; the ARM reaches it only '
              'in its loops over all 89 words (start-up, context load and one diagnostic case).' % (0x110 + i))
    return s, aside


def shadow_writers():
    """kpm row -> [(function, address)] of the arm1.u code that loads the
    address word (0x110 + i) << 16 | register for shadow word i."""
    sh = rows('ucode/befshadow.tsv')
    want = {}
    for i, w in sh.items():
        want[(0x110 + int(i)) << 16 | (int(w['addr'], 16) & 0x7fff)] = '0x%03x' % (0x210 + int(i))
    out = {}
    func = None
    for ln in open('ucode/arm1.s'):
        m = re.match(r'^([A-Za-z_]\w*):$', ln.strip())
        if m:
            func = m.group(1)
            continue
        for c in re.findall(r'=0x([0-9a-f]{8})', ln):
            t = want.get(int(c, 16))
            if t and func not in [f for f, _ in out.get(t, [])]:
                out.setdefault(t, []).append((func, '0x' + ln.split(':')[0]))
    return sh, out


def main():
    path = sys.argv[1] if len(sys.argv) > 1 else 'GE.h'
    icu = rows('ucode/icu_map.tsv')
    arm = rows('ucode/arm1_handlers.tsv')
    ged = rows('ucode/ged_route.tsv')
    hw = rows('ucode/hw_route.tsv')
    pay = rows('libglcore/payloads.tsv')
    kpm = {}
    for ln in open('diags/kpm/hp_commands.tsv'):
        f = ln.rstrip('\n').split('\t')
        if len(f) >= 3 and f[1].startswith('0x'):
            kpm[f[1]] = f[2]
    roles = table(ROLES_TSV, ['token', 'label', 'words', 'carries', 'action', 'cite', 'emitter'])
    gloss = table(SHADOW_TSV, ['token', 'what'])
    sh, writers = shadow_writers()

    out = []
    enum = None
    in_shadow = False
    for ln in open(path).read().split('\n'):
        if ln.startswith('enum kona_hp_token') or ln.startswith('enum kona_kpm_spare_token'):
            enum = ln.split()[1]
            out.append(ln)
            continue
        if enum:
            if ln.startswith('}'):
                enum = None
                out.append(ln)
                continue
            m = re.match(r'(\s+)(KONA_HP_\w+)(\s+= 0x([0-9a-f]{3}),)', ln)
            if not m:
                continue                                    # an old generated comment or a blank
            tok = '0x' + m.group(4)
            name = kpm.get(tok, m.group(2))
            if not out[-1].rstrip().endswith('{'):
                out.append('')
            if enum == 'kona_hp_token':
                aside, text = token_text(tok, name, icu, arm, ged, hw, pay, roles)
            else:
                aside, text = spare_text(tok, name)
            if aside:
                # a separate, unlabelled paragraph: it names code it does not explain
                out.extend(wrap(aside, m.group(1)))
                out.append('')
            out.extend(wrap(text, m.group(1)))
            out.append(m.group(1) + m.group(2) + m.group(3))
            continue
        if ln.startswith('/* ge_token_comments: shadow rows begin'):
            in_shadow = True
            out.append(ln)
            for v in range(0x210, 0x269):
                tok = '0x%03x' % v
                text, aside = shadow_text(tok, kpm.get(tok, '?'), sh, gloss, writers)
                out.append('')
                out.extend(wrap(text))
                if aside:
                    out.append('')
                    out.extend(wrap(aside))
            out.append('')
            continue
        if in_shadow:
            if ln.startswith('/* ge_token_comments: shadow rows end'):
                in_shadow = False
                out.append(ln)
            continue
        out.append(ln)
    open(path, 'w').write('\n'.join(out))


if __name__ == '__main__':
    main()
