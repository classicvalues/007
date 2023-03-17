# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 

.section .text
glabel __osDpDeviceBusy
/* 019BF0 70018FF0 3C0EA410 */  lui   $t6, %hi(DPC_STATUS_REG) # $t6, 0xa410
/* 019BF4 70018FF4 8DC4000C */  lw    $a0, %lo(DPC_STATUS_REG)($t6)
/* 019BF8 70018FF8 27BDFFF8 */  addiu $sp, $sp, -8
/* 019BFC 70018FFC 308F0100 */  andi  $t7, $a0, 0x100
/* 019C00 70019000 11E00003 */  beqz  $t7, .L70019010
/* 019C04 70019004 00000000 */   nop   
/* 019C08 70019008 10000002 */  b     .L70019014
/* 019C0C 7001900C 24020001 */   li    $v0, 1
.L70019010:
/* 019C10 70019010 00001025 */  move  $v0, $zero
.L70019014:
/* 019C14 70019014 03E00008 */  jr    $ra
/* 019C18 70019018 27BD0008 */   addiu $sp, $sp, 8
