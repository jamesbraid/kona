// generated from kona bf4e58d999c7 KONA_VOC_DECODE.h - do not edit, regenerate in kona
//!
//! Video-output chip registers of channel id 0 on the display bus.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established: bus address of register 0 of channel id 0.
pub const BASE_ADDRESS: u32 = 0x200;
/// established: bus-address step per channel id.
pub const ID_STRIDE: u32 = 0x100;
/// established: channel ids on the base board.
pub const BASE_IDS: u32 = 8;
/// established: edge slots of the selected signal.
pub const EDGE_SLOTS: u32 = 8;
/// established: edge position meaning the slot is unused.
pub const EDGE_SLOT_UNUSED: u32 = 0x1fff;
/// established: pixels in a groupxel.
pub const GROUPXEL_PIXELS: u32 = 4;
/// established: pan wraps every 160 pixels.
pub const PAN_GROUPXELS: u32 = 160;

/// Display-bus register `status`: read, 32-bit; reset unknown; established.
pub const REG_STATUS: u32 = 0x0200;
pub const REG_STATUS_WIDTH: u32 = 32;
/// Display-bus register `control`: read/write, 32-bit; reset unknown; established.
pub const REG_CONTROL: u32 = 0x0201;
pub const REG_CONTROL_WIDTH: u32 = 32;
/// Display-bus register `dbuf_request`: read/write, 32-bit; reset unknown; established.
pub const REG_DBUF_REQUEST: u32 = 0x0202;
pub const REG_DBUF_REQUEST_WIDTH: u32 = 32;
/// Display-bus register `req_window`: read/write, 32-bit; reset unknown; established.
pub const REG_REQ_WINDOW: u32 = 0x0203;
pub const REG_REQ_WINDOW_WIDTH: u32 = 32;
/// Display-bus register `req_origin`: read/write, 32-bit; reset unknown; unknown.
pub const REG_REQ_ORIGIN: u32 = 0x0204;
pub const REG_REQ_ORIGIN_WIDTH: u32 = 32;
/// Display-bus register `req_size`: read/write, 32-bit; reset unknown; unknown.
pub const REG_REQ_SIZE: u32 = 0x0205;
pub const REG_REQ_SIZE_WIDTH: u32 = 32;
/// Display-bus register `seq_control`: read/write, 32-bit; reset unknown; established.
pub const REG_SEQ_CONTROL: u32 = 0x0206;
pub const REG_SEQ_CONTROL_WIDTH: u32 = 32;
/// Display-bus register `seq_initial`: read/write, 32-bit; reset unknown; established.
pub const REG_SEQ_INITIAL: u32 = 0x0207;
pub const REG_SEQ_INITIAL_WIDTH: u32 = 32;
/// Display-bus register `genlock_vphase`: read/write, 32-bit; reset unknown; established.
pub const REG_GENLOCK_VPHASE: u32 = 0x0208;
pub const REG_GENLOCK_VPHASE_WIDTH: u32 = 32;
/// Display-bus register `state_table`: read/write, 32-bit; reset unknown; established.
pub const REG_STATE_TABLE: u32 = 0x0209;
pub const REG_STATE_TABLE_WIDTH: u32 = 32;
/// Display-bus register `line_type_a`: read/write, 32-bit; reset unknown; established.
pub const REG_LINE_TYPE_A: u32 = 0x020a;
pub const REG_LINE_TYPE_A_WIDTH: u32 = 32;
/// Display-bus register `line_type_b`: read/write, 32-bit; reset unknown; established.
pub const REG_LINE_TYPE_B: u32 = 0x020b;
pub const REG_LINE_TYPE_B_WIDTH: u32 = 32;
/// Display-bus register `edge_slot`: read/write, 32-bit, 8 consecutive registers; reset unknown; established.
pub const REG_EDGE_SLOT: u32 = 0x020c;
pub const REG_EDGE_SLOT_WIDTH: u32 = 32;
pub const REG_EDGE_SLOT_COUNT: u32 = 8;
/// Display-bus register `pixel_blank`: read/write, 32-bit; reset unknown; established.
pub const REG_PIXEL_BLANK: u32 = 0x0214;
pub const REG_PIXEL_BLANK_WIDTH: u32 = 32;
/// Display-bus register `pfd_control`: read/write, 32-bit; reset unknown; established.
pub const REG_PFD_CONTROL: u32 = 0x0230;
pub const REG_PFD_CONTROL_WIDTH: u32 = 32;
/// Display-bus register `seq_low`: read/write, 32-bit; reset unknown; established.
pub const REG_SEQ_LOW: u32 = 0x0231;
pub const REG_SEQ_LOW_WIDTH: u32 = 32;
/// Display-bus register `seq_high`: read/write, 32-bit; reset unknown; established.
pub const REG_SEQ_HIGH: u32 = 0x0232;
pub const REG_SEQ_HIGH_WIDTH: u32 = 32;
/// Display-bus register `pfd_diag`: read/write, 32-bit; reset unknown; established.
pub const REG_PFD_DIAG: u32 = 0x0233;
pub const REG_PFD_DIAG_WIDTH: u32 = 32;
/// Display-bus register `frame_duration`: read/write, 32-bit; reset unknown; established.
pub const REG_FRAME_DURATION: u32 = 0x0234;
pub const REG_FRAME_DURATION_WIDTH: u32 = 32;
/// Display-bus register `sync_detect_control`: read/write, 32-bit; reset unknown; established.
pub const REG_SYNC_DETECT_CONTROL: u32 = 0x0243;
pub const REG_SYNC_DETECT_CONTROL_WIDTH: u32 = 32;
/// Display-bus register `req_control`: read/write, 32-bit; reset unknown; established.
pub const REG_REQ_CONTROL: u32 = 0x0244;
pub const REG_REQ_CONTROL_WIDTH: u32 = 32;
/// Display-bus register `tiles_per_row`: read/write, 32-bit; reset unknown; established.
pub const REG_TILES_PER_ROW: u32 = 0x0245;
pub const REG_TILES_PER_ROW_WIDTH: u32 = 32;
/// Display-bus register `line_start`: read/write, 32-bit; reset unknown; established.
pub const REG_LINE_START: u32 = 0x0247;
pub const REG_LINE_START_WIDTH: u32 = 32;
/// Display-bus register `line_middle`: read/write, 32-bit; reset unknown; established.
pub const REG_LINE_MIDDLE: u32 = 0x0248;
pub const REG_LINE_MIDDLE_WIDTH: u32 = 32;
/// Display-bus register `line_end`: read/write, 32-bit; reset unknown; established.
pub const REG_LINE_END: u32 = 0x0249;
pub const REG_LINE_END_WIDTH: u32 = 32;
/// Display-bus register `pan`: read/write, 32-bit; reset unknown; established.
pub const REG_PAN: u32 = 0x024a;
pub const REG_PAN_WIDTH: u32 = 32;
/// Display-bus register `z_request`: read/write, 32-bit; reset unknown; established.
pub const REG_Z_REQUEST: u32 = 0x024b;
pub const REG_Z_REQUEST_WIDTH: u32 = 32;
/// Display-bus register `field_start0`: read/write, 32-bit, 8 consecutive registers; reset unknown; inferred.
pub const REG_FIELD_START0: u32 = 0x0250;
pub const REG_FIELD_START0_WIDTH: u32 = 32;
pub const REG_FIELD_START0_COUNT: u32 = 8;
/// Display-bus register `field_start1`: read/write, 32-bit, 8 consecutive registers; reset unknown; inferred.
pub const REG_FIELD_START1: u32 = 0x0258;
pub const REG_FIELD_START1_WIDTH: u32 = 32;
pub const REG_FIELD_START1_COUNT: u32 = 8;
/// Display-bus register `field_pattern`: read/write, 32-bit, 8 consecutive registers; reset unknown; inferred.
pub const REG_FIELD_PATTERN: u32 = 0x0260;
pub const REG_FIELD_PATTERN_WIDTH: u32 = 32;
pub const REG_FIELD_PATTERN_COUNT: u32 = 8;
/// Display-bus register `pll_control`: read/write, 32-bit; reset unknown; established.
pub const REG_PLL_CONTROL: u32 = 0x0270;
pub const REG_PLL_CONTROL_WIDTH: u32 = 32;
/// Display-bus register `pll_address`: read/write, 32-bit; reset unknown; established.
pub const REG_PLL_ADDRESS: u32 = 0x0271;
pub const REG_PLL_ADDRESS_WIDTH: u32 = 32;
/// Display-bus register `pll_readback`: read, 32-bit; reset unknown; established.
pub const REG_PLL_READBACK: u32 = 0x0272;
pub const REG_PLL_READBACK_WIDTH: u32 = 32;
/// Display-bus register `pll_data`: read/write, 32-bit; reset unknown; established.
pub const REG_PLL_DATA: u32 = 0x0273;
pub const REG_PLL_DATA_WIDTH: u32 = 32;
/// Display-bus register `genlock_hclock`: read/write, 32-bit; reset unknown; established.
pub const REG_GENLOCK_HCLOCK: u32 = 0x0281;
pub const REG_GENLOCK_HCLOCK_WIDTH: u32 = 32;
/// Display-bus register `genlock_line_ratio`: read/write, 32-bit; reset unknown; established.
pub const REG_GENLOCK_LINE_RATIO: u32 = 0x0282;
pub const REG_GENLOCK_LINE_RATIO_WIDTH: u32 = 32;
/// Display-bus register `hmask2`: read/write, 32-bit; reset unknown; established.
pub const REG_HMASK2: u32 = 0x0283;
pub const REG_HMASK2_WIDTH: u32 = 32;
/// Display-bus register `backporch_clamp`: read/write, 32-bit; reset unknown; established.
pub const REG_BACKPORCH_CLAMP: u32 = 0x0284;
pub const REG_BACKPORCH_CLAMP_WIDTH: u32 = 32;
/// Display-bus register `fifo_control`: read/write, 32-bit; reset unknown; established.
pub const REG_FIFO_CONTROL: u32 = 0x028a;
pub const REG_FIFO_CONTROL_WIDTH: u32 = 32;
/// Display-bus register `fifo_pointer`: read/write, 32-bit; reset unknown; established.
pub const REG_FIFO_POINTER: u32 = 0x028b;
pub const REG_FIFO_POINTER_WIDTH: u32 = 32;
/// Display-bus register `sac_control`: read/write, 32-bit; reset unknown; established.
pub const REG_SAC_CONTROL: u32 = 0x028d;
pub const REG_SAC_CONTROL_WIDTH: u32 = 32;
/// Display-bus register `scaler_control`: read/write, 32-bit; reset unknown; established.
pub const REG_SCALER_CONTROL: u32 = 0x028f;
pub const REG_SCALER_CONTROL_WIDTH: u32 = 32;
/// Display-bus register `x_coeff_max`: read/write, 32-bit; reset unknown; established.
pub const REG_X_COEFF_MAX: u32 = 0x0290;
pub const REG_X_COEFF_MAX_WIDTH: u32 = 32;
/// Display-bus register `x_slope`: read/write, 32-bit; reset unknown; established.
pub const REG_X_SLOPE: u32 = 0x0291;
pub const REG_X_SLOPE_WIDTH: u32 = 32;
/// Display-bus register `x_delta`: read/write, 32-bit; reset unknown; established.
pub const REG_X_DELTA: u32 = 0x0292;
pub const REG_X_DELTA_WIDTH: u32 = 32;
/// Display-bus register `x_seg_start`: read/write, 32-bit, 4 consecutive registers; reset unknown; established.
pub const REG_X_SEG_START: u32 = 0x0293;
pub const REG_X_SEG_START_WIDTH: u32 = 32;
pub const REG_X_SEG_START_COUNT: u32 = 4;
/// Display-bus register `y_coeff_max`: read/write, 32-bit; reset unknown; established.
pub const REG_Y_COEFF_MAX: u32 = 0x0297;
pub const REG_Y_COEFF_MAX_WIDTH: u32 = 32;
/// Display-bus register `y_slope`: read/write, 32-bit; reset unknown; established.
pub const REG_Y_SLOPE: u32 = 0x0298;
pub const REG_Y_SLOPE_WIDTH: u32 = 32;
/// Display-bus register `y_delta`: read/write, 32-bit; reset unknown; established.
pub const REG_Y_DELTA: u32 = 0x0299;
pub const REG_Y_DELTA_WIDTH: u32 = 32;
/// Display-bus register `y_seg_start`: read/write, 32-bit, 4 consecutive registers; reset unknown; established.
pub const REG_Y_SEG_START: u32 = 0x029a;
pub const REG_Y_SEG_START_WIDTH: u32 = 32;
pub const REG_Y_SEG_START_COUNT: u32 = 4;

/// Values of `dbuf_mode` in `Control` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ControlDbufMode {
    /// established.
    Immediate,
    /// established.
    CopyImpregLoad,
    /// established.
    CopySwap,
    /// established.
    CopyFrame,
    /// A value the notes do not name.
    Other(u8),
}

impl ControlDbufMode {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Immediate,
            0x1 => Self::CopyImpregLoad,
            0x2 => Self::CopySwap,
            0x3 => Self::CopyFrame,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Immediate => 0x0,
            Self::CopyImpregLoad => 0x1,
            Self::CopySwap => 0x2,
            Self::CopyFrame => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `pixel_mux` in `Control` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ControlPixelMux {
    /// established.
    P44,
    /// established.
    P42,
    /// established.
    P41,
    /// established.
    P48,
    /// established.
    Fs4,
    /// established.
    Fs2,
    /// established.
    Fs1,
    /// established.
    Fs8,
    /// A value the notes do not name.
    Other(u8),
}

impl ControlPixelMux {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::P44,
            0x1 => Self::P42,
            0x2 => Self::P41,
            0x3 => Self::P48,
            0x4 => Self::Fs4,
            0x5 => Self::Fs2,
            0x6 => Self::Fs1,
            0x7 => Self::Fs8,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::P44 => 0x0,
            Self::P42 => 0x1,
            Self::P41 => 0x2,
            Self::P48 => 0x3,
            Self::Fs4 => 0x4,
            Self::Fs2 => 0x5,
            Self::Fs1 => 0x6,
            Self::Fs8 => 0x7,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `reset_source` in `SeqControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SeqControlResetSource {
    /// established.
    None,
    /// established.
    OutputFormatA,
    /// established.
    PhaseDetector,
    /// A value the notes do not name.
    Other(u8),
}

impl SeqControlResetSource {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::None,
            0x1 => Self::OutputFormatA,
            0x3 => Self::PhaseDetector,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::None => 0x0,
            Self::OutputFormatA => 0x1,
            Self::PhaseDetector => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `clock_select` in `PfdControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum PfdControlClockSelect {
    /// established.
    Host,
    /// established.
    HostDiv2,
    /// established.
    HostDiv4,
    /// inferred.
    Fourth,
    /// A value the notes do not name.
    Other(u8),
}

impl PfdControlClockSelect {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Host,
            0x1 => Self::HostDiv2,
            0x2 => Self::HostDiv4,
            0x3 => Self::Fourth,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Host => 0x0,
            Self::HostDiv2 => 0x1,
            Self::HostDiv4 => 0x2,
            Self::Fourth => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `csync_source` in `PfdControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum PfdControlCsyncSource {
    /// established.
    Internal,
    /// established.
    External,
    /// established.
    OutputFormat,
    /// A value the notes do not name.
    Other(u8),
}

impl PfdControlCsyncSource {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Internal,
            0x1 => Self::External,
            0x2 => Self::OutputFormat,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Internal => 0x0,
            Self::External => 0x1,
            Self::OutputFormat => 0x2,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `pixel_size` in `ReqControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ReqControlPixelSize {
    /// established.
    Small,
    /// established.
    Medium,
    /// established.
    Large,
    /// established.
    Xlarge,
    /// A value the notes do not name.
    Other(u8),
}

impl ReqControlPixelSize {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Small,
            0x1 => Self::Medium,
            0x2 => Self::Large,
            0x3 => Self::Xlarge,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Small => 0x0,
            Self::Medium => 0x1,
            Self::Large => 0x2,
            Self::Xlarge => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `source` in `GenlockHclock` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum GenlockHclockSource {
    /// established.
    External,
    /// established.
    Internal,
    /// A value the notes do not name.
    Other(u8),
}

impl GenlockHclockSource {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::External,
            0x1 => Self::Internal,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::External => 0x0,
            Self::Internal => 0x1,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `edge` in `GenlockLineRatio` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum GenlockLineRatioEdge {
    /// established.
    Falling,
    /// established.
    Rising,
    /// A value the notes do not name.
    Other(u8),
}

impl GenlockLineRatioEdge {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Falling,
            0x1 => Self::Rising,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Falling => 0x0,
            Self::Rising => 0x1,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `x_filter` in `ScalerControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ScalerControlXFilter {
    /// established.
    None,
    /// established.
    Minify,
    /// established.
    Magnify,
    /// A value the notes do not name.
    Other(u8),
}

impl ScalerControlXFilter {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::None,
            0x1 => Self::Minify,
            0x2 => Self::Magnify,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::None => 0x0,
            Self::Minify => 0x1,
            Self::Magnify => 0x2,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `enc_frame_mode` in `ScalerControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ScalerControlEncFrameMode {
    /// established.
    NoDrop,
    /// established.
    FieldDrop,
    /// established.
    FrameDrop,
    /// established.
    LowLatency,
    /// A value the notes do not name.
    Other(u8),
}

impl ScalerControlEncFrameMode {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::NoDrop,
            0x1 => Self::FieldDrop,
            0x2 => Self::FrameDrop,
            0x3 => Self::LowLatency,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::NoDrop => 0x0,
            Self::FieldDrop => 0x1,
            Self::FrameDrop => 0x2,
            Self::LowLatency => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// The `status` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Status(u32);

impl Status {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn hsync(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn vsync(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn csync(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn cblank(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn trisync(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 5, established.
    pub const fn field_start(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 6, established.
    pub const fn field(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bit 7, established.
    pub const fn frame_start(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, established.
    pub const fn video_active(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, established.
    pub const fn line_start(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bit 10, established.
    pub const fn stereo_out(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bit 11, established.
    pub const fn impreg_load(self) -> bool {
        (self.0 >> 11) & 1 != 0
    }

    /// Bit 12, established.
    pub const fn xmapreg_load(self) -> bool {
        (self.0 >> 12) & 1 != 0
    }

    /// Bit 13, established.
    pub const fn vdrc_enable(self) -> bool {
        (self.0 >> 13) & 1 != 0
    }

    /// Bits 17:16, established.
    pub const fn fs_colour_field(self) -> u32 {
        (self.0 >> 16) & 0x3
    }

    /// Bit 18, established.
    pub const fn int_fifo_over(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }

    /// Bit 19, established.
    pub const fn int_fifo_under(self) -> bool {
        (self.0 >> 19) & 1 != 0
    }

    /// Bit 20, established.
    pub const fn int_ext_sync_loss(self) -> bool {
        (self.0 >> 20) & 1 != 0
    }

    /// Bit 21, established.
    pub const fn int_ext_sync_detect(self) -> bool {
        (self.0 >> 21) & 1 != 0
    }

    /// Bit 22, established.
    pub const fn int_ext_frame(self) -> bool {
        (self.0 >> 22) & 1 != 0
    }

    /// Bit 23, established.
    pub const fn int_vdrc(self) -> bool {
        (self.0 >> 23) & 1 != 0
    }

    /// Bit 24, established.
    pub const fn int_host(self) -> bool {
        (self.0 >> 24) & 1 != 0
    }
}

/// The `control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Control(u32);

impl Control {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn dbuf_mode(self) -> ControlDbufMode {
        ControlDbufMode::from_bits(self.0 & 0x3)
    }

    /// Bit 2, established.
    pub const fn ie_fifo_over(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn ie_fifo_under(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn ie_ext_sync_loss(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 5, established.
    pub const fn ie_ext_sync_detect(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 6, established.
    pub const fn ie_ext_frame(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bit 7, established.
    pub const fn ie_vdrc(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, established.
    pub const fn ie_host(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bits 11:9, established.
    pub const fn pixel_mux(self) -> ControlPixelMux {
        ControlPixelMux::from_bits((self.0 >> 9) & 0x7)
    }
}

/// The `dbuf_request` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DbufRequest(u32);

impl DbufRequest {
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
}

/// The `req_window` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ReqWindow(u32);

impl ReqWindow {
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

    /// Bits 14:5, established.
    pub const fn width_groupxels_m1(self) -> u32 {
        (self.0 >> 5) & 0x3ff
    }
}

/// The `seq_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct SeqControl(u32);

impl SeqControl {
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

    /// Bits 2:1, established.
    pub const fn reset_source(self) -> SeqControlResetSource {
        SeqControlResetSource::from_bits((self.0 >> 1) & 0x3)
    }

    /// Bit 3, established.
    pub const fn clear_state_pointer(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bits 8:4, established.
    pub const fn line_edge_select(self) -> u32 {
        (self.0 >> 4) & 0x1f
    }

    /// Bits 12:9, established.
    pub const fn reset_rate(self) -> u32 {
        (self.0 >> 9) & 0xf
    }
}

/// The `seq_initial` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct SeqInitial(u32);

impl SeqInitial {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 13:0, established.
    pub const fn initial_levels(self) -> u32 {
        self.0 & 0x3fff
    }

    /// Bit 16, established.
    pub const fn tristate_csync(self) -> bool {
        (self.0 >> 16) & 1 != 0
    }

    /// Bit 17, established.
    pub const fn tristate_hsync(self) -> bool {
        (self.0 >> 17) & 1 != 0
    }

    /// Bit 18, established.
    pub const fn tristate_vsync(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }

    /// Bits 31:19, established.
    pub const fn vphase_count(self) -> u32 {
        self.0 >> 19
    }
}

/// The `genlock_vphase` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct GenlockVphase(u32);

impl GenlockVphase {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 12:0, established.
    pub const fn internal_vphase(self) -> u32 {
        self.0 & 0x1fff
    }

    /// Bits 25:13, established.
    pub const fn external_vphase(self) -> u32 {
        (self.0 >> 13) & 0x1fff
    }

    /// Bits 28:26, established.
    pub const fn hysteresis_width(self) -> u32 {
        (self.0 >> 26) & 0x7
    }

    /// Bit 29, established.
    pub const fn hysteresis_enable(self) -> bool {
        (self.0 >> 29) & 1 != 0
    }
}

/// The `line_type_b` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct LineTypeB(u32);

impl LineTypeB {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 17:0, established.
    pub const fn edge_mask_hi(self) -> u32 {
        self.0 & 0x3ffff
    }

    /// Bits 30:18, established.
    pub const fn length_m3(self) -> u32 {
        (self.0 >> 18) & 0x1fff
    }
}

/// The `edge_slot` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct EdgeSlot(u32);

impl EdgeSlot {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 12:0, established.
    pub const fn position(self) -> u32 {
        self.0 & 0x1fff
    }
}

/// The `pixel_blank` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct PixelBlank(u32);

impl PixelBlank {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 7:0, established.
    pub const fn first(self) -> u32 {
        self.0 & 0xff
    }

    /// Bits 15:8, established.
    pub const fn last(self) -> u32 {
        (self.0 >> 8) & 0xff
    }

    /// Bit 16, established.
    pub const fn enable(self) -> bool {
        (self.0 >> 16) & 1 != 0
    }
}

/// The `pfd_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct PfdControl(u32);

impl PfdControl {
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
    pub const fn flip(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bits 3:2, established.
    pub const fn clock_select(self) -> PfdControlClockSelect {
        PfdControlClockSelect::from_bits((self.0 >> 2) & 0x3)
    }

    /// Bit 4, established.
    pub const fn frame_select(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bits 15:5, established.
    pub const fn precision(self) -> u32 {
        (self.0 >> 5) & 0x7ff
    }

    /// Bits 23:16, established.
    pub const fn line_count(self) -> u32 {
        (self.0 >> 16) & 0xff
    }

    /// Bits 25:24, established.
    pub const fn csync_source(self) -> PfdControlCsyncSource {
        PfdControlCsyncSource::from_bits((self.0 >> 24) & 0x3)
    }

    /// Bits 29:26, established.
    pub const fn line_count_hi(self) -> u32 {
        (self.0 >> 26) & 0xf
    }
}

/// The `pfd_diag` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct PfdDiag(u32);

impl PfdDiag {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn duration(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 23:12, established.
    pub const fn previous(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }
}

/// The `frame_duration` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FrameDuration(u32);

impl FrameDuration {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 19:0, established.
    pub const fn duration(self) -> u32 {
        self.0 & 0xfffff
    }
}

/// The `sync_detect_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct SyncDetectControl(u32);

impl SyncDetectControl {
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

    /// Bits 11:1, established.
    pub const fn line_count(self) -> u32 {
        (self.0 >> 1) & 0x7ff
    }

    /// Bits 14:12, established.
    pub const fn frames_off(self) -> u32 {
        (self.0 >> 12) & 0x7
    }

    /// Bits 17:15, established.
    pub const fn frames_on(self) -> u32 {
        (self.0 >> 15) & 0x7
    }

    /// Bit 18, established.
    pub const fn frame_ref_select(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }
}

/// The `req_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ReqControl(u32);

impl ReqControl {
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
    pub const fn read_enable(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn ext_request_enable(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn ext_request(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn request_done(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bits 6:5, established.
    pub const fn pixel_size(self) -> ReqControlPixelSize {
        ReqControlPixelSize::from_bits((self.0 >> 5) & 0x3)
    }

    /// Bit 7, established.
    pub const fn dither(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, inferred.
    pub const fn transfer_size(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, established.
    pub const fn transfer_alpha(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bit 10, established.
    pub const fn transfer_z(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bits 21:11, established.
    pub const fn fifo_balance(self) -> u32 {
        (self.0 >> 11) & 0x7ff
    }

    /// Bit 22, established.
    pub const fn arbiter_status(self) -> bool {
        (self.0 >> 22) & 1 != 0
    }

    /// Bit 23, established.
    pub const fn interlaced_cursor(self) -> bool {
        (self.0 >> 23) & 1 != 0
    }
}

/// The `tiles_per_row` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TilesPerRow(u32);

impl TilesPerRow {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 4:0, established.
    pub const fn tiles(self) -> u32 {
        self.0 & 0x1f
    }
}

/// The `line_start` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct LineStart(u32);

impl LineStart {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 2:0, established.
    pub const fn tiles_m1(self) -> u32 {
        self.0 & 0x7
    }

    /// Bits 13:3, established.
    pub const fn groupxels_m1(self) -> u32 {
        (self.0 >> 3) & 0x7ff
    }

    /// Bit 14, established.
    pub const fn valid(self) -> bool {
        (self.0 >> 14) & 1 != 0
    }
}

/// The `line_middle` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct LineMiddle(u32);

impl LineMiddle {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 2:0, established.
    pub const fn tiles_m1(self) -> u32 {
        self.0 & 0x7
    }

    /// Bits 13:3, established.
    pub const fn groupxels_m1(self) -> u32 {
        (self.0 >> 3) & 0x7ff
    }

    /// Bit 14, established.
    pub const fn valid(self) -> bool {
        (self.0 >> 14) & 1 != 0
    }

    /// Bits 22:15, established.
    pub const fn repeat_count(self) -> u32 {
        (self.0 >> 15) & 0xff
    }
}

/// The `line_end` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct LineEnd(u32);

impl LineEnd {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 2:0, established.
    pub const fn tiles_m1(self) -> u32 {
        self.0 & 0x7
    }

    /// Bits 13:3, established.
    pub const fn groupxels_m1(self) -> u32 {
        (self.0 >> 3) & 0x7ff
    }

    /// Bit 14, established.
    pub const fn valid(self) -> bool {
        (self.0 >> 14) & 1 != 0
    }
}

/// The `pan` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Pan(u32);

impl Pan {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 5:0, established.
    pub const fn groupxel_offset(self) -> u32 {
        self.0 & 0x3f
    }

    /// Bits 7:6, established.
    pub const fn pixel_offset(self) -> u32 {
        (self.0 >> 6) & 0x3
    }
}

/// The `z_request` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ZRequest(u32);

impl ZRequest {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn field_count(self) -> u32 {
        self.0 & 0xf
    }

    /// Bit 4, established.
    pub const fn enable(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }
}

/// The `field_start0` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FieldStart0(u32);

impl FieldStart0 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 6:0, established.
    pub const fn start_line(self) -> u32 {
        self.0 & 0x7f
    }

    /// Bits 19:7, established.
    pub const fn first_tile(self) -> u32 {
        (self.0 >> 7) & 0x1fff
    }

    /// Bits 23:20, established.
    pub const fn skip(self) -> u32 {
        (self.0 >> 20) & 0xf
    }
}

/// The `field_start1` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FieldStart1(u32);

impl FieldStart1 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 6:0, established.
    pub const fn start_line(self) -> u32 {
        self.0 & 0x7f
    }

    /// Bits 19:7, established.
    pub const fn first_tile(self) -> u32 {
        (self.0 >> 7) & 0x1fff
    }

    /// Bits 23:20, established.
    pub const fn skip(self) -> u32 {
        (self.0 >> 20) & 0xf
    }
}

/// The `field_pattern` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FieldPattern(u32);

impl FieldPattern {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn eye0(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bits 2:1, established.
    pub const fn colour0(self) -> u32 {
        (self.0 >> 1) & 0x3
    }

    /// Bit 3, established.
    pub const fn eye1(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bits 5:4, established.
    pub const fn colour1(self) -> u32 {
        (self.0 >> 4) & 0x3
    }

    /// Bit 6, established.
    pub const fn eye2(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bits 8:7, established.
    pub const fn colour2(self) -> u32 {
        (self.0 >> 7) & 0x3
    }

    /// Bit 9, established.
    pub const fn eye3(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bits 11:10, established.
    pub const fn colour3(self) -> u32 {
        (self.0 >> 10) & 0x3
    }

    /// Bits 23:12, established.
    pub const fn active_lines(self) -> u32 {
        (self.0 >> 12) & 0xfff
    }

    /// Bits 27:24, established.
    pub const fn next_cursor_offset(self) -> u32 {
        (self.0 >> 24) & 0xf
    }
}

/// The `pll_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct PllControl(u32);

impl PllControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn ready(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn auto_update(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn exec_read(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn exec_write_internal(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn exec_write_external(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }
}

/// The `pll_address` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct PllAddress(u32);

impl PllAddress {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 3:0, established.
    pub const fn address(self) -> u32 {
        self.0 & 0xf
    }
}

/// The `pll_readback` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct PllReadback(u32);

impl PllReadback {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 10:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0x7ff
    }
}

/// The `pll_data` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct PllData(u32);

impl PllData {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 10:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0x7ff
    }
}

/// The `genlock_hclock` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct GenlockHclock(u32);

impl GenlockHclock {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn source(self) -> GenlockHclockSource {
        GenlockHclockSource::from_bits(self.0 & 0x1)
    }

    /// Bit 1, established.
    pub const fn auto_clock(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bits 11:2, established.
    pub const fn h_divider(self) -> u32 {
        (self.0 >> 2) & 0x3ff
    }
}

/// The `genlock_line_ratio` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct GenlockLineRatio(u32);

impl GenlockLineRatio {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn edge(self) -> GenlockLineRatioEdge {
        GenlockLineRatioEdge::from_bits(self.0 & 0x1)
    }

    /// Bits 13:1, established.
    pub const fn line_length(self) -> u32 {
        (self.0 >> 1) & 0x1fff
    }

    /// Bits 21:14, established.
    pub const fn divider(self) -> u32 {
        (self.0 >> 14) & 0xff
    }
}

/// The `hmask2` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Hmask2(u32);

impl Hmask2 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 12:0, established.
    pub const fn start(self) -> u32 {
        self.0 & 0x1fff
    }

    /// Bits 25:13, established.
    pub const fn width(self) -> u32 {
        (self.0 >> 13) & 0x1fff
    }
}

/// The `backporch_clamp` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct BackporchClamp(u32);

impl BackporchClamp {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn edge(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bits 13:1, established.
    pub const fn delay(self) -> u32 {
        (self.0 >> 1) & 0x1fff
    }

    /// Bits 21:14, established.
    pub const fn width(self) -> u32 {
        (self.0 >> 14) & 0xff
    }
}

/// The `fifo_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FifoControl(u32);

impl FifoControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn high_water(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bit 12, established.
    pub const fn frame_reset_enable(self) -> bool {
        (self.0 >> 12) & 1 != 0
    }

    /// Bit 13, established.
    pub const fn field_reset_enable(self) -> bool {
        (self.0 >> 13) & 1 != 0
    }

    /// Bit 14, established.
    pub const fn ext_control_enable(self) -> bool {
        (self.0 >> 14) & 1 != 0
    }

    /// Bit 15, established.
    pub const fn int_source_odd(self) -> bool {
        (self.0 >> 15) & 1 != 0
    }
}

/// The `fifo_pointer` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FifoPointer(u32);

impl FifoPointer {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 10:0, established.
    pub const fn write_ptr(self) -> u32 {
        self.0 & 0x7ff
    }

    /// Bits 21:11, established.
    pub const fn read_ptr(self) -> u32 {
        (self.0 >> 11) & 0x7ff
    }
}

/// The `sac_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct SacControl(u32);

impl SacControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn input_enable(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn output_enable(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }
}

/// The `scaler_control` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ScalerControl(u32);

impl ScalerControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn x_filter(self) -> ScalerControlXFilter {
        ScalerControlXFilter::from_bits(self.0 & 0x3)
    }

    /// Bits 3:2, established.
    pub const fn y_filter(self) -> u32 {
        (self.0 >> 2) & 0x3
    }

    /// Bit 4, established.
    pub const fn x_magnify_start_pair(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bits 6:5, established.
    pub const fn seg_preload(self) -> u32 {
        (self.0 >> 5) & 0x3
    }

    /// Bit 7, established.
    pub const fn interlace(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, established.
    pub const fn field_out_select(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, established.
    pub const fn enc_field_dominance(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bit 10, established.
    pub const fn enc_fb_write_clock_enable(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bit 11, established.
    pub const fn fifo_read_clock(self) -> bool {
        (self.0 >> 11) & 1 != 0
    }

    /// Bits 13:12, established.
    pub const fn enc_frame_mode(self) -> ScalerControlEncFrameMode {
        ScalerControlEncFrameMode::from_bits((self.0 >> 12) & 0x3)
    }

    /// Bit 14, established.
    pub const fn enc_stereo_mode(self) -> bool {
        (self.0 >> 14) & 1 != 0
    }

    /// Bits 18:15, established.
    pub const fn vminify_kick(self) -> u32 {
        (self.0 >> 15) & 0xf
    }

    /// Bits 20:19, established.
    pub const fn first_field_inhibit(self) -> u32 {
        (self.0 >> 19) & 0x3
    }
}

/// The `x_coeff_max` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct XCoeffMax(u32);

impl XCoeffMax {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 19:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0xfffff
    }
}

/// The `x_slope` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct XSlope(u32);

impl XSlope {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 20:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0x1fffff
    }
}

/// The `x_delta` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct XDelta(u32);

impl XDelta {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 23:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0xffffff
    }
}

/// The `x_seg_start` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct XSegStart(u32);

impl XSegStart {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 23:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0xffffff
    }
}

/// The `y_coeff_max` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct YCoeffMax(u32);

impl YCoeffMax {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 19:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0xfffff
    }
}

/// The `y_slope` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct YSlope(u32);

impl YSlope {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 20:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0x1fffff
    }
}

/// The `y_delta` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct YDelta(u32);

impl YDelta {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 23:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0xffffff
    }
}

/// The `y_seg_start` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct YSegStart(u32);

impl YSegStart {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 23:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0xffffff
    }
}
