# Readings: `usr/gfx/ucode/vfc/sdbutil`

One entry per routine, filed here from the reading batches by binary.

- `__record_needed_destruction` in `usr/gfx/ucode/vfc/sdbutil` at 0x100040d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100040d0-0x100040f8 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0x100040e4 loads 4 bytes from abs 0x1000f0a4.
  The `lw` at 0x100040e8 loads 4 bytes from abs 0x1000f5a4.
  The `sw` at 0x100040ec stores 4 bytes to abs 0x1000f5a4.
  The `sw` at 0x100040f4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x100040f0 has v0 = [0x1000f5a4].

- `__std__needed_destruction_list` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004100-0x1000413c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x10004120 loads 4 bytes from abs 0x1000f0ac.
  The `jal` at 0x10004124 calls __process_needed_destructions__Gv [0x10004050] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10004134 has v0 = ret(__process_needed_destructions__Gv).

- `ascToBin_int__GPCcPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x1000413c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x1000413c-0x10004184 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10004174 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x10004164 calls strtol with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x1000417c has v0 = ret(strtol).

- `ascToBin_u_int__GPCcPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004184 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004184-0x100041cc (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x100041bc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x100041ac calls strtoul with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x100041c4 has v0 = ret(strtoul).

- `ascToBin_short__GPCcPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x100041cc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100041cc-0x10004214 (72 bytes).
  It occupies 72 bytes.
  The `sh` at 0x10004204 stores 2 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x100041f4 calls strtol with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x1000420c has v0 = ret(strtol).

- `ascToBin_u_short__GPCcPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004214 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004214-0x1000425c (72 bytes).
  It occupies 72 bytes.
  The `sh` at 0x1000424c stores 2 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x1000423c calls strtoul with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x10004254 has v0 = ret(strtoul).

- `ascToBin_long__GPCcPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x1000425c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x1000425c-0x100042a4 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10004294 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x10004284 calls strtol with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x1000429c has v0 = ret(strtol).

- `ascToBin_u_long__GPCcPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x100042a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100042a4-0x100042ec (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x100042dc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x100042cc calls strtoul with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x100042e4 has v0 = ret(strtoul).

- `ascToBin_char__GPCcPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x100042ec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100042ec-0x10004334 (72 bytes).
  It occupies 72 bytes.
  The `sb` at 0x10004324 stores 1 byte to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x10004314 calls strtol with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x1000432c has v0 = ret(strtol).

- `ascToBin_u_char__GPCcPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004334 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004334-0x1000437c (72 bytes).
  It occupies 72 bytes.
  The `sb` at 0x1000436c stores 1 byte to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x1000435c calls strtoul with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x10004374 has v0 = ret(strtoul).

- `ascToBin_bool__GPCcPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x1000437c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x1000437c-0x10004458 (220 bytes).
  It occupies 220 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100043e0, `lw` at 0x10004454.
  The `sw` at 0x10004440 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x100043b4 calls strtoul with a0=a0 at entry (arg0), a1=sp-64, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0x100043e4 calls strcasecmp with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1000441c calls pfmt with a0=sym(__iob)+32, a1=0x200, a2=0x1000c000, a3=a0 at entry (arg0), a4=0x0.
  The `bne` branch at 0x100043d4 targets 0x10004428, is taken when v0(?) != s2(=a0), and falls through when v0(?) == s2(=a0).
  The `beq` branch at 0x100043ec targets 0x10004450, is taken when v0(=ret(strcasecmp)) == 0, and falls through when v0(=ret(strcasecmp)) != 0.
  The `bne` branch at 0x100043f8 targets 0x100043dc, is taken when s1(?) < 0x6 (unsigned), and falls through when s1(?) >= 0x6 (unsigned).
  The `beq` branch at 0x10004450 targets 0x10004428 and is always taken.
  The return at 0x10004448 has v0 = one of ?, ret(pfmt), ret(strcasecmp).

- `ascToBin_string__GPCcPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004458 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004458-0x10004498 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x10004480 calls strncpy with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0x3ff, a3=a3 at entry (arg3).
  The return at 0x10004490 has v0 = ret(strncpy).

- `ascToBin_float__GPCcPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004498 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004498-0x100044e0 (72 bytes).
  It occupies 72 bytes.
  The `swc1` at 0x100044d0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x100044bc calls strtod with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100044d8 has v0 = ret(strtod).

- `ascToBin_double__GPCcPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x100044e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100044e0-0x10004524 (68 bytes).
  It occupies 68 bytes.
  The `sdc1` at 0x10004514 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x10004504 calls strtod with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000451c has v0 = ret(strtod).

- `binToAsc_int__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004524 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004524-0x10004564 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10004544 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1000454c calls sprintf with a0=a1 at entry (arg1), a1=0x1000f390, a2=[a0], a3=a3 at entry (arg3), a4=0x12b04.
  The return at 0x1000455c has v0 = ret(sprintf).

- `binToAsc_u_int__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004564 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004564-0x100045a4 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10004584 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1000458c calls sprintf with a0=a1 at entry (arg1), a1=0x1000f394, a2=[a0], a3=a3 at entry (arg3), a4=0x12ac4.
  The return at 0x1000459c has v0 = ret(sprintf).

- `binToAsc_short__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x100045a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100045a4-0x100045e4 (64 bytes).
  It occupies 64 bytes.
  The `lh` at 0x100045c4 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x100045cc calls sprintf with a0=a1 at entry (arg1), a1=0x1000f398, a2=[a0]:2, a3=a3 at entry (arg3), a4=0x12a84.
  The return at 0x100045dc has v0 = ret(sprintf).

- `binToAsc_u_short__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x100045e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100045e4-0x10004624 (64 bytes).
  It occupies 64 bytes.
  The `lhu` at 0x10004604 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1000460c calls sprintf with a0=a1 at entry (arg1), a1=0x1000f39c, a2=[a0]:2, a3=a3 at entry (arg3), a4=0x12a44.
  The return at 0x1000461c has v0 = ret(sprintf).

- `binToAsc_long__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004624 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004624-0x10004664 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10004644 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1000464c calls sprintf with a0=a1 at entry (arg1), a1=0x1000f390, a2=[a0], a3=a3 at entry (arg3), a4=0x12a04.
  The return at 0x1000465c has v0 = ret(sprintf).

- `binToAsc_u_long__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004664 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004664-0x100046a4 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10004684 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1000468c calls sprintf with a0=a1 at entry (arg1), a1=0x1000f394, a2=[a0], a3=a3 at entry (arg3), a4=0x129c4.
  The return at 0x1000469c has v0 = ret(sprintf).

- `binToAsc_char__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x100046a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100046a4-0x100046e4 (64 bytes).
  It occupies 64 bytes.
  The `lbu` at 0x100046c4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x100046cc calls sprintf with a0=a1 at entry (arg1), a1=0x1000f390, a2=[a0]:1, a3=a3 at entry (arg3), a4=0x12984.
  The return at 0x100046dc has v0 = ret(sprintf).

- `binToAsc_u_char__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x100046e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100046e4-0x10004724 (64 bytes).
  It occupies 64 bytes.
  The `lbu` at 0x10004704 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1000470c calls sprintf with a0=a1 at entry (arg1), a1=0x1000f394, a2=[a0]:1, a3=a3 at entry (arg3), a4=0x12944.
  The return at 0x1000471c has v0 = ret(sprintf).

- `binToAsc_bool__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004724 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004724-0x10004764 (64 bytes).
  It occupies 64 bytes.
  The `lbu` at 0x10004744 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `jalr` at 0x1000474c calls sprintf with a0=a1 at entry (arg1), a1=0x1000f394, a2=[a0+3]:1, a3=a3 at entry (arg3), a4=0x12904.
  The return at 0x1000475c has v0 = ret(sprintf).

- `binToAsc_string__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004764 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004764-0x100047a0 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x10004788 calls sprintf with a0=a1 at entry (arg1), a1=0x1000f3a0, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0x10004798 has v0 = ret(sprintf).

- `binToAsc_float__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x100047a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100047a0-0x100047e4 (68 bytes).
  It occupies 68 bytes.
  The `lwc1` at 0x100047a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x100047cc calls sprintf with a0=a1 at entry (arg1), a1=0x1000f3a8, a2=?, a3=a3 at entry (arg3).
  The return at 0x100047dc has v0 = ret(sprintf).

- `binToAsc_double__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x100047e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100047e4-0x10004840 (92 bytes).
  It occupies 92 bytes.
  The `jalr` at 0x1000480c calls bcopy with a0=a0 at entry (arg0), a1=sp-32, a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0x10004824 calls sprintf with a0=a1 at entry (arg1), a1=0x1000f3a8, a2=?, a3=?.
  The return at 0x10004838 has v0 = ret(sprintf).

- `checkKeywords__GPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004890-0x10004908 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x100048f8 loads 4 bytes from ret(bsearch) +0x4.
  The `jalr` at 0x100048cc calls bsearch with a0=sp-32, a1=0x1000f5a8, a2=[0x1000f570], a3=0x8, a4=0x10004848.
  The `bne` branch at 0x100048e0 targets 0x100048f4, is taken when v0(=ret(bsearch)) != 0, and falls through when v0(=ret(bsearch)) == 0.
  The return at 0x100048ec has v0 = -0x1.
  The return at 0x10004900 has v0 = [ret(bsearch)+4].

- `keywordFromToken__Gi` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004908 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004908-0x1000497c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x1000495c loads 4 bytes from ret(bsearch) +0x0.
  The `jalr` at 0x10004944 calls bsearch with a0=sp-32, a1=0x1000f5a8, a2=[0x1000f570], a3=0x8, a4=0x10004880.
  The `beq` branch at 0x10004950 targets 0x1000496c, is taken when v0(=ret(bsearch)) == 0, and falls through when v0(=ret(bsearch)) != 0.
  The return at 0x10004964 has v0 = [ret(bsearch)].
  The return at 0x10004974 has v0 = 0x0.

- `bpt__Gv` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004d08 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004d08-0x10004d10 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10004d08 has v0 = ?.

- `yyerror__GPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x10004fbc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10004fbc-0x100050b4 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x10004fe8 loads 4 bytes from sym(yynerrs) +0x0.
  5 such `lw` accesses load 4 bytes from sym(yyerfp) +0x0, including `lw` at 0x10004ff4, `lw` at 0x1000501c, `lw` at 0x10005030.
  The `lw` at 0x10005024 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  2 such `lw` accesses load 4 bytes from [sym(yyerfp)] +0x0, including `lw` at 0x1000504c, `lw` at 0x1000505c.
  The `sw` at 0x10005054 stores 4 bytes to [sym(yyerfp)] +0x0.
  2 such `lw` accesses load 4 bytes from [sym(yyerfp)] +0x4, including `lw` at 0x10005060, `lw` at 0x1000507c.
  The `sw` at 0x10005070 stores 4 bytes to [sym(yyerfp)] +0x4.
  The `sb` at 0x1000508c stores 1 byte to [[sym(yyerfp)]+4] -0x1.
  The `jalr` at 0x10004ff8 calls fprintf with a0=[sym(yyerfp)], a1=0x1000c130, a2=[sym(yynerrs)]+1, a3=0x1206c.
  The `jal` at 0x10005008 calls (unnamed) [0x10004d10] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10005018 calls fputs with a0=a0 at entry (arg0), a1=[sym(yyerfp)], a2=?, a3=?.
  The `jalr` at 0x1000503c calls __semputc with a0=0xa, a1=[sym(yyerfp)], a2=?, a3=?, a4=0xa.
  The `jalr` at 0x100050a4 calls __flsbuf with a0=0xa, a1=[sym(yyerfp)], a2=[[sym(yyerfp)]], a3=[[sym(yyerfp)]]-1, a4=0xa.
  The `beq` branch at 0x1000502c targets 0x1000504c, is taken when ra(=[sym(__us_rsthread_stdio)]) == 0, and falls through when ra(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10005044 targets 0x10005090 and is always taken.
  The `bltz` branch at 0x10005068 targets 0x1000509c, is taken when a2(=[[sym(yyerfp)]]) < 0 (signed), and falls through when a2(=[[sym(yyerfp)]]) >= 0 (signed).
  The `beq` branch at 0x100050ac targets 0x10005090 and is always taken.
  The return at 0x10005088 has v0 = ret(fputs).
  The return at 0x10005094 has v0 = one of ret(__semputc), ret(__flsbuf).

- `yymark__Gv` in `usr/gfx/ucode/vfc/sdbutil` at 0x100050b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100050b4-0x10005120 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x100050ec loads 4 bytes from sym(yyleng) +0x0.
  The `jalr` at 0x100050d8 calls __dla__GPv with a0=[0x1000f578], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100050e8 calls __nwa__GUi with a0=[sym(yyleng)], a1=?, a2=?, a3=?.
  The `jalr` at 0x10005108 calls sscanf with a0=sym(yytext), a1=0x1000f4b8, a2=sym(yylineno), a3=ret(__nwa__GUi).
  The `beq` branch at 0x100050cc targets 0x100050e0, is taken when a0(=[0x1000f578]) == 0, and falls through when a0(=[0x1000f578]) != 0.
  The `beq` branch at 0x100050f0 targets 0x10005110, is taken when v0(=ret(__nwa__GUi)) == 0, and falls through when v0(=ret(__nwa__GUi)) != 0.
  The return at 0x10005118 has v0 = one of ret(__nwa__GUi), ret(sscanf).

- `insert__14SimpleListBaseGP10SimpleLink` in `usr/gfx/ucode/vfc/sdbutil` at 0x10005120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10005120-0x10005164 (68 bytes).
  It occupies 68 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10005120, `lw` at 0x10005134.
  The `lw` at 0x1000512c loads 4 bytes from [a0] +0x0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x10005130, `sw` at 0x10005150.
  The `sw` at 0x10005138 stores 4 bytes to [a0] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x1000513c, `lw` at 0x10005154.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x10005148, `sw` at 0x10005160.
  The `sw` at 0x1000514c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x10005124 targets 0x1000514c, is taken when a3(=[a0]) == 0, and falls through when a3(=[a0]) != 0.
  The return at 0x10005144 has v0 = [a0].
  The return at 0x1000515c has v0 = ?.

- `append__14SimpleListBaseGP10SimpleLink` in `usr/gfx/ucode/vfc/sdbutil` at 0x10005164 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10005164-0x100051ac (72 bytes).
  It occupies 72 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10005164, `lw` at 0x10005178.
  The `lw` at 0x10005170 loads 4 bytes from [a0] +0x0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x10005174, `sw` at 0x10005194.
  The `sw` at 0x1000517c stores 4 bytes to [a0] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10005180, `lw` at 0x10005198.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x10005184, `sw` at 0x1000519c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x10005190, `sw` at 0x100051a8.
  The `beq` branch at 0x10005168 targets 0x10005194, is taken when a3(=[a0]) == 0, and falls through when a3(=[a0]) != 0.
  The return at 0x1000518c has v0 = [a0].
  The return at 0x100051a4 has v0 = ?.

- `get__14SimpleListBaseGv` in `usr/gfx/ucode/vfc/sdbutil` at 0x100051ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100051ac-0x10005254 (168 bytes).
  It occupies 168 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x100051b0, `lw` at 0x1000522c, `lw` at 0x10005250.
  The `lw` at 0x100051d4 loads 4 bytes from [a0] +0x0.
  The `sw` at 0x100051e8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x100051ec loads 4 bytes from [[a0]] +0x0.
  The `sw` at 0x100051f0 stores 4 bytes to [a0] +0x0.
  The `lw` at 0x100051f4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x100051fc stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jalr` at 0x10005218 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x1000c140, a2=a2 at entry (arg2), a3=[a0].
  The `jalr` at 0x10005224 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10005244 calls __assert with a0=0x1000f4c0, a1=0x1000c158, a2=0x57, a3=[a0].
  The `beq` branch at 0x100051cc targets 0x1000520c, is taken when a3(=[a0]) == 0, and falls through when a3(=[a0]) != 0.
  The `bne` branch at 0x100051dc targets 0x100051ec, is taken when a3(=[a0]) != v0(=[[a0]]), and falls through when a3(=[a0]) == v0(=[[a0]]).
  The `beq` branch at 0x100051e4 targets 0x100051f4 and is always taken.
  The `bne` branch at 0x10005230 targets 0x100051d4, is taken when a3(=[a0]) != 0, and falls through when a3(=[a0]) == 0.
  The `beq` branch at 0x1000524c targets 0x100051d4 and is always taken.
  The return at 0x10005204 has v0 = [[a0]].

- `numberOfElements__14SimpleListBaseGv` in `usr/gfx/ucode/vfc/sdbutil` at 0x10005254 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10005254-0x1000525c (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0x10005258 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The return at 0x10005254 has v0 = [a0+4].

- `readExistingFile__GPc` in `usr/gfx/ucode/vfc/sdbutil` at 0x100052b8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100052b8-0x10005720 (1128 bytes).
  It occupies 1128 bytes.
  The `lhu` at 0x10005330 loads 2 bytes from ret(SDBreadOpenDatabase) +0x12.
  The `lhu` at 0x10005344 loads 2 bytes from ret(SDBreadOpenDatabase) +0x10.
  The `lw` at 0x10005354 loads 4 bytes from ret(SDBreadOpenDatabase) +0xac.
  The `lw` at 0x10005360 loads 4 bytes from ret(SDBreadOpenDatabase) +0x78.
  18 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100053d4, `lw` at 0x10005404, `lw` at 0x1000540c.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1000543c, `lbu` at 0x10005564.
  The `lw` at 0x100056ec loads 4 bytes from sym(errno) +0x0.
  The `jal` at 0x100052d8 calls SDBreadOpenDatabase [0x1000ac5c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100052f4 calls keywordFromToken__Gi [0x10004908] with a0=0x105, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000531c calls fprintf with a0=sym(__iob)+16, a1=0x1000c190, a2=ret(keywordFromToken__Gi), a3=ret(SDBreadOpenDatabase)+20.
  The `jal` at 0x10005328 calls keywordFromToken__Gi [0x10004908] with a0=0x11c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000534c calls fprintf with a0=sym(__iob)+16, a1=0x1000c1a0, a2=ret(keywordFromToken__Gi), a3=[ret(SDBreadOpenDatabase)+16]:2, a4=[ret(SDBreadOpenDatabase)+18]:2.
  The `jalr` at 0x100053b4 calls fprintf with a0=sym(__iob)+16, a1=0x1000f4e8, a2=?, a3=?.
  The `jalr` at 0x100053c0 calls __dla__GPv with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10005400 calls (unnamed) [0x1000526c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10005450 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10005468 calls bzero with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jal` at 0x10005480 calls SDBgetSymbolValueArray [0x1000ab34] with a0=?, a1=?, a2=ret(__nwa__GUi), a3=?.
  The `jalr` at 0x100054ac calls fprintf with a0=sym(__iob)+16, a1=0x1000c1e0, a2=0x1f, a3=?, a6=sp-1188.
  The `jalr` at 0x100054dc calls __assert with a0=0x1000f4cc, a1=0x1000c1b8, a2=0x120, a3=?.
  The `jalr` at 0x10005510 calls (unknown callee) with a0=?, a1=sp-1184, a2=?, a3=?.
  The `jalr` at 0x1000551c calls strlen with a0=sp-1184, a1=?, a2=?, a3=?.
  The `jalr` at 0x10005544 calls fprintf with a0=sym(__iob)+16, a1=0x1000f4e0, a2=sp-1184, a3=sp-160.
  The `jalr` at 0x100055a4 calls fprintf with a0=sym(__iob)+16, a1=0x1000f4ce, a2=?, a3=?.
  The `jalr` at 0x100055c0 calls fprintf with a0=sym(__iob)+16, a1=0x1000f4d0, a2=?, a3=0x1000f4d8, a4=sp-1192.
  The `jalr` at 0x100055e4 calls bzero with a0=sp-3248, a1=0x400, a2=?, a3=?.
  The `jalr` at 0x1000561c calls __assert with a0=0x1000f4cc, a1=0x1000c1b8, a2=0xeb, a3=sp-3248.
  The `jal` at 0x10005630 calls SDBgetSymbolValueScalar [0x1000ab6c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10005664 calls (unknown callee) with a0=sp-3248, a1=sp-2216, a2=?, a3=?.
  The `jalr` at 0x10005688 calls fprintf with a0=sym(__iob)+16, a1=0x1000c1c8, a2=0x1f, a3=?, a4=ret(0x1000526c), a5=sp-2216.
  The `jalr` at 0x100056e8 calls strerror with a0=[sym(errno)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000570c calls pfmt with a0=sym(__iob)+32, a1=0x201, a2=0x1000c168, a3=a0 at entry (arg0), a4=ret(strerror).
  The `jalr` at 0x10005718 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100052e0 targets 0x100056dc, is taken when v0(=ret(SDBreadOpenDatabase)) == 0, and falls through when v0(=ret(SDBreadOpenDatabase)) != 0.
  The `beq` branch at 0x1000536c targets 0x10005698, is taken when a2(=[ret(SDBreadOpenDatabase)+120]) == 0, and falls through when a2(=[ret(SDBreadOpenDatabase)+120]) != 0.
  The `beq` branch at 0x1000539c targets 0x100053fc and is always taken.
  The `beq` branch at 0x100053f4 targets 0x10005698, is taken when t8(?) >= t9(?) (unsigned), and falls through when t8(?) < t9(?) (unsigned).
  The `beq` branch at 0x10005420 targets 0x100055d8, is taken when t8(?) == t1(?), and falls through when t8(?) != t1(?).
  The `bne` branch at 0x10005428 targets 0x10005418, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x10005434 targets 0x100055e0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x100054c0 targets 0x100053a8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x100054c8 targets 0x10005574 and is always taken.
  The `beq` branch at 0x100054f8 targets 0x10005594, is taken when a2(?) == t1(?), and falls through when a2(?) != t1(?).
  The `bne` branch at 0x10005500 targets 0x100054f0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x10005530 targets 0x1000559c, is taken when a3(?) >= 0x4e (signed), and falls through when a3(?) < 0x4e (signed).
  The `beq` branch at 0x1000556c targets 0x100053a4, is taken when s2(?) >= a5(?) (unsigned), and falls through when s2(?) < a5(?) (unsigned).
  The `beq` branch at 0x1000557c targets 0x100055d0, is taken when a4(?) == t0(=0x1), and falls through when a4(?) != t0(=0x1).
  The `bne` branch at 0x10005584 targets 0x100054d0, is taken when a4(?) != t1(=0x2), and falls through when a4(?) == t1(=0x2).
  The `beq` branch at 0x1000558c targets 0x100054e4 and is always taken.
  The `beq` branch at 0x10005594 targets 0x10005508 and is always taken.
  The `beq` branch at 0x100055c8 targets 0x10005538 and is always taken.
  The `beq` branch at 0x100055d0 targets 0x100054e4 and is always taken.
  The `beq` branch at 0x100055d8 targets 0x10005430 and is always taken.
  The `beq` branch at 0x100055fc targets 0x10005628, is taken when a4(?) == t2(=0x1), and falls through when a4(?) != t2(=0x1).
  The `beq` branch at 0x10005604 targets 0x100056d4, is taken when a4(?) == t3(=0x2), and falls through when a4(?) != t3(=0x2).
  The `beq` branch at 0x1000564c targets 0x100056cc, is taken when a2(?) == t1(?), and falls through when a2(?) != t1(?).
  The `bne` branch at 0x10005654 targets 0x10005644, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10005690 targets 0x100053cc and is always taken.
  The `beq` branch at 0x100056cc targets 0x1000565c and is always taken.
  The `beq` branch at 0x100056d4 targets 0x10005628 and is always taken.
  The return at 0x100056c4 has v0 = one of ret(fprintf), ?.

- `createFile__GPcT1` in `usr/gfx/ucode/vfc/sdbutil` at 0x10005720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10005720-0x100058a4 (388 bytes).
  It occupies 388 bytes.
  The `sh` at 0x1000575c stores 2 bytes to sym(headerValues) +0x0.
  The `sh` at 0x10005768 stores 2 bytes to sym(headerValues) +0x2.
  The `lbu` at 0x1000577c loads 1 byte from a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to sym(yyin) +0x0, including `sw` at 0x100057a8, `sw` at 0x100057b8.
  The `sw` at 0x100057d8 stores 4 bytes to sym(writeSDB) +0x0.
  The `lw` at 0x100057f0 loads 4 bytes from sym(writeSDB) +0x0.
  2 such `lw` accesses load 4 bytes from sym(errno) +0x0, including `lw` at 0x10005830, `lw` at 0x10005870.
  The `jalr` at 0x1000576c calls strncpy with a0=sym(headerValues)+4, a1=0x1000c1f8, a2=0x64, a3=a3 at entry (arg3).
  The `jalr` at 0x1000578c calls fopen with a0=a0 at entry (arg0), a1=0x1000f4ec, a2=?, a3=?.
  The `jal` at 0x100057c8 calls SDBopenNewDatabase [0x1000a684] with a0=a1 at entry (arg1), a1=sym(headerValues), a2=sym(headerValues)+4, a3=?.
  The `jal` at 0x100057e0 calls yyparse__Gv [0x1000652c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100057ec calls SDBcloseNewDatabase [0x1000a4f0] with a0=[sym(writeSDB)], a1=?, a2=?, a3=?.
  The `jalr` at 0x100057fc calls fclose with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000582c calls strerror with a0=[sym(errno)], a1=?, a2=?, a3=?.
  The `jalr` at 0x10005850 calls pfmt with a0=sym(__iob)+32, a1=0x201, a2=0x1000c238, a3=a1 at entry (arg1), a4=ret(strerror).
  The `jalr` at 0x1000585c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000586c calls strerror with a0=[sym(errno)], a1=?, a2=?, a3=?.
  The `jalr` at 0x10005890 calls pfmt with a0=sym(__iob)+32, a1=0x201, a2=0x1000c210, a3=?, a4=ret(strerror).
  The `jalr` at 0x1000589c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10005774 targets 0x100057ac, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x10005780 targets 0x100057ac, is taken when a0(=[a0]:1) == 0, and falls through when a0(=[a0]:1) != 0.
  The `beq` branch at 0x10005794 targets 0x10005864, is taken when v0(=ret(fopen)) == 0, and falls through when v0(=ret(fopen)) != 0.
  The `beq` branch at 0x100057a4 targets 0x100057bc and is always taken.
  The `beq` branch at 0x100057d4 targets 0x10005824, is taken when v0(=ret(SDBopenNewDatabase)) == 0, and falls through when v0(=ret(SDBopenNewDatabase)) != 0.
  The `beq` branch at 0x100057f4 targets 0x10005804, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The return at 0x1000581c has v0 = one of ret(SDBcloseNewDatabase), ret(fclose).

- `yylex` in `usr/gfx/ucode/vfc/sdbutil` at 0x100058ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100058ac-0x10005aac (512 bytes).
  It occupies 512 bytes.
  The `lw` at 0x10005904 loads 4 bytes from table(0x1000c268) +0x0.
  The `lw` at 0x10005914 loads 4 bytes from sym(yyout) +0x0.
  The `lbu` at 0x10005974 loads 1 byte from sym(yytext) +0x0.
  The `sb` at 0x1000597c stores 1 byte to sym(yylval) +0x0.
  2 such `lw` accesses load 4 bytes from sym(yyleng) +0x0, including `lw` at 0x100059a4, `lw` at 0x100059c8.
  4 such `sw` accesses store 4 bytes to sym(yylval) +0x0, including `sw` at 0x100059b0, `sw` at 0x100059fc, `sw` at 0x10005a20.
  The `lw` at 0x100059c4 loads 4 bytes from sym(yylval) +0x0.
  The `sb` at 0x100059d8 stores 1 byte to ([sym(yyleng)] + [sym(yylval)]) -0x2.
  The `sdc1` at 0x10005a40 stores 8 bytes to sym(yylval) +0x0.
  The `jal` at 0x100058c8 calls yylook [0x10005aac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10005918 calls fprintf with a0=[sym(yyout)], a1=0x1000c290, a2=ret(yylook), a3=?, a5=sym(yyout).
  The `jal` at 0x10005924 calls yylook [0x10005aac] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10005954 calls yywrap [0x1000b76c] with a0=sym(yymark__Gv), a1=sym(yywrap), a2=ret(yylook), a3=?, a5=sym(yyout).
  The `jalr` at 0x10005980 calls strlen with a0=sym(yytext), a1=sym(yywrap), a2=ret(yylook), a3=?, a5=sym(yyout).
  The `jalr` at 0x1000598c calls __nwa__GUi with a0=ret(strlen)-1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100059b4 calls strncpy with a0=ret(__nwa__GUi), a1=sym(yytext)+1, a2=[sym(yyleng)]-2, a3=sym(yylval).
  The `jalr` at 0x100059e8 calls strtoul with a0=sym(yytext), a1=0x0, a2=0x0, a3=?, a5=sym(yyout).
  The `jalr` at 0x10005a0c calls strtol with a0=sym(yytext), a1=0x0, a2=0x0, a3=?, a5=sym(yyout).
  The `jalr` at 0x10005a2c calls strtod with a0=sym(yytext), a1=0x0, a2=ret(yylook), a3=?, a5=sym(yyout).
  The `jal` at 0x10005a48 calls checkKeywords__GPc [0x10004890] with a0=sym(yytext), a1=sym(yywrap), a2=ret(yylook), a3=?, a5=sym(yyout).
  The `jal` at 0x10005a64 calls yymark__Gv [0x100050b4] with a0=sym(yymark__Gv), a1=sym(yywrap), a2=ret(yylook), a3=?, a5=sym(yyout).
  The `jalr` at 0x10005a78 calls strlen with a0=sym(yytext), a1=?, a2=?, a3=?.
  The `jalr` at 0x10005a84 calls __nwa__GUi with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10005a9c calls strcpy with a0=ret(__nwa__GUi), a1=sym(yytext), a2=?, a3=?, a7=sym(yylval).
  The `bltz` branch at 0x100058d0 targets 0x10005938, is taken when v0(=ret(yylook)) < 0 (signed), and falls through when v0(=ret(yylook)) >= 0 (signed).
  The `beq` branch at 0x100058fc targets 0x10005910, is taken when v1(=ret(yylook)+1) >= 0xa (unsigned), and falls through when v1(=ret(yylook)+1) < 0xa (unsigned).
  The `bgez` branch at 0x10005930 targets 0x100058dc, is taken when v0(=ret(yylook)) >= 0 (signed), and falls through when v0(=ret(yylook)) < 0 (signed).
  The `beq` branch at 0x1000595c targets 0x10005924, is taken when v0(=ret(yywrap)) == 0, and falls through when v0(=ret(yywrap)) != 0.
  The `beq` branch at 0x10005964 targets 0x1000593c and is always taken.
  The `beq` branch at 0x10005978 targets 0x1000593c and is always taken.
  The `beq` branch at 0x100059d4 targets 0x1000593c and is always taken.
  The `beq` branch at 0x100059f8 targets 0x1000593c and is always taken.
  The `beq` branch at 0x10005a1c targets 0x1000593c and is always taken.
  The `beq` branch at 0x10005a3c targets 0x1000593c and is always taken.
  The `bltz` branch at 0x10005a50 targets 0x10005a74, is taken when v0(=ret(checkKeywords__GPc)) < 0 (signed), and falls through when v0(=ret(checkKeywords__GPc)) >= 0 (signed).
  The `beq` branch at 0x10005a58 targets 0x10005940 and is always taken.
  The `beq` branch at 0x10005a6c targets 0x10005924 and is always taken.
  The `beq` branch at 0x10005aa4 targets 0x10005a58 and is always taken.
  The return at 0x10005948 has v0 = ?.
  The indirect jump at 0x10005908 uses the jump table at 0x1000c268 with targets 0x10005920, 0x10005950, 0x10005a60, 0x10005a44, 0x10005a24, 0x10005a00, 0x100059dc, 0x10005980, 0x10005920, 0x1000596c.

- `yylook` in `usr/gfx/ucode/vfc/sdbutil` at 0x10005aac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10005aac-0x100062ec (2112 bytes).
  It occupies 2112 bytes.
  The `lw` at 0x10005ad0 loads 4 bytes from sym(yymorfg) +0x0.
  The `lw` at 0x10005aec loads 4 bytes from sym(yyleng) +0x0.
  The `sw` at 0x10005af0 stores 4 bytes to sym(yymorfg) +0x0.
  3 such `lw` accesses load 4 bytes from sym(yyprevious) +0x0, including `lw` at 0x10005b54, `lw` at 0x10006134, `lw` at 0x100061f4.
  The `lw` at 0x10005b58 loads 4 bytes from sym(yybgin) +0x0.
  The `sw` at 0x10005b5c stores 4 bytes to sym(yyestate) +0x0.
  31 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10005b68, `lw` at 0x10005b6c, `lw` at 0x10005b70.
  8 such `lw` accesses load 4 bytes from sym(yysptr) +0x0, including `lw` at 0x10005b78, `lw` at 0x10005d60, `lw` at 0x10005db0.
  9 such `sw` accesses store 4 bytes to sym(yysptr) +0x0, including `sw` at 0x10005b98, `sw` at 0x10005d74, `sw` at 0x10005e38.
  2 such `lbu` accesses load 1 byte from [sym(yysptr)] -0x1, including `lbu` at 0x10005ba0, `lbu` at 0x10005f3c.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10005bd0, `sw` at 0x10005be8, `sw` at 0x10005d30.
  18 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10005bf4, `lbu` at 0x10005c50, `lbu` at 0x10005cb8.
  8 such `sw` accesses store 4 bytes to sym(yytchar) +0x0, including `sw` at 0x10005c04, `sw` at 0x10005d68, `sw` at 0x10005e28.
  The `lw` at 0x10005c24 loads 4 bytes from sym(yytop) +0x0.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x10005c30, `sb` at 0x10005d9c, `sb` at 0x10005e78.
  7 such `lw` accesses load 4 bytes from sym(yyout) +0x0, including `lw` at 0x10005d44, `lw` at 0x10006024, `lw` at 0x100060d0.
  5 such `sb` accesses store 1 byte to [sym(yysptr)] +0x0, including `sb` at 0x10005d78, `sb` at 0x10005e3c, `sb` at 0x100061e8.
  2 such `sw` accesses store 4 bytes to sym(yyfnd) +0x0, including `sw` at 0x10005dbc, `sw` at 0x10005ea0.
  The `sw` at 0x10005dd0 stores 4 bytes to sym(yyolsp) +0x0.
  2 such `lw` accesses load 4 bytes from sym(yyfnd) +0x0, including `lw` at 0x10005e40, `lw` at 0x10005e74.
  The `lw` at 0x10005e4c loads 4 bytes from [sym(yyfnd)] +0x0.
  2 such `sw` accesses store 4 bytes to sym(yyprevious) +0x0, including `sw` at 0x10005e88, `sw` at 0x10006010.
  The `sw` at 0x10005e94 stores 4 bytes to sym(yylsp) +0x0.
  The `sw` at 0x10005eac stores 4 bytes to sym(yyleng) +0x0.
  8 such `lw` accesses load 4 bytes from sym(yylineno) +0x0, including `lw` at 0x10005f78, `lw` at 0x1000605c, `lw` at 0x10006078.
  8 such `sw` accesses store 4 bytes to sym(yylineno) +0x0, including `sw` at 0x10005f84, `sw` at 0x10006068, `sw` at 0x10006084.
  The `sb` at 0x10006018 stores 1 byte to sym(yytext) +0x0.
  2 such `lw` accesses load 4 bytes from [sym(yyout)] +0x0, including `lw` at 0x100060fc, `lw` at 0x10006110.
  The `sw` at 0x10006104 stores 4 bytes to [sym(yyout)] +0x0.
  2 such `lw` accesses load 4 bytes from [sym(yyout)] +0x4, including `lw` at 0x10006114, `lw` at 0x10006130.
  The `sw` at 0x10006124 stores 4 bytes to [sym(yyout)] +0x4.
  The `sb` at 0x1000613c stores 1 byte to [[sym(yyout)]+4] -0x1.
  The `jalr` at 0x10005bac calls __semgetc with a0=?, a1=?, a2=?, a3=?, a4=[sym(yysptr)]-1.
  The `jalr` at 0x10005d48 calls fprintf with a0=[sym(yyout)], a1=0x1000c2a8, a2=0x800, a3=?.
  The `jalr` at 0x10005d54 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10005df8 calls yyback [0x100062ec] with a0=?, a1=?, a2=sym(yyfnd), a3=?, a6=sym(yyolsp).
  The `jal` at 0x10005e58 calls yyback [0x100062ec] with a0=?, a1=?, a2=[sym(yysptr)], a3=[sym(yysptr)]+1.
  The `jalr` at 0x10005f98 calls __semgetc with a0=?, a1=?, a2=?, a3=?, a4=[sym(yysptr)]-1.
  The `jalr` at 0x1000602c calls __semputc with a0=?, a1=[sym(yyout)], a2=-0x1, a3=sym(yytext), a4=sym(yyprevious).
  The `jalr` at 0x100060d4 calls fprintf with a0=[sym(yyout)], a1=0x1000c2a8, a2=0x800, a3=?.
  The `jalr` at 0x100060e0 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10006180 calls __filbuf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100061b0 calls fprintf with a0=[sym(yyout)], a1=0x1000c2a8, a2=0x800, a3=?, a5=sym(yymatch).
  The `jalr` at 0x100061bc calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100061f0 calls __flsbuf with a0=[sym(yyprevious)], a1=[sym(yyout)], a2=[[sym(yyout)]]-1, a3=[[sym(yyout)]], a4=sym(yyprevious).
  The `jalr` at 0x1000621c calls fprintf with a0=[sym(yyout)], a1=0x1000c2a8, a2=0x800, a3=?.
  The `jalr` at 0x10006228 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10006294 calls __filbuf with a0=?, a1=?, a2=?, a3=?, a4=[sym(yysptr)]-1.
  The `beq` branch at 0x10005adc targets 0x10006088, is taken when at(=[sym(yymorfg)]) == 0, and falls through when at(=[sym(yymorfg)]) != 0.
  The `beq` branch at 0x10005b60 targets 0x1000606c, is taken when v1(=[sym(yyprevious)]) == s6(=0xa), and falls through when v1(=[sym(yyprevious)]) != s6(=0xa).
  The `bne` branch at 0x10005b74 targets 0x10005b84, is taken when s0(?) != s4(=sym(yycrank)), and falls through when s0(?) == s4(=sym(yycrank)).
  The `beq` branch at 0x10005b80 targets 0x10006140, is taken when a2(=one of 0x0, 0x1) == 0, and falls through when a2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10005b90 targets 0x10005ba4, is taken when a3(=sym(yysbuf)) >= v0(=[sym(yysptr)]) (unsigned), and falls through when a3(=sym(yysbuf)) < v0(=[sym(yysptr)]) (unsigned).
  The `beq` branch at 0x10005b9c targets 0x10005bfc and is always taken.
  The `beq` branch at 0x10005ba4 targets 0x10005bc8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10005bc0 targets 0x10005bfc and is always taken.
  The `bltz` branch at 0x10005be0 targets 0x1000617c, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `beq` branch at 0x10005c00 targets 0x10006058, is taken when a0(?) == s6(=0xa), and falls through when a0(?) != s6(=0xa).
  The `beq` branch at 0x10005c1c targets 0x10005f88, is taken when v0(?) == a2(=-0x1), and falls through when v0(?) != a2(=-0x1).
  The `bne` branch at 0x10005c34 targets 0x1000619c, is taken when a3(=sym(yytext)+2048) < s3(?) (unsigned), and falls through when a3(=sym(yytext)+2048) >= s3(?) (unsigned).
  The `beq` branch at 0x10005c3c targets 0x10005c88 and is always taken.
  The `bne` branch at 0x10005c48 targets 0x10005c6c, is taken when a1(=[sym(yytop)]) < s0(?) (unsigned), and falls through when a1(=[sym(yytop)]) >= s0(?) (unsigned).
  The `beq` branch at 0x10005c64 targets 0x10005f40, is taken when s1(?) == a6(?), and falls through when s1(?) != a6(?).
  The `beq` branch at 0x10005c70 targets 0x10005d5c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10005c7c targets 0x10005d5c, is taken when t9(?) == s4(=sym(yycrank)), and falls through when t9(?) != s4(=sym(yycrank)).
  The `bne` branch at 0x10005c94 targets 0x10005c44, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x10005ca0 targets 0x10005c6c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10005cb0 targets 0x10005cd4, is taken when a1(=[sym(yytop)]) < s0(?) (unsigned), and falls through when a1(=[sym(yytop)]) >= s0(?) (unsigned).
  The `beq` branch at 0x10005ccc targets 0x10006090, is taken when s1(?) == v1(?), and falls through when s1(?) != v1(?).
  The `bne` branch at 0x10005ce4 targets 0x10005c6c, is taken when a1(=[sym(yytop)]) < s0(?) (unsigned), and falls through when a1(=[sym(yytop)]) >= s0(?) (unsigned).
  The `bne` branch at 0x10005d00 targets 0x10005c6c, is taken when s1(?) != t8(?), and falls through when s1(?) == t8(?).
  The `beq` branch at 0x10005d18 targets 0x10006268, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x10005d2c targets 0x10005f6c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10005d6c targets 0x10006074, is taken when s6(=0xa) == v0(?), and falls through when s6(=0xa) != v0(?).
  The `beq` branch at 0x10005d94 targets 0x10005f14, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10005dac targets 0x10005eec, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10005db8 targets 0x10005eec, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `blez` branch at 0x10005dc4 targets 0x10005eec, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x10005de4 targets 0x10005e78, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x10005e04 targets 0x10005e74, is taken when v0(=ret(yyback)) == a1(=0x1), and falls through when v0(=ret(yyback)) != a1(=0x1).
  The `beq` branch at 0x10005e10 targets 0x10005e74, is taken when s8(=sym(yylstate)) >= s2(?) (unsigned), and falls through when s8(=sym(yylstate)) < s2(?) (unsigned).
  The `beq` branch at 0x10005e24 targets 0x10005f74, is taken when v0(?) == s6(=0xa), and falls through when v0(?) != s6(=0xa).
  The `beq` branch at 0x10005e60 targets 0x10005e70, is taken when v0(=ret(yyback)) == s1(=0x1), and falls through when v0(=ret(yyback)) != s1(=0x1).
  The `bne` branch at 0x10005e68 targets 0x10005e18, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x10005ef8 targets 0x100060e8, is taken when v0(?) == s6(=0xa), and falls through when v0(?) != s6(=0xa).
  The `bne` branch at 0x10005f0c targets 0x10005d9c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x10005f20 targets 0x10006230, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x10005f2c targets 0x10005f90, is taken when t0(?) >= v0(=[sym(yysptr)]) (unsigned), and falls through when t0(?) < v0(=[sym(yysptr)]) (unsigned).
  The `beq` branch at 0x10005f38 targets 0x10005fe8 and is always taken.
  The `beq` branch at 0x10005f50 targets 0x100061c4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x10005f64 targets 0x10006208, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x10005f6c targets 0x10005b68 and is always taken.
  The `beq` branch at 0x10005f80 targets 0x10005e2c and is always taken.
  The `beq` branch at 0x10005f88 targets 0x10005c24 and is always taken.
  The `beq` branch at 0x10005f90 targets 0x10005fb4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10005fac targets 0x10005fe8 and is always taken.
  The `bltz` branch at 0x10005fcc targets 0x10006290, is taken when t9(?) < 0 (signed), and falls through when t9(?) >= 0 (signed).
  The `beq` branch at 0x10005fec targets 0x10006168, is taken when a0(?) == s6(=0xa), and falls through when a0(?) != s6(=0xa).
  The `beq` branch at 0x10006004 targets 0x10006160, is taken when v0(?) == a2(=-0x1), and falls through when v0(?) != a2(=-0x1).
  The `blez` branch at 0x10006014 targets 0x10006040, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x10006020 targets 0x100060fc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x10006050 targets 0x10005b54 and is always taken.
  The `beq` branch at 0x10006064 targets 0x10005c08 and is always taken.
  The `beq` branch at 0x1000606c targets 0x10005b68 and is always taken.
  The `beq` branch at 0x10006080 targets 0x10005d74 and is always taken.
  The `beq` branch at 0x10006088 targets 0x10005af8 and is always taken.
  The `beq` branch at 0x100060a4 targets 0x10006240, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x100060b8 targets 0x10005f6c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100060f4 targets 0x10005f00 and is always taken.
  The `bltz` branch at 0x10006118 targets 0x100061ec, is taken when a3(=[[sym(yyout)]]) < 0 (signed), and falls through when a3(=[[sym(yyout)]]) >= 0 (signed).
  The `beq` branch at 0x10006138 targets 0x10006040 and is always taken.
  The `beq` branch at 0x10006144 targets 0x10005d80, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x10006150 targets 0x10005b88, is taken when a5(?) != s4(=sym(yycrank)), and falls through when a5(?) == s4(=sym(yycrank)).
  The `beq` branch at 0x10006158 targets 0x10005d84 and is always taken.
  The `beq` branch at 0x10006160 targets 0x1000600c and is always taken.
  The `beq` branch at 0x10006174 targets 0x10005ff4 and is always taken.
  The `beq` branch at 0x10006194 targets 0x10005bf8 and is always taken.
  The `beq` branch at 0x100061cc targets 0x100062b0, is taken when s6(=0xa) == v0(?), and falls through when s6(=0xa) != v0(?).
  The `beq` branch at 0x100061e4 targets 0x10005d80 and is always taken.
  The `beq` branch at 0x10006200 targets 0x10006040 and is always taken.
  The `beq` branch at 0x10006238 targets 0x10005eb4 and is always taken.
  The `beq` branch at 0x10006248 targets 0x100062c4, is taken when s6(=0xa) == v0(?), and falls through when s6(=0xa) != v0(?).
  The `beq` branch at 0x10006260 targets 0x10005d80 and is always taken.
  The `beq` branch at 0x10006270 targets 0x100062d8, is taken when s6(=0xa) == v0(?), and falls through when s6(=0xa) != v0(?).
  The `beq` branch at 0x10006288 targets 0x10005d80 and is always taken.
  The `beq` branch at 0x100062a8 targets 0x10005fe4 and is always taken.
  The `beq` branch at 0x100062bc targets 0x100061d4 and is always taken.
  The `beq` branch at 0x100062d0 targets 0x10006250 and is always taken.
  The `beq` branch at 0x100062e4 targets 0x10006278 and is always taken.
  The return at 0x10005ee4 has v0 = one of ?, 0x0.

- `yyback` in `usr/gfx/ucode/vfc/sdbutil` at 0x100062ec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100062ec-0x10006330 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100062f4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10006300, `lw` at 0x1000630c.
  The `beq` branch at 0x100062ec targets 0x10006328, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100062f8 targets 0x10006318, is taken when at(=[a0]) == 0, and falls through when at(=[a0]) != 0.
  The `beq` branch at 0x10006304 targets 0x10006320, is taken when v1(?) == a1, and falls through when v1(?) != a1.
  The `bne` branch at 0x10006310 targets 0x10006300, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The return at 0x10006318 has v0 = 0x0.
  The return at 0x10006320 has v0 = 0x1.
  The return at 0x10006328 has v0 = 0x0.

- `yyinput` in `usr/gfx/ucode/vfc/sdbutil` at 0x10006330 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10006330-0x10006434 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0x1000634c loads 4 bytes from sym(yysptr) +0x0.
  The `lw` at 0x1000635c loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  3 such `lw` accesses load 4 bytes from sym(yyin) +0x0, including `lw` at 0x10006360, `lw` at 0x100063a4, `lw` at 0x100063c0.
  The `sw` at 0x1000636c stores 4 bytes to sym(yysptr) +0x0.
  The `lbu` at 0x10006374 loads 1 byte from [sym(yysptr)] -0x1.
  2 such `lw` accesses load 4 bytes from [sym(yyin)] +0x0, including `lw` at 0x10006398, `lw` at 0x100063a8.
  The `sw` at 0x100063a0 stores 4 bytes to [sym(yyin)] +0x0.
  2 such `lw` accesses load 4 bytes from [sym(yyin)] +0x4, including `lw` at 0x100063ac, `lw` at 0x100063c4.
  The `sw` at 0x100063bc stores 4 bytes to [sym(yyin)] +0x4.
  The `lbu` at 0x100063c8 loads 1 byte from [[sym(yyin)]+4] -0x1.
  The `sw` at 0x100063e4 stores 4 bytes to sym(yytchar) +0x0.
  The `lw` at 0x1000640c loads 4 bytes from sym(yylineno) +0x0.
  The `sw` at 0x10006418 stores 4 bytes to sym(yylineno) +0x0.
  The `jalr` at 0x10006384 calls __semgetc with a0=[sym(yyin)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[sym(yysptr)]-1, a4=[sym(yysptr)], a5=sym(yyin), a6=sym(yysptr).
  The `jalr` at 0x10006420 calls __filbuf with a0=[sym(yyin)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[sym(yysptr)]-1, a4=[sym(yysptr)], a5=sym(yyin), a6=sym(yysptr).
  The `beq` branch at 0x10006364 targets 0x10006378, is taken when at(=sym(yysbuf)) >= a4(=[sym(yysptr)]) (unsigned), and falls through when at(=sym(yysbuf)) < a4(=[sym(yysptr)]) (unsigned).
  The `beq` branch at 0x10006370 targets 0x100063d4 and is always taken.
  The `beq` branch at 0x10006378 targets 0x10006398, is taken when v0(=[sym(__us_rsthread_stdio)]) == 0, and falls through when v0(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10006390 targets 0x100063d0 and is always taken.
  The `bltz` branch at 0x100063b4 targets 0x1000641c, is taken when v1(=[[sym(yyin)]]) < 0 (signed), and falls through when v1(=[[sym(yyin)]]) >= 0 (signed).
  The `beq` branch at 0x100063e0 targets 0x10006408, is taken when v0(?) == a5(=0xa), and falls through when v0(?) != a5(=0xa).
  The `beq` branch at 0x100063e8 targets 0x100063f8, is taken when v0(?) == a0(=-0x1), and falls through when v0(?) != a0(=-0x1).
  The `beq` branch at 0x10006414 targets 0x100063e8 and is always taken.
  The `beq` branch at 0x1000642c targets 0x100063cc and is always taken.
  The return at 0x100063f0 has v0 = ?.
  The return at 0x10006400 has v0 = 0x0.

- `yyoutput` in `usr/gfx/ucode/vfc/sdbutil` at 0x10006434 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10006434-0x100064d4 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x1000644c loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  3 such `lw` accesses load 4 bytes from sym(yyout) +0x0, including `lw` at 0x10006460, `lw` at 0x10006484, `lw` at 0x1000649c.
  2 such `lw` accesses load 4 bytes from [sym(yyout)] +0x0, including `lw` at 0x10006478, `lw` at 0x10006488.
  The `sw` at 0x10006480 stores 4 bytes to [sym(yyout)] +0x0.
  2 such `lw` accesses load 4 bytes from [sym(yyout)] +0x4, including `lw` at 0x1000648c, `lw` at 0x100064a0.
  The `sw` at 0x10006498 stores 4 bytes to [sym(yyout)] +0x4.
  The `sb` at 0x100064b0 stores 1 byte to [[sym(yyout)]+4] -0x1.
  The `jalr` at 0x10006468 calls __semputc with a0=a0 at entry (arg0), a1=[sym(yyout)], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=sym(yyout).
  The `jalr` at 0x100064c4 calls __flsbuf with a0=a0 at entry (arg0), a1=[sym(yyout)], a2=a2 at entry (arg2), a3=[[sym(yyout)]+4]+1, a4=sym(yyout), a5=[[sym(yyout)]], a6=[[sym(yyout)]]-1.
  The `beq` branch at 0x1000645c targets 0x10006478, is taken when at(=[sym(__us_rsthread_stdio)]) == 0, and falls through when at(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10006470 targets 0x100064b4 and is always taken.
  The `bltz` branch at 0x10006490 targets 0x100064c0, is taken when a5(=[[sym(yyout)]]) < 0 (signed), and falls through when a5(=[[sym(yyout)]]) >= 0 (signed).
  The `beq` branch at 0x100064cc targets 0x100064b4 and is always taken.
  The return at 0x100064ac has v0 = 0x10bf4.
  The return at 0x100064b8 has v0 = one of ret(__semputc), ret(__flsbuf).

- `yyunput` in `usr/gfx/ucode/vfc/sdbutil` at 0x100064d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100064d4-0x1000651c (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x100064e0 loads 4 bytes from abs 0x1000f2e0.
  The `lw` at 0x100064e8 loads 4 bytes from abs 0x1000f330.
  The `lw` at 0x100064ec loads 4 bytes from sym(yysptr) +0x0.
  The `sw` at 0x100064f4 stores 4 bytes to sym(yytchar) +0x0.
  The `sw` at 0x100064fc stores 4 bytes to sym(yysptr) +0x0.
  The `sb` at 0x10006504 stores 1 byte to [sym(yysptr)] +0x0.
  The `lw` at 0x10006508 loads 4 bytes from abs 0x1000f2dc.
  The `lw` at 0x1000650c loads 4 bytes from sym(yylineno) +0x0.
  The `sw` at 0x10006518 stores 4 bytes to sym(yylineno) +0x0.
  The `beq` branch at 0x100064f0 targets 0x10006508, is taken when a0 == v1(=0xa), and falls through when a0 != v1(=0xa).
  The `beq` branch at 0x10006514 targets 0x100064f8 and is always taken.
  The return at 0x10006500 has v0 = sym(yytchar).

- `yyparse__Gv` in `usr/gfx/ucode/vfc/sdbutil` at 0x1000652c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x1000652c-0x10007b28 (5628 bytes).
  It occupies 5628 bytes.
  7 such `sw` accesses store 4 bytes to sym(yychar) +0x0, including `sw` at 0x1000657c, `sw` at 0x10006888, `sw` at 0x10006c80.
  4 such `sw` accesses store 4 bytes to sym(yytmp) +0x0, including `sw` at 0x10006580, `sw` at 0x100067e4, `sw` at 0x10006928.
  2 such `sw` accesses store 4 bytes to sym(yystate) +0x0, including `sw` at 0x10006584, `sw` at 0x10006a88.
  The `sw` at 0x1000659c stores 4 bytes to sym(yynerrs) +0x0.
  4 such `sw` accesses store 4 bytes to sym(yyerrflag) +0x0, including `sw` at 0x100065a8, `sw` at 0x100068a4, `sw` at 0x10006ce8.
  5 such `lw` accesses load 4 bytes from sym(yyv) +0x0, including `lw` at 0x100065b0, `lw` at 0x10006b88, `lw` at 0x10006bd4.
  7 such `lw` accesses load 4 bytes from sym(yys) +0x0, including `lw` at 0x100065b8, `lw` at 0x10006704, `lw` at 0x10006be8.
  3 such `sw` accesses store 4 bytes to sym(yypv) +0x0, including `sw` at 0x100065c4, `sw` at 0x10006a74, `sw` at 0x10006c4c.
  3 such `sw` accesses store 4 bytes to sym(yyps) +0x0, including `sw` at 0x100065d0, `sw` at 0x10006a7c, `sw` at 0x10006c60.
  3 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0x100065f8, `ldc1` at 0x100069f8, `ldc1` at 0x1000707c.
  86 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10006600, `lw` at 0x1000660c, `lw` at 0x10006630.
  4 such `sdc1` accesses store 8 bytes to sym(yyval) +0x0, including `sdc1` at 0x10006608, `sdc1` at 0x10006894, `sdc1` at 0x10006a08.
  6 such `lw` accesses load 4 bytes from sym(yydebug) +0x0, including `lw` at 0x10006674, `lw` at 0x100067ec, `lw` at 0x100068cc.
  14 such `lw` accesses load 4 bytes from sym(yychar) +0x0, including `lw` at 0x1000669c, `lw` at 0x10006770, `lw` at 0x100067c8.
  4 such `lw` accesses load 4 bytes from sym(yytoks) +0x4, including `lw` at 0x100066ac, `lw` at 0x10006824, `lw` at 0x100068fc.
  The `sw` at 0x10006728 stores 4 bytes to ?.
  The `ldc1` at 0x1000672c loads 8 bytes from sym(yyval) +0x0.
  The `sdc1` at 0x10006750 stores 8 bytes to ?.
  2 such `lw` accesses load 4 bytes from sym(yyerrflag) +0x0, including `lw` at 0x100067b8, `lw` at 0x10006880.
  2 such `lw` accesses load 4 bytes from sym(yytmp) +0x0, including `lw` at 0x100067f8, `lw` at 0x1000693c.
  The `ldc1` at 0x10006884 loads 8 bytes from sym(yylval) +0x0.
  The `lw` at 0x10006a94 loads 4 bytes from table(0x1000c3f8) +0x0.
  The `lw` at 0x10006ac4 loads 4 bytes from sym(yyexca) +0x0.
  The `lw` at 0x10006ad0 loads 4 bytes from sym(yyexca) +0x4.
  2 such `lw` accesses load 4 bytes from sym(yypv) +0x0, including `lw` at 0x10006b8c, `lw` at 0x10006c9c.
  2 such `sw` accesses store 4 bytes to sym(yys) +0x0, including `sw` at 0x10006be0, `sw` at 0x10007a94.
  2 such `sw` accesses store 4 bytes to sym(yyv) +0x0, including `sw` at 0x10006bf4, `sw` at 0x10007aa0.
  2 such `lw` accesses load 4 bytes from sym(yyps) +0x0, including `lw` at 0x10006c40, `lw` at 0x10006ca0.
  The `lw` at 0x10006ca8 loads 4 bytes from sym(yystate) +0x0.
  14 such `lw` accesses load 4 bytes from sym(writeSDB) +0x0, including `lw` at 0x10006f3c, `lw` at 0x10007004, `lw` at 0x10007164.
  18 such `sw` accesses store 4 bytes to sym(yyval) +0x0, including `sw` at 0x10006fb8, `sw` at 0x10006fc4, `sw` at 0x100070cc.
  4 such `sw` accesses store 4 bytes to ret(__nw__GUi) +0x4, including `sw` at 0x100070a0, `sw` at 0x1000751c, `sw` at 0x10007668.
  4 such `sw` accesses store 4 bytes to ret(__nw__GUi) +0x0, including `sw` at 0x100070a4, `sw` at 0x10007520, `sw` at 0x1000766c.
  The `sh` at 0x100072d0 stores 2 bytes to sym(headerValues) +0x0.
  The `sh` at 0x100072d8 stores 2 bytes to sym(headerValues) +0x2.
  The `jalr` at 0x10006694 calls printf with a0=0x1000c2d0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100066f4 calls printf with a0=0x1000f4f8, a1=?, a2=?, a3=[sym(yychar)].
  The `jalr` at 0x10006768 calls printf with a0=0x1000f4f8, a1=?, a2=?, a3=[sym(yychar)].
  The `jalr` at 0x10006808 calls printf with a0=0x1000c320, a1=?, a2=?, a3=?.
  The `jalr` at 0x100068e0 calls printf with a0=0x1000c388, a1=[sym(yychar)], a2=0x2, a3=0x3, a4=[sym(yydebug)].
  The `jalr` at 0x1000694c calls printf with a0=0x1000c320, a1=?, a2=?, a3=?.
  The `jalr` at 0x100069a8 calls printf with a0=0x1000c3e0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10006ab8 calls printf with a0=0x1000f4f8, a1=?, a2=?, a3=[sym(yychar)].
  The `jalr` at 0x10006bc0 calls realloc with a0=[sym(yys)], a1=(([0x1000f574] + [0x1000f574]) << 0x2), a2=?, a3=?.
  The `jalr` at 0x10006bdc calls realloc with a0=[sym(yyv)], a1=(([0x1000f574] + [0x1000f574]) << 0x3), a2=?, a3=?.
  The `jal` at 0x10006c70 calls yylex [0x100058ac] with a0=sym(yytmp), a1=?, a2=?, a3=[sym(yychar)].
  The `jalr` at 0x10006cb8 calls gettxt with a0=0x1000c330, a1=0x1000c340, a2=0x2, a3=?.
  The `jal` at 0x10006cc4 calls yyerror__GPc [0x10004fbc] with a0=ret(gettxt), a1=?, a2=?, a3=?.
  The `jalr` at 0x10006d08 calls printf with a0=0x1000c350, a1=?, a2=?, a3=?, a4=[sym(yys)].
  The `jalr` at 0x10006e04 calls printf with a0=0x1000c3d0, a1=?, a2=?, a3=[sym(yychar)].
  The `jalr` at 0x10006e28 calls printf with a0=0x1000c2e8, a1=?, a2=?, a3=[sym(yychar)], a4=[sym(yytoks)+4], a7=0x0.
  The `jalr` at 0x10006e38 calls printf with a0=0x1000f4f0, a1=?, a2=?, a3=[sym(yychar)], a4=[sym(yytoks)+4], a7=0x0.
  The `jalr` at 0x10006e50 calls malloc with a0=(([0x1000f574] + [0x1000f574]) << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x10006e60 calls malloc with a0=(([0x1000f574] + [0x1000f574]) << 0x3), a1=?, a2=?, a3=?.
  The `jal` at 0x10006e98 calls yylex [0x100058ac] with a0=?, a1=?, a2=?, a3=?, a6=-0x2.
  The `jalr` at 0x10006eb4 calls printf with a0=0x1000c2e8, a1=?, a2=?, a3=[sym(yychar)].
  The `jalr` at 0x10006ec8 calls printf with a0=0x1000f4f0, a1=?, a2=?, a3=[sym(yychar)], a4=[sym(yytoks)+4].
  The `jalr` at 0x10006ee0 calls printf with a0=0x1000c2e8, a1=?, a2=?, a3=[sym(yychar)], a4=0x0, a7=[sym(yytoks)+4].
  The `jalr` at 0x10006ef0 calls printf with a0=0x1000f4f0, a1=?, a2=?, a3=[sym(yychar)], a4=0x0, a7=[sym(yytoks)+4].
  The `jalr` at 0x10006f28 calls slistConvertor__20TypeArray__pt__4_iUlGP15Slist__pt__3_UlUl with a0=sp-384, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x10006f50 calls SDBaddNewScalarSymbol [0x1000a4b0] with a0=[sym(writeSDB)], a1=?, a2=0xa, a3=?, a4=0x0.
  The `jal` at 0x10006f74 calls SDBaddNewArraySymbol [0x1000a478] with a0=[sym(writeSDB)], a1=?, a2=0xa, a3=?, a5=0x0.
  The `jal` at 0x10006f88 calls (unnamed) [0x10008058] with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x10006f9c calls (unnamed) [0x10007ed4] with a0=sp-384, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x10006ff0 calls slistConvertor__19TypeArray__pt__3_ddGP14Slist__pt__2_dUl with a0=sp-368, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x10007018 calls SDBaddNewScalarSymbol [0x1000a4b0] with a0=[sym(writeSDB)], a1=?, a2=0x11, a3=?, a4=0x0.
  The `jal` at 0x1000703c calls SDBaddNewArraySymbol [0x1000a478] with a0=[sym(writeSDB)], a1=?, a2=0x11, a3=?, a5=0x0.
  The `jal` at 0x10007050 calls (unnamed) [0x100084e0] with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x10007064 calls (unnamed) [0x10008358] with a0=sp-368, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x10007090 calls __nw__GUi with a0=0x8, a1=entry(0x1000c3f8), a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x100070bc calls (unnamed) [0x100083c4] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100070e0 calls (unnamed) [0x1000842c] with a0=?, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jalr` at 0x10007150 calls slistConvertor__19TypeArray__pt__3_fdGP14Slist__pt__2_dUl with a0=sp-344, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x10007178 calls SDBaddNewScalarSymbol [0x1000a4b0] with a0=[sym(writeSDB)], a1=?, a2=0x10, a3=?, a4=0x0.
  The `jal` at 0x1000719c calls SDBaddNewArraySymbol [0x1000a478] with a0=[sym(writeSDB)], a1=?, a2=0x10, a3=?, a5=0x0.
  The `jal` at 0x100071b0 calls (unnamed) [0x100084e0] with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x100071c4 calls (unnamed) [0x100087fc] with a0=sp-344, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x100071fc calls slistConvertor__19TypeArray__pt__3_clGP14Slist__pt__2_lUl with a0=sp-328, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x10007224 calls SDBaddNewScalarSymbol [0x1000a4b0] with a0=[sym(writeSDB)], a1=?, a2=0x8, a3=?, a4=0x0.
  The `jal` at 0x10007248 calls SDBaddNewArraySymbol [0x1000a478] with a0=[sym(writeSDB)], a1=?, a2=0x8, a3=?, a5=0x0.
  The `jal` at 0x1000725c calls (unnamed) [0x10008c70] with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x10007270 calls (unnamed) [0x10008aec] with a0=sp-328, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x10007290 calls strncpy with a0=?, a1=?, a2=0x64, a3=?, a6=sym(yyval).
  The `jal` at 0x100072a8 calls SDBsetHeader [0x1000a7e8] with a0=[sym(writeSDB)], a1=sym(headerValues), a2=?, a3=?.
  The `jal` at 0x100072dc calls SDBsetHeader [0x1000a7e8] with a0=[sym(writeSDB)], a1=sym(headerValues), a2=?, a3=?, a6=sym(yyval).
  The `jalr` at 0x10007314 calls slistConvertor__19TypeArray__pt__3_ilGP14Slist__pt__2_lUl with a0=sp-312, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x1000733c calls SDBaddNewScalarSymbol [0x1000a4b0] with a0=[sym(writeSDB)], a1=?, a2=0x2, a3=?, a4=0x0.
  The `jal` at 0x10007360 calls SDBaddNewArraySymbol [0x1000a478] with a0=[sym(writeSDB)], a1=?, a2=0x2, a3=?, a5=0x0.
  The `jal` at 0x10007374 calls (unnamed) [0x10008c70] with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x10007388 calls (unnamed) [0x10008e94] with a0=sp-312, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x100073c0 calls slistConvertor__19TypeArray__pt__3_llGP14Slist__pt__2_lUl with a0=sp-296, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x100073e8 calls SDBaddNewScalarSymbol [0x1000a4b0] with a0=[sym(writeSDB)], a1=?, a2=0x4, a3=?, a4=0x0.
  The `jal` at 0x1000740c calls SDBaddNewArraySymbol [0x1000a478] with a0=[sym(writeSDB)], a1=?, a2=0x4, a3=?, a5=0x0.
  The `jal` at 0x10007420 calls (unnamed) [0x10008c70] with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x10007434 calls (unnamed) [0x10009098] with a0=sp-296, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x1000746c calls slistConvertor__19TypeArray__pt__3_slGP14Slist__pt__2_lUl with a0=sp-280, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x10007494 calls SDBaddNewScalarSymbol [0x1000a4b0] with a0=[sym(writeSDB)], a1=?, a2=0x6, a3=?, a4=0x0.
  The `jal` at 0x100074b8 calls SDBaddNewArraySymbol [0x1000a478] with a0=[sym(writeSDB)], a1=?, a2=0x6, a3=?, a5=0x0.
  The `jal` at 0x100074cc calls (unnamed) [0x10008c70] with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x100074e0 calls (unnamed) [0x10009398] with a0=sp-280, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x1000750c calls __nw__GUi with a0=0x8, a1=entry(0x1000c3f8), a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x10007538 calls (unnamed) [0x10008b54] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000755c calls (unnamed) [0x10008bbc] with a0=?, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jalr` at 0x100075a4 calls slistConvertor__21TypeArray__pt__5_PcPcGP15Slist__pt__3_PcUl with a0=sp-256, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x100075cc calls SDBaddNewScalarSymbol [0x1000a4b0] with a0=[sym(writeSDB)], a1=?, a2=0xf, a3=?, a4=0x0.
  The `jal` at 0x100075f0 calls SDBaddNewArraySymbol [0x1000a478] with a0=[sym(writeSDB)], a1=?, a2=0xf, a3=?, a5=0x0.
  The `jal` at 0x10007604 calls (unnamed) [0x10009724] with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x10007618 calls (unnamed) [0x1000959c] with a0=sp-256, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x10007658 calls __nw__GUi with a0=0x8, a1=entry(0x1000c3f8), a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x10007684 calls (unnamed) [0x10009608] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100076a8 calls (unnamed) [0x10009670] with a0=?, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jalr` at 0x100076e4 calls slistConvertor__21TypeArray__pt__5_UcUlGP15Slist__pt__3_UlUl with a0=sp-232, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x1000770c calls SDBaddNewScalarSymbol [0x1000a4b0] with a0=[sym(writeSDB)], a1=?, a2=0x9, a3=?, a4=0x0.
  The `jal` at 0x10007730 calls SDBaddNewArraySymbol [0x1000a478] with a0=[sym(writeSDB)], a1=?, a2=0x9, a3=?, a5=0x0.
  The `jal` at 0x10007744 calls (unnamed) [0x10008058] with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x10007758 calls (unnamed) [0x10009a38] with a0=sp-232, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x10007790 calls slistConvertor__21TypeArray__pt__5_UiUlGP15Slist__pt__3_UlUl with a0=sp-216, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x100077b8 calls SDBaddNewScalarSymbol [0x1000a4b0] with a0=[sym(writeSDB)], a1=?, a2=0x3, a3=?, a4=0x0.
  The `jal` at 0x100077dc calls SDBaddNewArraySymbol [0x1000a478] with a0=[sym(writeSDB)], a1=?, a2=0x3, a3=?, a5=0x0.
  The `jal` at 0x100077f0 calls (unnamed) [0x10008058] with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x10007804 calls (unnamed) [0x10009c40] with a0=sp-216, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x1000783c calls slistConvertor__21TypeArray__pt__5_UlUlGP15Slist__pt__3_UlUl with a0=sp-200, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x10007864 calls SDBaddNewScalarSymbol [0x1000a4b0] with a0=[sym(writeSDB)], a1=?, a2=0x5, a3=?, a4=0x0.
  The `jal` at 0x10007888 calls SDBaddNewArraySymbol [0x1000a478] with a0=[sym(writeSDB)], a1=?, a2=0x5, a3=?, a5=0x0.
  The `jal` at 0x1000789c calls (unnamed) [0x10008058] with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x100078b0 calls (unnamed) [0x10009e44] with a0=sp-200, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x100078e8 calls slistConvertor__21TypeArray__pt__5_UsUlGP15Slist__pt__3_UlUl with a0=sp-184, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x10007918 calls SDBaddNewScalarSymbol [0x1000a4b0] with a0=[sym(writeSDB)], a1=?, a2=0x7, a3=?, a4=0x0.
  The `jal` at 0x10007940 calls SDBaddNewArraySymbol [0x1000a478] with a0=[sym(writeSDB)], a1=?, a2=0x7, a3=?, a5=0x0.
  The `jal` at 0x10007954 calls (unnamed) [0x10008058] with a0=?, a1=0x3, a2=?, a3=?.
  The `jal` at 0x10007968 calls (unnamed) [0x1000a14c] with a0=sp-184, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x100079a8 calls __nw__GUi with a0=0x8, a1=entry(0x1000c3f8), a2=?, a3=?, a6=sym(yyval).
  The `jal` at 0x100079d4 calls (unnamed) [0x10007f3c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100079f4 calls (unnamed) [0x10007fa4] with a0=?, a1=?, a2=?, a3=?, a6=sym(yyval).
  The `jalr` at 0x10007a14 calls gettxt with a0=0x1000c2f8, a1=0x1000c308, a2=?, a3=?.
  The `jal` at 0x10007a20 calls yyerror__GPc [0x10004fbc] with a0=ret(gettxt), a1=?, a2=?, a3=?.
  The `jalr` at 0x10007a70 calls memcpy with a0=?, a1=[sym(yys)], a2=?, a3=?.
  The `jalr` at 0x10007a90 calls memcpy with a0=?, a1=[sym(yyv)], a2=(([0x1000f574] + [0x1000f574]) << 0x3), a3=sym(yys).
  The `jalr` at 0x10007aac calls printf with a0=0x1000c3a8, a1=?, a2=?, a3=[sym(yychar)], a4=0x0.
  The `jalr` at 0x10007ac0 calls printf with a0=0x1000c3c0, a1=?, a2=?, a3=[sym(yychar)], a4=0x0.
  The `beq` branch at 0x100065d4 targets 0x10006670 and is always taken.
  The `beq` branch at 0x1000661c targets 0x10006650, is taken when s2(?) >= 0xfb (signed), and falls through when s2(?) < 0xfb (signed).
  The `beq` branch at 0x10006648 targets 0x10006664, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `beq` branch at 0x1000666c targets 0x10006c90, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10006678 targets 0x100066fc, is taken when at(=[sym(yydebug)]) == 0, and falls through when at(=[sym(yydebug)]) != 0.
  The `beq` branch at 0x100066a0 targets 0x10006eb0, is taken when a3(=[sym(yychar)]) == 0, and falls through when a3(=[sym(yychar)]) != 0.
  The `bltz` branch at 0x100066a8 targets 0x10006ec4, is taken when a3(=[sym(yychar)]) < 0 (signed), and falls through when a3(=[sym(yychar)]) >= 0 (signed).
  The `bltz` branch at 0x100066b0 targets 0x100066e4, is taken when a4(=[sym(yytoks)+4]) < 0 (signed), and falls through when a4(=[sym(yytoks)+4]) >= 0 (signed).
  The `beq` branch at 0x100066bc targets 0x100066d4 and is always taken.
  The `bltz` branch at 0x100066cc targets 0x100066e4, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `bne` branch at 0x100066d4 targets 0x100066c4, is taken when a4(?) != a3(=[sym(yychar)]), and falls through when a4(?) == a3(=[sym(yychar)]).
  The `beq` branch at 0x100066dc targets 0x100066f0 and is always taken.
  The `beq` branch at 0x10006718 targets 0x10006b80, is taken when s7(?) >= v1(=([sym(yys)] + ([0x1000f574] << 0x2))) (unsigned), and falls through when s7(?) < v1(=([sym(yys)] + ([0x1000f574] << 0x2))) (unsigned).
  The `beq` branch at 0x1000674c targets 0x100067c4 and is always taken.
  The `bltz` branch at 0x10006788 targets 0x10006798, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bne` branch at 0x10006790 targets 0x10006860, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x100067a0 targets 0x10006918, is taken when a5(?) == a6(=-0x2), and falls through when a5(?) != a6(=-0x2).
  The `beq` branch at 0x100067b4 targets 0x100068a8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x100067bc targets 0x10006984, is taken when s1(=one of 0x0, 0x1) == 0, and falls through when s1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x100067d8 targets 0x10006798, is taken when s3(=0xffffffffff676980) >= s4(?) (signed), and falls through when s3(=0xffffffffff676980) < s4(?) (signed).
  The `bltz` branch at 0x100067e0 targets 0x10006c6c, is taken when a3(=[sym(yychar)]) < 0 (signed), and falls through when a3(=[sym(yychar)]) >= 0 (signed).
  The `beq` branch at 0x100067f4 targets 0x10006774, is taken when v1(=[sym(yydebug)]) == 0, and falls through when v1(=[sym(yydebug)]) != 0.
  The `beq` branch at 0x100067fc targets 0x10006774, is taken when v0(=[sym(yytmp)]) == 0, and falls through when v0(=[sym(yytmp)]) != 0.
  The `beq` branch at 0x10006820 targets 0x10006e20, is taken when a3(=[sym(yychar)]) == 0, and falls through when a3(=[sym(yychar)]) != 0.
  The `bltz` branch at 0x10006828 targets 0x10006e38, is taken when a3(=[sym(yychar)]) < 0 (signed), and falls through when a3(=[sym(yychar)]) >= 0 (signed).
  The `bgez` branch at 0x10006830 targets 0x10006850, is taken when a4(=[sym(yytoks)+4]) >= 0 (signed), and falls through when a4(=[sym(yytoks)+4]) < 0 (signed).
  The `beq` branch at 0x10006838 targets 0x10006754 and is always taken.
  The `bltz` branch at 0x10006848 targets 0x10006758, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `bne` branch at 0x10006850 targets 0x10006840, is taken when a4(?) != a3(=[sym(yychar)]), and falls through when a4(?) == a3(=[sym(yychar)]).
  The `beq` branch at 0x10006858 targets 0x10006764 and is always taken.
  The `bne` branch at 0x10006870 targets 0x10006798, is taken when a1(?) != a3(?), and falls through when a1(?) == a3(?).
  The `blez` branch at 0x10006890 targets 0x10006670, is taken when v0(=[sym(yyerrflag)]) <= 0 (signed), and falls through when v0(=[sym(yyerrflag)]) > 0 (signed).
  The `beq` branch at 0x100068a0 targets 0x10006670 and is always taken.
  The `beq` branch at 0x100068a8 targets 0x10006cac, is taken when v0(=[sym(yyerrflag)]) == 0, and falls through when v0(=[sym(yyerrflag)]) != 0.
  The `beq` branch at 0x100068b4 targets 0x10006cd0, is taken when v0(=[sym(yyerrflag)]) == a1(=0x1), and falls through when v0(=[sym(yyerrflag)]) != a1(=0x1).
  The `beq` branch at 0x100068bc targets 0x10006ccc, is taken when v0(=[sym(yyerrflag)]) == a2(=0x2), and falls through when v0(=[sym(yyerrflag)]) != a2(=0x2).
  The `bne` branch at 0x100068c8 targets 0x100067bc, is taken when v0(=[sym(yyerrflag)]) != a3(=0x3), and falls through when v0(=[sym(yyerrflag)]) == a3(=0x3).
  The `beq` branch at 0x100068d0 targets 0x10006e10, is taken when a4(=[sym(yydebug)]) == 0, and falls through when a4(=[sym(yydebug)]) != 0.
  The `beq` branch at 0x100068f8 targets 0x10007aa4, is taken when a3(=[sym(yychar)]) == 0, and falls through when a3(=[sym(yychar)]) != 0.
  The `bltz` branch at 0x10006900 targets 0x10007abc, is taken when a3(=[sym(yychar)]) < 0 (signed), and falls through when a3(=[sym(yychar)]) >= 0 (signed).
  The `bgez` branch at 0x10006908 targets 0x10006dd8, is taken when t0(=[sym(yytoks)+4]) >= 0 (signed), and falls through when t0(=[sym(yytoks)+4]) < 0 (signed).
  The `beq` branch at 0x10006910 targets 0x10006de8 and is always taken.
  The `bltz` branch at 0x10006924 targets 0x10006e94, is taken when t3(=[sym(yychar)]) < 0 (signed), and falls through when t3(=[sym(yychar)]) >= 0 (signed).
  The `beq` branch at 0x10006938 targets 0x10006ac0, is taken when v1(=[sym(yydebug)]) == 0, and falls through when v1(=[sym(yydebug)]) != 0.
  The `beq` branch at 0x10006940 targets 0x10006ac0, is taken when v0(=[sym(yytmp)]) == 0, and falls through when v0(=[sym(yytmp)]) != 0.
  The `beq` branch at 0x10006964 targets 0x10006ed8, is taken when a3(=[sym(yychar)]) == 0, and falls through when a3(=[sym(yychar)]) != 0.
  The `bltz` branch at 0x1000696c targets 0x10006ef0, is taken when a3(=[sym(yychar)]) < 0 (signed), and falls through when a3(=[sym(yychar)]) >= 0 (signed).
  The `bgez` branch at 0x10006974 targets 0x10006b70, is taken when a7(=[sym(yytoks)+4]) >= 0 (signed), and falls through when a7(=[sym(yytoks)+4]) < 0 (signed).
  The `beq` branch at 0x1000697c targets 0x10006aa0 and is always taken.
  The `beq` branch at 0x10006988 targets 0x100069b0, is taken when t0(=[sym(yydebug)]) == 0, and falls through when t0(=[sym(yydebug)]) != 0.
  The `beq` branch at 0x100069d4 targets 0x100065dc, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `beq` branch at 0x10006a20 targets 0x10006a54, is taken when s2(?) >= 0xfb (signed), and falls through when s2(?) < 0xfb (signed).
  The `beq` branch at 0x10006a4c targets 0x10006a68, is taken when t2(?) == t3(?), and falls through when t2(?) != t3(?).
  The `beq` branch at 0x10006a8c targets 0x10006668, is taken when s4(?) >= 0x55 (unsigned), and falls through when s4(?) < 0x55 (unsigned).
  The `beq` branch at 0x10006acc targets 0x10006e84, is taken when a0(=[sym(yyexca)]) == s0(=-0x1), and falls through when a0(=[sym(yyexca)]) != s0(=-0x1).
  The `bne` branch at 0x10006ae0 targets 0x10006adc, is taken when v1(?) != s0(=-0x1), and falls through when v1(?) == s0(=-0x1).
  The `bne` branch at 0x10006aec targets 0x10006adc, is taken when a1(?) != s2(?), and falls through when a1(?) == s2(?).
  The `bltz` branch at 0x10006af8 targets 0x10006b1c, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `beq` branch at 0x10006b00 targets 0x10006b1c, is taken when a4(?) == a3(=[sym(yychar)]), and falls through when a4(?) != a3(=[sym(yychar)]).
  The `bltz` branch at 0x10006b0c targets 0x10006b1c, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `bne` branch at 0x10006b14 targets 0x10006b08, is taken when a4(?) != a3(=[sym(yychar)]), and falls through when a4(?) == a3(=[sym(yychar)]).
  The `bgez` branch at 0x10006b20 targets 0x100067a8, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bltz` branch at 0x10006b68 targets 0x10006aa4, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bne` branch at 0x10006b70 targets 0x10006b60, is taken when a7(?) != a3(=[sym(yychar)]), and falls through when a7(?) == a3(=[sym(yychar)]).
  The `beq` branch at 0x10006b78 targets 0x10006ab4 and is always taken.
  The `beq` branch at 0x10006bb0 targets 0x10006e48, is taken when v0(=[0x1000f574]) == ra(=0x96), and falls through when v0(=[0x1000f574]) != ra(=0x96).
  The `beq` branch at 0x10006bf0 targets 0x10006c00, is taken when a2(=[sym(yys)]) == 0, and falls through when a2(=[sym(yys)]) != 0.
  The `bne` branch at 0x10006bf8 targets 0x10006c08, is taken when v0(=ret(realloc)) != 0, and falls through when v0(=ret(realloc)) == 0.
  The `beq` branch at 0x10006c0c targets 0x10007a08, is taken when a3(=[0x1000f574]) >= s1(?) (signed), and falls through when a3(=[0x1000f574]) < s1(?) (signed).
  The `beq` branch at 0x10006c64 targets 0x1000671c and is always taken.
  The `bgez` branch at 0x10006c7c targets 0x100067e8, is taken when v0(=ret(yylex)) >= 0 (signed), and falls through when v0(=ret(yylex)) < 0 (signed).
  The `beq` branch at 0x10006c88 targets 0x100067e8 and is always taken.
  The `beq` branch at 0x10006ca4 targets 0x100065d4 and is always taken.
  The `bne` branch at 0x10006ce4 targets 0x10006d90, is taken when s7(?) < a4(=[sym(yys)]) (unsigned), and falls through when s7(?) >= a4(=[sym(yys)]) (unsigned).
  The `beq` branch at 0x10006cec targets 0x10006d34 and is always taken.
  The `beq` branch at 0x10006cf4 targets 0x10006d18, is taken when v0(=[sym(yydebug)]) == 0, and falls through when v0(=[sym(yydebug)]) != 0.
  The `bne` branch at 0x10006d28 targets 0x10006d90, is taken when s7(?) < a4(=[sym(yys)]) (unsigned), and falls through when s7(?) >= a4(=[sym(yys)]) (unsigned).
  The `bltz` branch at 0x10006d5c targets 0x10006cf4, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `beq` branch at 0x10006d64 targets 0x10006cf4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x10006d80 targets 0x10006cf4, is taken when a3(?) != s1(=0x100), and falls through when a3(?) == s1(=0x100).
  The `beq` branch at 0x10006d88 targets 0x10006674 and is always taken.
  The `bltz` branch at 0x10006dd0 targets 0x10006dec, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `bne` branch at 0x10006dd8 targets 0x10006dc8, is taken when t0(?) != a3(=[sym(yychar)]), and falls through when t0(?) == a3(=[sym(yychar)]).
  The `beq` branch at 0x10006de0 targets 0x10006dfc and is always taken.
  The `beq` branch at 0x10006e10 targets 0x10007ad0, is taken when a1(=[sym(yychar)]) == 0, and falls through when a1(=[sym(yychar)]) != 0.
  The `beq` branch at 0x10006e18 targets 0x100067bc and is always taken.
  The `beq` branch at 0x10006e30 targets 0x10006774 and is always taken.
  The `beq` branch at 0x10006e40 targets 0x10006774 and is always taken.
  The `beq` branch at 0x10006e6c targets 0x10006e7c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x10006e74 targets 0x10007a60, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x10006e7c targets 0x10006c04 and is always taken.
  The `bne` branch at 0x10006e84 targets 0x10006ad8, is taken when v0(=[sym(yyexca)+4]) != s2(?), and falls through when v0(=[sym(yyexca)+4]) == s2(?).
  The `beq` branch at 0x10006e8c targets 0x10006af4 and is always taken.
  The `bgez` branch at 0x10006ea0 targets 0x1000692c, is taken when v0(=ret(yylex)) >= 0 (signed), and falls through when v0(=ret(yylex)) < 0 (signed).
  The `beq` branch at 0x10006ea8 targets 0x1000692c and is always taken.
  The `beq` branch at 0x10006ebc targets 0x10006700 and is always taken.
  The `beq` branch at 0x10006ed0 targets 0x10006700 and is always taken.
  The `beq` branch at 0x10006ee8 targets 0x10006ac4 and is always taken.
  The `beq` branch at 0x10006ef8 targets 0x10006ac4 and is always taken.
  The `bne` branch at 0x10006f38 targets 0x10006f60, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x10006f58 targets 0x10006f80 and is always taken.
  The `beq` branch at 0x10006fa4 targets 0x1000666c and is always taken.
  The `beq` branch at 0x10006fb4 targets 0x10006668 and is always taken.
  The `beq` branch at 0x10006fc0 targets 0x10006668 and is always taken.
  The `bne` branch at 0x10007000 targets 0x10007028, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x10007020 targets 0x10007048 and is always taken.
  The `beq` branch at 0x1000706c targets 0x1000666c and is always taken.
  The `beq` branch at 0x10007080 targets 0x10006668 and is always taken.
  The `beq` branch at 0x10007098 targets 0x10007b08, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100070c8 targets 0x10006668 and is always taken.
  The `beq` branch at 0x100070ec targets 0x10006668 and is always taken.
  The `beq` branch at 0x10007100 targets 0x10006668 and is always taken.
  The `beq` branch at 0x1000710c targets 0x10006668 and is always taken.
  The `beq` branch at 0x10007120 targets 0x10006668 and is always taken.
  The `bne` branch at 0x10007160 targets 0x10007188, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x10007180 targets 0x100071a8 and is always taken.
  The `beq` branch at 0x100071cc targets 0x1000666c and is always taken.
  The `bne` branch at 0x1000720c targets 0x10007234, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x1000722c targets 0x10007254 and is always taken.
  The `beq` branch at 0x10007278 targets 0x1000666c and is always taken.
  The `beq` branch at 0x100072b0 targets 0x1000666c and is always taken.
  The `beq` branch at 0x100072e4 targets 0x1000666c and is always taken.
  The `bne` branch at 0x10007324 targets 0x1000734c, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x10007344 targets 0x1000736c and is always taken.
  The `beq` branch at 0x10007390 targets 0x1000666c and is always taken.
  The `bne` branch at 0x100073d0 targets 0x100073f8, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x100073f0 targets 0x10007418 and is always taken.
  The `beq` branch at 0x1000743c targets 0x1000666c and is always taken.
  The `bne` branch at 0x1000747c targets 0x100074a4, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x1000749c targets 0x100074c4 and is always taken.
  The `beq` branch at 0x100074e8 targets 0x1000666c and is always taken.
  The `beq` branch at 0x100074fc targets 0x10006668 and is always taken.
  The `beq` branch at 0x10007514 targets 0x10007b10, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10007544 targets 0x10006668 and is always taken.
  The `beq` branch at 0x10007568 targets 0x10006668 and is always taken.
  The `beq` branch at 0x10007574 targets 0x10006668 and is always taken.
  The `bne` branch at 0x100075b4 targets 0x100075dc, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x100075d4 targets 0x100075fc and is always taken.
  The `beq` branch at 0x10007620 targets 0x1000666c and is always taken.
  The `beq` branch at 0x10007634 targets 0x10006668 and is always taken.
  The `beq` branch at 0x10007648 targets 0x10006668 and is always taken.
  The `beq` branch at 0x10007660 targets 0x10007b18, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10007690 targets 0x10006668 and is always taken.
  The `beq` branch at 0x100076b4 targets 0x10006668 and is always taken.
  The `bne` branch at 0x100076f4 targets 0x1000771c, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x10007714 targets 0x1000773c and is always taken.
  The `beq` branch at 0x10007760 targets 0x1000666c and is always taken.
  The `bne` branch at 0x100077a0 targets 0x100077c8, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x100077c0 targets 0x100077e8 and is always taken.
  The `beq` branch at 0x1000780c targets 0x1000666c and is always taken.
  The `bne` branch at 0x1000784c targets 0x10007874, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x1000786c targets 0x10007894 and is always taken.
  The `beq` branch at 0x100078b8 targets 0x1000666c and is always taken.
  The `bne` branch at 0x100078fc targets 0x10007928, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x10007920 targets 0x1000794c and is always taken.
  The `beq` branch at 0x10007970 targets 0x1000666c and is always taken.
  The `beq` branch at 0x10007984 targets 0x10006668 and is always taken.
  The `beq` branch at 0x10007998 targets 0x10006668 and is always taken.
  The `beq` branch at 0x100079b0 targets 0x10007b20, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100079e0 targets 0x10006668 and is always taken.
  The `beq` branch at 0x10007a00 targets 0x10006668 and is always taken.
  The `beq` branch at 0x10007a9c targets 0x10006c04 and is always taken.
  The `beq` branch at 0x10007ab4 targets 0x10006e10 and is always taken.
  The `beq` branch at 0x10007ac8 targets 0x10006e10 and is always taken.
  The `beq` branch at 0x10007b08 targets 0x100070b0 and is always taken.
  The `beq` branch at 0x10007b10 targets 0x1000752c and is always taken.
  The `beq` branch at 0x10007b18 targets 0x10007678 and is always taken.
  The `beq` branch at 0x10007b20 targets 0x100079c8 and is always taken.
  The return at 0x10006b58 has v0 = 0x0.
  The return at 0x10006dc0 has v0 = 0x1.
  The return at 0x10007a58 has v0 = 0x1.
  The return at 0x10007b00 has v0 = 0x1.
  The indirect jump at 0x10006a98 uses the jump table at 0x1000c3f8 with targets 0x10006668, 0x10006668, 0x10006f00, 0x10006fac, 0x10006fbc, 0x10006fc8, 0x10007074, 0x10007088, 0x100070d0, 0x10006668, 0x100070f4, 0x10007108, 0x10007114, 0x10007128, 0x100071d4, 0x10007280, 0x100072b8, 0x100072ec, 0x10007398, 0x10007444, 0x100074f0, 0x10006668, 0x10007504, 0x1000754c, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10007570, 0x1000757c, 0x10007628, 0x1000763c, 0x10007650, 0x10007698, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x10006668, 0x100076bc, 0x10007768, 0x10007814, 0x100078c0, 0x10007978, 0x1000798c, 0x100079a0, 0x100079e8.

- `slistConvertor__20TypeArray__pt__4_iUlGP15Slist__pt__3_UlUl` in `usr/gfx/ucode/vfc/sdbutil` at 0x10007d38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10007d38-0x10007ed4 (412 bytes).
  It occupies 412 bytes.
  The `sw` at 0x10007d7c stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x10007d80, `sw` at 0x10007ec8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x10007d84, `sw` at 0x10007ec0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10007d9c, `lw` at 0x10007dfc, `lw` at 0x10007e48.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10007da0, `lw` at 0x10007e00, `lw` at 0x10007e5c.
  The `sw` at 0x10007db0 stores 4 bytes to a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x10007df0, `lw` at 0x10007e80.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10007df8, `sw` at 0x10007e88.
  The `jal` at 0x10007d6c calls numberOfElements__14SimpleListBaseGv [0x10005254] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10007d94 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10007de8 calls get__15Slist__pt__3_UlGv with a0=a1 at entry (arg1), a1=?, a2=[a0+4], a3=?, a5=[a0].
  The `jalr` at 0x10007e40 calls get__15Slist__pt__3_UlGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x10007eb0 calls yyerror__GPc [0x10004fbc] with a0=0x1000c550, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10007d78 targets 0x10007ec0, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0x10007d88 targets 0x10007eac, is taken when a2(?) != v0(=ret(numberOfElements__14SimpleListBaseGv)), and falls through when a2(?) == v0(=ret(numberOfElements__14SimpleListBaseGv)).
  The `beq` branch at 0x10007dac targets 0x10007dbc, is taken when a2(=[a0+4]) >= a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) < a5(=[a0]) (unsigned).
  The `beq` branch at 0x10007db4 targets 0x10007dc0 and is always taken.
  The `beq` branch at 0x10007dc4 targets 0x10007e20, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10007dd0 targets 0x10007de4 and is always taken.
  The `beq` branch at 0x10007de0 targets 0x10007e20, is taken when s1(?) >= v0(?) (unsigned), and falls through when s1(?) < v0(?) (unsigned).
  The `bne` branch at 0x10007e10 targets 0x10007dd8, is taken when a2(=[a0+4]) < a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10007e18 targets 0x10007ddc and is always taken.
  The `beq` branch at 0x10007e2c targets 0x10007e60, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10007e34 targets 0x10007e60, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10007e54 targets 0x10007e40, is taken when s1(?) < a5(=[a0]) (unsigned), and falls through when s1(?) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10007e78 targets 0x10007ea0, is taken when a5(=[a0]) >= a2(=[a0+4]) (unsigned), and falls through when a5(=[a0]) < a2(=[a0+4]) (unsigned).
  The `bne` branch at 0x10007e98 targets 0x10007e80, is taken when a5(?) < a2(=[a0+4]) (unsigned), and falls through when a5(?) >= a2(=[a0+4]) (unsigned).
  The `beq` branch at 0x10007eb8 targets 0x10007d90 and is always taken.
  The `beq` branch at 0x10007ecc targets 0x10007d88 and is always taken.
  The return at 0x10007ea4 has v0 = one of ([a0] << 0x2), ?.

- `get__15Slist__pt__3_UlGv` in `usr/gfx/ucode/vfc/sdbutil` at 0x1000800c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x1000800c-0x10008058 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x1000803c loads 4 bytes from ret(get__14SimpleListBaseGv) +0x4.
  The `jal` at 0x10008028 calls get__14SimpleListBaseGv [0x100051ac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10008038 calls __dl__GPv with a0=ret(get__14SimpleListBaseGv), a1=?, a2=?, a3=?.
  The return at 0x10008050 has v0 = [ret(get__14SimpleListBaseGv)+4].

- `slistConvertor__19TypeArray__pt__3_ddGP14Slist__pt__2_dUl` in `usr/gfx/ucode/vfc/sdbutil` at 0x100080e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100080e0-0x10008358 (632 bytes).
  It occupies 632 bytes.
  The `sw` at 0x1000811c stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x1000812c, `sw` at 0x1000834c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x10008130, `sw` at 0x10008344.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10008154, `lw` at 0x100081cc, `lw` at 0x10008288.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10008158, `lw` at 0x100081d0, `lw` at 0x100082d4.
  The `sw` at 0x10008170 stores 4 bytes to a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x100081b4, `lw` at 0x10008304.
  2 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0x100081c8, `sdc1` at 0x1000830c.
  The `jal` at 0x10008114 calls numberOfElements__14SimpleListBaseGv [0x10005254] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000814c calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100081a4 calls get__14Slist__pt__2_dGv with a0=a1 at entry (arg1), a1=?, a2=[a0+4], a3=?, a5=[a0].
  The `jal` at 0x100081f8 calls yyerror__GPc [0x10004fbc] with a0=0x1000c5a0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000820c calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x1000c5f0, a2=?, a3=?.
  The `jalr` at 0x1000821c calls __ls__7ostreamGd with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?; fp f13=ret(get__14Slist__pt__2_dGv).
  The `jalr` at 0x10008230 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGd), a1=0x1000c600, a2=?, a3=?.
  The `jalr` at 0x10008240 calls __ls__7ostreamGd with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?; fp f13=ret(get__14Slist__pt__2_dGv).
  The `jalr` at 0x10008250 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGd), a1=0x1000f4fc, a2=?, a3=?.
  The `jalr` at 0x10008260 calls __ls__7ostreamGd with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?; fp f13=ret(get__14Slist__pt__2_dGv).
  The `jalr` at 0x10008270 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGd), a1=0x1000f4fe, a2=?, a3=?.
  The `jalr` at 0x1000827c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100082b8 calls get__14Slist__pt__2_dGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x10008334 calls yyerror__GPc [0x10004fbc] with a0=0x1000c550, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10008124 targets 0x10008344, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0x10008134 targets 0x10008330, is taken when a2(?) != v0(=ret(numberOfElements__14SimpleListBaseGv)), and falls through when a2(?) == v0(=ret(numberOfElements__14SimpleListBaseGv)).
  The `beq` branch at 0x10008174 targets 0x10008180, is taken when a2(=[a0+4]) >= a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) < a5(=[a0]) (unsigned).
  The `beq` branch at 0x10008184 targets 0x1000828c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10008190 targets 0x100081a0 and is always taken.
  The `beq` branch at 0x1000819c targets 0x1000828c, is taken when s1(?) >= v0(?) (unsigned), and falls through when s1(?) < v0(?) (unsigned).
  The `bc1t` branch at 0x100081c4 targets 0x100081f0, is taken when f22 < f1 (c.lt.d at 0x100081b8), and falls through when not (f22 < f1 (c.lt.d at 0x100081b8)).
  The `bne` branch at 0x100081e0 targets 0x10008198, is taken when a2(=[a0+4]) < a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x100081e8 targets 0x10008198 and is always taken.
  The `beq` branch at 0x10008284 targets 0x100081d0 and is always taken.
  The `beq` branch at 0x100082a4 targets 0x100082d8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x100082ac targets 0x100082d8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x100082cc targets 0x100082b8, is taken when s1(?) < a5(=[a0]) (unsigned), and falls through when s1(?) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x100082f4 targets 0x10008324, is taken when a5(=[a0]) >= a2(=[a0+4]) (unsigned), and falls through when a5(=[a0]) < a2(=[a0+4]) (unsigned).
  The `bne` branch at 0x1000831c targets 0x10008304, is taken when a5(?) < a3(=[a0+4]) (unsigned), and falls through when a5(?) >= a3(=[a0+4]) (unsigned).
  The `beq` branch at 0x1000833c targets 0x1000813c and is always taken.
  The `beq` branch at 0x10008350 targets 0x10008134 and is always taken.
  The return at 0x10008328 has v0 = one of ([a0] << 0x3), ?.

- `get__14Slist__pt__2_dGv` in `usr/gfx/ucode/vfc/sdbutil` at 0x10008494 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10008494-0x100084e0 (76 bytes).
  It occupies 76 bytes.
  The `ldc1` at 0x100084c4 loads 8 bytes from ret(get__14SimpleListBaseGv) +0x8.
  The `jal` at 0x100084b0 calls get__14SimpleListBaseGv [0x100051ac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100084c0 calls __dl__GPv with a0=ret(get__14SimpleListBaseGv), a1=?, a2=?, a3=?.
  The return at 0x100084d8 has v0 = ret(__dl__GPv).

- `slistConvertor__19TypeArray__pt__3_fdGP14Slist__pt__2_dUl` in `usr/gfx/ucode/vfc/sdbutil` at 0x10008568 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10008568-0x100087fc (660 bytes).
  It occupies 660 bytes.
  The `sw` at 0x100085a4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x100085bc, `sw` at 0x100087f0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x100085c0, `sw` at 0x100087e8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x100085e4, `lw` at 0x10008668, `lw` at 0x10008724.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x100085e8, `lw` at 0x1000866c, `lw` at 0x10008770.
  The `sw` at 0x10008604 stores 4 bytes to a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x10008654, `lw` at 0x100087a8.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x10008664, `swc1` at 0x100087b0.
  The `jal` at 0x1000859c calls numberOfElements__14SimpleListBaseGv [0x10005254] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100085dc calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008638 calls get__14Slist__pt__2_dGv with a0=a1 at entry (arg1), a1=?, a2=[a0+4], a3=?, a5=[a0].
  The `jal` at 0x10008694 calls yyerror__GPc [0x10004fbc] with a0=0x1000c5a0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100086a8 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x1000c5f0, a2=?, a3=?.
  The `jalr` at 0x100086b8 calls __ls__7ostreamGd with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?; fp f13=ret(get__14Slist__pt__2_dGv).
  The `jalr` at 0x100086cc calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGd), a1=0x1000c600, a2=?, a3=?.
  The `jalr` at 0x100086dc calls __ls__7ostreamGf with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100086ec calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGf), a1=0x1000f4fc, a2=?, a3=?.
  The `jalr` at 0x100086fc calls __ls__7ostreamGd with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000870c calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGd), a1=0x1000f4fe, a2=?, a3=?.
  The `jalr` at 0x10008718 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10008754 calls get__14Slist__pt__2_dGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x100087d8 calls yyerror__GPc [0x10004fbc] with a0=0x1000c550, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100085b4 targets 0x100087e8, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0x100085c4 targets 0x100087d4, is taken when a2(?) != v0(=ret(numberOfElements__14SimpleListBaseGv)), and falls through when a2(?) == v0(=ret(numberOfElements__14SimpleListBaseGv)).
  The `beq` branch at 0x10008600 targets 0x10008610, is taken when a2(=[a0+4]) >= a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) < a5(=[a0]) (unsigned).
  The `beq` branch at 0x10008608 targets 0x10008614 and is always taken.
  The `beq` branch at 0x10008618 targets 0x10008728, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10008624 targets 0x10008634 and is always taken.
  The `beq` branch at 0x10008630 targets 0x10008728, is taken when s1(?) >= v0(?) (unsigned), and falls through when s1(?) < v0(?) (unsigned).
  The `bc1t` branch at 0x10008660 targets 0x1000868c, is taken when f26 < f0 (c.lt.d at 0x10008658), and falls through when not (f26 < f0 (c.lt.d at 0x10008658)).
  The `bne` branch at 0x1000867c targets 0x1000862c, is taken when a2(=[a0+4]) < a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10008684 targets 0x1000862c and is always taken.
  The `beq` branch at 0x10008720 targets 0x1000866c and is always taken.
  The `beq` branch at 0x10008740 targets 0x10008774, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10008748 targets 0x10008774, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10008768 targets 0x10008754, is taken when s1(?) < a5(=[a0]) (unsigned), and falls through when s1(?) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10008798 targets 0x100087c8, is taken when a5(=[a0]) >= a2(=[a0+4]) (unsigned), and falls through when a5(=[a0]) < a2(=[a0+4]) (unsigned).
  The `bne` branch at 0x100087c0 targets 0x100087a8, is taken when a5(?) < a3(=[a0+4]) (unsigned), and falls through when a5(?) >= a3(=[a0+4]) (unsigned).
  The `beq` branch at 0x100087e0 targets 0x100085cc and is always taken.
  The `beq` branch at 0x100087f4 targets 0x100085c4 and is always taken.
  The return at 0x100087cc has v0 = one of ([a0] << 0x2), ?.

- `slistConvertor__19TypeArray__pt__3_clGP14Slist__pt__2_lUl` in `usr/gfx/ucode/vfc/sdbutil` at 0x10008868 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10008868-0x10008aec (644 bytes).
  It occupies 644 bytes.
  The `sw` at 0x100088a4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x100088b8, `sw` at 0x10008ae0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x100088bc, `sw` at 0x10008ad8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x100088e4, `lw` at 0x10008968, `lw` at 0x10008a24.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x100088e8, `lw` at 0x1000896c, `lw` at 0x10008a70.
  The `sw` at 0x100088fc stores 4 bytes to a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x10008950, `lw` at 0x10008a98.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10008964, `sb` at 0x10008aa0.
  The `jal` at 0x1000889c calls numberOfElements__14SimpleListBaseGv [0x10005254] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100088d8 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008930 calls get__14Slist__pt__2_lGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x10008990 calls yyerror__GPc [0x10004fbc] with a0=0x1000c5a0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100089a4 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x1000c5f0, a2=?, a3=?.
  The `jalr` at 0x100089b4 calls __ls__7ostreamGl with a0=ret(__ls__7ostreamGPCc), a1=ret(get__14Slist__pt__2_lGv), a2=?, a3=?.
  The `jalr` at 0x100089c8 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGl), a1=0x1000c600, a2=?, a3=?.
  The `jal` at 0x100089d8 calls (unnamed) [0x10007b28] with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100089e8 calls __ls__7ostreamGPCc with a0=ret(0x10007b28), a1=0x1000f4fc, a2=?, a3=?.
  The `jalr` at 0x100089f8 calls __ls__7ostreamGl with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10008a08 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGl), a1=0x1000f4fe, a2=?, a3=?.
  The `jalr` at 0x10008a18 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10008a54 calls get__14Slist__pt__2_lGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x10008ac8 calls yyerror__GPc [0x10004fbc] with a0=0x1000c550, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100088b0 targets 0x10008ad8, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0x100088c0 targets 0x10008ac4, is taken when a0(?) != v0(=ret(numberOfElements__14SimpleListBaseGv)), and falls through when a0(?) == v0(=ret(numberOfElements__14SimpleListBaseGv)).
  The `beq` branch at 0x10008908 targets 0x10008914, is taken when a0(=[a0+4]) >= a5(=[a0]) (unsigned), and falls through when a0(=[a0+4]) < a5(=[a0]) (unsigned).
  The `beq` branch at 0x10008914 targets 0x10008a28, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1000891c targets 0x1000892c and is always taken.
  The `beq` branch at 0x10008928 targets 0x10008a28, is taken when s1(?) >= v0(?) (unsigned), and falls through when s1(?) < v0(?) (unsigned).
  The `bc1t` branch at 0x10008960 targets 0x10008988, is taken when f20 < f0 (c.lt.d at 0x10008954), and falls through when not (f20 < f0 (c.lt.d at 0x10008954)).
  The `bne` branch at 0x10008978 targets 0x10008924, is taken when a0(=[a0+4]) < a5(=[a0]) (unsigned), and falls through when a0(=[a0+4]) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10008980 targets 0x10008924 and is always taken.
  The `beq` branch at 0x10008a20 targets 0x1000896c and is always taken.
  The `beq` branch at 0x10008a40 targets 0x10008a74, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10008a48 targets 0x10008a74, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10008a68 targets 0x10008a54, is taken when s1(?) < a5(=[a0]) (unsigned), and falls through when s1(?) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10008a90 targets 0x10008ab8, is taken when a5(=[a0]) >= a0(=[a0+4]) (unsigned), and falls through when a5(=[a0]) < a0(=[a0+4]) (unsigned).
  The `bne` branch at 0x10008ab0 targets 0x10008a98, is taken when a5(?) < a3(=[a0+4]) (unsigned), and falls through when a5(?) >= a3(=[a0+4]) (unsigned).
  The `beq` branch at 0x10008ad0 targets 0x100088c8 and is always taken.
  The `beq` branch at 0x10008ae4 targets 0x100088c0 and is always taken.
  The return at 0x10008abc has v0 = ?.

- `get__14Slist__pt__2_lGv` in `usr/gfx/ucode/vfc/sdbutil` at 0x10008c24 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10008c24-0x10008c70 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10008c54 loads 4 bytes from ret(get__14SimpleListBaseGv) +0x4.
  The `jal` at 0x10008c40 calls get__14SimpleListBaseGv [0x100051ac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10008c50 calls __dl__GPv with a0=ret(get__14SimpleListBaseGv), a1=?, a2=?, a3=?.
  The return at 0x10008c68 has v0 = [ret(get__14SimpleListBaseGv)+4].

- `slistConvertor__19TypeArray__pt__3_ilGP14Slist__pt__2_lUl` in `usr/gfx/ucode/vfc/sdbutil` at 0x10008cf8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10008cf8-0x10008e94 (412 bytes).
  It occupies 412 bytes.
  The `sw` at 0x10008d3c stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x10008d40, `sw` at 0x10008e88.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x10008d44, `sw` at 0x10008e80.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10008d5c, `lw` at 0x10008dbc, `lw` at 0x10008e08.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10008d60, `lw` at 0x10008dc0, `lw` at 0x10008e1c.
  The `sw` at 0x10008d70 stores 4 bytes to a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x10008db0, `lw` at 0x10008e40.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10008db8, `sw` at 0x10008e48.
  The `jal` at 0x10008d2c calls numberOfElements__14SimpleListBaseGv [0x10005254] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10008d54 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008da8 calls get__14Slist__pt__2_lGv with a0=a1 at entry (arg1), a1=?, a2=[a0+4], a3=?, a5=[a0].
  The `jalr` at 0x10008e00 calls get__14Slist__pt__2_lGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x10008e70 calls yyerror__GPc [0x10004fbc] with a0=0x1000c550, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10008d38 targets 0x10008e80, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0x10008d48 targets 0x10008e6c, is taken when a2(?) != v0(=ret(numberOfElements__14SimpleListBaseGv)), and falls through when a2(?) == v0(=ret(numberOfElements__14SimpleListBaseGv)).
  The `beq` branch at 0x10008d6c targets 0x10008d7c, is taken when a2(=[a0+4]) >= a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) < a5(=[a0]) (unsigned).
  The `beq` branch at 0x10008d74 targets 0x10008d80 and is always taken.
  The `beq` branch at 0x10008d84 targets 0x10008de0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10008d90 targets 0x10008da4 and is always taken.
  The `beq` branch at 0x10008da0 targets 0x10008de0, is taken when s1(?) >= v0(?) (unsigned), and falls through when s1(?) < v0(?) (unsigned).
  The `bne` branch at 0x10008dd0 targets 0x10008d98, is taken when a2(=[a0+4]) < a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10008dd8 targets 0x10008d9c and is always taken.
  The `beq` branch at 0x10008dec targets 0x10008e20, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10008df4 targets 0x10008e20, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10008e14 targets 0x10008e00, is taken when s1(?) < a5(=[a0]) (unsigned), and falls through when s1(?) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10008e38 targets 0x10008e60, is taken when a5(=[a0]) >= a2(=[a0+4]) (unsigned), and falls through when a5(=[a0]) < a2(=[a0+4]) (unsigned).
  The `bne` branch at 0x10008e58 targets 0x10008e40, is taken when a5(?) < a2(=[a0+4]) (unsigned), and falls through when a5(?) >= a2(=[a0+4]) (unsigned).
  The `beq` branch at 0x10008e78 targets 0x10008d50 and is always taken.
  The `beq` branch at 0x10008e8c targets 0x10008d48 and is always taken.
  The return at 0x10008e64 has v0 = one of ([a0] << 0x2), ?.

- `slistConvertor__19TypeArray__pt__3_llGP14Slist__pt__2_lUl` in `usr/gfx/ucode/vfc/sdbutil` at 0x10008efc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10008efc-0x10009098 (412 bytes).
  It occupies 412 bytes.
  The `sw` at 0x10008f40 stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x10008f44, `sw` at 0x1000908c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x10008f48, `sw` at 0x10009084.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10008f60, `lw` at 0x10008fc0, `lw` at 0x1000900c.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10008f64, `lw` at 0x10008fc4, `lw` at 0x10009020.
  The `sw` at 0x10008f74 stores 4 bytes to a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x10008fb4, `lw` at 0x10009044.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10008fbc, `sw` at 0x1000904c.
  The `jal` at 0x10008f30 calls numberOfElements__14SimpleListBaseGv [0x10005254] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10008f58 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008fac calls get__14Slist__pt__2_lGv with a0=a1 at entry (arg1), a1=?, a2=[a0+4], a3=?, a5=[a0].
  The `jalr` at 0x10009004 calls get__14Slist__pt__2_lGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x10009074 calls yyerror__GPc [0x10004fbc] with a0=0x1000c550, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10008f3c targets 0x10009084, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0x10008f4c targets 0x10009070, is taken when a2(?) != v0(=ret(numberOfElements__14SimpleListBaseGv)), and falls through when a2(?) == v0(=ret(numberOfElements__14SimpleListBaseGv)).
  The `beq` branch at 0x10008f70 targets 0x10008f80, is taken when a2(=[a0+4]) >= a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) < a5(=[a0]) (unsigned).
  The `beq` branch at 0x10008f78 targets 0x10008f84 and is always taken.
  The `beq` branch at 0x10008f88 targets 0x10008fe4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10008f94 targets 0x10008fa8 and is always taken.
  The `beq` branch at 0x10008fa4 targets 0x10008fe4, is taken when s1(?) >= v0(?) (unsigned), and falls through when s1(?) < v0(?) (unsigned).
  The `bne` branch at 0x10008fd4 targets 0x10008f9c, is taken when a2(=[a0+4]) < a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10008fdc targets 0x10008fa0 and is always taken.
  The `beq` branch at 0x10008ff0 targets 0x10009024, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10008ff8 targets 0x10009024, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10009018 targets 0x10009004, is taken when s1(?) < a5(=[a0]) (unsigned), and falls through when s1(?) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x1000903c targets 0x10009064, is taken when a5(=[a0]) >= a2(=[a0+4]) (unsigned), and falls through when a5(=[a0]) < a2(=[a0+4]) (unsigned).
  The `bne` branch at 0x1000905c targets 0x10009044, is taken when a5(?) < a2(=[a0+4]) (unsigned), and falls through when a5(?) >= a2(=[a0+4]) (unsigned).
  The `beq` branch at 0x1000907c targets 0x10008f54 and is always taken.
  The `beq` branch at 0x10009090 targets 0x10008f4c and is always taken.
  The return at 0x10009068 has v0 = one of ([a0] << 0x2), ?.

- `slistConvertor__19TypeArray__pt__3_slGP14Slist__pt__2_lUl` in `usr/gfx/ucode/vfc/sdbutil` at 0x10009100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10009100-0x10009398 (664 bytes).
  It occupies 664 bytes.
  The `sw` at 0x1000913c stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x10009150, `sw` at 0x1000938c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x10009154, `sw` at 0x10009384.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10009174, `lw` at 0x10009204, `lw` at 0x100092c8.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10009178, `lw` at 0x10009208, `lw` at 0x10009314.
  The `sw` at 0x10009194 stores 4 bytes to a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x100091ec, `lw` at 0x10009340.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x10009200, `sh` at 0x10009348.
  The `jal` at 0x10009134 calls numberOfElements__14SimpleListBaseGv [0x10005254] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000916c calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100091c8 calls get__14Slist__pt__2_lGv with a0=a1 at entry (arg1), a1=?, a2=[a0+4], a3=?, a5=[a0].
  The `jal` at 0x10009230 calls yyerror__GPc [0x10004fbc] with a0=0x1000c5a0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009244 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x1000c5f0, a2=?, a3=?.
  The `jalr` at 0x10009254 calls __ls__7ostreamGl with a0=ret(__ls__7ostreamGPCc), a1=ret(get__14Slist__pt__2_lGv), a2=?, a3=?.
  The `jalr` at 0x10009268 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGl), a1=0x1000c600, a2=?, a3=?.
  The `jalr` at 0x1000927c calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000928c calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x1000f4fc, a2=?, a3=?.
  The `jalr` at 0x1000929c calls __ls__7ostreamGl with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100092ac calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGl), a1=0x1000f4fe, a2=?, a3=?.
  The `jalr` at 0x100092bc calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100092f8 calls get__14Slist__pt__2_lGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x10009374 calls yyerror__GPc [0x10004fbc] with a0=0x1000c550, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10009148 targets 0x10009384, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0x10009158 targets 0x1000936c, is taken when a2(?) != v0(=ret(numberOfElements__14SimpleListBaseGv)), and falls through when a2(?) == v0(=ret(numberOfElements__14SimpleListBaseGv)).
  The `beq` branch at 0x10009190 targets 0x100091a0, is taken when a2(=[a0+4]) >= a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) < a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009198 targets 0x100091a4 and is always taken.
  The `beq` branch at 0x100091a8 targets 0x100092cc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100091b4 targets 0x100091c4 and is always taken.
  The `beq` branch at 0x100091c0 targets 0x100092cc, is taken when s1(?) >= v0(?) (unsigned), and falls through when s1(?) < v0(?) (unsigned).
  The `bc1t` branch at 0x100091fc targets 0x10009228, is taken when f20 < f0 (c.lt.d at 0x100091f0), and falls through when not (f20 < f0 (c.lt.d at 0x100091f0)).
  The `bne` branch at 0x10009218 targets 0x100091bc, is taken when a2(=[a0+4]) < a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009220 targets 0x100091bc and is always taken.
  The `beq` branch at 0x100092c4 targets 0x10009208 and is always taken.
  The `beq` branch at 0x100092e4 targets 0x10009318, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x100092ec targets 0x10009318, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1000930c targets 0x100092f8, is taken when s1(?) < a5(=[a0]) (unsigned), and falls through when s1(?) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009338 targets 0x10009360, is taken when a5(=[a0]) >= a2(=[a0+4]) (unsigned), and falls through when a5(=[a0]) < a2(=[a0+4]) (unsigned).
  The `bne` branch at 0x10009358 targets 0x10009340, is taken when a5(?) < a3(=[a0+4]) (unsigned), and falls through when a5(?) >= a3(=[a0+4]) (unsigned).
  The `beq` branch at 0x1000937c targets 0x1000915c and is always taken.
  The `beq` branch at 0x10009390 targets 0x10009158 and is always taken.
  The return at 0x10009364 has v0 = one of ([a0] + [a0]), ?.

- `slistConvertor__21TypeArray__pt__5_PcPcGP15Slist__pt__3_PcUl` in `usr/gfx/ucode/vfc/sdbutil` at 0x10009400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10009400-0x1000959c (412 bytes).
  It occupies 412 bytes.
  The `sw` at 0x10009444 stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x10009448, `sw` at 0x10009590.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x1000944c, `sw` at 0x10009588.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10009460, `lw` at 0x100094c0, `lw` at 0x1000950c.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10009464, `lw` at 0x100094c4, `lw` at 0x10009520.
  The `sw` at 0x10009474 stores 4 bytes to a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x100094b4, `lw` at 0x10009544.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100094bc, `sw` at 0x1000954c.
  The `jal` at 0x10009434 calls numberOfElements__14SimpleListBaseGv [0x10005254] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10009458 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100094ac calls get__15Slist__pt__3_PcGv with a0=a1 at entry (arg1), a1=?, a2=[a0+4], a3=?, a5=[a0].
  The `jalr` at 0x10009504 calls get__15Slist__pt__3_PcGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x10009578 calls yyerror__GPc [0x10004fbc] with a0=0x1000c550, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10009440 targets 0x10009588, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0x10009450 targets 0x10009570, is taken when a2(?) != v0(=ret(numberOfElements__14SimpleListBaseGv)), and falls through when a2(?) == v0(=ret(numberOfElements__14SimpleListBaseGv)).
  The `beq` branch at 0x10009470 targets 0x10009480, is taken when a2(=[a0+4]) >= a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) < a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009478 targets 0x10009484 and is always taken.
  The `beq` branch at 0x10009488 targets 0x100094e4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10009494 targets 0x100094a8 and is always taken.
  The `beq` branch at 0x100094a4 targets 0x100094e4, is taken when s1(?) >= v0(?) (unsigned), and falls through when s1(?) < v0(?) (unsigned).
  The `bne` branch at 0x100094d4 targets 0x1000949c, is taken when a2(=[a0+4]) < a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x100094dc targets 0x100094a0 and is always taken.
  The `beq` branch at 0x100094f0 targets 0x10009524, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x100094f8 targets 0x10009524, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10009518 targets 0x10009504, is taken when s1(?) < a5(=[a0]) (unsigned), and falls through when s1(?) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x1000953c targets 0x10009564, is taken when a5(=[a0]) >= a2(=[a0+4]) (unsigned), and falls through when a5(=[a0]) < a2(=[a0+4]) (unsigned).
  The `bne` branch at 0x1000955c targets 0x10009544, is taken when a5(?) < a2(=[a0+4]) (unsigned), and falls through when a5(?) >= a2(=[a0+4]) (unsigned).
  The `beq` branch at 0x10009580 targets 0x10009454 and is always taken.
  The `beq` branch at 0x10009594 targets 0x10009450 and is always taken.
  The return at 0x10009568 has v0 = one of ([a0] << 0x2), ?.

- `get__15Slist__pt__3_PcGv` in `usr/gfx/ucode/vfc/sdbutil` at 0x100096d8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100096d8-0x10009724 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10009708 loads 4 bytes from ret(get__14SimpleListBaseGv) +0x4.
  The `jal` at 0x100096f4 calls get__14SimpleListBaseGv [0x100051ac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10009704 calls __dl__GPv with a0=ret(get__14SimpleListBaseGv), a1=?, a2=?, a3=?.
  The return at 0x1000971c has v0 = [ret(get__14SimpleListBaseGv)+4].

- `slistConvertor__21TypeArray__pt__5_UcUlGP15Slist__pt__3_UlUl` in `usr/gfx/ucode/vfc/sdbutil` at 0x100097ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x100097ac-0x10009a38 (652 bytes).
  It occupies 652 bytes.
  The `sw` at 0x100097e8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x100097fc, `sw` at 0x10009a2c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x10009800, `sw` at 0x10009a24.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10009828, `lw` at 0x100098b4, `lw` at 0x10009970.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x1000982c, `lw` at 0x100098b8, `lw` at 0x100099bc.
  The `sw` at 0x10009840 stores 4 bytes to a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x1000989c, `lw` at 0x100099e4.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x100098b0, `sb` at 0x100099ec.
  The `jal` at 0x100097e0 calls numberOfElements__14SimpleListBaseGv [0x10005254] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000981c calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009874 calls get__15Slist__pt__3_UlGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x100098dc calls yyerror__GPc [0x10004fbc] with a0=0x1000c5a0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100098f0 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x1000c5f0, a2=?, a3=?.
  The `jalr` at 0x10009900 calls __ls__7ostreamGUl with a0=ret(__ls__7ostreamGPCc), a1=ret(get__15Slist__pt__3_UlGv), a2=?, a3=?.
  The `jalr` at 0x10009914 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGUl), a1=0x1000c600, a2=?, a3=?.
  The `jal` at 0x10009924 calls (unnamed) [0x10007c30] with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10009934 calls __ls__7ostreamGPCc with a0=ret(0x10007c30), a1=0x1000f4fc, a2=?, a3=?.
  The `jalr` at 0x10009944 calls __ls__7ostreamGUl with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10009954 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGUl), a1=0x1000f4fe, a2=?, a3=?.
  The `jalr` at 0x10009964 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100099a0 calls get__15Slist__pt__3_UlGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x10009a14 calls yyerror__GPc [0x10004fbc] with a0=0x1000c550, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100097f4 targets 0x10009a24, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0x10009804 targets 0x10009a10, is taken when a0(?) != v0(=ret(numberOfElements__14SimpleListBaseGv)), and falls through when a0(?) == v0(=ret(numberOfElements__14SimpleListBaseGv)).
  The `beq` branch at 0x1000984c targets 0x10009858, is taken when a0(=[a0+4]) >= a5(=[a0]) (unsigned), and falls through when a0(=[a0+4]) < a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009858 targets 0x10009974, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10009860 targets 0x10009870 and is always taken.
  The `beq` branch at 0x1000986c targets 0x10009974, is taken when s1(?) >= v0(?) (unsigned), and falls through when s1(?) < v0(?) (unsigned).
  The `bc1t` branch at 0x100098ac targets 0x100098d4, is taken when f20 < f0 (c.lt.d at 0x100098a0), and falls through when not (f20 < f0 (c.lt.d at 0x100098a0)).
  The `bne` branch at 0x100098c4 targets 0x10009868, is taken when a0(=[a0+4]) < a5(=[a0]) (unsigned), and falls through when a0(=[a0+4]) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x100098cc targets 0x10009868 and is always taken.
  The `beq` branch at 0x1000996c targets 0x100098b8 and is always taken.
  The `beq` branch at 0x1000998c targets 0x100099c0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10009994 targets 0x100099c0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x100099b4 targets 0x100099a0, is taken when s1(?) < a5(=[a0]) (unsigned), and falls through when s1(?) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x100099dc targets 0x10009a04, is taken when a5(=[a0]) >= a0(=[a0+4]) (unsigned), and falls through when a5(=[a0]) < a0(=[a0+4]) (unsigned).
  The `bne` branch at 0x100099fc targets 0x100099e4, is taken when a5(?) < a3(=[a0+4]) (unsigned), and falls through when a5(?) >= a3(=[a0+4]) (unsigned).
  The `beq` branch at 0x10009a1c targets 0x1000980c and is always taken.
  The `beq` branch at 0x10009a30 targets 0x10009804 and is always taken.
  The return at 0x10009a08 has v0 = ?.

- `slistConvertor__21TypeArray__pt__5_UiUlGP15Slist__pt__3_UlUl` in `usr/gfx/ucode/vfc/sdbutil` at 0x10009aa4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10009aa4-0x10009c40 (412 bytes).
  It occupies 412 bytes.
  The `sw` at 0x10009ae8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x10009aec, `sw` at 0x10009c34.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x10009af0, `sw` at 0x10009c2c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10009b08, `lw` at 0x10009b68, `lw` at 0x10009bb4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10009b0c, `lw` at 0x10009b6c, `lw` at 0x10009bc8.
  The `sw` at 0x10009b1c stores 4 bytes to a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x10009b5c, `lw` at 0x10009bec.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10009b64, `sw` at 0x10009bf4.
  The `jal` at 0x10009ad8 calls numberOfElements__14SimpleListBaseGv [0x10005254] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10009b00 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009b54 calls get__15Slist__pt__3_UlGv with a0=a1 at entry (arg1), a1=?, a2=[a0+4], a3=?, a5=[a0].
  The `jalr` at 0x10009bac calls get__15Slist__pt__3_UlGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x10009c1c calls yyerror__GPc [0x10004fbc] with a0=0x1000c550, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10009ae4 targets 0x10009c2c, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0x10009af4 targets 0x10009c18, is taken when a2(?) != v0(=ret(numberOfElements__14SimpleListBaseGv)), and falls through when a2(?) == v0(=ret(numberOfElements__14SimpleListBaseGv)).
  The `beq` branch at 0x10009b18 targets 0x10009b28, is taken when a2(=[a0+4]) >= a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) < a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009b20 targets 0x10009b2c and is always taken.
  The `beq` branch at 0x10009b30 targets 0x10009b8c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10009b3c targets 0x10009b50 and is always taken.
  The `beq` branch at 0x10009b4c targets 0x10009b8c, is taken when s1(?) >= v0(?) (unsigned), and falls through when s1(?) < v0(?) (unsigned).
  The `bne` branch at 0x10009b7c targets 0x10009b44, is taken when a2(=[a0+4]) < a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009b84 targets 0x10009b48 and is always taken.
  The `beq` branch at 0x10009b98 targets 0x10009bcc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10009ba0 targets 0x10009bcc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10009bc0 targets 0x10009bac, is taken when s1(?) < a5(=[a0]) (unsigned), and falls through when s1(?) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009be4 targets 0x10009c0c, is taken when a5(=[a0]) >= a2(=[a0+4]) (unsigned), and falls through when a5(=[a0]) < a2(=[a0+4]) (unsigned).
  The `bne` branch at 0x10009c04 targets 0x10009bec, is taken when a5(?) < a2(=[a0+4]) (unsigned), and falls through when a5(?) >= a2(=[a0+4]) (unsigned).
  The `beq` branch at 0x10009c24 targets 0x10009afc and is always taken.
  The `beq` branch at 0x10009c38 targets 0x10009af4 and is always taken.
  The return at 0x10009c10 has v0 = one of ([a0] << 0x2), ?.

- `slistConvertor__21TypeArray__pt__5_UlUlGP15Slist__pt__3_UlUl` in `usr/gfx/ucode/vfc/sdbutil` at 0x10009ca8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10009ca8-0x10009e44 (412 bytes).
  It occupies 412 bytes.
  The `sw` at 0x10009cec stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x10009cf0, `sw` at 0x10009e38.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x10009cf4, `sw` at 0x10009e30.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10009d08, `lw` at 0x10009d68, `lw` at 0x10009db4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10009d0c, `lw` at 0x10009d6c, `lw` at 0x10009dc8.
  The `sw` at 0x10009d1c stores 4 bytes to a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x10009d5c, `lw` at 0x10009dec.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10009d64, `sw` at 0x10009df4.
  The `jal` at 0x10009cdc calls numberOfElements__14SimpleListBaseGv [0x10005254] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10009d00 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009d54 calls get__15Slist__pt__3_UlGv with a0=a1 at entry (arg1), a1=?, a2=[a0+4], a3=?, a5=[a0].
  The `jalr` at 0x10009dac calls get__15Slist__pt__3_UlGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x10009e20 calls yyerror__GPc [0x10004fbc] with a0=0x1000c550, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10009ce8 targets 0x10009e30, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0x10009cf8 targets 0x10009e18, is taken when a2(?) != v0(=ret(numberOfElements__14SimpleListBaseGv)), and falls through when a2(?) == v0(=ret(numberOfElements__14SimpleListBaseGv)).
  The `beq` branch at 0x10009d18 targets 0x10009d28, is taken when a2(=[a0+4]) >= a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) < a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009d20 targets 0x10009d2c and is always taken.
  The `beq` branch at 0x10009d30 targets 0x10009d8c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10009d3c targets 0x10009d50 and is always taken.
  The `beq` branch at 0x10009d4c targets 0x10009d8c, is taken when s1(?) >= v0(?) (unsigned), and falls through when s1(?) < v0(?) (unsigned).
  The `bne` branch at 0x10009d7c targets 0x10009d44, is taken when a2(=[a0+4]) < a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009d84 targets 0x10009d48 and is always taken.
  The `beq` branch at 0x10009d98 targets 0x10009dcc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10009da0 targets 0x10009dcc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10009dc0 targets 0x10009dac, is taken when s1(?) < a5(=[a0]) (unsigned), and falls through when s1(?) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009de4 targets 0x10009e0c, is taken when a5(=[a0]) >= a2(=[a0+4]) (unsigned), and falls through when a5(=[a0]) < a2(=[a0+4]) (unsigned).
  The `bne` branch at 0x10009e04 targets 0x10009dec, is taken when a5(?) < a2(=[a0+4]) (unsigned), and falls through when a5(?) >= a2(=[a0+4]) (unsigned).
  The `beq` branch at 0x10009e28 targets 0x10009cfc and is always taken.
  The `beq` branch at 0x10009e3c targets 0x10009cf8 and is always taken.
  The return at 0x10009e10 has v0 = one of ([a0] << 0x2), ?.

- `slistConvertor__21TypeArray__pt__5_UsUlGP15Slist__pt__3_UlUl` in `usr/gfx/ucode/vfc/sdbutil` at 0x10009eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x10009eb0-0x1000a14c (668 bytes).
  It occupies 668 bytes.
  The `sw` at 0x10009eec stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x10009f00, `sw` at 0x1000a140.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x10009f04, `sw` at 0x1000a138.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10009f28, `lw` at 0x10009fbc, `lw` at 0x1000a080.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x10009f2c, `lw` at 0x10009fc0, `lw` at 0x1000a0cc.
  The `sw` at 0x10009f48 stores 4 bytes to a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x10009fa4, `lw` at 0x1000a0f8.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x10009fb8, `sh` at 0x1000a100.
  The `jal` at 0x10009ee4 calls numberOfElements__14SimpleListBaseGv [0x10005254] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10009f20 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009f7c calls get__15Slist__pt__3_UlGv with a0=a1 at entry (arg1), a1=?, a2=[a0+4], a3=?, a5=[a0].
  The `jal` at 0x10009fe8 calls yyerror__GPc [0x10004fbc] with a0=0x1000c5a0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009ffc calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x1000c5f0, a2=?, a3=?.
  The `jalr` at 0x1000a00c calls __ls__7ostreamGUl with a0=ret(__ls__7ostreamGPCc), a1=ret(get__15Slist__pt__3_UlGv), a2=?, a3=?.
  The `jalr` at 0x1000a020 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGUl), a1=0x1000c600, a2=?, a3=?.
  The `jalr` at 0x1000a034 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a044 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x1000f4fc, a2=?, a3=?.
  The `jalr` at 0x1000a054 calls __ls__7ostreamGUl with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a064 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGUl), a1=0x1000f4fe, a2=?, a3=?.
  The `jalr` at 0x1000a074 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a0b0 calls get__15Slist__pt__3_UlGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x1000a128 calls yyerror__GPc [0x10004fbc] with a0=0x1000c550, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10009ef8 targets 0x1000a138, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0x10009f08 targets 0x1000a124, is taken when a2(?) != v0(=ret(numberOfElements__14SimpleListBaseGv)), and falls through when a2(?) == v0(=ret(numberOfElements__14SimpleListBaseGv)).
  The `beq` branch at 0x10009f44 targets 0x10009f54, is taken when a2(=[a0+4]) >= a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) < a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009f4c targets 0x10009f58 and is always taken.
  The `beq` branch at 0x10009f5c targets 0x1000a084, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10009f68 targets 0x10009f78 and is always taken.
  The `beq` branch at 0x10009f74 targets 0x1000a084, is taken when s1(?) >= v0(?) (unsigned), and falls through when s1(?) < v0(?) (unsigned).
  The `bc1t` branch at 0x10009fb4 targets 0x10009fe0, is taken when f20 < f0 (c.lt.d at 0x10009fa8), and falls through when not (f20 < f0 (c.lt.d at 0x10009fa8)).
  The `bne` branch at 0x10009fd0 targets 0x10009f70, is taken when a2(=[a0+4]) < a5(=[a0]) (unsigned), and falls through when a2(=[a0+4]) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x10009fd8 targets 0x10009f70 and is always taken.
  The `beq` branch at 0x1000a07c targets 0x10009fc0 and is always taken.
  The `beq` branch at 0x1000a09c targets 0x1000a0d0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1000a0a4 targets 0x1000a0d0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1000a0c4 targets 0x1000a0b0, is taken when s1(?) < a5(=[a0]) (unsigned), and falls through when s1(?) >= a5(=[a0]) (unsigned).
  The `beq` branch at 0x1000a0f0 targets 0x1000a118, is taken when a5(=[a0]) >= a2(=[a0+4]) (unsigned), and falls through when a5(=[a0]) < a2(=[a0+4]) (unsigned).
  The `bne` branch at 0x1000a110 targets 0x1000a0f8, is taken when a5(?) < a3(=[a0+4]) (unsigned), and falls through when a5(?) >= a3(=[a0+4]) (unsigned).
  The `beq` branch at 0x1000a130 targets 0x10009f10 and is always taken.
  The `beq` branch at 0x1000a144 targets 0x10009f08 and is always taken.
  The return at 0x1000a11c has v0 = one of ([a0] + [a0]), ?.

- `yywrap` in `usr/gfx/ucode/vfc/sdbutil` at 0x1000b76c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ucode/vfc/sdbutil`.
  Range: 0x1000b76c-0x1000b774 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1000b76c has v0 = 0x1.
