// generated from kona bf4e58d999c7 KONA_DAC_DECODE.h - do not edit, regenerate in kona
//!
//! Video DAC and encoder ports of the display bus.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// Display-bus register `index`: write, 8-bit; reset unknown; established.
pub const REG_INDEX: u32 = 0x0b00;
pub const REG_INDEX_WIDTH: u32 = 8;
/// Display-bus register `cmap_data`: write, 8-bit; reset unknown; inferred.
pub const REG_CMAP_DATA: u32 = 0x0b01;
pub const REG_CMAP_DATA_WIDTH: u32 = 8;
/// Display-bus register `reg_data`: read/write, 8-bit; reset unknown; established.
pub const REG_REG_DATA: u32 = 0x0b02;
pub const REG_REG_DATA_WIDTH: u32 = 8;
/// Display-bus register `mode`: write, 8-bit; reset unknown; inferred.
pub const REG_MODE: u32 = 0x0b03;
pub const REG_MODE_WIDTH: u32 = 8;
/// Display-bus register `enc_ctrl_addr`: write, 8-bit; reset unknown; established.
pub const REG_ENC_CTRL_ADDR: u32 = 0x1800;
pub const REG_ENC_CTRL_ADDR_WIDTH: u32 = 8;
/// Display-bus register `enc_cmap_addr`: write, 8-bit; reset unknown; inferred.
pub const REG_ENC_CMAP_ADDR: u32 = 0x1801;
pub const REG_ENC_CMAP_ADDR_WIDTH: u32 = 8;
/// Display-bus register `enc_ctrl_data`: read/write, 8-bit; reset unknown; established.
pub const REG_ENC_CTRL_DATA: u32 = 0x1802;
pub const REG_ENC_CTRL_DATA_WIDTH: u32 = 8;
/// Display-bus register `enc_cmap_data`: read/write, 8-bit; reset unknown; inferred.
pub const REG_ENC_CMAP_DATA: u32 = 0x1803;
pub const REG_ENC_CMAP_DATA_WIDTH: u32 = 8;
/// Display-bus register `enc_gain`: write, 8-bit; reset unknown; established.
pub const REG_ENC_GAIN: u32 = 0x1708;
pub const REG_ENC_GAIN_WIDTH: u32 = 8;

/// The `mode` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Mode(u32);

impl Mode {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn strobe(self) -> bool {
        self.0 & 1 != 0
    }
}
