"""generated from defs/query.toml by defs-gen - do not edit, change the source
host query tokens of the InfiniteReality2 pipe"""

UNIT = 'query'
REGISTERS = {}
WORDS = {}
FIELDS = {}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'BOARD_CONFIGURATION_BLOCK': {'value': 489, 'count': 1, 'stride': 1}, 'CLIP_PLANE': {'value': 60, 'count': 1, 'stride': 1}, 'COLOUR_TABLE': {'value': 234, 'count': 1, 'stride': 1}, 'COLOUR_TABLE_PARAMETERS': {'value': 236, 'count': 1, 'stride': 1}, 'CONVOLUTION_FILTER': {'value': 244, 'count': 1, 'stride': 1}, 'CURRENT_VERTEX_ATTRIBUTES': {'value': 59, 'count': 1, 'stride': 1}, 'DEFORMATION_STATE': {'value': 454, 'count': 1, 'stride': 1}, 'ENGINE_SIDE_TEXTURE_ATTRIBUTES': {'value': 308, 'count': 1, 'stride': 1}, 'ENGINE_TRANSFORM_ATTRIBUTES': {'value': 459, 'count': 1, 'stride': 1}, 'HISTOGRAM': {'value': 260, 'count': 1, 'stride': 1}, 'HISTOGRAM_PARAMETERS': {'value': 261, 'count': 1, 'stride': 1}, 'LIGHT': {'value': 65, 'count': 1, 'stride': 1}, 'LINE_MODE_LIMIT_TABLE': {'value': 238, 'count': 1, 'stride': 1}, 'MATERIAL': {'value': 70, 'count': 1, 'stride': 1}, 'MIN_MAX_PARAMETERS': {'value': 266, 'count': 1, 'stride': 1}, 'MIN_MAX_RESULTS': {'value': 265, 'count': 1, 'stride': 1}, 'PENDING_ERROR': {'value': 62, 'count': 1, 'stride': 1}, 'PIXEL_MAP': {'value': 72, 'count': 1, 'stride': 1}, 'PIXEL_TRANSFORM_PARAMETERS': {'value': 250, 'count': 1, 'stride': 1}, 'POLYGON_STIPPLE': {'value': 75, 'count': 1, 'stride': 1}, 'RASTER_POSITION_STATE': {'value': 61, 'count': 1, 'stride': 1}, 'SEPARABLE_FILTER': {'value': 247, 'count': 1, 'stride': 1}, 'STATE': {'value': 76, 'count': 1, 'stride': 1}, 'TEXTURE_ENVIRONMENT': {'value': 77, 'count': 1, 'stride': 1}, 'TEXTURE_GENERATION': {'value': 80, 'count': 1, 'stride': 1}, 'TEXTURE_IMAGE': {'value': 82, 'count': 1, 'stride': 1}}
TESTS = []


def decode(name, value):
    """Field name -> value for a register or word."""
    return {f: (value >> lo) & ((1 << (hi - lo + 1)) - 1) for f, (hi, lo) in FIELDS[name].items()}


def encode(name, **fields):
    v = 0
    for f, x in fields.items():
        hi, lo = FIELDS[name][f]
        if x >> (hi - lo + 1):
            raise ValueError('%s.%s: %d does not fit' % (name, f, x))
        v |= x << lo
    return v


def describe(name, value):
    """decode, with enum labels where the field has an enum."""
    out = {}
    for f, x in decode(name, value).items():
        e = ENUMS.get(FIELD_ENUM.get('%s.%s' % (name, f)))
        out[f] = e.get(x, x) if e else x
    return out


def selftest():
    for name, value, expect in TESTS:
        got = decode(name, value)
        for f, want in expect.items():
            assert got[f] == want, (name, hex(value), f, got[f], want)
    return len(TESTS)


if __name__ == '__main__':
    print('%s: %d vectors ok' % (UNIT, selftest()))
