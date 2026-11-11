// generated from kona 656a1d3d0681 KONA_HIP_DECODE.h - do not edit, regenerate in kona
//!
//! Host-interface chip registers: the interrupt status register and
//! its cause bits.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// Host-interface register `hh_intr_status`: read/write, 32-bit; reset unknown; established.
pub const REG_HH_INTR_STATUS: u32 = 0x0238;
pub const REG_HH_INTR_STATUS_WIDTH: u32 = 32;
/// Host-interface register `rbus_odma2_data`: write, 32-bit; reset unknown; established.
pub const REG_RBUS_ODMA2_DATA: u32 = 0x0476;
pub const REG_RBUS_ODMA2_DATA_WIDTH: u32 = 32;
/// Host-interface register `rbus_odma2_flush`: write, 32-bit; reset unknown; inferred.
pub const REG_RBUS_ODMA2_FLUSH: u32 = 0x0477;
pub const REG_RBUS_ODMA2_FLUSH_WIDTH: u32 = 32;
/// Host-interface register `hh_arm_mbox`: read, 32-bit; reset unknown; established.
pub const REG_HH_ARM_MBOX: u32 = 0x0240;
pub const REG_HH_ARM_MBOX_WIDTH: u32 = 32;
/// Host-interface register `hh_arm_ctrl`: read/write, 32-bit; reset unknown; established.
pub const REG_HH_ARM_CTRL: u32 = 0x0308;
pub const REG_HH_ARM_CTRL_WIDTH: u32 = 32;
/// Host-interface register `hh_vc_address`: read/write, 32-bit; reset unknown; established.
pub const REG_HH_VC_ADDRESS: u32 = 0x03c0;
pub const REG_HH_VC_ADDRESS_WIDTH: u32 = 32;
/// Host-interface register `hh_vc_ready`: read, 32-bit; reset unknown; inferred.
pub const REG_HH_VC_READY: u32 = 0x03c8;
pub const REG_HH_VC_READY_WIDTH: u32 = 32;
/// Host-interface register `hh_vc_data`: read/write, 32-bit; reset unknown; established.
pub const REG_HH_VC_DATA: u32 = 0x03d0;
pub const REG_HH_VC_DATA_WIDTH: u32 = 32;
/// Host-interface register `hh_vc_data_incr`: read/write, 32-bit; reset unknown; inferred.
pub const REG_HH_VC_DATA_INCR: u32 = 0x03d8;
pub const REG_HH_VC_DATA_INCR_WIDTH: u32 = 32;
/// Host-interface register `hh_arm_address`: read/write, 32-bit; reset unknown; established.
pub const REG_HH_ARM_ADDRESS: u32 = 0x03e8;
pub const REG_HH_ARM_ADDRESS_WIDTH: u32 = 32;
/// Host-interface register `hh_arm_data`: read/write, 32-bit; reset unknown; established.
pub const REG_HH_ARM_DATA: u32 = 0x03f0;
pub const REG_HH_ARM_DATA_WIDTH: u32 = 32;
/// Host-interface register `hh_arm_data_incr`: read/write, 32-bit; reset unknown; inferred.
pub const REG_HH_ARM_DATA_INCR: u32 = 0x03f8;
pub const REG_HH_ARM_DATA_INCR_WIDTH: u32 = 32;
/// Host-interface register `cmd_descriptor`: write, 32-bit; reset unknown; established.
pub const REG_CMD_DESCRIPTOR: u32 = 0x0400;
pub const REG_CMD_DESCRIPTOR_WIDTH: u32 = 32;
/// Host-interface register `cmd_operand`: write, 32-bit; reset unknown; established.
pub const REG_CMD_OPERAND: u32 = 0x0840;
pub const REG_CMD_OPERAND_WIDTH: u32 = 32;
/// Host-interface register `cmd_data`: write, 32-bit; reset unknown; established.
pub const REG_CMD_DATA: u32 = 0x08c0;
pub const REG_CMD_DATA_WIDTH: u32 = 32;
/// Host-interface register `xg_err_status`: read/write, 32-bit; reset unknown; established.
pub const REG_XG_ERR_STATUS: u32 = 0x006c;
pub const REG_XG_ERR_STATUS_WIDTH: u32 = 32;
/// Host-interface register `ha_arm_ctrl`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_ARM_CTRL: u32 = 0x0000;
pub const REG_HA_ARM_CTRL_WIDTH: u32 = 32;
/// Host-interface register `ha_idma_pnum`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_IDMA_PNUM: u32 = 0x0010;
pub const REG_HA_IDMA_PNUM_WIDTH: u32 = 32;
/// Host-interface register `ha_idma_poff`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_IDMA_POFF: u32 = 0x0014;
pub const REG_HA_IDMA_POFF_WIDTH: u32 = 32;
/// Host-interface register `ha_idma_ctrl`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_IDMA_CTRL: u32 = 0x0020;
pub const REG_HA_IDMA_CTRL_WIDTH: u32 = 32;
/// Host-interface register `ha_ldma_addr`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_LDMA_ADDR: u32 = 0x0030;
pub const REG_HA_LDMA_ADDR_WIDTH: u32 = 32;
/// Host-interface register `ha_ldma_ctrl`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_LDMA_CTRL: u32 = 0x003c;
pub const REG_HA_LDMA_CTRL_WIDTH: u32 = 32;
/// Host-interface register `ha_ldma_src`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_LDMA_SRC: u32 = 0x0048;
pub const REG_HA_LDMA_SRC_WIDTH: u32 = 32;
/// Host-interface register `ha_icu_ctrl`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_ICU_CTRL: u32 = 0x0050;
pub const REG_HA_ICU_CTRL_WIDTH: u32 = 32;
/// Host-interface register `ha_icu_divert_pc`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_ICU_DIVERT_PC: u32 = 0x0054;
pub const REG_HA_ICU_DIVERT_PC_WIDTH: u32 = 32;
/// Host-interface register `ha_icu_wc`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_ICU_WC: u32 = 0x005c;
pub const REG_HA_ICU_WC_WIDTH: u32 = 32;
/// Host-interface register `ha_icu_state`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_ICU_STATE: u32 = 0x0068;
pub const REG_HA_ICU_STATE_WIDTH: u32 = 32;
/// Host-interface register `ha_icu_error_pc`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_ICU_ERROR_PC: u32 = 0x006c;
pub const REG_HA_ICU_ERROR_PC_WIDTH: u32 = 32;
/// Host-interface register `ha_icu_loop_addr`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_ICU_LOOP_ADDR: u32 = 0x0070;
pub const REG_HA_ICU_LOOP_ADDR_WIDTH: u32 = 32;
/// Host-interface register `ha_icu_arrcnt`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_ICU_ARRCNT: u32 = 0x0074;
pub const REG_HA_ICU_ARRCNT_WIDTH: u32 = 32;
/// Host-interface register `ha_host_mbox`: read/write, 32-bit; reset unknown; established.
pub const REG_HA_HOST_MBOX: u32 = 0x0090;
pub const REG_HA_HOST_MBOX_WIDTH: u32 = 32;

/// The `hh_intr_status` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HhIntrStatus(u32);

impl HhIntrStatus {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn fifo_hi(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn fifo_lo(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn fifo_ov(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn video(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn arm(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 5, established.
    pub const fn ge(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 6, established.
    pub const fn odma(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bit 7, established.
    pub const fn unused(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, established.
    pub const fn parity(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, established.
    pub const fn voc(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bit 10, established.
    pub const fn pio_ov(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bit 11, established.
    pub const fn idma_ov(self) -> bool {
        (self.0 >> 11) & 1 != 0
    }
}

/// The `hh_arm_ctrl` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HhArmCtrl(u32);

impl HhArmCtrl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn host_access(self) -> bool {
        self.0 & 1 != 0
    }
}

/// The `hh_vc_address` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HhVcAddress(u32);

impl HhVcAddress {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0xffff
    }
}

/// The `hh_vc_ready` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HhVcReady(u32);

impl HhVcReady {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn ready(self) -> bool {
        self.0 & 1 != 0
    }
}

/// The `hh_arm_address` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HhArmAddress(u32);

impl HhArmAddress {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 27:2, established.
    pub const fn word_address(self) -> u32 {
        (self.0 >> 2) & 0x3ffffff
    }
}

/// The `xg_err_status` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct XgErrStatus(u32);

impl XgErrStatus {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 8, established.
    pub const fn read_req_timeout(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, established.
    pub const fn response(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bit 12, established.
    pub const fn mapram_parity(self) -> bool {
        (self.0 >> 12) & 1 != 0
    }

    /// Bit 13, established.
    pub const fn mapram_invalid(self) -> bool {
        (self.0 >> 13) & 1 != 0
    }

    /// Bit 26, established.
    pub const fn odma_fifo_overflow(self) -> bool {
        (self.0 >> 26) & 1 != 0
    }

    /// Bit 27, established.
    pub const fn idma_response_size(self) -> bool {
        (self.0 >> 27) & 1 != 0
    }

    /// Bit 28, established.
    pub const fn idma_response_bad_tnum(self) -> bool {
        (self.0 >> 28) & 1 != 0
    }
}

/// The `ha_arm_ctrl` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaArmCtrl(u32);

impl HaArmCtrl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0x3
    }
}

/// The `ha_idma_pnum` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaIdmaPnum(u32);

impl HaIdmaPnum {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 28:0, established.
    pub const fn page(self) -> u32 {
        self.0 & 0x1fffffff
    }
}

/// The `ha_idma_poff` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaIdmaPoff(u32);

impl HaIdmaPoff {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:2, established.
    pub const fn offset(self) -> u32 {
        (self.0 >> 2) & 0x3ff
    }
}

/// The `ha_idma_ctrl` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaIdmaCtrl(u32);

impl HaIdmaCtrl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn mode(self) -> u32 {
        self.0 & 0x3
    }
}

/// The `ha_ldma_addr` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaLdmaAddr(u32);

impl HaLdmaAddr {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 25:3, established.
    pub const fn addr(self) -> u32 {
        (self.0 >> 3) & 0x7fffff
    }
}

/// The `ha_ldma_ctrl` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaLdmaCtrl(u32);

impl HaLdmaCtrl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn value(self) -> bool {
        self.0 & 1 != 0
    }
}

/// The `ha_ldma_src` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaLdmaSrc(u32);

impl HaLdmaSrc {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn value(self) -> bool {
        self.0 & 1 != 0
    }
}

/// The `ha_icu_ctrl` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaIcuCtrl(u32);

impl HaIcuCtrl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0x3
    }
}

/// The `ha_icu_divert_pc` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaIcuDivertPc(u32);

impl HaIcuDivertPc {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 27:2, established.
    pub const fn vector(self) -> u32 {
        (self.0 >> 2) & 0x3ffffff
    }
}

/// The `ha_icu_state` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaIcuState(u32);

impl HaIcuState {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0x3
    }
}

/// The `ha_icu_error_pc` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaIcuErrorPc(u32);

impl HaIcuErrorPc {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 27:2, established.
    pub const fn vector(self) -> u32 {
        (self.0 >> 2) & 0x3ffffff
    }
}

/// The `ha_icu_loop_addr` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaIcuLoopAddr(u32);

impl HaIcuLoopAddr {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 8:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0x1ff
    }
}

/// The `ha_icu_arrcnt` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HaIcuArrcnt(u32);

impl HaIcuArrcnt {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, established.
    pub const fn count(self) -> u32 {
        self.0 & 0xffff
    }
}
