"""generated from defs/hip.toml by defs-gen - do not edit, change the source
host-interface registers"""

UNIT = 'hip'
REGISTERS = {'ha_arm_ctrl': {'offset': 0, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_idma_pnum': {'offset': 16, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_idma_poff': {'offset': 20, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_idma_ctrl': {'offset': 32, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_ldma_addr': {'offset': 48, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_ldma_ctrl': {'offset': 60, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_ldma_src': {'offset': 72, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_icu_ctrl': {'offset': 80, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_icu_divert_pc': {'offset': 84, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_icu_wc': {'offset': 92, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_icu_state': {'offset': 104, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_icu_error_pc': {'offset': 108, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_icu_loop_addr': {'offset': 112, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_icu_arrcnt': {'offset': 116, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'ha_host_mbox': {'offset': 144, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'arm', 'reset': 'unknown', 'grade': 'established'}, 'hh_intr_status': {'offset': 568, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'established'}, 'hh_arm_mbox': {'offset': 576, 'access': 'r', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'established'}, 'hh_arm_ctrl': {'offset': 776, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'established'}, 'hh_vc_address': {'offset': 960, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'established'}, 'hh_vc_ready': {'offset': 968, 'access': 'r', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'hh_vc_data': {'offset': 976, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'established'}, 'hh_vc_data_incr': {'offset': 984, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'hh_arm_address': {'offset': 1000, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'established'}, 'hh_arm_data': {'offset': 1008, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'established'}, 'hh_arm_data_incr': {'offset': 1016, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'cmd_descriptor': {'offset': 1024, 'access': 'w', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'established'}, 'cmd_operand': {'offset': 2112, 'access': 'w', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'established'}, 'cmd_data': {'offset': 2240, 'access': 'w', 'width': 32, 'count': 1, 'stride': 4, 'space': 'hip_regs', 'reset': 'unknown', 'grade': 'established'}, 'rbus_odma2_data': {'offset': 1142, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'rbus', 'reset': 'unknown', 'grade': 'established'}, 'rbus_odma2_flush': {'offset': 1143, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'rbus', 'reset': 'unknown', 'grade': 'inferred'}, 'xg_err_status': {'offset': 108, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': 'xg', 'reset': 'unknown', 'grade': 'established'}}
WORDS = {}
FIELDS = {'ha_arm_ctrl': {'value': (1, 0)}, 'ha_idma_pnum': {'page': (28, 0)}, 'ha_idma_poff': {'offset': (11, 2)}, 'ha_idma_ctrl': {'mode': (1, 0)}, 'ha_ldma_addr': {'addr': (25, 3)}, 'ha_ldma_ctrl': {'value': (0, 0)}, 'ha_ldma_src': {'value': (0, 0)}, 'ha_icu_ctrl': {'value': (1, 0)}, 'ha_icu_divert_pc': {'vector': (27, 2)}, 'ha_icu_wc': {}, 'ha_icu_state': {'value': (1, 0)}, 'ha_icu_error_pc': {'vector': (27, 2)}, 'ha_icu_loop_addr': {'value': (8, 0)}, 'ha_icu_arrcnt': {'count': (15, 0)}, 'ha_host_mbox': {}, 'hh_intr_status': {'idma_ov': (11, 11), 'pio_ov': (10, 10), 'voc': (9, 9), 'parity': (8, 8), 'unused': (7, 7), 'odma': (6, 6), 'ge': (5, 5), 'arm': (4, 4), 'video': (3, 3), 'fifo_ov': (2, 2), 'fifo_lo': (1, 1), 'fifo_hi': (0, 0)}, 'hh_arm_mbox': {}, 'hh_arm_ctrl': {'host_access': (0, 0)}, 'hh_vc_address': {'value': (15, 0)}, 'hh_vc_ready': {'ready': (0, 0)}, 'hh_vc_data': {}, 'hh_vc_data_incr': {}, 'hh_arm_address': {'word_address': (27, 2)}, 'hh_arm_data': {}, 'hh_arm_data_incr': {}, 'cmd_descriptor': {}, 'cmd_operand': {}, 'cmd_data': {}, 'rbus_odma2_data': {}, 'rbus_odma2_flush': {}, 'xg_err_status': {'idma_response_bad_tnum': (28, 28), 'idma_response_size': (27, 27), 'odma_fifo_overflow': (26, 26), 'mapram_invalid': (13, 13), 'mapram_parity': (12, 12), 'response': (9, 9), 'read_req_timeout': (8, 8)}}
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
