"""generated from devices/fm/registers.toml by defs-gen - do not edit, change the source
SPDX-License-Identifier: BSD-3-Clause
defs-gen 4
input sha256 523ceaa5f3ddaab09ea0cfad0cf267ceb1b592ee7342fb0b09e48b67883e033b
frame-manager registers on the display bus"""

UNIT = 'fm'
REGISTERS = {'swap_strobe': {'offset': 128, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'fm_regs', 'reset': 'unknown', 'grade': 'established'}, 'video_output_display_id': {'offset': 129, 'access': 'w', 'width': 32, 'count': 8, 'stride': 1, 'space': 'fm_regs', 'reset': 'unknown', 'grade': 'established'}, 'frame_window_control': {'offset': 139, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'fm_regs', 'reset': 'unknown', 'grade': 'established'}, 'display_id_range': {'offset': 140, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'fm_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'display_id_status': {'offset': 141, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'fm_regs', 'reset': 'unknown', 'grade': 'established'}, 'clock_select': {'offset': 142, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'fm_regs', 'reset': 'unknown', 'grade': 'established'}, 'intr_state': {'offset': 143, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'fm_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'raster_config': {'offset': 144, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'fm_regs', 'reset': 'unknown', 'grade': 'established'}}
WORDS = {}
FIELDS = {'swap_strobe': {'strobe': (1, 0)}, 'video_output_display_id': {'did': (5, 0)}, 'frame_window_control': {'reset_ratio': (22, 22), 'sync_source': (21, 20), 'x1_inv': (19, 10), 'x0_inv': (9, 0)}, 'display_id_range': {'arg_d': (23, 19), 'arg_c': (18, 13), 'size_b': (12, 7), 'size_a': (6, 0)}, 'display_id_status': {'shifting': (3, 3)}, 'clock_select': {'internal': (23, 23), 'arg_22_20': (22, 20), 'y1_inv': (19, 10), 'y0_inv': (9, 0)}, 'intr_state': {}, 'raster_config': {'stuffing': (10, 8), 'boards': (7, 5)}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {}
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
