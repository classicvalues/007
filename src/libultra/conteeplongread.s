# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text
glabel osEepromLongRead
/* 016420 70015820 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 016424 70015824 AFA50044 */  sw    $a1, 0x44($sp)
/* 016428 70015828 93AE0047 */  lbu   $t6, 0x47($sp)
/* 01642C 7001582C AFBF0024 */  sw    $ra, 0x24($sp)
/* 016430 70015830 AFA40040 */  sw    $a0, 0x40($sp)
/* 016434 70015834 29C10041 */  slti  $at, $t6, 0x41
/* 016438 70015838 AFA60048 */  sw    $a2, 0x48($sp)
/* 01643C 7001583C AFA7004C */  sw    $a3, 0x4c($sp)
/* 016440 70015840 14200003 */  bnez  $at, .L70015850
/* 016444 70015844 AFA0003C */   sw    $zero, 0x3c($sp)
/* 016448 70015848 10000040 */  b     .L7001594C
/* 01644C 7001584C 2402FFFF */   li    $v0, -1
.L70015850:
/* 016450 70015850 8FAF004C */  lw    $t7, 0x4c($sp)
/* 016454 70015854 19E0003C */  blez  $t7, .L70015948
/* 016458 70015858 00000000 */   nop   
.L7001585C:
/* 01645C 7001585C 8FA40040 */  lw    $a0, 0x40($sp)
/* 016460 70015860 93A50047 */  lbu   $a1, 0x47($sp)
/* 016464 70015864 0C005410 */  jal   osEepromRead
/* 016468 70015868 8FA60048 */   lw    $a2, 0x48($sp)
/* 01646C 7001586C AFA2003C */  sw    $v0, 0x3c($sp)
/* 016470 70015870 8FB8003C */  lw    $t8, 0x3c($sp)
/* 016474 70015874 13000003 */  beqz  $t8, .L70015884
/* 016478 70015878 00000000 */   nop   
/* 01647C 7001587C 10000033 */  b     .L7001594C
/* 016480 70015880 03001025 */   move  $v0, $t8
.L70015884:
/* 016484 70015884 8FB9004C */  lw    $t9, 0x4c($sp)
/* 016488 70015888 93A90047 */  lbu   $t1, 0x47($sp)
/* 01648C 7001588C 8FAB0048 */  lw    $t3, 0x48($sp)
/* 016490 70015890 3C068002 */  lui   $a2, %hi(osClockRate)
/* 016494 70015894 3C078002 */  lui   $a3, %hi(osClockRate+4)
/* 016498 70015898 2728FFF8 */  addiu $t0, $t9, -8
/* 01649C 7001589C 252A0001 */  addiu $t2, $t1, 1
/* 0164A0 700158A0 256C0008 */  addiu $t4, $t3, 8
/* 0164A4 700158A4 AFA8004C */  sw    $t0, 0x4c($sp)
/* 0164A8 700158A8 A3AA0047 */  sb    $t2, 0x47($sp)
/* 0164AC 700158AC AFAC0048 */  sw    $t4, 0x48($sp)
/* 0164B0 700158B0 8CE76984 */  lw    $a3, %lo(osClockRate+4)($a3)
/* 0164B4 700158B4 8CC66980 */  lw    $a2, %lo(osClockRate)($a2)
/* 0164B8 700158B8 24040000 */  li    $a0, 0
/* 0164BC 700158BC 0C003B6A */  jal   __ll_mul
/* 0164C0 700158C0 24052EE0 */   li    $a1, 12000
/* 0164C4 700158C4 AFA20028 */  sw    $v0, 0x28($sp)
/* 0164C8 700158C8 AFA3002C */  sw    $v1, 0x2c($sp)
/* 0164CC 700158CC 3C07000F */  lui   $a3, (0x000F4240 >> 16) # lui $a3, 0xf
/* 0164D0 700158D0 34E74240 */  ori   $a3, (0x000F4240 & 0xFFFF) # ori $a3, $a3, 0x4240
/* 0164D4 700158D4 8FA5002C */  lw    $a1, 0x2c($sp)
/* 0164D8 700158D8 8FA40028 */  lw    $a0, 0x28($sp)
/* 0164DC 700158DC 0C003B2A */  jal   __ull_div
/* 0164E0 700158E0 24060000 */   li    $a2, 0
/* 0164E4 700158E4 3C0D8006 */  lui   $t5, %hi(__osEepromTimerQ) 
/* 0164E8 700158E8 3C188006 */  lui   $t8, %hi(__osEepromTimerMsg) 
/* 0164EC 700158EC 27187D20 */  addiu $t8, %lo(__osEepromTimerMsg) # addiu $t8, $t8, 0x7d20
/* 0164F0 700158F0 25AD7D08 */  addiu $t5, %lo(__osEepromTimerQ) # addiu $t5, $t5, 0x7d08
/* 0164F4 700158F4 AFA20030 */  sw    $v0, 0x30($sp)
/* 0164F8 700158F8 AFA30034 */  sw    $v1, 0x34($sp)
/* 0164FC 700158FC 3C048006 */  lui   $a0, %hi(__osEepromTimer)
/* 016500 70015900 240E0000 */  li    $t6, 0
/* 016504 70015904 240F0000 */  li    $t7, 0
/* 016508 70015908 AFAF0014 */  sw    $t7, 0x14($sp)
/* 01650C 7001590C AFAE0010 */  sw    $t6, 0x10($sp)
/* 016510 70015910 24847CE8 */  addiu $a0, %lo(__osEepromTimer) # addiu $a0, $a0, 0x7ce8
/* 016514 70015914 8FA70034 */  lw    $a3, 0x34($sp)
/* 016518 70015918 8FA60030 */  lw    $a2, 0x30($sp)
/* 01651C 7001591C AFAD0018 */  sw    $t5, 0x18($sp)
/* 016520 70015920 0C004314 */  jal   osSetTimer
/* 016524 70015924 AFB8001C */   sw    $t8, 0x1c($sp)
/* 016528 70015928 3C048006 */  lui   $a0, %hi(__osEepromTimerQ)
/* 01652C 7001592C 24847D08 */  addiu $a0, %lo(__osEepromTimerQ) # addiu $a0, $a0, 0x7d08
/* 016530 70015930 00002825 */  move  $a1, $zero
/* 016534 70015934 0C003774 */  jal   osRecvMesg
/* 016538 70015938 24060001 */   li    $a2, 1
/* 01653C 7001593C 8FB9004C */  lw    $t9, 0x4c($sp)
/* 016540 70015940 1F20FFC6 */  bgtz  $t9, .L7001585C
/* 016544 70015944 00000000 */   nop   
.L70015948:
/* 016548 70015948 8FA2003C */  lw    $v0, 0x3c($sp)
.L7001594C:
/* 01654C 7001594C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 016550 70015950 27BD0040 */  addiu $sp, $sp, 0x40
/* 016554 70015954 03E00008 */  jr    $ra
/* 016558 70015958 00000000 */   nop   

/* 01655C 7001595C 00000000 */  nop   