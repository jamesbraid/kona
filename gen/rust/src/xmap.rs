// generated from defs/xmap.toml by defs-gen - do not edit, change the source
// XMAP registers and the words written through them
#![allow(dead_code)]

/// (established)
pub mod cursor_channel {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x100;
    pub mod channel { // bits 4:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod cursor_base {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x101;
    pub mod base { // bits 16:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1ffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod cursor_pos {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x102;
    pub mod y { // bits 25:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x1fff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod x { // bits 12:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1fff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod cursor_mode {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x103;
    pub mod mode { // bits 8:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const OFF: u32 = 0; // established
        pub const CROSSHAIR: u32 = 1; // established
        pub const GLYPH: u32 = 2; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Off,
            Crosshair,
            Glyph,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Off,
                    1 => Self::Crosshair,
                    2 => Self::Glyph,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Off => 0,
                    Self::Crosshair => 1,
                    Self::Glyph => 2,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (established)
pub mod copy_strobe {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x104;
    pub mod force_cursor_pos { // bits 2:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod copy { // bits 0:0, established
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
/// (inferred)
pub mod subst_enable {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x105;
    pub mod enable { // bits 0:0, inferred
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
/// (established)
pub mod subst_low {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x106;
}
/// (established)
pub mod subst_high {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x107;
    pub mod mode { // bits 11:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod colour_high { // bits 9:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod read_select {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x108;
    pub mod chip { // bits 1:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (unknown)
pub mod unread_09 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x109;
}
/// (unknown)
pub mod crc_status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x10a;
}
/// (established)
pub mod board_count {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x10b;
    pub mod code { // bits 1:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const ONE_BOARD: u32 = 0; // established
        pub const TWO_BOARDS: u32 = 1; // established
        pub const FOUR_BOARDS: u32 = 2; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            OneBoard,
            TwoBoards,
            FourBoards,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::OneBoard,
                    1 => Self::TwoBoards,
                    2 => Self::FourBoards,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::OneBoard => 0,
                    Self::TwoBoards => 1,
                    Self::FourBoards => 2,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (inferred)
pub mod di_compare_addr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x10c;
    pub mod addr { // bits 5:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod imp_delay {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x10d;
    pub mod delay { // bits 8:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod pipe_delay {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x10e;
    pub mod delay { // bits 2:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod fastlist_config {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x10f;
    pub mod fixed { // bits 9:5, inferred
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod chunk_size { // bits 4:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (unknown)
pub mod unread_10 {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x110;
}
/// (inferred)
pub mod readback_addr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x111;
    pub mod addr { // bits 18:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7ffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod readback_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x112;
}
/// (established)
pub mod ind_addr {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x118;
    pub mod flag { // bits 18:18, unknown
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod page { // bits 17:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod colour { // bits 13:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const RED: u32 = 0; // established
        pub const GREEN: u32 = 1; // established
        pub const BLUE: u32 = 2; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Red,
            Green,
            Blue,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Red,
                    1 => Self::Green,
                    2 => Self::Blue,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Red => 0,
                    Self::Green => 1,
                    Self::Blue => 2,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod entry { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod cmap_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x119;
    pub mod red { // bits 29:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod green { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blue { // bits 9:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (unknown)
pub mod unused_1a {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x11a;
}
/// (established)
pub mod gamma_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x11b;
    pub mod entry { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod did_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x11c;
    pub mod cmap_base { // bits 23:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1ffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod planes_minus_1 { // bits 6:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod luminance { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod grey { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod chan_setup {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x11d;
    pub mod alpha_to_blue { // bits 6:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod no_gamma { // bits 5:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod ext_gamma { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod gamma_page { // bits 3:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod table_close {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x11e;
}
/// (inferred)
pub mod flush {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x11f;
}
pub const CMAP_LOAD_PIECE_WORDS: u32 = 0x200; // established
pub const COUNT: u32 = 0x4; // established
pub const CURSOR_COLOUR_WORD: u32 = 0x100; // established
pub const CURSOR_CROSSHAIR_BLOCK: u32 = 0x269c; // established
pub const CURSOR_HOT_SPOT_CROSSHAIR: u32 = 0x20; // established
pub const CURSOR_IMAGE_WORDS: u32 = 0x100; // established
pub const CURSOR_POS_BIAS: u32 = 0x20; // inferred
pub const CURSOR_PRIORITY_NONE: u32 = 0x20; // established
pub const CURSOR_SLOTS: u32 = 0x27; // established
pub const CURSOR_SLOT_WORDS: u32 = 0x104; // established
pub const DID_ENTRIES: u32 = 0x80; // established
pub const EXT_GAMMA_ENTRIES: u32 = 0x400; // established
pub const EXT_GAMMA_MARKER: u32 = 0xdeadfeed; // established
pub const GAMMA_ENTRIES_PER_PAGE: u32 = 0x1000; // established
pub const GAMMA_PAGES: u32 = 0x10; // established
pub const TRAILING_FLUSH_WRITES: u32 = 0x3; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn fastlist_config_339() {
        assert_eq!(fastlist_config::chunk_size::get(0x339), 25);
        assert_eq!(fastlist_config::fixed::get(0x339), 25);
    }

    #[test]
    fn did_data_80050() {
        assert_eq!(did_data::grey::get(0x80050), 0);
        assert_eq!(did_data::luminance::get(0x80050), 0);
        assert_eq!(did_data::planes_minus_1::get(0x80050), 10);
        assert_eq!(did_data::cmap_base::get(0x80050), 4096);
    }
}
