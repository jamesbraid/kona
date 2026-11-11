// generated from kona 0cc7c1448427 KONA_WORDS_DECODE.h - do not edit, regenerate in kona
//!
//! Bit layouts of the multi-field words of the host command stream,
//! and the engine command descriptor values.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established.
pub const MODE_BYTE_RESERVED_CI_TRANSPARENT: u32 = 5;
/// established.
pub const MODE_BYTE_RESERVED_CI_OPAQUE: u32 = 21;
/// established.
pub const MODE_BYTE_RESERVED_RGB_TRANSPARENT: u32 = 2;
/// established.
pub const MODE_BYTE_RESERVED_RGB_OPAQUE: u32 = 18;
/// established.
pub const OVERLAY_ID_WORD_COLOUR_INDEX: u32 = 0x3c00;
/// established.
pub const OVERLAY_ID_WORD_RGB15: u32 = 0x3c01;
/// established: the advertised red mask, unshifted.
pub const OVERLAY_RGB15_RED_BITS: u32 = 0x7c00;
/// established: the advertised green mask.
pub const OVERLAY_RGB15_GREEN_BITS: u32 = 0x3e0;
/// established: the advertised blue mask.
pub const OVERLAY_RGB15_BLUE_BITS: u32 = 31;
/// established: main-plane window ids run 0 to 62.
pub const WINDOW_ID_MAIN_FIRST: u32 = 0;
/// established.
pub const WINDOW_ID_MAIN_LAST: u32 = 62;
/// established: fixed popup window id; the popup's painted pattern is overlay group 31.
pub const WINDOW_ID_POPUP: u32 = 63;
/// established: overlay and underlay ids 64 to 95 (7 bits in all).
pub const WINDOW_ID_OVERLAY_FIRST: u32 = 64;
/// established.
pub const WINDOW_ID_OVERLAY_LAST: u32 = 95;
/// established: 2-, 4- and 8-plane colour-index overlay, transparent.
pub const WINDOW_ID_CI_OVERLAY_TRANSPARENT: u32 = 64;
/// established: colour-index overlay, opaque.
pub const WINDOW_ID_CI_OVERLAY_OPAQUE: u32 = 65;
/// established: 15-bit RGB overlay, transparent.
pub const WINDOW_ID_RGB15_OVERLAY_TRANSPARENT: u32 = 66;
/// established: 15-bit RGB overlay, opaque.
pub const WINDOW_ID_RGB15_OVERLAY_OPAQUE: u32 = 67;
/// inferred: ids 68 to 95 are handed out dynamically to other overlay windows.
pub const WINDOW_ID_DYNAMIC_FIRST: u32 = 68;
/// established: frame-buffer layer numbers.
pub const LAYER_MAIN: u32 = 0;
/// established.
pub const LAYER_OVERLAY: u32 = 1;
/// established.
pub const LAYER_POPUP: u32 = 2;
/// established: the display chips hold a 64-entry normal id table.
pub const ID_TABLE_NORMAL_ENTRIES: u32 = 64;
/// established: and a 32-entry overlay and underlay table.
pub const ID_TABLE_OVERLAY_ENTRIES: u32 = 32;
/// established: the bus mask the load applies; bit 31 is outside it.
pub const GC_LOAD_W4_BUS_ENABLE: u32 = 0xffffff;
/// established: the bus mask the load applies, exactly the two fields above.
pub const GC_LOAD_W6_BUS_ENABLE: u32 = 0x383c;
/// established: the bus mask the load applies, exactly the three fields above.
pub const GC_LOAD_W7_BUS_ENABLE: u32 = 0xffc00f;
/// established: engine register address port (distributor register number 565).
pub const DESC_ENGINE_REG_ADDRESS: u32 = 0x46a00020;
/// established: engine register data port (distributor register number 563).
pub const DESC_ENGINE_REG_DATA: u32 = 0x46600020;
/// established: set the engine handler table index.
pub const DESC_ENGINE_TABLE_INDEX: u32 = 0x46000020;
/// established: write one handler table entry and advance the index.
pub const DESC_ENGINE_TABLE_ENTRY: u32 = 0x46200020;
/// established: write one word of the 1024-word distributor program.
pub const DESC_DISTRIBUTOR_PROGRAM: u32 = 0x48200020;
/// established: load the 16-word primitive-class table.
pub const DESC_PRIMITIVE_CLASS_TABLE: u32 = 0x42200020;
/// established: load the 512-word entry table.
pub const DESC_ENTRY_TABLE: u32 = 0x42600020;
/// inferred: distributor step register on, at pipe set-up.
pub const DESC_DISTRIBUTOR_STEP: u32 = 0x44200020;
/// established: raster-bus register write, three payload words: bit mask, address word, value.
pub const DESC_RASTER_BUS_WRITE: u32 = 0x58404800;
/// established: image-processor register write, same three words.
pub const DESC_IMAGE_PROCESSOR_WRITE: u32 = 0x584fc800;
/// established.
pub const FOG_PARAMETER_INDEX: u32 = 0xb61;
/// established.
pub const FOG_PARAMETER_DENSITY: u32 = 0xb62;
/// established.
pub const FOG_PARAMETER_START: u32 = 0xb63;
/// established.
pub const FOG_PARAMETER_END: u32 = 0xb64;
/// established.
pub const FOG_PARAMETER_MODE: u32 = 0xb65;
/// established.
pub const FOG_PARAMETER_COLOUR: u32 = 0xb66;
/// established.
pub const FOG_PARAMETER_OFFSET: u32 = 0x8199;
/// established.
pub const LIGHT_BLOCK_FIRST_ADDRESS: u32 = 0x2c7;
/// established.
pub const LIGHT_BLOCK_WORDS: u32 = 35;
/// established.
pub const LIGHT_BLOCK_COUNT: u32 = 8;
/// established.
pub const TEXENV_COLOUR_IMAGE: u32 = 0x15e1402;
/// established.
pub const TEXENV_COLOUR1_IMAGE: u32 = 0x15f1413;

/// Values of `code` in `ModeByteOverlay` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ModeByteOverlayCode {
    /// established.
    Overlay,
    /// established.
    OverlayBackStart,
    /// established.
    Underlay,
    /// established.
    UnderlayBackStart,
    /// established.
    ReservedRgb15,
    /// A value the notes do not name.
    Other(u8),
}

impl ModeByteOverlayCode {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x2 => Self::Overlay,
            0x3 => Self::OverlayBackStart,
            0x6 => Self::Underlay,
            0x7 => Self::UnderlayBackStart,
            0x1 => Self::ReservedRgb15,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Overlay => 0x2,
            Self::OverlayBackStart => 0x3,
            Self::Underlay => 0x6,
            Self::UnderlayBackStart => 0x7,
            Self::ReservedRgb15 => 0x1,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `size_code` in `TexloadLayout` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum TexloadLayoutSizeCode {
    /// established.
    Bits16,
    /// established.
    Bits32,
    /// established.
    Slot64,
    /// A value the notes do not name.
    Other(u8),
}

impl TexloadLayoutSizeCode {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Bits16,
            0x1 => Self::Bits32,
            0x2 => Self::Slot64,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Bits16 => 0x0,
            Self::Bits32 => 0x1,
            Self::Slot64 => 0x2,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `mode` in `BindControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BindControlMode {
    /// established.
    BicubicTable,
    /// established.
    DetailTable,
    /// established.
    SharpenTable,
    /// established.
    NoTable,
    /// A value the notes do not name.
    Other(u8),
}

impl BindControlMode {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::BicubicTable,
            0x1 => Self::DetailTable,
            0x2 => Self::SharpenTable,
            0x3 => Self::NoTable,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::BicubicTable => 0x0,
            Self::DetailTable => 0x1,
            Self::SharpenTable => 0x2,
            Self::NoTable => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `target` in `BindControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BindControlTarget {
    /// established.
    Detail,
    /// established.
    Tex1d,
    /// established.
    Tex2d,
    /// established.
    Tex3d,
    /// A value the notes do not name.
    Other(u8),
}

impl BindControlTarget {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Detail,
            0x1 => Self::Tex1d,
            0x2 => Self::Tex2d,
            0x3 => Self::Tex3d,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Detail => 0x0,
            Self::Tex1d => 0x1,
            Self::Tex2d => 0x2,
            Self::Tex3d => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `sampling` in `BindMode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BindModeSampling {
    /// established.
    Mode2d,
    /// established.
    Mode3d,
    /// established.
    Mode3dMip,
    /// established.
    Bicubic,
    /// A value the notes do not name.
    Other(u8),
}

impl BindModeSampling {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Mode2d,
            0x1 => Self::Mode3d,
            0x2 => Self::Mode3dMip,
            0x3 => Self::Bicubic,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Mode2d => 0x0,
            Self::Mode3d => 0x1,
            Self::Mode3dMip => 0x2,
            Self::Bicubic => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `min_filter` in `BindMode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BindModeMinFilter {
    /// established.
    Nearest,
    /// established.
    Linear,
    /// established.
    Bicubic,
    /// A value the notes do not name.
    Other(u8),
}

impl BindModeMinFilter {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Nearest,
            0x1 => Self::Linear,
            0x2 => Self::Bicubic,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Nearest => 0x0,
            Self::Linear => 0x1,
            Self::Bicubic => 0x2,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `mag_filter` in `BindMode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BindModeMagFilter {
    /// established.
    Nearest,
    /// established.
    Linear,
    /// established.
    Bicubic,
    /// established.
    DetailAdd,
    /// established.
    DetailModulate,
    /// established.
    Sharpen,
    /// A value the notes do not name.
    Other(u8),
}

impl BindModeMagFilter {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Nearest,
            0x1 => Self::Linear,
            0x2 => Self::Bicubic,
            0x3 => Self::DetailAdd,
            0x4 => Self::DetailModulate,
            0x5 => Self::Sharpen,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Nearest => 0x0,
            Self::Linear => 0x1,
            Self::Bicubic => 0x2,
            Self::DetailAdd => 0x3,
            Self::DetailModulate => 0x4,
            Self::Sharpen => 0x5,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `shadow_compare` in `BindMode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BindModeShadowCompare {
    /// established.
    Off,
    /// established.
    RefAtLeastTexel,
    /// established.
    RefAtMostTexel,
    /// A value the notes do not name.
    Other(u8),
}

impl BindModeShadowCompare {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Off,
            0x1 => Self::RefAtLeastTexel,
            0x2 => Self::RefAtMostTexel,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Off => 0x0,
            Self::RefAtLeastTexel => 0x1,
            Self::RefAtMostTexel => 0x2,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `mag_channels` in `BindMode` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BindModeMagChannels {
    /// established.
    All,
    /// established.
    Colour,
    /// established.
    Alpha,
    /// established.
    Level0,
    /// A value the notes do not name.
    Other(u8),
}

impl BindModeMagChannels {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::All,
            0x1 => Self::Colour,
            0x2 => Self::Alpha,
            0x3 => Self::Level0,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::All => 0x0,
            Self::Colour => 0x1,
            Self::Alpha => 0x2,
            Self::Level0 => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `sample_count` in `MsControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum MsControlSampleCount {
    /// established.
    Four,
    /// established.
    Eight,
    /// A value the notes do not name.
    Other(u8),
}

impl MsControlSampleCount {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Four,
            0x1 => Self::Eight,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Four => 0x0,
            Self::Eight => 0x1,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `mask_op` in `MsControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum MsControlMaskOp {
    /// established.
    AndOp,
    /// established.
    Replace,
    /// A value the notes do not name.
    Other(u8),
}

impl MsControlMaskOp {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::AndOp,
            0x1 => Self::Replace,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::AndOp => 0x0,
            Self::Replace => 0x1,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `optimisation` in `MsControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum MsControlOptimisation {
    /// established.
    None,
    /// established.
    Disable,
    /// established.
    Enable,
    /// A value the notes do not name.
    Other(u8),
}

impl MsControlOptimisation {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::None,
            0x2 => Self::Disable,
            0x3 => Self::Enable,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::None => 0x0,
            Self::Disable => 0x2,
            Self::Enable => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// The `MODE_BYTE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ModeByte(u32);

impl ModeByte {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn back_shown(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn stereo(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn rgb_below_24(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn ci_or_luminance(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn direct_or_opaque(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }
}

/// The `MODE_BYTE_OVERLAY` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ModeByteOverlay(u32);

impl ModeByteOverlay {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn back_shown(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bits 3:1, established.
    pub const fn code(self) -> ModeByteOverlayCode {
        ModeByteOverlayCode::from_bits((self.0 >> 1) & 0x7)
    }
}

/// The `OVERLAY_RGB15` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct OverlayRgb15(u32);

impl OverlayRgb15 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 14:10, established.
    pub const fn red(self) -> u32 {
        (self.0 >> 10) & 0x1f
    }

    /// Bits 9:5, established.
    pub const fn green(self) -> u32 {
        (self.0 >> 5) & 0x1f
    }

    /// Bits 4:0, established.
    pub const fn blue(self) -> u32 {
        self.0 & 0x1f
    }
}

/// The `ID_FG_LARGE_HI` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct IdFgLargeHi(u32);

impl IdFgLargeHi {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 6:3, established.
    pub const fn value_low_nibble(self) -> u32 {
        (self.0 >> 3) & 0xf
    }

    /// Bits 19:8, established.
    pub const fn value_high12(self) -> u32 {
        (self.0 >> 8) & 0xfff
    }
}

/// The `ID_MASK_LARGE_HI` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct IdMaskLargeHi(u32);

impl IdMaskLargeHi {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn mask_high12(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:20, established.
    pub const fn mask_low_nibble(self) -> u32 {
        (self.0 >> 20) & 0xf
    }
}

/// The `ID_FG_SMALL_LO` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct IdFgSmallLo(u32);

impl IdFgSmallLo {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 12:9, established.
    pub const fn value_low_nibble(self) -> u32 {
        (self.0 >> 9) & 0xf
    }

    /// Bits 25:14, established.
    pub const fn value_high12(self) -> u32 {
        (self.0 >> 14) & 0xfff
    }
}

/// The `ID_MASK_SMALL_LO` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct IdMaskSmallLo(u32);

impl IdMaskSmallLo {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn mask_high_nibble(self) -> u32 {
        self.0 & 0xf
    }

    /// Bits 23:12, established.
    pub const fn mask_low12(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `WINDOW_W2` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct WindowW2(u32);

impl WindowW2 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, inferred.
    pub const fn width(self) -> u32 {
        self.0 & 0xffff
    }

    /// Bits 31:16, inferred.
    pub const fn x_bias(self) -> u32 {
        self.0 >> 16
    }
}

/// The `WINDOW_W3` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct WindowW3(u32);

impl WindowW3 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, inferred.
    pub const fn height(self) -> u32 {
        self.0 & 0xffff
    }

    /// Bits 31:16, inferred.
    pub const fn y_bias(self) -> u32 {
        self.0 >> 16
    }
}

/// The `PIXEL_SETUP_W0` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct PixelSetupW0(u32);

impl PixelSetupW0 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn kind(self) -> u32 {
        self.0 & 0xf
    }

    /// Bit 4, established.
    pub const fn direct_write(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }
}

/// The `TEXLOAD_SIZE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TexloadSize(u32);

impl TexloadSize {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn s_exp(self) -> u32 {
        self.0 & 0xf
    }

    /// Bits 7:4, established.
    pub const fn t_exp(self) -> u32 {
        (self.0 >> 4) & 0xf
    }

    /// Bits 11:8, established.
    pub const fn r_exp(self) -> u32 {
        (self.0 >> 8) & 0xf
    }
}

/// The `TEXLOAD_LAYOUT` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TexloadLayout(u32);

impl TexloadLayout {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn size_code(self) -> TexloadLayoutSizeCode {
        TexloadLayoutSizeCode::from_bits(self.0 & 0x3)
    }

    /// Bit 2, established.
    pub const fn dma(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn bank(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bits 6:5, established.
    pub const fn layout_mode(self) -> u32 {
        (self.0 >> 5) & 0x3
    }

    /// Bits 10:7, established.
    pub const fn s_addr_bits(self) -> u32 {
        (self.0 >> 7) & 0xf
    }

    /// Bits 14:11, established.
    pub const fn t_addr_bits(self) -> u32 {
        (self.0 >> 11) & 0xf
    }

    /// Bit 15, established.
    pub const fn interlaced_download(self) -> bool {
        (self.0 >> 15) & 1 != 0
    }
}

/// The `BIND_CONTROL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BindControl(u32);

impl BindControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, inferred.
    pub const fn filter_slot(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn format_index(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }

    /// Bits 27:24, established.
    pub const fn mode(self) -> BindControlMode {
        BindControlMode::from_bits((self.0 >> 24) & 0xf)
    }

    /// Bits 31:28, established.
    pub const fn target(self) -> BindControlTarget {
        BindControlTarget::from_bits(self.0 >> 28)
    }
}

/// The `BIND_MODE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BindMode(u32);

impl BindMode {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn sampling(self) -> BindModeSampling {
        BindModeSampling::from_bits(self.0 & 0x3)
    }

    /// Bits 4:2, inferred.
    pub const fn min_filter(self) -> BindModeMinFilter {
        BindModeMinFilter::from_bits((self.0 >> 2) & 0x7)
    }

    /// Bits 7:5, established.
    pub const fn mag_filter(self) -> BindModeMagFilter {
        BindModeMagFilter::from_bits((self.0 >> 5) & 0x7)
    }

    /// Bits 9:8, inferred.
    pub const fn flags(self) -> u32 {
        (self.0 >> 8) & 0x3
    }

    /// Bits 11:10, established.
    pub const fn shadow_compare(self) -> BindModeShadowCompare {
        BindModeShadowCompare::from_bits((self.0 >> 10) & 0x3)
    }

    /// Bit 12, inferred.
    pub const fn clamp_style(self) -> bool {
        (self.0 >> 12) & 1 != 0
    }

    /// Bit 13, inferred.
    pub const fn env_on(self) -> bool {
        (self.0 >> 13) & 1 != 0
    }

    /// Bits 20:14, established.
    pub const fn texel_format(self) -> u32 {
        (self.0 >> 14) & 0x7f
    }

    /// Bits 23:21, established.
    pub const fn detail_level(self) -> u32 {
        (self.0 >> 21) & 0x7
    }

    /// Bits 25:24, inferred.
    pub const fn channel_select(self) -> u32 {
        (self.0 >> 24) & 0x3
    }

    /// Bits 27:26, established.
    pub const fn mag_channels(self) -> BindModeMagChannels {
        BindModeMagChannels::from_bits((self.0 >> 26) & 0x3)
    }

    /// Bit 28, established.
    pub const fn first_bank(self) -> bool {
        (self.0 >> 28) & 1 != 0
    }
}

/// The `BIND_SIZE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BindSize(u32);

impl BindSize {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn s_exp(self) -> u32 {
        self.0 & 0xf
    }

    /// Bits 7:4, established.
    pub const fn t_exp(self) -> u32 {
        (self.0 >> 4) & 0xf
    }

    /// Bits 11:8, established.
    pub const fn r_exp(self) -> u32 {
        (self.0 >> 8) & 0xf
    }

    /// Bit 12, established.
    pub const fn s_clamp(self) -> bool {
        (self.0 >> 12) & 1 != 0
    }

    /// Bit 13, established.
    pub const fn t_clamp(self) -> bool {
        (self.0 >> 13) & 1 != 0
    }

    /// Bit 14, established.
    pub const fn r_clamp(self) -> bool {
        (self.0 >> 14) & 1 != 0
    }
}

/// The `BIND_LOD_SCALE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BindLodScale(u32);

impl BindLodScale {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 7:0, established.
    pub const fn s_scale(self) -> u32 {
        self.0 & 0xff
    }

    /// Bits 15:8, established.
    pub const fn t_scale(self) -> u32 {
        (self.0 >> 8) & 0xff
    }

    /// Bits 23:16, established.
    pub const fn r_scale(self) -> u32 {
        (self.0 >> 16) & 0xff
    }
}

/// The `BIND_LOD_BOUNDS` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BindLodBounds(u32);

impl BindLodBounds {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 9:0, established.
    pub const fn min(self) -> u32 {
        self.0 & 0x3ff
    }

    /// Bits 19:10, established.
    pub const fn max(self) -> u32 {
        (self.0 >> 10) & 0x3ff
    }
}

/// The `BIND_PHYS_SIZE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BindPhysSize(u32);

impl BindPhysSize {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn s_exp(self) -> u32 {
        self.0 & 0xf
    }

    /// Bits 7:4, established.
    pub const fn t_exp(self) -> u32 {
        (self.0 >> 4) & 0xf
    }

    /// Bits 11:8, established.
    pub const fn r_exp(self) -> u32 {
        (self.0 >> 8) & 0xf
    }
}

/// The `MS_CONTROL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MsControl(u32);

impl MsControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn enable(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn sample_count(self) -> MsControlSampleCount {
        MsControlSampleCount::from_bits((self.0 >> 1) & 0x1)
    }

    /// Bit 2, established.
    pub const fn mask_op(self) -> MsControlMaskOp {
        MsControlMaskOp::from_bits((self.0 >> 2) & 0x1)
    }

    /// Bits 10:3, established.
    pub const fn mask(self) -> u32 {
        (self.0 >> 3) & 0xff
    }

    /// Bit 11, established.
    pub const fn maintain_two(self) -> bool {
        (self.0 >> 11) & 1 != 0
    }

    /// Bits 13:12, established.
    pub const fn optimisation(self) -> MsControlOptimisation {
        MsControlOptimisation::from_bits((self.0 >> 12) & 0x3)
    }
}

/// The `MS_LOCATIONS` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MsLocations(u32);

impl MsLocations {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 2:0, established.
    pub const fn s0_x(self) -> u32 {
        self.0 & 0x7
    }

    /// Bits 5:3, established.
    pub const fn s0_y(self) -> u32 {
        (self.0 >> 3) & 0x7
    }

    /// Bits 8:6, established.
    pub const fn s1_x(self) -> u32 {
        (self.0 >> 6) & 0x7
    }

    /// Bits 11:9, established.
    pub const fn s1_y(self) -> u32 {
        (self.0 >> 9) & 0x7
    }

    /// Bits 14:12, established.
    pub const fn s2_x(self) -> u32 {
        (self.0 >> 12) & 0x7
    }

    /// Bits 17:15, established.
    pub const fn s2_y(self) -> u32 {
        (self.0 >> 15) & 0x7
    }

    /// Bits 20:18, established.
    pub const fn s3_x(self) -> u32 {
        (self.0 >> 18) & 0x7
    }

    /// Bits 23:21, established.
    pub const fn s3_y(self) -> u32 {
        (self.0 >> 21) & 0x7
    }
}

/// The `GC_LOAD_W4` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct GcLoadW4(u32);

impl GcLoadW4 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 23:0, established.
    pub const fn plane_mask_rg(self) -> u32 {
        self.0 & 0xffffff
    }

    /// Bit 31, established.
    pub const fn opaque_fill(self) -> bool {
        (self.0 >> 31) & 1 != 0
    }
}

/// The `GC_LOAD_W6` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct GcLoadW6(u32);

impl GcLoadW6 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 5:2, established.
    pub const fn colour_format(self) -> u32 {
        (self.0 >> 2) & 0xf
    }

    /// Bits 13:11, established.
    pub const fn read_format(self) -> u32 {
        (self.0 >> 11) & 0x7
    }
}

/// The `GC_LOAD_W7` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct GcLoadW7(u32);

impl GcLoadW7 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn draw_buffer(self) -> u32 {
        self.0 & 0xf
    }

    /// Bits 17:14, established.
    pub const fn readback_format(self) -> u32 {
        (self.0 >> 14) & 0xf
    }

    /// Bits 23:18, established.
    pub const fn read_base(self) -> u32 {
        (self.0 >> 18) & 0x3f
    }
}

/// The `DISPLAY_ID_RANGE` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DisplayIdRange(u32);

impl DisplayIdRange {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 6:0, established.
    pub const fn arg1(self) -> u32 {
        self.0 & 0x7f
    }

    /// Bits 12:7, established.
    pub const fn arg3(self) -> u32 {
        (self.0 >> 7) & 0x3f
    }

    /// Bits 18:13, established.
    pub const fn arg0(self) -> u32 {
        (self.0 >> 13) & 0x3f
    }

    /// Bits 23:19, established.
    pub const fn arg2(self) -> u32 {
        (self.0 >> 19) & 0x1f
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_mode_byte_overlay_5() {
        let w = ModeByteOverlay::new(0x5);
        assert_eq!(w.back_shown() as u32, 1, "back_shown");
        assert_eq!(w.code().bits(), 2, "code");
    }

    #[test]
    fn testvec_mode_byte_overlay_15() {
        let w = ModeByteOverlay::new(0x15);
        assert_eq!(w.back_shown() as u32, 1, "back_shown");
        assert_eq!(w.code().bits(), 2, "code");
    }

    #[test]
    fn testvec_mode_byte_overlay_2() {
        let w = ModeByteOverlay::new(0x2);
        assert_eq!(w.back_shown() as u32, 0, "back_shown");
        assert_eq!(w.code().bits(), 1, "code");
    }

    #[test]
    fn testvec_mode_byte_overlay_12() {
        let w = ModeByteOverlay::new(0x12);
        assert_eq!(w.back_shown() as u32, 0, "back_shown");
        assert_eq!(w.code().bits(), 1, "code");
    }

    #[test]
    fn testvec_texload_size_23() {
        let w = TexloadSize::new(0x23);
        assert_eq!(w.s_exp(), 3, "s_exp");
        assert_eq!(w.t_exp(), 2, "t_exp");
        assert_eq!(w.r_exp(), 0, "r_exp");
    }

    #[test]
    fn testvec_texload_size_677() {
        let w = TexloadSize::new(0x677);
        assert_eq!(w.s_exp(), 7, "s_exp");
        assert_eq!(w.t_exp(), 7, "t_exp");
        assert_eq!(w.r_exp(), 6, "r_exp");
    }

    #[test]
    fn testvec_texload_layout_2181() {
        let w = TexloadLayout::new(0x2181);
        assert_eq!(w.size_code().bits(), 1, "size_code");
        assert_eq!(w.dma() as u32, 0, "dma");
        assert_eq!(w.bank() as u32, 0, "bank");
        assert_eq!(w.layout_mode(), 0, "layout_mode");
        assert_eq!(w.s_addr_bits(), 3, "s_addr_bits");
        assert_eq!(w.t_addr_bits(), 4, "t_addr_bits");
    }

    #[test]
    fn testvec_texload_layout_2204() {
        let w = TexloadLayout::new(0x2204);
        assert_eq!(w.size_code().bits(), 0, "size_code");
        assert_eq!(w.dma() as u32, 1, "dma");
        assert_eq!(w.bank() as u32, 0, "bank");
        assert_eq!(w.layout_mode(), 0, "layout_mode");
        assert_eq!(w.s_addr_bits(), 4, "s_addr_bits");
        assert_eq!(w.t_addr_bits(), 4, "t_addr_bits");
    }

    #[test]
    fn testvec_texload_layout_218d() {
        let w = TexloadLayout::new(0x218d);
        assert_eq!(w.size_code().bits(), 1, "size_code");
        assert_eq!(w.dma() as u32, 1, "dma");
        assert_eq!(w.bank() as u32, 1, "bank");
        assert_eq!(w.layout_mode(), 0, "layout_mode");
        assert_eq!(w.s_addr_bits(), 3, "s_addr_bits");
        assert_eq!(w.t_addr_bits(), 4, "t_addr_bits");
    }

    #[test]
    fn testvec_texload_layout_9ad() {
        let w = TexloadLayout::new(0x9ad);
        assert_eq!(w.size_code().bits(), 1, "size_code");
        assert_eq!(w.dma() as u32, 1, "dma");
        assert_eq!(w.bank() as u32, 1, "bank");
        assert_eq!(w.layout_mode(), 1, "layout_mode");
        assert_eq!(w.s_addr_bits(), 3, "s_addr_bits");
        assert_eq!(w.t_addr_bits(), 1, "t_addr_bits");
    }

    #[test]
    fn testvec_bind_size_3077() {
        let w = BindSize::new(0x3077);
        assert_eq!(w.s_exp(), 7, "s_exp");
        assert_eq!(w.t_exp(), 7, "t_exp");
        assert_eq!(w.r_exp(), 0, "r_exp");
        assert_eq!(w.s_clamp() as u32, 1, "s_clamp");
        assert_eq!(w.t_clamp() as u32, 1, "t_clamp");
        assert_eq!(w.r_clamp() as u32, 0, "r_clamp");
    }

    #[test]
    fn testvec_bind_size_677() {
        let w = BindSize::new(0x677);
        assert_eq!(w.s_exp(), 7, "s_exp");
        assert_eq!(w.t_exp(), 7, "t_exp");
        assert_eq!(w.r_exp(), 6, "r_exp");
        assert_eq!(w.s_clamp() as u32, 0, "s_clamp");
        assert_eq!(w.t_clamp() as u32, 0, "t_clamp");
        assert_eq!(w.r_clamp() as u32, 0, "r_clamp");
    }

    #[test]
    fn testvec_ms_locations_7f6280() {
        let w = MsLocations::new(0x7f6280);
        assert_eq!(w.s0_x(), 0, "s0_x");
        assert_eq!(w.s0_y(), 0, "s0_y");
        assert_eq!(w.s1_x(), 2, "s1_x");
        assert_eq!(w.s1_y(), 1, "s1_y");
        assert_eq!(w.s2_x(), 6, "s2_x");
        assert_eq!(w.s2_y(), 6, "s2_y");
        assert_eq!(w.s3_x(), 7, "s3_x");
        assert_eq!(w.s3_y(), 3, "s3_y");
    }

    #[test]
    fn testvec_ms_locations_c8b640() {
        let w = MsLocations::new(0xc8b640);
        assert_eq!(w.s0_x(), 0, "s0_x");
        assert_eq!(w.s0_y(), 0, "s0_y");
        assert_eq!(w.s1_x(), 1, "s1_x");
        assert_eq!(w.s1_y(), 3, "s1_y");
        assert_eq!(w.s2_x(), 3, "s2_x");
        assert_eq!(w.s2_y(), 1, "s2_y");
        assert_eq!(w.s3_x(), 2, "s3_x");
        assert_eq!(w.s3_y(), 6, "s3_y");
    }

    #[test]
    fn testvec_ms_locations_d94880() {
        let w = MsLocations::new(0xd94880);
        assert_eq!(w.s0_x(), 0, "s0_x");
        assert_eq!(w.s0_y(), 0, "s0_y");
        assert_eq!(w.s1_x(), 2, "s1_x");
        assert_eq!(w.s1_y(), 4, "s1_y");
        assert_eq!(w.s2_x(), 4, "s2_x");
        assert_eq!(w.s2_y(), 2, "s2_y");
        assert_eq!(w.s3_x(), 6, "s3_x");
        assert_eq!(w.s3_y(), 6, "s3_y");
    }

    #[test]
    fn testvec_display_id_range_1040() {
        let w = DisplayIdRange::new(0x1040);
        assert_eq!(w.arg1(), 64, "arg1");
        assert_eq!(w.arg3(), 32, "arg3");
        assert_eq!(w.arg0(), 0, "arg0");
        assert_eq!(w.arg2(), 0, "arg2");
    }

    #[test]
    fn testvec_gc_load_w6_2804() {
        let w = GcLoadW6::new(0x2804);
        assert_eq!(w.colour_format(), 1, "colour_format");
        assert_eq!(w.read_format(), 5, "read_format");
    }

    #[test]
    fn testvec_gc_load_w6_3804() {
        let w = GcLoadW6::new(0x3804);
        assert_eq!(w.colour_format(), 1, "colour_format");
        assert_eq!(w.read_format(), 7, "read_format");
    }
}
