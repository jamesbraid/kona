// generated from devices/dac/registers.toml by defs-gen - do not edit, change the source
// video DAC and encoder ports on the display bus
#![allow(dead_code)]

/// (established)
pub mod index {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0xb00;
}
/// (inferred)
pub mod cmap_data {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0xb01;
}
/// (established)
pub mod reg_data {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0xb02;
}
/// (inferred)
pub mod mode {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0xb03;
    pub mod strobe { // bits 0:0, inferred
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
pub mod enc_gain {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x1708;
}
/// (established)
pub mod enc_ctrl_addr {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x1800;
}
/// (inferred)
pub mod enc_cmap_addr {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x1801;
}
/// (established)
pub mod enc_ctrl_data {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x1802;
}
/// (inferred)
pub mod enc_cmap_data {
    pub const WIDTH: u32 = 8;
    pub const OFFSET: u64 = 0x1803;
}
