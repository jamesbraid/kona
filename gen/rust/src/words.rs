// generated from defs/words.toml by defs-gen - do not edit, change the source
// multi-field words of the host command stream
#![allow(dead_code)]

/// (established)
pub mod bind_control {
    pub const WIDTH: u32 = 32;
    pub mod target { // bits 31:28, established
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const DETAIL: u32 = 0; // established
        pub const TEX1D: u32 = 1; // established
        pub const TEX2D: u32 = 2; // established
        pub const TEX3D: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Detail,
            Tex1d,
            Tex2d,
            Tex3d,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Detail,
                    1 => Self::Tex1d,
                    2 => Self::Tex2d,
                    3 => Self::Tex3d,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Detail => 0,
                    Self::Tex1d => 1,
                    Self::Tex2d => 2,
                    Self::Tex3d => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod mode { // bits 27:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const BICUBIC_TABLE: u32 = 0; // established
        pub const DETAIL_TABLE: u32 = 1; // established
        pub const SHARPEN_TABLE: u32 = 2; // established
        pub const NO_TABLE: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            BicubicTable,
            DetailTable,
            SharpenTable,
            NoTable,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::BicubicTable,
                    1 => Self::DetailTable,
                    2 => Self::SharpenTable,
                    3 => Self::NoTable,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::BicubicTable => 0,
                    Self::DetailTable => 1,
                    Self::SharpenTable => 2,
                    Self::NoTable => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod format_index { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod filter_slot { // bits 11:0, inferred
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
pub mod bind_lod_bounds {
    pub const WIDTH: u32 = 32;
    pub mod max { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod min { // bits 9:0, established
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
/// (established)
pub mod bind_lod_scale {
    pub const WIDTH: u32 = 32;
    pub mod r_scale { // bits 23:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod t_scale { // bits 15:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s_scale { // bits 7:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod bind_mode {
    pub const WIDTH: u32 = 32;
    pub mod first_bank { // bits 28:28, established
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mag_channels { // bits 27:26, established
        pub const SHIFT: u32 = 26;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const ALL: u32 = 0; // established
        pub const COLOUR: u32 = 1; // established
        pub const ALPHA: u32 = 2; // established
        pub const LEVEL0: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            All,
            Colour,
            Alpha,
            Level0,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::All,
                    1 => Self::Colour,
                    2 => Self::Alpha,
                    3 => Self::Level0,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::All => 0,
                    Self::Colour => 1,
                    Self::Alpha => 2,
                    Self::Level0 => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod channel_select { // bits 25:24, inferred
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod detail_level { // bits 23:21, established
        pub const SHIFT: u32 = 21;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod texel_format { // bits 20:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod env_on { // bits 13:13, inferred
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod clamp_style { // bits 12:12, inferred
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod shadow_compare { // bits 11:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const OFF: u32 = 0; // established
        pub const REF_AT_LEAST_TEXEL: u32 = 1; // established
        pub const REF_AT_MOST_TEXEL: u32 = 2; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Off,
            RefAtLeastTexel,
            RefAtMostTexel,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Off,
                    1 => Self::RefAtLeastTexel,
                    2 => Self::RefAtMostTexel,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Off => 0,
                    Self::RefAtLeastTexel => 1,
                    Self::RefAtMostTexel => 2,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod flags { // bits 9:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mag_filter { // bits 7:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NEAREST: u32 = 0; // established
        pub const LINEAR: u32 = 1; // established
        pub const BICUBIC: u32 = 2; // established
        pub const DETAIL_ADD: u32 = 3; // established
        pub const DETAIL_MODULATE: u32 = 4; // established
        pub const SHARPEN: u32 = 5; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Nearest,
            Linear,
            Bicubic,
            DetailAdd,
            DetailModulate,
            Sharpen,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Nearest,
                    1 => Self::Linear,
                    2 => Self::Bicubic,
                    3 => Self::DetailAdd,
                    4 => Self::DetailModulate,
                    5 => Self::Sharpen,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Nearest => 0,
                    Self::Linear => 1,
                    Self::Bicubic => 2,
                    Self::DetailAdd => 3,
                    Self::DetailModulate => 4,
                    Self::Sharpen => 5,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod min_filter { // bits 4:2, inferred
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NEAREST: u32 = 0; // established
        pub const LINEAR: u32 = 1; // established
        pub const BICUBIC: u32 = 2; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Nearest,
            Linear,
            Bicubic,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Nearest,
                    1 => Self::Linear,
                    2 => Self::Bicubic,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Nearest => 0,
                    Self::Linear => 1,
                    Self::Bicubic => 2,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod sampling { // bits 1:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const MODE2D: u32 = 0; // established
        pub const MODE3D: u32 = 1; // established
        pub const MODE3D_MIP: u32 = 2; // established
        pub const BICUBIC: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Mode2d,
            Mode3d,
            Mode3dMip,
            Bicubic,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Mode2d,
                    1 => Self::Mode3d,
                    2 => Self::Mode3dMip,
                    3 => Self::Bicubic,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Mode2d => 0,
                    Self::Mode3d => 1,
                    Self::Mode3dMip => 2,
                    Self::Bicubic => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (established)
pub mod bind_phys_size {
    pub const WIDTH: u32 = 32;
    pub mod r_exp { // bits 11:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod t_exp { // bits 7:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s_exp { // bits 3:0, established
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
/// (established)
pub mod bind_size {
    pub const WIDTH: u32 = 32;
    pub mod r_clamp { // bits 14:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod t_clamp { // bits 13:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s_clamp { // bits 12:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod r_exp { // bits 11:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod t_exp { // bits 7:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s_exp { // bits 3:0, established
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
/// (established)
pub mod display_id_range {
    pub const WIDTH: u32 = 32;
    pub mod arg2 { // bits 23:19, established
        pub const SHIFT: u32 = 19;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod arg0 { // bits 18:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod arg3 { // bits 12:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod arg1 { // bits 6:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod gc_load_w4 {
    pub const WIDTH: u32 = 32;
    pub mod opaque_fill { // bits 31:31, established
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod plane_mask_rg { // bits 23:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod gc_load_w6 {
    pub const WIDTH: u32 = 32;
    pub mod read_format { // bits 13:11, established
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod colour_format { // bits 5:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod gc_load_w7 {
    pub const WIDTH: u32 = 32;
    pub mod read_base { // bits 23:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod readback_format { // bits 17:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod draw_buffer { // bits 3:0, established
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
/// (established)
pub mod id_fg_large_hi {
    pub const WIDTH: u32 = 32;
    pub mod value_high12 { // bits 19:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod value_low_nibble { // bits 6:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod id_fg_small_lo {
    pub const WIDTH: u32 = 32;
    pub mod value_high12 { // bits 25:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod value_low_nibble { // bits 12:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod id_mask_large_hi {
    pub const WIDTH: u32 = 32;
    pub mod mask_low_nibble { // bits 23:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mask_high12 { // bits 11:0, established
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
pub mod id_mask_small_lo {
    pub const WIDTH: u32 = 32;
    pub mod mask_low12 { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mask_high_nibble { // bits 3:0, established
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
/// (established)
pub mod mode_byte {
    pub const WIDTH: u32 = 32;
    pub mod direct_or_opaque { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod ci_or_luminance { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod rgb_below_24 { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod stereo { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod back_shown { // bits 0:0, established
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
pub mod mode_byte_overlay {
    pub const WIDTH: u32 = 32;
    pub mod code { // bits 3:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const RESERVED_RGB15: u32 = 1; // established
        pub const OVERLAY: u32 = 2; // established
        pub const OVERLAY_BACK_START: u32 = 3; // established
        pub const UNDERLAY: u32 = 6; // established
        pub const UNDERLAY_BACK_START: u32 = 7; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            ReservedRgb15,
            Overlay,
            OverlayBackStart,
            Underlay,
            UnderlayBackStart,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    1 => Self::ReservedRgb15,
                    2 => Self::Overlay,
                    3 => Self::OverlayBackStart,
                    6 => Self::Underlay,
                    7 => Self::UnderlayBackStart,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::ReservedRgb15 => 1,
                    Self::Overlay => 2,
                    Self::OverlayBackStart => 3,
                    Self::Underlay => 6,
                    Self::UnderlayBackStart => 7,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod back_shown { // bits 0:0, established
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
pub mod ms_control {
    pub const WIDTH: u32 = 32;
    pub mod optimisation { // bits 13:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NONE: u32 = 0; // established
        pub const DISABLE: u32 = 2; // established
        pub const ENABLE: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            None,
            Disable,
            Enable,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::None,
                    2 => Self::Disable,
                    3 => Self::Enable,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::None => 0,
                    Self::Disable => 2,
                    Self::Enable => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod maintain_two { // bits 11:11, established
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mask { // bits 10:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mask_op { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const AND_OP: u32 = 0; // established
        pub const REPLACE: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            AndOp,
            Replace,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::AndOp,
                    1 => Self::Replace,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::AndOp => 0,
                    Self::Replace => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod sample_count { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const FOUR: u32 = 0; // established
        pub const EIGHT: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Four,
            Eight,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Four,
                    1 => Self::Eight,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Four => 0,
                    Self::Eight => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod enable { // bits 0:0, established
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
pub mod ms_locations {
    pub const WIDTH: u32 = 32;
    pub mod s3_y { // bits 23:21, established
        pub const SHIFT: u32 = 21;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s3_x { // bits 20:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s2_y { // bits 17:15, established
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s2_x { // bits 14:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s1_y { // bits 11:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s1_x { // bits 8:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s0_y { // bits 5:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s0_x { // bits 2:0, established
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
/// (established)
pub mod overlay_rgb15 {
    pub const WIDTH: u32 = 32;
    pub mod red { // bits 14:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod green { // bits 9:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blue { // bits 4:0, established
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
pub mod pixel_setup_w0 {
    pub const WIDTH: u32 = 32;
    pub mod direct_write { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod kind { // bits 3:0, established
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
/// (established)
pub mod texload_layout {
    pub const WIDTH: u32 = 32;
    pub mod interlaced_download { // bits 15:15, established
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod t_addr_bits { // bits 14:11, established
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s_addr_bits { // bits 10:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod layout_mode { // bits 6:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bank { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dma { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod size_code { // bits 1:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const BITS16: u32 = 0; // established
        pub const BITS32: u32 = 1; // established
        pub const SLOT64: u32 = 2; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Bits16,
            Bits32,
            Slot64,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Bits16,
                    1 => Self::Bits32,
                    2 => Self::Slot64,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Bits16 => 0,
                    Self::Bits32 => 1,
                    Self::Slot64 => 2,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (established)
pub mod texload_size {
    pub const WIDTH: u32 = 32;
    pub mod r_exp { // bits 11:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod t_exp { // bits 7:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod s_exp { // bits 3:0, established
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
pub mod window_w2 {
    pub const WIDTH: u32 = 32;
    pub mod x_bias { // bits 31:16, inferred
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod width { // bits 15:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod window_w3 {
    pub const WIDTH: u32 = 32;
    pub mod y_bias { // bits 31:16, inferred
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod height { // bits 15:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
pub const DESC_DISTRIBUTOR_PROGRAM: u32 = 0x48200020; // established
pub const DESC_DISTRIBUTOR_STEP: u32 = 0x44200020; // inferred
pub const DESC_ENGINE_REG_ADDRESS: u32 = 0x46a00020; // established
pub const DESC_ENGINE_REG_DATA: u32 = 0x46600020; // established
pub const DESC_ENGINE_TABLE_ENTRY: u32 = 0x46200020; // established
pub const DESC_ENGINE_TABLE_INDEX: u32 = 0x46000020; // established
pub const DESC_ENTRY_TABLE: u32 = 0x42600020; // established
pub const DESC_IMAGE_PROCESSOR_WRITE: u32 = 0x584fc800; // established
pub const DESC_PRIMITIVE_CLASS_TABLE: u32 = 0x42200020; // established
pub const DESC_RASTER_BUS_WRITE: u32 = 0x58404800; // established
pub const FOG_PARAMETER_COLOUR: u32 = 0xb66; // established
pub const FOG_PARAMETER_DENSITY: u32 = 0xb62; // established
pub const FOG_PARAMETER_END: u32 = 0xb64; // established
pub const FOG_PARAMETER_INDEX: u32 = 0xb61; // established
pub const FOG_PARAMETER_MODE: u32 = 0xb65; // established
pub const FOG_PARAMETER_OFFSET: u32 = 0x8199; // established
pub const FOG_PARAMETER_START: u32 = 0xb63; // established
pub const GC_LOAD_W4_BUS_ENABLE: u32 = 0xffffff; // established
pub const GC_LOAD_W6_BUS_ENABLE: u32 = 0x383c; // established
pub const GC_LOAD_W7_BUS_ENABLE: u32 = 0xffc00f; // established
pub const ID_TABLE_NORMAL_ENTRIES: u32 = 0x40; // established
pub const ID_TABLE_OVERLAY_ENTRIES: u32 = 0x20; // established
pub const LAYER_MAIN: u32 = 0x0; // established
pub const LAYER_OVERLAY: u32 = 0x1; // established
pub const LAYER_POPUP: u32 = 0x2; // established
pub const LIGHT_BLOCK_COUNT: u32 = 0x8; // established
pub const LIGHT_BLOCK_FIRST_ADDRESS: u32 = 0x2c7; // established
pub const LIGHT_BLOCK_WORDS: u32 = 0x23; // established
pub const MODE_BYTE_RESERVED_CI_OPAQUE: u32 = 0x15; // established
pub const MODE_BYTE_RESERVED_CI_TRANSPARENT: u32 = 0x5; // established
pub const MODE_BYTE_RESERVED_RGB_OPAQUE: u32 = 0x12; // established
pub const MODE_BYTE_RESERVED_RGB_TRANSPARENT: u32 = 0x2; // established
pub const OVERLAY_ID_WORD_COLOUR_INDEX: u32 = 0x3c00; // established
pub const OVERLAY_ID_WORD_RGB15: u32 = 0x3c01; // established
pub const OVERLAY_RGB15_BLUE_BITS: u32 = 0x1f; // established
pub const OVERLAY_RGB15_GREEN_BITS: u32 = 0x3e0; // established
pub const OVERLAY_RGB15_RED_BITS: u32 = 0x7c00; // established
pub const PIXEL_FORMAT_ALPHA: u32 = 0x3; // established
pub const PIXEL_FORMAT_BLUE: u32 = 0x2; // established
pub const PIXEL_FORMAT_COLOUR_INDEX: u32 = 0xb; // established
pub const PIXEL_FORMAT_DEPTH: u32 = 0xd; // established
pub const PIXEL_FORMAT_EXT_ABGR: u32 = 0x8; // established
pub const PIXEL_FORMAT_EXT_CMYK: u32 = 0x9; // established
pub const PIXEL_FORMAT_EXT_CMYKA: u32 = 0xa; // established
pub const PIXEL_FORMAT_GREEN: u32 = 0x1; // established
pub const PIXEL_FORMAT_LUMINANCE: u32 = 0x6; // established
pub const PIXEL_FORMAT_LUMINANCE_ALPHA: u32 = 0x7; // established
pub const PIXEL_FORMAT_RED: u32 = 0x0; // established
pub const PIXEL_FORMAT_RGB: u32 = 0x4; // established
pub const PIXEL_FORMAT_RGBA: u32 = 0x5; // established
pub const PIXEL_FORMAT_STENCIL: u32 = 0xc; // established
pub const PIXEL_MAP_ALPHA_TO_ALPHA: u32 = 0xc79; // established
pub const PIXEL_MAP_BLUE_TO_BLUE: u32 = 0xc78; // established
pub const PIXEL_MAP_GREEN_TO_GREEN: u32 = 0xc77; // established
pub const PIXEL_MAP_INDEX_TO_ALPHA: u32 = 0xc75; // established
pub const PIXEL_MAP_INDEX_TO_BLUE: u32 = 0xc74; // established
pub const PIXEL_MAP_INDEX_TO_GREEN: u32 = 0xc73; // established
pub const PIXEL_MAP_INDEX_TO_INDEX: u32 = 0xc70; // established
pub const PIXEL_MAP_INDEX_TO_RED: u32 = 0xc72; // established
pub const PIXEL_MAP_RED_TO_RED: u32 = 0xc76; // established
pub const PIXEL_MAP_STENCIL_TO_STENCIL: u32 = 0xc71; // established
pub const PIXEL_PACK_ALIGNMENT: u32 = 0xd05; // established
pub const PIXEL_PACK_IMAGE_DEPTH: u32 = 0x8131; // established
pub const PIXEL_PACK_IMAGE_HEIGHT: u32 = 0x806c; // established
pub const PIXEL_PACK_LSB_FIRST: u32 = 0xd01; // established
pub const PIXEL_PACK_ROW_LENGTH: u32 = 0xd02; // established
pub const PIXEL_PACK_SKIP_IMAGES: u32 = 0x806b; // established
pub const PIXEL_PACK_SKIP_PIXELS: u32 = 0xd04; // established
pub const PIXEL_PACK_SKIP_ROWS: u32 = 0xd03; // established
pub const PIXEL_PACK_SKIP_VOLUMES: u32 = 0x8130; // established
pub const PIXEL_PACK_SWAP_BYTES: u32 = 0xd00; // established
pub const PIXEL_TRANSFER_ALPHA_BIAS: u32 = 0xd1d; // established
pub const PIXEL_TRANSFER_ALPHA_SCALE: u32 = 0xd1c; // established
pub const PIXEL_TRANSFER_BLUE_BIAS: u32 = 0xd1b; // established
pub const PIXEL_TRANSFER_BLUE_SCALE: u32 = 0xd1a; // established
pub const PIXEL_TRANSFER_DEPTH_BIAS: u32 = 0xd1f; // established
pub const PIXEL_TRANSFER_DEPTH_SCALE: u32 = 0xd1e; // established
pub const PIXEL_TRANSFER_GREEN_BIAS: u32 = 0xd19; // established
pub const PIXEL_TRANSFER_GREEN_SCALE: u32 = 0xd18; // established
pub const PIXEL_TRANSFER_INDEX_OFFSET: u32 = 0xd13; // established
pub const PIXEL_TRANSFER_INDEX_SHIFT: u32 = 0xd12; // established
pub const PIXEL_TRANSFER_MAP_COLOUR: u32 = 0xd10; // established
pub const PIXEL_TRANSFER_MAP_STENCIL: u32 = 0xd11; // established
pub const PIXEL_TRANSFER_POST_CONVOLUTION_ALPHA_BIAS: u32 = 0x8023; // established
pub const PIXEL_TRANSFER_POST_CONVOLUTION_ALPHA_SCALE: u32 = 0x801f; // established
pub const PIXEL_TRANSFER_POST_CONVOLUTION_BLUE_BIAS: u32 = 0x8022; // established
pub const PIXEL_TRANSFER_POST_CONVOLUTION_BLUE_SCALE: u32 = 0x801e; // established
pub const PIXEL_TRANSFER_POST_CONVOLUTION_GREEN_BIAS: u32 = 0x8021; // established
pub const PIXEL_TRANSFER_POST_CONVOLUTION_GREEN_SCALE: u32 = 0x801d; // established
pub const PIXEL_TRANSFER_POST_CONVOLUTION_RED_BIAS: u32 = 0x8020; // established
pub const PIXEL_TRANSFER_POST_CONVOLUTION_RED_SCALE: u32 = 0x801c; // established
pub const PIXEL_TRANSFER_POST_MATRIX_ALPHA_BIAS: u32 = 0x80bb; // established
pub const PIXEL_TRANSFER_POST_MATRIX_ALPHA_SCALE: u32 = 0x80b7; // established
pub const PIXEL_TRANSFER_POST_MATRIX_BLUE_BIAS: u32 = 0x80ba; // established
pub const PIXEL_TRANSFER_POST_MATRIX_BLUE_SCALE: u32 = 0x80b6; // established
pub const PIXEL_TRANSFER_POST_MATRIX_GREEN_BIAS: u32 = 0x80b9; // established
pub const PIXEL_TRANSFER_POST_MATRIX_GREEN_SCALE: u32 = 0x80b5; // established
pub const PIXEL_TRANSFER_POST_MATRIX_RED_BIAS: u32 = 0x80b8; // established
pub const PIXEL_TRANSFER_POST_MATRIX_RED_SCALE: u32 = 0x80b4; // established
pub const PIXEL_TRANSFER_RED_BIAS: u32 = 0xd15; // established
pub const PIXEL_TRANSFER_RED_SCALE: u32 = 0xd14; // established
pub const PIXEL_TYPE_BITMAP: u32 = 0x7; // established
pub const PIXEL_TYPE_BYTE: u32 = 0x0; // established
pub const PIXEL_TYPE_FLOAT: u32 = 0x6; // established
pub const PIXEL_TYPE_INT: u32 = 0x4; // established
pub const PIXEL_TYPE_PACKED_10_10_10_2: u32 = 0xc; // established
pub const PIXEL_TYPE_PACKED_332: u32 = 0x8; // established
pub const PIXEL_TYPE_PACKED_4444: u32 = 0x9; // established
pub const PIXEL_TYPE_PACKED_5551: u32 = 0xa; // established
pub const PIXEL_TYPE_PACKED_8888: u32 = 0xb; // established
pub const PIXEL_TYPE_SHORT: u32 = 0x2; // established
pub const PIXEL_TYPE_UNSIGNED_BYTE: u32 = 0x1; // established
pub const PIXEL_TYPE_UNSIGNED_INT: u32 = 0x5; // established
pub const PIXEL_TYPE_UNSIGNED_SHORT: u32 = 0x3; // established
pub const PIXEL_UNPACK_ALIGNMENT: u32 = 0xcf5; // established
pub const PIXEL_UNPACK_IMAGE_DEPTH: u32 = 0x8133; // established
pub const PIXEL_UNPACK_IMAGE_HEIGHT: u32 = 0x806e; // established
pub const PIXEL_UNPACK_LSB_FIRST: u32 = 0xcf1; // established
pub const PIXEL_UNPACK_ROW_LENGTH: u32 = 0xcf2; // established
pub const PIXEL_UNPACK_SKIP_IMAGES: u32 = 0x806d; // established
pub const PIXEL_UNPACK_SKIP_PIXELS: u32 = 0xcf4; // established
pub const PIXEL_UNPACK_SKIP_ROWS: u32 = 0xcf3; // established
pub const PIXEL_UNPACK_SKIP_VOLUMES: u32 = 0x8132; // established
pub const PIXEL_UNPACK_SWAP_BYTES: u32 = 0xcf0; // established
pub const POLYGON_FACE_BACK: u32 = 0x405; // established
pub const POLYGON_FACE_BOTH: u32 = 0x408; // established
pub const POLYGON_FACE_FRONT: u32 = 0x404; // established
pub const POLYGON_MODE_FILL: u32 = 0x1b02; // established
pub const POLYGON_MODE_LINE: u32 = 0x1b01; // established
pub const POLYGON_MODE_POINT: u32 = 0x1b00; // established
pub const TEXENV_COLOUR1_IMAGE: u32 = 0x15f1413; // established
pub const TEXENV_COLOUR_IMAGE: u32 = 0x15e1402; // established
pub const WINDOW_ID_CI_OVERLAY_OPAQUE: u32 = 0x41; // established
pub const WINDOW_ID_CI_OVERLAY_TRANSPARENT: u32 = 0x40; // established
pub const WINDOW_ID_DYNAMIC_FIRST: u32 = 0x44; // inferred
pub const WINDOW_ID_MAIN_FIRST: u32 = 0x0; // established
pub const WINDOW_ID_MAIN_LAST: u32 = 0x3e; // established
pub const WINDOW_ID_OVERLAY_FIRST: u32 = 0x40; // established
pub const WINDOW_ID_OVERLAY_LAST: u32 = 0x5f; // established
pub const WINDOW_ID_POPUP: u32 = 0x3f; // established
pub const WINDOW_ID_RGB15_OVERLAY_OPAQUE: u32 = 0x43; // established
pub const WINDOW_ID_RGB15_OVERLAY_TRANSPARENT: u32 = 0x42; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn bind_size_677() {
        assert_eq!(bind_size::s_exp::get(0x677), 7);
        assert_eq!(bind_size::t_exp::get(0x677), 7);
        assert_eq!(bind_size::r_exp::get(0x677), 6);
        assert_eq!(bind_size::s_clamp::get(0x677), 0);
        assert_eq!(bind_size::t_clamp::get(0x677), 0);
        assert_eq!(bind_size::r_clamp::get(0x677), 0);
    }

    #[test]
    fn bind_size_3077() {
        assert_eq!(bind_size::s_exp::get(0x3077), 7);
        assert_eq!(bind_size::t_exp::get(0x3077), 7);
        assert_eq!(bind_size::r_exp::get(0x3077), 0);
        assert_eq!(bind_size::s_clamp::get(0x3077), 1);
        assert_eq!(bind_size::t_clamp::get(0x3077), 1);
        assert_eq!(bind_size::r_clamp::get(0x3077), 0);
    }

    #[test]
    fn display_id_range_1040() {
        assert_eq!(display_id_range::arg1::get(0x1040), 64);
        assert_eq!(display_id_range::arg3::get(0x1040), 32);
        assert_eq!(display_id_range::arg0::get(0x1040), 0);
        assert_eq!(display_id_range::arg2::get(0x1040), 0);
    }

    #[test]
    fn gc_load_w6_2804() {
        assert_eq!(gc_load_w6::colour_format::get(0x2804), 1);
        assert_eq!(gc_load_w6::read_format::get(0x2804), 5);
    }

    #[test]
    fn gc_load_w6_3804() {
        assert_eq!(gc_load_w6::colour_format::get(0x3804), 1);
        assert_eq!(gc_load_w6::read_format::get(0x3804), 7);
    }

    #[test]
    fn mode_byte_overlay_2() {
        assert_eq!(mode_byte_overlay::back_shown::get(0x2), 0);
        assert_eq!(mode_byte_overlay::code::get(0x2), 1);
    }

    #[test]
    fn mode_byte_overlay_5() {
        assert_eq!(mode_byte_overlay::back_shown::get(0x5), 1);
        assert_eq!(mode_byte_overlay::code::get(0x5), 2);
    }

    #[test]
    fn mode_byte_overlay_12() {
        assert_eq!(mode_byte_overlay::back_shown::get(0x12), 0);
        assert_eq!(mode_byte_overlay::code::get(0x12), 1);
    }

    #[test]
    fn mode_byte_overlay_15() {
        assert_eq!(mode_byte_overlay::back_shown::get(0x15), 1);
        assert_eq!(mode_byte_overlay::code::get(0x15), 2);
    }

    #[test]
    fn ms_locations_7f6280() {
        assert_eq!(ms_locations::s0_x::get(0x7f6280), 0);
        assert_eq!(ms_locations::s0_y::get(0x7f6280), 0);
        assert_eq!(ms_locations::s1_x::get(0x7f6280), 2);
        assert_eq!(ms_locations::s1_y::get(0x7f6280), 1);
        assert_eq!(ms_locations::s2_x::get(0x7f6280), 6);
        assert_eq!(ms_locations::s2_y::get(0x7f6280), 6);
        assert_eq!(ms_locations::s3_x::get(0x7f6280), 7);
        assert_eq!(ms_locations::s3_y::get(0x7f6280), 3);
    }

    #[test]
    fn ms_locations_c8b640() {
        assert_eq!(ms_locations::s0_x::get(0xc8b640), 0);
        assert_eq!(ms_locations::s0_y::get(0xc8b640), 0);
        assert_eq!(ms_locations::s1_x::get(0xc8b640), 1);
        assert_eq!(ms_locations::s1_y::get(0xc8b640), 3);
        assert_eq!(ms_locations::s2_x::get(0xc8b640), 3);
        assert_eq!(ms_locations::s2_y::get(0xc8b640), 1);
        assert_eq!(ms_locations::s3_x::get(0xc8b640), 2);
        assert_eq!(ms_locations::s3_y::get(0xc8b640), 6);
    }

    #[test]
    fn ms_locations_d94880() {
        assert_eq!(ms_locations::s0_x::get(0xd94880), 0);
        assert_eq!(ms_locations::s0_y::get(0xd94880), 0);
        assert_eq!(ms_locations::s1_x::get(0xd94880), 2);
        assert_eq!(ms_locations::s1_y::get(0xd94880), 4);
        assert_eq!(ms_locations::s2_x::get(0xd94880), 4);
        assert_eq!(ms_locations::s2_y::get(0xd94880), 2);
        assert_eq!(ms_locations::s3_x::get(0xd94880), 6);
        assert_eq!(ms_locations::s3_y::get(0xd94880), 6);
    }

    #[test]
    fn texload_layout_9ad() {
        assert_eq!(texload_layout::size_code::get(0x9ad), 1);
        assert_eq!(texload_layout::dma::get(0x9ad), 1);
        assert_eq!(texload_layout::bank::get(0x9ad), 1);
        assert_eq!(texload_layout::layout_mode::get(0x9ad), 1);
        assert_eq!(texload_layout::s_addr_bits::get(0x9ad), 3);
        assert_eq!(texload_layout::t_addr_bits::get(0x9ad), 1);
    }

    #[test]
    fn texload_layout_2181() {
        assert_eq!(texload_layout::size_code::get(0x2181), 1);
        assert_eq!(texload_layout::dma::get(0x2181), 0);
        assert_eq!(texload_layout::bank::get(0x2181), 0);
        assert_eq!(texload_layout::layout_mode::get(0x2181), 0);
        assert_eq!(texload_layout::s_addr_bits::get(0x2181), 3);
        assert_eq!(texload_layout::t_addr_bits::get(0x2181), 4);
    }

    #[test]
    fn texload_layout_218d() {
        assert_eq!(texload_layout::size_code::get(0x218d), 1);
        assert_eq!(texload_layout::dma::get(0x218d), 1);
        assert_eq!(texload_layout::bank::get(0x218d), 1);
        assert_eq!(texload_layout::layout_mode::get(0x218d), 0);
        assert_eq!(texload_layout::s_addr_bits::get(0x218d), 3);
        assert_eq!(texload_layout::t_addr_bits::get(0x218d), 4);
    }

    #[test]
    fn texload_layout_2204() {
        assert_eq!(texload_layout::size_code::get(0x2204), 0);
        assert_eq!(texload_layout::dma::get(0x2204), 1);
        assert_eq!(texload_layout::bank::get(0x2204), 0);
        assert_eq!(texload_layout::layout_mode::get(0x2204), 0);
        assert_eq!(texload_layout::s_addr_bits::get(0x2204), 4);
        assert_eq!(texload_layout::t_addr_bits::get(0x2204), 4);
    }

    #[test]
    fn texload_size_23() {
        assert_eq!(texload_size::s_exp::get(0x23), 3);
        assert_eq!(texload_size::t_exp::get(0x23), 2);
        assert_eq!(texload_size::r_exp::get(0x23), 0);
    }

    #[test]
    fn texload_size_677() {
        assert_eq!(texload_size::s_exp::get(0x677), 7);
        assert_eq!(texload_size::t_exp::get(0x677), 7);
        assert_eq!(texload_size::r_exp::get(0x677), 6);
    }
}
