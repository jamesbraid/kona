// generated from kona 9dfd289c23b6-dirty KONA_HIP_DECODE.h - do not edit, regenerate in kona
//!
//! Host-interface chip registers: the interrupt status register and
//! its cause bits.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// Host-interface register `hh_intr_status`: read/write, 32-bit; reset unknown; established.
pub const REG_HH_INTR_STATUS: u32 = 0x0238;
pub const REG_HH_INTR_STATUS_WIDTH: u32 = 32;
/// Host-interface register `rbus_odma2_data`: write, 32-bit; reset unknown; established.
pub const REG_RBUS_ODMA2_DATA: u32 = 0x0476;
pub const REG_RBUS_ODMA2_DATA_WIDTH: u32 = 32;
/// Host-interface register `rbus_odma2_flush`: write, 32-bit; reset unknown; inferred.
pub const REG_RBUS_ODMA2_FLUSH: u32 = 0x0477;
pub const REG_RBUS_ODMA2_FLUSH_WIDTH: u32 = 32;

/// The `hh_intr_status` register word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct HhIntrStatus(u32);

impl HhIntrStatus {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn fifo_hi(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bit 1, established.
    pub const fn fifo_lo(self) -> bool {
        (self.0 >> 1) & 1 != 0
    }

    /// Bit 2, established.
    pub const fn fifo_ov(self) -> bool {
        (self.0 >> 2) & 1 != 0
    }

    /// Bit 3, established.
    pub const fn video(self) -> bool {
        (self.0 >> 3) & 1 != 0
    }

    /// Bit 4, established.
    pub const fn arm(self) -> bool {
        (self.0 >> 4) & 1 != 0
    }

    /// Bit 5, established.
    pub const fn ge(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 6, established.
    pub const fn odma(self) -> bool {
        (self.0 >> 6) & 1 != 0
    }

    /// Bit 7, established.
    pub const fn unused(self) -> bool {
        (self.0 >> 7) & 1 != 0
    }

    /// Bit 8, established.
    pub const fn parity(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bit 9, established.
    pub const fn voc(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bit 10, established.
    pub const fn pio_ov(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bit 11, established.
    pub const fn idma_ov(self) -> bool {
        (self.0 >> 11) & 1 != 0
    }
}
