# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text 
glabel bzero
/* 018840 70017C40 28A1000C */  slti  $at, $a1, 0xc
/* 018844 70017C44 1420001D */  bnez  $at, .L70017CBC
/* 018848 70017C48 00041823 */   negu  $v1, $a0
/* 01884C 70017C4C 30630003 */  andi  $v1, $v1, 3
/* 018850 70017C50 10600003 */  beqz  $v1, .L70017C60
/* 018854 70017C54 00A32823 */   subu  $a1, $a1, $v1
/* 018858 70017C58 A8800000 */  swl   $zero, ($a0)
/* 01885C 70017C5C 00832021 */  addu  $a0, $a0, $v1
.L70017C60:
/* 018860 70017C60 2401FFE0 */  li    $at, -32
/* 018864 70017C64 00A13824 */  and   $a3, $a1, $at
/* 018868 70017C68 10E0000C */  beqz  $a3, .L70017C9C
/* 01886C 70017C6C 00A72823 */   subu  $a1, $a1, $a3
/* 018870 70017C70 00E43821 */  addu  $a3, $a3, $a0
.L70017C74:
/* 018874 70017C74 24840020 */  addiu $a0, $a0, 0x20
/* 018878 70017C78 AC80FFE0 */  sw    $zero, -0x20($a0)
/* 01887C 70017C7C AC80FFE4 */  sw    $zero, -0x1c($a0)
/* 018880 70017C80 AC80FFE8 */  sw    $zero, -0x18($a0)
/* 018884 70017C84 AC80FFEC */  sw    $zero, -0x14($a0)
/* 018888 70017C88 AC80FFF0 */  sw    $zero, -0x10($a0)
/* 01888C 70017C8C AC80FFF4 */  sw    $zero, -0xc($a0)
/* 018890 70017C90 AC80FFF8 */  sw    $zero, -8($a0)
/* 018894 70017C94 1487FFF7 */  bne   $a0, $a3, .L70017C74
/* 018898 70017C98 AC80FFFC */   sw    $zero, -4($a0)
.L70017C9C:
/* 01889C 70017C9C 2401FFFC */  li    $at, -4
/* 0188A0 70017CA0 00A13824 */  and   $a3, $a1, $at
/* 0188A4 70017CA4 10E00005 */  beqz  $a3, .L70017CBC
/* 0188A8 70017CA8 00A72823 */   subu  $a1, $a1, $a3
/* 0188AC 70017CAC 00E43821 */  addu  $a3, $a3, $a0
.L70017CB0:
/* 0188B0 70017CB0 24840004 */  addiu $a0, $a0, 4
/* 0188B4 70017CB4 1487FFFE */  bne   $a0, $a3, .L70017CB0
/* 0188B8 70017CB8 AC80FFFC */   sw    $zero, -4($a0)
.L70017CBC:
/* 0188BC 70017CBC 18A00005 */  blez  $a1, .L70017CD4
/* 0188C0 70017CC0 00000000 */   nop   
/* 0188C4 70017CC4 00A42821 */  addu  $a1, $a1, $a0
.L70017CC8:
/* 0188C8 70017CC8 24840001 */  addiu $a0, $a0, 1
/* 0188CC 70017CCC 1485FFFE */  bne   $a0, $a1, .L70017CC8
/* 0188D0 70017CD0 A080FFFF */   sb    $zero, -1($a0)
.L70017CD4:
/* 0188D4 70017CD4 03E00008 */  jr    $ra
/* 0188D8 70017CD8 00000000 */   nop   

/* 0188DC 70017CDC 00000000 */  nop   
