// generated from defs/dacidx.toml by defs-gen - do not edit, change the source
// video DAC and encoder indexed registers
#![allow(dead_code)]

/// Command register 1 (index 0x005 above), 8 bits. Start-up value 0x88: bits 7:6 = 2 (24-bit bypass colour), bit 3 = 1 (exposes the address register's hi (inferred)
pub mod command_1 {
    pub const WIDTH: u32 = 32;
    pub mod bypass_colour { // bits 7:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod palette_select { // bits 5:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod addr_high { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod calibrate { // bits 0:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Command register 2 (index 0x006 above), 8 bits. Start-up value 0xe4: bits 7:4 = 14 (24-bit true colour), bit 3 = 0 (no pedestal), bit 2 = 1 (sync on g (inferred)
pub mod command_2 {
    pub const WIDTH: u32 = 32;
    pub mod colour_mode { // bits 7:4, inferred
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod pedestal { // bits 3:3, inferred
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod sync_on_green { // bits 2:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Cursor control (index 0x204 above). The kernel writes 5 (X11 mode, enabled) for the channel that owns the cursor and 0 for the rest; start-up value 0. (established)
pub mod cursor_control {
    pub const WIDTH: u32 = 32;
    pub mod interlace { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod enable { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mode { // bits 1:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const X11: u32 = 1; // established
        pub const XGA: u32 = 2; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            X11,
            Xga,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    1 => Self::X11,
                    2 => Self::Xga,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::X11 => 1,
                    Self::Xga => 2,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
pub const CURSOR_COLOUR_2: u32 = 0x304; // established
pub const CURSOR_COLOUR_BASE: u32 = 0x303; // inferred
pub const CURSOR_CONTROL: u32 = 0x204; // established
pub const CURSOR_IMAGE_RAM: u32 = 0x400; // established
pub const CURSOR_X_HIGH: u32 = 0x201; // established
pub const CURSOR_X_LOW: u32 = 0x200; // established
pub const CURSOR_Y_HIGH: u32 = 0x203; // established
pub const CURSOR_Y_LOW: u32 = 0x202; // established
pub const ENCIDX_ACTIVE: u32 = 0x15; // established
pub const ENCIDX_ACTIVE_END: u32 = 0x17; // established
pub const ENCIDX_ACTIVE_START: u32 = 0x16; // established
pub const ENCIDX_BREEZEWAY: u32 = 0x11; // established
pub const ENCIDX_BURST_LENGTH: u32 = 0x12; // established
pub const ENCIDX_BURST_PHASE_LSB: u32 = 0x26; // established
pub const ENCIDX_BURST_PHASE_MSB: u32 = 0x27; // established
pub const ENCIDX_COLOUR_BACK_PORCH: u32 = 0x13; // established
pub const ENCIDX_COLOUR_BAR_LENGTH: u32 = 0x1e; // established
pub const ENCIDX_EQUALIZE_HIGH: u32 = 0x1b; // established
pub const ENCIDX_EQUALIZE_LOW: u32 = 0x1a; // established
pub const ENCIDX_EXT_COLOUR_BACK_PORCH: u32 = 0x14; // established
pub const ENCIDX_FORMAT_CONTROL: u32 = 0x1; // established
pub const ENCIDX_FRONT_PORCH: u32 = 0x19; // established
pub const ENCIDX_GLOBAL_CONTROL: u32 = 0x0; // established
pub const ENCIDX_HSYNC_TIP: u32 = 0x10; // established
pub const ENCIDX_INTERFACE_CONTROL: u32 = 0x2; // established
pub const ENCIDX_KEY_CONTROL: u32 = 0x4; // established
pub const ENCIDX_KEY_D: u32 = 0x5; // established
pub const ENCIDX_KEY_E: u32 = 0x6; // established
pub const ENCIDX_KEY_F: u32 = 0x7; // established
pub const ENCIDX_SUBCARRIER_FREQ_BYTE1: u32 = 0x23; // established
pub const ENCIDX_SUBCARRIER_FREQ_BYTE2: u32 = 0x22; // established
pub const ENCIDX_SUBCARRIER_FREQ_BYTE3: u32 = 0x21; // established
pub const ENCIDX_SUBCARRIER_FREQ_BYTE4: u32 = 0x20; // established
pub const ENCIDX_VIDEO_PHASE_LSB: u32 = 0x24; // established
pub const ENCIDX_VIDEO_PHASE_MSB: u32 = 0x25; // established
pub const ENCIDX_VSYNC_HIGH: u32 = 0x1d; // established
pub const ENCIDX_VSYNC_LOW: u32 = 0x1c; // established
pub const PIXEL_MASK: u32 = 0x4; // inferred
pub const START_UP_A: u32 = 0x5; // inferred
pub const START_UP_B: u32 = 0x6; // inferred

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn command_1_88() {
        assert_eq!(command_1::calibrate::get(0x88), 0);
        assert_eq!(command_1::addr_high::get(0x88), 1);
        assert_eq!(command_1::palette_select::get(0x88), 0);
        assert_eq!(command_1::bypass_colour::get(0x88), 2);
    }

    #[test]
    fn command_2_e4() {
        assert_eq!(command_2::sync_on_green::get(0xe4), 1);
        assert_eq!(command_2::pedestal::get(0xe4), 0);
        assert_eq!(command_2::colour_mode::get(0xe4), 14);
    }

    #[test]
    fn cursor_control_5() {
        assert_eq!(cursor_control::mode::get(0x5), 1);
        assert_eq!(cursor_control::enable::get(0x5), 1);
        assert_eq!(cursor_control::interlace::get(0x5), 0);
    }
}
