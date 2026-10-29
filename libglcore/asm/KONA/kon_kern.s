# Source: ../KONA/kon_kern.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_kern.c
# Total Functions: 1

.text

# Function: __glKon_ioctl
# Declared: Line 18 (Source lines: 18-160)
# Address: 0x0d95d660 - 0x0d95d694 (Size: 52 bytes, Frame: 16)
.globl __glKon_ioctl
.ent __glKon_ioctl
__glKon_ioctl:
    # Line 18
    lui	$at,0x13
    addiu	$sp,$sp,-16
    addiu	$at,$at,14712
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 160
    # lw $t9, -18512($gp) # &ioctl
    # Line 18
    sd	$ra,0($sp)
    # Line 160
    jal	ioctl
    lw	$a0,31560($a0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glKon_ioctl

