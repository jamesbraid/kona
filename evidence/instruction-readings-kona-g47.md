# Instruction readings from hostfacts

These entries record instruction facts rendered from the routines below. They describe software behavior, not hardware behavior, and each locator names an address in the identified binary.

- `_init` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd8427a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd8427a0-0xd8427d8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd8427c0 calls __glXInit [0xd80dfd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8427d0 has v0 = ret(__glXInit).
- `_init` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2677350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2677350-0x267738c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x2677370 calls __glXInit [0x2642b48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2677384 has v0 = ret(__glXInit).
- `_init` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd8427a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
  Range: 0xd8427a0-0xd8427d8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd8427c0 calls __glXInit [0xd80dfd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8427d0 has v0 = ret(__glXInit).
- `_init` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2177350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2177350-0x217738c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x2177370 calls __glXInit [0x2142b48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2177384 has v0 = ret(__glXInit).

Skipped no routines.
