"""generated from defs/xmap.toml by defs-gen - do not edit, change the source
XMAP registers and the words written through them"""

UNIT = 'xmap'
REGISTERS = {'cursor_channel': {'offset': 256, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'cursor_base': {'offset': 257, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'cursor_pos': {'offset': 258, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'cursor_mode': {'offset': 259, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'copy_strobe': {'offset': 260, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'subst_enable': {'offset': 261, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'subst_low': {'offset': 262, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'subst_high': {'offset': 263, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'read_select': {'offset': 264, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'unread_09': {'offset': 265, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'unknown'}, 'crc_status': {'offset': 266, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'unknown'}, 'board_count': {'offset': 267, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'di_compare_addr': {'offset': 268, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'imp_delay': {'offset': 269, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'pipe_delay': {'offset': 270, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'fastlist_config': {'offset': 271, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'unread_10': {'offset': 272, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'unknown'}, 'readback_addr': {'offset': 273, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'readback_data': {'offset': 274, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'ind_addr': {'offset': 280, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'cmap_data': {'offset': 281, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'unused_1a': {'offset': 282, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'unknown'}, 'gamma_data': {'offset': 283, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'did_data': {'offset': 284, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'chan_setup': {'offset': 285, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'established'}, 'table_close': {'offset': 286, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'flush': {'offset': 287, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'xmap_regs', 'reset': 'unknown', 'grade': 'inferred'}}
WORDS = {}
FIELDS = {'cursor_channel': {'channel': (4, 0)}, 'cursor_base': {'base': (16, 0)}, 'cursor_pos': {'y': (25, 13), 'x': (12, 0)}, 'cursor_mode': {'mode': (8, 0)}, 'copy_strobe': {'force_cursor_pos': (2, 2), 'copy': (0, 0)}, 'subst_enable': {'enable': (0, 0)}, 'subst_low': {}, 'subst_high': {'mode': (11, 10), 'colour_high': (9, 0)}, 'read_select': {'chip': (1, 0)}, 'unread_09': {}, 'crc_status': {}, 'board_count': {'code': (1, 0)}, 'di_compare_addr': {'addr': (5, 0)}, 'imp_delay': {'delay': (8, 0)}, 'pipe_delay': {'delay': (2, 0)}, 'fastlist_config': {'fixed': (9, 5), 'chunk_size': (4, 0)}, 'unread_10': {}, 'readback_addr': {'addr': (18, 0)}, 'readback_data': {}, 'ind_addr': {'flag': (18, 18), 'page': (17, 14), 'colour': (13, 12), 'entry': (11, 0)}, 'cmap_data': {'red': (29, 20), 'green': (19, 10), 'blue': (9, 0)}, 'unused_1a': {}, 'gamma_data': {'entry': (11, 0)}, 'did_data': {'cmap_base': (23, 7), 'planes_minus_1': (6, 3), 'luminance': (2, 2), 'grey': (1, 1)}, 'chan_setup': {'alpha_to_blue': (6, 6), 'no_gamma': (5, 5), 'ext_gamma': (4, 4), 'gamma_page': (3, 0)}, 'table_close': {}, 'flush': {}}
ENUMS = {'cursor_mode.mode': {0: 'off', 1: 'crosshair', 2: 'glyph'}, 'board_count.code': {0: 'one_board', 1: 'two_boards', 2: 'four_boards'}, 'ind_addr.colour': {0: 'red', 1: 'green', 2: 'blue'}}
FIELD_ENUM = {'cursor_mode.mode': 'cursor_mode.mode', 'board_count.code': 'board_count.code', 'ind_addr.colour': 'ind_addr.colour'}
CONSTANTS = {'CMAP_LOAD_PIECE_WORDS': {'value': 512, 'count': 1, 'stride': 1}, 'COUNT': {'value': 4, 'count': 1, 'stride': 1}, 'CURSOR_COLOUR_WORD': {'value': 256, 'count': 1, 'stride': 1}, 'CURSOR_CROSSHAIR_BLOCK': {'value': 9884, 'count': 1, 'stride': 1}, 'CURSOR_HOT_SPOT_CROSSHAIR': {'value': 32, 'count': 1, 'stride': 1}, 'CURSOR_IMAGE_WORDS': {'value': 256, 'count': 1, 'stride': 1}, 'CURSOR_POS_BIAS': {'value': 32, 'count': 1, 'stride': 1}, 'CURSOR_PRIORITY_NONE': {'value': 32, 'count': 1, 'stride': 1}, 'CURSOR_SLOTS': {'value': 39, 'count': 1, 'stride': 1}, 'CURSOR_SLOT_WORDS': {'value': 260, 'count': 1, 'stride': 1}, 'DID_ENTRIES': {'value': 128, 'count': 1, 'stride': 1}, 'EXT_GAMMA_ENTRIES': {'value': 1024, 'count': 1, 'stride': 1}, 'EXT_GAMMA_MARKER': {'value': 3735944941, 'count': 1, 'stride': 1}, 'GAMMA_ENTRIES_PER_PAGE': {'value': 4096, 'count': 1, 'stride': 1}, 'GAMMA_PAGES': {'value': 16, 'count': 1, 'stride': 1}, 'TRAILING_FLUSH_WRITES': {'value': 3, 'count': 1, 'stride': 1}}
TESTS = [('fastlist_config', 825, {'chunk_size': 25, 'fixed': 25}), ('did_data', 524368, {'grey': 0, 'luminance': 0, 'planes_minus_1': 10, 'cmap_base': 4096})]


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
