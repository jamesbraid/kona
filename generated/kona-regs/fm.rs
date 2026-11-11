// generated from kona 656a1d3d0681 KONA_FM_DECODE.h - do not edit, regenerate in kona
//!
//! Frame-manager registers on the display bus: the swap strobe,
//! the per-channel display ids and the board-level control words.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// Display-bus register `swap_strobe`: write, 32-bit; reset unknown; established.
pub const REG_SWAP_STROBE: u32 = 0x0080;
pub const REG_SWAP_STROBE_WIDTH: u32 = 32;
/// Display-bus register `voc_did`: write, 32-bit, 8 consecutive registers; reset unknown; established.
pub const REG_VOC_DID: u32 = 0x0081;
pub const REG_VOC_DID_WIDTH: u32 = 32;
pub const REG_VOC_DID_COUNT: u32 = 8;
/// Display-bus register `xwindow`: write, 32-bit; reset unknown; established.
pub const REG_XWINDOW: u32 = 0x008b;
pub const REG_XWINDOW_WIDTH: u32 = 32;
/// Display-bus register `did_range`: write, 32-bit; reset unknown; inferred.
pub const REG_DID_RANGE: u32 = 0x008c;
pub const REG_DID_RANGE_WIDTH: u32 = 32;
/// Display-bus register `did_status`: read, 32-bit; reset unknown; established.
pub const REG_DID_STATUS: u32 = 0x008d;
pub const REG_DID_STATUS_WIDTH: u32 = 32;
/// Display-bus register `clock_select`: write, 32-bit; reset unknown; established.
pub const REG_CLOCK_SELECT: u32 = 0x008e;
pub const REG_CLOCK_SELECT_WIDTH: u32 = 32;
/// Display-bus register `intr_state`: write, 32-bit; reset unknown; inferred.
pub const REG_INTR_STATE: u32 = 0x008f;
pub const REG_INTR_STATE_WIDTH: u32 = 32;
/// Display-bus register `raster_config`: read/write, 32-bit; reset unknown; established.
pub const REG_RASTER_CONFIG: u32 = 0x0090;
pub const REG_RASTER_CONFIG_WIDTH: u32 = 32;

/// The `swap_strobe` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct SwapStrobe(u32);

impl SwapStrobe {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn strobe(self) -> u32 {
        self.0 & 0x3
    }
}

/// The `voc_did` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct VocDid(u32);

impl VocDid {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 5:0, established.
    pub const fn did(self) -> u32 {
        self.0 & 0x3f
    }
}

/// The `xwindow` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Xwindow(u32);

impl Xwindow {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 9:0, established.
    pub const fn x0_inv(self) -> u32 {
        self.0 & 0x3ff
    }

    /// Bits 19:10, established.
    pub const fn x1_inv(self) -> u32 {
        (self.0 >> 10) & 0x3ff
    }

    /// Bits 21:20, established.
    pub const fn sync_source(self) -> u32 {
        (self.0 >> 20) & 0x3
    }

    /// Bit 22, established.
    pub const fn reset_ratio(self) -> bool {
        (self.0 >> 22) & 1 != 0
    }
}

/// The `did_range` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DidRange(u32);

impl DidRange {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 6:0, inferred.
    pub const fn size_a(self) -> u32 {
        self.0 & 0x7f
    }

    /// Bits 12:7, inferred.
    pub const fn size_b(self) -> u32 {
        (self.0 >> 7) & 0x3f
    }

    /// Bits 18:13, unknown.
    pub const fn arg_c(self) -> u32 {
        (self.0 >> 13) & 0x3f
    }

    /// Bits 23:19, unknown.
    pub const fn arg_d(self) -> u32 {
        (self.0 >> 19) & 0x1f
    }
}

/// The `did_status` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DidStatus(u32);

impl DidStatus {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 3, established.
    pub const fn shifting(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }
}

/// The `clock_select` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ClockSelect(u32);

impl ClockSelect {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 9:0, established.
    pub const fn y0_inv(self) -> u32 {
        self.0 & 0x3ff
    }

    /// Bits 19:10, established.
    pub const fn y1_inv(self) -> u32 {
        (self.0 >> 10) & 0x3ff
    }

    /// Bits 22:20, unknown.
    pub const fn arg_22_20(self) -> u32 {
        (self.0 >> 20) & 0x7
    }

    /// Bit 23, established.
    pub const fn internal(self) -> bool {
        (self.0 >> 23) & 1 != 0
    }
}

/// The `raster_config` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct RasterConfig(u32);

impl RasterConfig {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 7:5, established.
    pub const fn boards(self) -> u32 {
        (self.0 >> 5) & 0x7
    }

    /// Bits 10:8, established.
    pub const fn stuffing(self) -> u32 {
        (self.0 >> 8) & 0x7
    }
}
