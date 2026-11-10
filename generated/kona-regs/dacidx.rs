// generated from kona ced256aa8371 KONA_DACIDX_DECODE.h - do not edit, regenerate in kona
//!
//! Indexed registers behind the video DAC and encoder ports, and the
//! DAC cursor control word.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// unknown: written 0x88 at start-up; role unknown.
pub const START_UP_A: u32 = 5;
/// unknown: written 0xe4 at start-up; role unknown.
pub const START_UP_B: u32 = 6;
/// established: cursor x, low byte; scaled to the channel output size.
pub const CURSOR_X_LOW: u32 = 0x200;
/// established: cursor x, high byte.
pub const CURSOR_X_HIGH: u32 = 0x201;
/// established: cursor y, low byte.
pub const CURSOR_Y_LOW: u32 = 0x202;
/// established: cursor y, high byte.
pub const CURSOR_Y_HIGH: u32 = 0x203;
/// established: layout below.
pub const CURSOR_CONTROL: u32 = 0x204;
/// inferred: six 10-bit colour values stream from here; the assignment of the six to colours is inferred.
pub const CURSOR_COLOUR_BASE: u32 = 0x303;
/// established: the diagnostic names this one: it belongs to colour 2.
pub const CURSOR_COLOUR_2: u32 = 0x304;
/// established: image RAM select; 256 words streamed low byte first.
pub const CURSOR_IMAGE_RAM: u32 = 0x400;
/// established: 5 bits.
pub const ENCIDX_GLOBAL_CONTROL: u32 = 0;
/// established: 7 bits.
pub const ENCIDX_FORMAT_CONTROL: u32 = 1;
/// established.
pub const ENCIDX_INTERFACE_CONTROL: u32 = 2;
/// established.
pub const ENCIDX_KEY_CONTROL: u32 = 4;
/// established.
pub const ENCIDX_KEY_D: u32 = 5;
/// established.
pub const ENCIDX_KEY_E: u32 = 6;
/// established.
pub const ENCIDX_KEY_F: u32 = 7;
/// established.
pub const ENCIDX_HSYNC_TIP: u32 = 16;
/// established.
pub const ENCIDX_BREEZEWAY: u32 = 17;
/// established.
pub const ENCIDX_BURST_LENGTH: u32 = 18;
/// established.
pub const ENCIDX_COLOUR_BACK_PORCH: u32 = 19;
/// established.
pub const ENCIDX_EXT_COLOUR_BACK_PORCH: u32 = 20;
/// established.
pub const ENCIDX_ACTIVE: u32 = 21;
/// established.
pub const ENCIDX_ACTIVE_START: u32 = 22;
/// established.
pub const ENCIDX_ACTIVE_END: u32 = 23;
/// established.
pub const ENCIDX_FRONT_PORCH: u32 = 25;
/// established.
pub const ENCIDX_EQUALIZE_LOW: u32 = 26;
/// established.
pub const ENCIDX_EQUALIZE_HIGH: u32 = 27;
/// established.
pub const ENCIDX_VSYNC_LOW: u32 = 28;
/// established.
pub const ENCIDX_VSYNC_HIGH: u32 = 29;
/// established.
pub const ENCIDX_COLOUR_BAR_LENGTH: u32 = 30;
/// established: frequency byte 4 (most significant).
pub const ENCIDX_SUBCARRIER_FREQ_BYTE4: u32 = 32;
/// established.
pub const ENCIDX_SUBCARRIER_FREQ_BYTE3: u32 = 33;
/// established.
pub const ENCIDX_SUBCARRIER_FREQ_BYTE2: u32 = 34;
/// established: frequency byte 1 (least significant).
pub const ENCIDX_SUBCARRIER_FREQ_BYTE1: u32 = 35;
/// established.
pub const ENCIDX_VIDEO_PHASE_LSB: u32 = 36;
/// established.
pub const ENCIDX_VIDEO_PHASE_MSB: u32 = 37;
/// established.
pub const ENCIDX_BURST_PHASE_LSB: u32 = 38;
/// established.
pub const ENCIDX_BURST_PHASE_MSB: u32 = 39;

/// Values of `mode` in `CursorControl` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CursorControlMode {
    /// established.
    X11,
    /// established.
    Xga,
    /// A value the notes do not name.
    Other(u8),
}

impl CursorControlMode {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x1 => Self::X11,
            0x2 => Self::Xga,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::X11 => 0x1,
            Self::Xga => 0x2,
            Self::Other(v) => v as u32,
        }
    }
}

/// The `CURSOR_CONTROL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CursorControl(u32);

impl CursorControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 1:0, established.
    pub const fn mode(self) -> CursorControlMode {
        CursorControlMode::from_bits(self.0 & 0x3)
    }

    /// Bit 2, established.
    pub const fn enable(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn interlace(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_cursor_control_5() {
        let w = CursorControl::new(0x5);
        assert_eq!(w.mode().bits(), 1, "mode");
        assert_eq!(w.enable() as u32, 1, "enable");
        assert_eq!(w.interlace() as u32, 0, "interlace");
    }
}
