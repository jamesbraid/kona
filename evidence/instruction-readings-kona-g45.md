# Instruction readings from hostfacts

These entries record instruction facts rendered from the routines below. They describe software behavior, not hardware behavior, and each locator names an address in the identified binary.

- `_GLupdateLockKey` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec863e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec863e4-0xec8657c (408 bytes).
  It occupies 408 bytes.
  The `lw` at 0xec8640c loads 4 bytes from abs 0xecde288 (_GLcapsLockMask).
  The `lw` at 0xec86414 loads 4 bytes from abs 0xecde284 (_GLnumLockMask).
  2 such `sh` accesses store 2 bytes to table(0xece8848) +0x0, including `sh` at 0xec86444, `sh` at 0xec86460.
  2 such `sb` accesses store 1 byte to table(0xece884c) +0x0, including `sb` at 0xec86470, `sb` at 0xec86474.
  The `lbu` at 0xec86478 loads 1 byte from table(0xece884d) +0x0.
  The `sb` at 0xec86480 stores 1 byte to table(0xece884d) +0x0.
  The `bne` branch at 0xec863fc targets 0xec86410, is taken when a0(?) != at(=0x4), and falls through when a0(?) == at(=0x4).
  The `beq` branch at 0xec86408 targets 0xec86418 and is always taken.
  The `beq` branch at 0xec86418 targets 0xec86484, is taken when v0(=[one of 0xecde284, 0xecde288]) == 0, and falls through when v0(=[one of 0xecde284, 0xecde288]) != 0.
  The `beq` branch at 0xec86420 targets 0xec86448, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xec86440 targets 0xec86464 and is always taken.
  The `beq` branch at 0xec86464 targets 0xec86474, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xec8646c targets 0xec86478 and is always taken.
  The return at 0xec86484 has v0 = one of [one of 0xecde284, 0xecde288], table(0xece8848).
  The instructions from 0xec8648c to 0xec86578 are not reached by any path from the entry, and their branches are not listed.

Skipped no routines.
