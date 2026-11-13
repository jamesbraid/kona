# Source: ../soft/so_pntfin.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_pntfin.c
# Total Functions: 2

.text

# Function: __glBeginPoints
# Declared: Line 24 (Source lines: 25-32)
# Address: 0x0d9f7990 - 0x0d9f79c0 (Size: 48 bytes, Frame: 0)
.globl __glBeginPoints
.ent __glBeginPoints
__glBeginPoints:
    # Line 29
    addiu	$a2,$a0,12768
    sw	$a2,12744($a0)
    # Line 25
    lui	$a1,0xa
    # Line 28
    lw	$a2,12008($a0)
    # Line 25
    addiu	$a1,$a1,-27064
    # Line 28
    sw	$a2,12004($a0)
    # Line 25
    addu	$at,$t9,$a1
    # Line 30
    la	$v0,__glEndPoints
    # Line 31
    la	$v1,__glNop
    sw	$v1,12076($a0)
    # Line 32
    jr	$ra
    # Line 30
    sw	$v0,12124($a0)
.end __glBeginPoints

# Function: __glEndPoints
# Declared: Line 34 (Source lines: 35-38)
# Address: 0x0d9f79c0 - 0x0d9f79e0 (Size: 32 bytes, Frame: 0)
.globl __glEndPoints
.ent __glEndPoints
__glEndPoints:
    # Line 35
    lui	$a1,0xa
    addiu	$a1,$a1,-27112
    addu	$at,$t9,$a1
    # Line 36
    la	$v0,__glNop
    # Line 37
    la	$v1,__glEndPrim
    sw	$v1,12124($a0)
    # Line 38
    jr	$ra
    # Line 36
    sw	$v0,12004($a0)
.end __glEndPoints

