"""generated from devices/dacidx/registers.toml by defs-gen - do not edit, change the source
video DAC and encoder indexed registers"""

UNIT = 'dacidx'
REGISTERS = {}
WORDS = {'COMMAND_1': {'width': 32, 'grade': 'inferred'}, 'COMMAND_2': {'width': 32, 'grade': 'inferred'}, 'CURSOR_CONTROL': {'width': 32, 'grade': 'established'}}
FIELDS = {'COMMAND_1': {'bypass_colour': (7, 6), 'palette_select': (5, 4), 'addr_high': (3, 3), 'calibrate': (0, 0)}, 'COMMAND_2': {'colour_mode': (7, 4), 'pedestal': (3, 3), 'sync_on_green': (2, 2)}, 'CURSOR_CONTROL': {'interlace': (3, 3), 'enable': (2, 2), 'mode': (1, 0)}}
ENUMS = {'CURSOR_CONTROL.mode': {1: 'x11', 2: 'xga'}}
FIELD_ENUM = {'CURSOR_CONTROL.mode': 'CURSOR_CONTROL.mode'}
CONSTANTS = {'CURSOR_COLOUR_2': {'value': 772, 'count': 1, 'stride': 1}, 'CURSOR_COLOUR_BASE': {'value': 771, 'count': 1, 'stride': 1}, 'CURSOR_CONTROL': {'value': 516, 'count': 1, 'stride': 1}, 'CURSOR_IMAGE_RAM': {'value': 1024, 'count': 1, 'stride': 1}, 'CURSOR_X_HIGH': {'value': 513, 'count': 1, 'stride': 1}, 'CURSOR_X_LOW': {'value': 512, 'count': 1, 'stride': 1}, 'CURSOR_Y_HIGH': {'value': 515, 'count': 1, 'stride': 1}, 'CURSOR_Y_LOW': {'value': 514, 'count': 1, 'stride': 1}, 'ENCIDX_ACTIVE': {'value': 21, 'count': 1, 'stride': 1}, 'ENCIDX_ACTIVE_END': {'value': 23, 'count': 1, 'stride': 1}, 'ENCIDX_ACTIVE_START': {'value': 22, 'count': 1, 'stride': 1}, 'ENCIDX_BREEZEWAY': {'value': 17, 'count': 1, 'stride': 1}, 'ENCIDX_BURST_LENGTH': {'value': 18, 'count': 1, 'stride': 1}, 'ENCIDX_BURST_PHASE_LSB': {'value': 38, 'count': 1, 'stride': 1}, 'ENCIDX_BURST_PHASE_MSB': {'value': 39, 'count': 1, 'stride': 1}, 'ENCIDX_COLOUR_BACK_PORCH': {'value': 19, 'count': 1, 'stride': 1}, 'ENCIDX_COLOUR_BAR_LENGTH': {'value': 30, 'count': 1, 'stride': 1}, 'ENCIDX_EQUALIZE_HIGH': {'value': 27, 'count': 1, 'stride': 1}, 'ENCIDX_EQUALIZE_LOW': {'value': 26, 'count': 1, 'stride': 1}, 'ENCIDX_EXT_COLOUR_BACK_PORCH': {'value': 20, 'count': 1, 'stride': 1}, 'ENCIDX_FORMAT_CONTROL': {'value': 1, 'count': 1, 'stride': 1}, 'ENCIDX_FRONT_PORCH': {'value': 25, 'count': 1, 'stride': 1}, 'ENCIDX_GLOBAL_CONTROL': {'value': 0, 'count': 1, 'stride': 1}, 'ENCIDX_HSYNC_TIP': {'value': 16, 'count': 1, 'stride': 1}, 'ENCIDX_INTERFACE_CONTROL': {'value': 2, 'count': 1, 'stride': 1}, 'ENCIDX_KEY_CONTROL': {'value': 4, 'count': 1, 'stride': 1}, 'ENCIDX_KEY_D': {'value': 5, 'count': 1, 'stride': 1}, 'ENCIDX_KEY_E': {'value': 6, 'count': 1, 'stride': 1}, 'ENCIDX_KEY_F': {'value': 7, 'count': 1, 'stride': 1}, 'ENCIDX_SUBCARRIER_FREQ_BYTE1': {'value': 35, 'count': 1, 'stride': 1}, 'ENCIDX_SUBCARRIER_FREQ_BYTE2': {'value': 34, 'count': 1, 'stride': 1}, 'ENCIDX_SUBCARRIER_FREQ_BYTE3': {'value': 33, 'count': 1, 'stride': 1}, 'ENCIDX_SUBCARRIER_FREQ_BYTE4': {'value': 32, 'count': 1, 'stride': 1}, 'ENCIDX_VIDEO_PHASE_LSB': {'value': 36, 'count': 1, 'stride': 1}, 'ENCIDX_VIDEO_PHASE_MSB': {'value': 37, 'count': 1, 'stride': 1}, 'ENCIDX_VSYNC_HIGH': {'value': 29, 'count': 1, 'stride': 1}, 'ENCIDX_VSYNC_LOW': {'value': 28, 'count': 1, 'stride': 1}, 'PIXEL_MASK': {'value': 4, 'count': 1, 'stride': 1}, 'START_UP_A': {'value': 5, 'count': 1, 'stride': 1}, 'START_UP_B': {'value': 6, 'count': 1, 'stride': 1}}
TESTS = [('COMMAND_1', 136, {'calibrate': 0, 'addr_high': 1, 'palette_select': 0, 'bypass_colour': 2}), ('COMMAND_2', 228, {'sync_on_green': 1, 'pedestal': 0, 'colour_mode': 14}), ('CURSOR_CONTROL', 5, {'mode': 1, 'enable': 1, 'interlace': 0})]


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
