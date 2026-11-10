// generated from kona bf4e58d999c7 KONA_XMAP_DECODE.h - do not edit, regenerate in kona
//!
//! XMAP direct registers, indirect-memory ports and the words
//! written through them.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established: words per cursor slot: 256 image words, 4 colour words.
pub const CURSOR_SLOT_WORDS: u32 = 0x104;
/// established: slot k is at address k x 260; 10140 words used.
pub const CURSOR_SLOTS: u32 = 39;
/// established: 64 rows of four words.
pub const CURSOR_IMAGE_WORDS: u32 = 0x100;
/// established: first colour word of a slot; four words, pixel values 3, 2, 1, 0.
pub const CURSOR_COLOUR_WORD: u32 = 0x100;
/// inferred: added to each coordinate so the cursor can sit partly off the top-left corner.
pub const CURSOR_POS_BIAS: u32 = 32;
/// established: crosshair mode hot spot, both axes.
pub const CURSOR_HOT_SPOT_CROSSHAIR: u32 = 32;
/// established: address of the crosshair slot; its colour block follows at +256.
pub const CURSOR_CROSSHAIR_BLOCK: u32 = 0x269c;
/// established: cursor owner value meaning no owner; the smallest priority wins.
pub const CURSOR_PRIORITY_NONE: u32 = 32;
/// established: per colour; each colour-map index fills two consecutive entries.
pub const GAMMA_ENTRIES_PER_PAGE: u32 = 0x1000;
/// established.
pub const GAMMA_PAGES: u32 = 16;
/// established.
pub const EXT_GAMMA_ENTRIES: u32 = 0x400;
/// established: colour-map and cursor loads are sent in pieces of this many words.
pub const CMAP_LOAD_PIECE_WORDS: u32 = 0x200;
/// established: per-display-id mode table entries; the last doubles as the sequence-number push slot.
pub const DID_ENTRIES: u32 = 128;
/// established: flush writes before the table-close write and again after it.
pub const TRAILING_FLUSH_WRITES: u32 = 3;
/// established: first word of an external gamma load, then the count 1024.
pub const EXT_GAMMA_MARKER: u32 = 0xdeadfeed;
/// established: XMAP chips selected by the read chip select.
pub const COUNT: u32 = 4;

/// Display-bus register `cursor_channel`: write, 32-bit; reset unknown; established.
pub const REG_CURSOR_CHANNEL: u32 = 0x0100;
pub const REG_CURSOR_CHANNEL_WIDTH: u32 = 32;
/// Display-bus register `cursor_base`: write, 32-bit; reset unknown; established.
pub const REG_CURSOR_BASE: u32 = 0x0101;
pub const REG_CURSOR_BASE_WIDTH: u32 = 32;
/// Display-bus register `cursor_pos`: write, 32-bit; reset unknown; established.
pub const REG_CURSOR_POS: u32 = 0x0102;
pub const REG_CURSOR_POS_WIDTH: u32 = 32;
/// Display-bus register `cursor_mode`: write, 32-bit; reset unknown; established.
pub const REG_CURSOR_MODE: u32 = 0x0103;
pub const REG_CURSOR_MODE_WIDTH: u32 = 32;
/// Display-bus register `copy_strobe`: write, 32-bit; reset unknown; established.
pub const REG_COPY_STROBE: u32 = 0x0104;
pub const REG_COPY_STROBE_WIDTH: u32 = 32;
/// Display-bus register `subst_enable`: write, 32-bit; reset unknown; inferred.
pub const REG_SUBST_ENABLE: u32 = 0x0105;
pub const REG_SUBST_ENABLE_WIDTH: u32 = 32;
/// Display-bus register `subst_low`: write, 32-bit; reset unknown; established.
pub const REG_SUBST_LOW: u32 = 0x0106;
pub const REG_SUBST_LOW_WIDTH: u32 = 32;
/// Display-bus register `subst_high`: write, 32-bit; reset unknown; established.
pub const REG_SUBST_HIGH: u32 = 0x0107;
pub const REG_SUBST_HIGH_WIDTH: u32 = 32;
/// Display-bus register `read_select`: write, 32-bit; reset unknown; inferred.
pub const REG_READ_SELECT: u32 = 0x0108;
pub const REG_READ_SELECT_WIDTH: u32 = 32;
/// Display-bus register `unread_09`: write, 32-bit; reset unknown; unknown.
pub const REG_UNREAD_09: u32 = 0x0109;
pub const REG_UNREAD_09_WIDTH: u32 = 32;
/// Display-bus register `crc_status`: read, 32-bit; reset unknown; unknown.
pub const REG_CRC_STATUS: u32 = 0x010a;
pub const REG_CRC_STATUS_WIDTH: u32 = 32;
/// Display-bus register `board_count`: write, 32-bit; reset unknown; established.
pub const REG_BOARD_COUNT: u32 = 0x010b;
pub const REG_BOARD_COUNT_WIDTH: u32 = 32;
/// Display-bus register `di_compare_addr`: write, 32-bit; reset unknown; inferred.
pub const REG_DI_COMPARE_ADDR: u32 = 0x010c;
pub const REG_DI_COMPARE_ADDR_WIDTH: u32 = 32;
/// Display-bus register `imp_delay`: write, 32-bit; reset unknown; inferred.
pub const REG_IMP_DELAY: u32 = 0x010d;
pub const REG_IMP_DELAY_WIDTH: u32 = 32;
/// Display-bus register `pipe_delay`: write, 32-bit; reset unknown; inferred.
pub const REG_PIPE_DELAY: u32 = 0x010e;
pub const REG_PIPE_DELAY_WIDTH: u32 = 32;
/// Display-bus register `fastlist_config`: write, 32-bit; reset unknown; inferred.
pub const REG_FASTLIST_CONFIG: u32 = 0x010f;
pub const REG_FASTLIST_CONFIG_WIDTH: u32 = 32;
/// Display-bus register `unread_10`: write, 32-bit; reset unknown; unknown.
pub const REG_UNREAD_10: u32 = 0x0110;
pub const REG_UNREAD_10_WIDTH: u32 = 32;
/// Display-bus register `readback_addr`: write, 32-bit; reset unknown; inferred.
pub const REG_READBACK_ADDR: u32 = 0x0111;
pub const REG_READBACK_ADDR_WIDTH: u32 = 32;
/// Display-bus register `readback_data`: read, 32-bit; reset unknown; inferred.
pub const REG_READBACK_DATA: u32 = 0x0112;
pub const REG_READBACK_DATA_WIDTH: u32 = 32;
/// Display-bus register `ind_addr`: write, 32-bit; reset unknown; established.
pub const REG_IND_ADDR: u32 = 0x0118;
pub const REG_IND_ADDR_WIDTH: u32 = 32;
/// Display-bus register `cmap_data`: write, 32-bit; reset unknown; established.
pub const REG_CMAP_DATA: u32 = 0x0119;
pub const REG_CMAP_DATA_WIDTH: u32 = 32;
/// Display-bus register `unused_1a`: write, 32-bit; reset unknown; unknown.
pub const REG_UNUSED_1A: u32 = 0x011a;
pub const REG_UNUSED_1A_WIDTH: u32 = 32;
/// Display-bus register `gamma_data`: write, 32-bit; reset unknown; established.
pub const REG_GAMMA_DATA: u32 = 0x011b;
pub const REG_GAMMA_DATA_WIDTH: u32 = 32;
/// Display-bus register `did_data`: write, 32-bit; reset unknown; established.
pub const REG_DID_DATA: u32 = 0x011c;
pub const REG_DID_DATA_WIDTH: u32 = 32;
/// Display-bus register `chan_setup`: write, 32-bit; reset unknown; established.
pub const REG_CHAN_SETUP: u32 = 0x011d;
pub const REG_CHAN_SETUP_WIDTH: u32 = 32;
/// Display-bus register `table_close`: write, 32-bit; reset unknown; inferred.
pub const REG_TABLE_CLOSE: u32 = 0x011e;
pub const REG_TABLE_CLOSE_WIDTH: u32 = 32;
/// Display-bus register `flush`: write, 32-bit; reset unknown; inferred.
pub const REG_FLUSH: u32 = 0x011f;
pub const REG_FLUSH_WIDTH: u32 = 32;

/// Values of `mode` in `CursorMode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CursorModeMode {
    /// established.
    Off,
    /// established.
    Crosshair,
    /// established.
    Glyph,
    /// A value the notes do not name.
    Other(u32),
}

impl CursorModeMode {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Off,
            0x1 => Self::Crosshair,
            0x2 => Self::Glyph,
            _ => Self::Other(v as u32),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Off => 0x0,
            Self::Crosshair => 0x1,
            Self::Glyph => 0x2,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `code` in `BoardCount` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BoardCountCode {
    /// established.
    OneBoard,
    /// established.
    TwoBoards,
    /// established.
    FourBoards,
    /// A value the notes do not name.
    Other(u8),
}

impl BoardCountCode {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::OneBoard,
            0x1 => Self::TwoBoards,
            0x2 => Self::FourBoards,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::OneBoard => 0x0,
            Self::TwoBoards => 0x1,
            Self::FourBoards => 0x2,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `colour` in `IndAddr` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum IndAddrColour {
    /// established.
    Red,
    /// established.
    Green,
    /// established.
    Blue,
    /// A value the notes do not name.
    Other(u8),
}

impl IndAddrColour {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Red,
            0x1 => Self::Green,
            0x2 => Self::Blue,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Red => 0x0,
            Self::Green => 0x1,
            Self::Blue => 0x2,
            Self::Other(v) => v as u32,
        }
    }
}

/// The `cursor_channel` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CursorChannel(u32);

impl CursorChannel {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 4:0, established.
    pub const fn channel(self) -> u32 {
        self.0 & 0x1f
    }
}

/// The `cursor_base` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CursorBase(u32);

impl CursorBase {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 16:0, established.
    pub const fn base(self) -> u32 {
        self.0 & 0x1ffff
    }
}

/// The `cursor_pos` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CursorPos(u32);

impl CursorPos {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 12:0, established.
    pub const fn x(self) -> u32 {
        self.0 & 0x1fff
    }

    /// Bits 25:13, established.
    pub const fn y(self) -> u32 {
        (self.0 >> 13) & 0x1fff
    }
}

/// The `cursor_mode` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CursorMode(u32);

impl CursorMode {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 8:0, established.
    pub const fn mode(self) -> CursorModeMode {
        CursorModeMode::from_bits(self.0 & 0x1ff)
    }
}

/// The `copy_strobe` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CopyStrobe(u32);

impl CopyStrobe {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn copy(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 2, inferred.
    pub const fn force_cursor_pos(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }
}

/// The `subst_enable` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct SubstEnable(u32);

impl SubstEnable {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, inferred.
    pub const fn enable(self) -> bool {
        self.0 & 1 != 0
    }
}

/// The `subst_high` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct SubstHigh(u32);

impl SubstHigh {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 9:0, inferred.
    pub const fn colour_high(self) -> u32 {
        self.0 & 0x3ff
    }

    /// Bits 11:10, established.
    pub const fn mode(self) -> u32 {
        (self.0 >> 10) & 0x3
    }
}

/// The `read_select` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ReadSelect(u32);

impl ReadSelect {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, inferred.
    pub const fn chip(self) -> u32 {
        self.0 & 0x3
    }
}

/// The `board_count` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BoardCount(u32);

impl BoardCount {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn code(self) -> BoardCountCode {
        BoardCountCode::from_bits(self.0 & 0x3)
    }
}

/// The `di_compare_addr` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DiCompareAddr(u32);

impl DiCompareAddr {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 5:0, inferred.
    pub const fn addr(self) -> u32 {
        self.0 & 0x3f
    }
}

/// The `imp_delay` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ImpDelay(u32);

impl ImpDelay {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 8:0, inferred.
    pub const fn delay(self) -> u32 {
        self.0 & 0x1ff
    }
}

/// The `pipe_delay` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct PipeDelay(u32);

impl PipeDelay {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 2:0, inferred.
    pub const fn delay(self) -> u32 {
        self.0 & 0x7
    }
}

/// The `fastlist_config` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FastlistConfig(u32);

impl FastlistConfig {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 4:0, inferred.
    pub const fn chunk_size(self) -> u32 {
        self.0 & 0x1f
    }

    /// Bits 9:5, inferred.
    pub const fn fixed(self) -> u32 {
        (self.0 >> 5) & 0x1f
    }
}

/// The `readback_addr` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ReadbackAddr(u32);

impl ReadbackAddr {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 18:0, inferred.
    pub const fn addr(self) -> u32 {
        self.0 & 0x7ffff
    }
}

/// The `ind_addr` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct IndAddr(u32);

impl IndAddr {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn entry(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 13:12, established.
    pub const fn colour(self) -> IndAddrColour {
        IndAddrColour::from_bits((self.0 >> 12) & 0x3)
    }

    /// Bits 17:14, established.
    pub const fn page(self) -> u32 {
        (self.0 >> 14) & 0xf
    }

    /// Bit 18, unknown.
    pub const fn flag(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }
}

/// The `cmap_data` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CmapData(u32);

impl CmapData {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 9:0, established.
    pub const fn blue(self) -> u32 {
        self.0 & 0x3ff
    }

    /// Bits 19:10, established.
    pub const fn green(self) -> u32 {
        (self.0 >> 10) & 0x3ff
    }

    /// Bits 29:20, established.
    pub const fn red(self) -> u32 {
        (self.0 >> 20) & 0x3ff
    }
}

/// The `gamma_data` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct GammaData(u32);

impl GammaData {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn entry(self) -> u32 {
        self.0 & 0xfff
    }
}

/// The `did_data` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DidData(u32);

impl DidData {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 1, established.
    pub const fn grey(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn luminance(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bits 6:3, established.
    pub const fn planes_minus_1(self) -> u32 {
        (self.0 >> 3) & 0xf
    }

    /// Bits 23:7, established.
    pub const fn cmap_base(self) -> u32 {
        (self.0 >> 7) & 0x1ffff
    }
}

/// The `chan_setup` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ChanSetup(u32);

impl ChanSetup {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn gamma_page(self) -> u32 {
        self.0 & 0xf
    }

    /// Bit 4, established.
    pub const fn ext_gamma(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 5, established.
    pub const fn no_gamma(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 6, established.
    pub const fn alpha_to_blue(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_xmap_did_data_80050() {
        let w = DidData::new(0x80050);
        assert_eq!(w.grey() as u32, 0, "grey");
        assert_eq!(w.luminance() as u32, 0, "luminance");
        assert_eq!(w.planes_minus_1(), 10, "planes_minus_1");
        assert_eq!(w.cmap_base(), 4096, "cmap_base");
    }

    #[test]
    fn testvec_xmap_fastlist_config_339() {
        let w = FastlistConfig::new(0x339);
        assert_eq!(w.chunk_size(), 25, "chunk_size");
        assert_eq!(w.fixed(), 25, "fixed");
    }
}
