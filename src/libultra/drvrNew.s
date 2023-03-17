# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text
glabel alSaveNew
/* 019D20 70019120 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 019D24 70019124 AFBF0014 */  sw    $ra, 0x14($sp)
/* 019D28 70019128 3C057002 */  lui   $a1, %hi(alSavePull) # $a1, 0x7002
/* 019D2C 7001912C 3C067002 */  lui   $a2, %hi(alSaveParam) # $a2, 0x7002
/* 019D30 70019130 24C6B5F0 */  addiu $a2, %lo(alSaveParam) # addiu $a2, $a2, -0x4a10
/* 019D34 70019134 24A5B624 */  addiu $a1, %lo(alSavePull) # addiu $a1, $a1, -0x49dc
/* 019D38 70019138 AFA40018 */  sw    $a0, 0x18($sp)
/* 019D3C 7001913C 0C007E3C */  jal   alFilterNew
/* 019D40 70019140 24070003 */   li    $a3, 3
/* 019D44 70019144 8FA40018 */  lw    $a0, 0x18($sp)
/* 019D48 70019148 240E0001 */  li    $t6, 1
/* 019D4C 7001914C AC800014 */  sw    $zero, 0x14($a0)
/* 019D50 70019150 AC8E0018 */  sw    $t6, 0x18($a0)
/* 019D54 70019154 8FBF0014 */  lw    $ra, 0x14($sp)
/* 019D58 70019158 27BD0018 */  addiu $sp, $sp, 0x18
/* 019D5C 7001915C 03E00008 */  jr    $ra
/* 019D60 70019160 00000000 */   nop   

glabel alMainBusNew
/* 019D64 70019164 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 019D68 70019168 AFA5001C */  sw    $a1, 0x1c($sp)
/* 019D6C 7001916C AFA60020 */  sw    $a2, 0x20($sp)
/* 019D70 70019170 AFBF0014 */  sw    $ra, 0x14($sp)
/* 019D74 70019174 3C067002 */  lui   $a2, %hi(alMainBusParam) # $a2, 0x7002
/* 019D78 70019178 3C057002 */  lui   $a1, %hi(alMainBusPull) # $a1, 0x7002
/* 019D7C 7001917C 24A59990 */  addiu $a1, %lo(alMainBusPull) # addiu $a1, $a1, -0x6670
/* 019D80 70019180 24C69960 */  addiu $a2, %lo(alMainBusParam) # addiu $a2, $a2, -0x66a0
/* 019D84 70019184 AFA40018 */  sw    $a0, 0x18($sp)
/* 019D88 70019188 0C007E3C */  jal   alFilterNew
/* 019D8C 7001918C 24070007 */   li    $a3, 7
/* 019D90 70019190 8FA40018 */  lw    $a0, 0x18($sp)
/* 019D94 70019194 AC800014 */  sw    $zero, 0x14($a0)
/* 019D98 70019198 8FAE0020 */  lw    $t6, 0x20($sp)
/* 019D9C 7001919C AC8E0018 */  sw    $t6, 0x18($a0)
/* 019DA0 700191A0 8FAF001C */  lw    $t7, 0x1c($sp)
/* 019DA4 700191A4 AC8F001C */  sw    $t7, 0x1c($a0)
/* 019DA8 700191A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 019DAC 700191AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 019DB0 700191B0 03E00008 */  jr    $ra
/* 019DB4 700191B4 00000000 */   nop   

glabel alAuxBusNew
/* 019DB8 700191B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 019DBC 700191BC AFA5001C */  sw    $a1, 0x1c($sp)
/* 019DC0 700191C0 AFA60020 */  sw    $a2, 0x20($sp)
/* 019DC4 700191C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 019DC8 700191C8 3C067002 */  lui   $a2, %hi(alAuxBusParam) # $a2, 0x7002
/* 019DCC 700191CC 3C057002 */  lui   $a1, %hi(alAuxBusPull) # $a1, 0x7002
/* 019DD0 700191D0 24A5B510 */  addiu $a1, %lo(alAuxBusPull) # addiu $a1, $a1, -0x4af0
/* 019DD4 700191D4 24C6B4E0 */  addiu $a2, %lo(alAuxBusParam) # addiu $a2, $a2, -0x4b20
/* 019DD8 700191D8 AFA40018 */  sw    $a0, 0x18($sp)
/* 019DDC 700191DC 0C007E3C */  jal   alFilterNew
/* 019DE0 700191E0 24070006 */   li    $a3, 6
/* 019DE4 700191E4 8FA40018 */  lw    $a0, 0x18($sp)
/* 019DE8 700191E8 AC800014 */  sw    $zero, 0x14($a0)
/* 019DEC 700191EC 8FAE0020 */  lw    $t6, 0x20($sp)
/* 019DF0 700191F0 AC8E0018 */  sw    $t6, 0x18($a0)
/* 019DF4 700191F4 8FAF001C */  lw    $t7, 0x1c($sp)
/* 019DF8 700191F8 AC8F001C */  sw    $t7, 0x1c($a0)
/* 019DFC 700191FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 019E00 70019200 27BD0018 */  addiu $sp, $sp, 0x18
/* 019E04 70019204 03E00008 */  jr    $ra
/* 019E08 70019208 00000000 */   nop   

glabel alResampleNew
/* 019E0C 7001920C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 019E10 70019210 AFA50024 */  sw    $a1, 0x24($sp)
/* 019E14 70019214 AFBF001C */  sw    $ra, 0x1c($sp)
/* 019E18 70019218 3C057002 */  lui   $a1, %hi(alResamplePull) # $a1, 0x7002
/* 019E1C 7001921C 3C067002 */  lui   $a2, %hi(alResampleParam) # $a2, 0x7002
/* 019E20 70019220 24C6A600 */  addiu $a2, %lo(alResampleParam) # addiu $a2, $a2, -0x5a00
/* 019E24 70019224 24A5A6EC */  addiu $a1, %lo(alResamplePull) # addiu $a1, $a1, -0x5914
/* 019E28 70019228 AFA40020 */  sw    $a0, 0x20($sp)
/* 019E2C 7001922C 0C007E3C */  jal   alFilterNew
/* 019E30 70019230 24070001 */   li    $a3, 1
/* 019E34 70019234 240E0020 */  li    $t6, 32
/* 019E38 70019238 AFAE0010 */  sw    $t6, 0x10($sp)
/* 019E3C 7001923C 00002025 */  move  $a0, $zero
/* 019E40 70019240 00002825 */  move  $a1, $zero
/* 019E44 70019244 8FA60024 */  lw    $a2, 0x24($sp)
/* 019E48 70019248 0C003AD4 */  jal   alHeapDBAlloc
/* 019E4C 7001924C 24070001 */   li    $a3, 1
/* 019E50 70019250 8FA80020 */  lw    $t0, 0x20($sp)
/* 019E54 70019254 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 019E58 70019258 44802000 */  mtc1  $zero, $f4
/* 019E5C 7001925C 44813000 */  mtc1  $at, $f6
/* 019E60 70019260 240F0001 */  li    $t7, 1
/* 019E64 70019264 AD020014 */  sw    $v0, 0x14($t0)
/* 019E68 70019268 AD0F0024 */  sw    $t7, 0x24($t0)
/* 019E6C 7001926C AD000030 */  sw    $zero, 0x30($t0)
/* 019E70 70019270 AD00001C */  sw    $zero, 0x1c($t0)
/* 019E74 70019274 AD000028 */  sw    $zero, 0x28($t0)
/* 019E78 70019278 AD00002C */  sw    $zero, 0x2c($t0)
/* 019E7C 7001927C E5040020 */  swc1  $f4, 0x20($t0)
/* 019E80 70019280 E5060018 */  swc1  $f6, 0x18($t0)
/* 019E84 70019284 8FBF001C */  lw    $ra, 0x1c($sp)
/* 019E88 70019288 27BD0020 */  addiu $sp, $sp, 0x20
/* 019E8C 7001928C 03E00008 */  jr    $ra
/* 019E90 70019290 00000000 */   nop   

glabel alLoadNew
/* 019E94 70019294 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 019E98 70019298 AFA5002C */  sw    $a1, 0x2c($sp)
/* 019E9C 7001929C AFA60030 */  sw    $a2, 0x30($sp)
/* 019EA0 700192A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 019EA4 700192A4 AFB00020 */  sw    $s0, 0x20($sp)
/* 019EA8 700192A8 3C067002 */  lui   $a2, %hi(alLoadParam) # $a2, 0x7002
/* 019EAC 700192AC 3C057002 */  lui   $a1, %hi(alAdpcmPull) # $a1, 0x7002
/* 019EB0 700192B0 00808025 */  move  $s0, $a0
/* 019EB4 700192B4 24A5A15C */  addiu $a1, %lo(alAdpcmPull) # addiu $a1, $a1, -0x5ea4
/* 019EB8 700192B8 24C69AB0 */  addiu $a2, %lo(alLoadParam) # addiu $a2, $a2, -0x6550
/* 019EBC 700192BC 0C007E3C */  jal   alFilterNew
/* 019EC0 700192C0 00003825 */   move  $a3, $zero
/* 019EC4 700192C4 240E0020 */  li    $t6, 32
/* 019EC8 700192C8 AFAE0010 */  sw    $t6, 0x10($sp)
/* 019ECC 700192CC 00002025 */  move  $a0, $zero
/* 019ED0 700192D0 00002825 */  move  $a1, $zero
/* 019ED4 700192D4 8FA60030 */  lw    $a2, 0x30($sp)
/* 019ED8 700192D8 0C003AD4 */  jal   alHeapDBAlloc
/* 019EDC 700192DC 24070001 */   li    $a3, 1
/* 019EE0 700192E0 AE020014 */  sw    $v0, 0x14($s0)
/* 019EE4 700192E4 240F0020 */  li    $t7, 32
/* 019EE8 700192E8 AFAF0010 */  sw    $t7, 0x10($sp)
/* 019EEC 700192EC 8FA60030 */  lw    $a2, 0x30($sp)
/* 019EF0 700192F0 00002025 */  move  $a0, $zero
/* 019EF4 700192F4 00002825 */  move  $a1, $zero
/* 019EF8 700192F8 0C003AD4 */  jal   alHeapDBAlloc
/* 019EFC 700192FC 24070001 */   li    $a3, 1
/* 019F00 70019300 AE020018 */  sw    $v0, 0x18($s0)
/* 019F04 70019304 8FB9002C */  lw    $t9, 0x2c($sp)
/* 019F08 70019308 26040034 */  addiu $a0, $s0, 0x34
/* 019F0C 7001930C 0320F809 */  jalr  $t9
/* 019F10 70019310 00000000 */  nop   
/* 019F14 70019314 24180001 */  li    $t8, 1
/* 019F18 70019318 AE020030 */  sw    $v0, 0x30($s0)
/* 019F1C 7001931C AE00003C */  sw    $zero, 0x3c($s0)
/* 019F20 70019320 AE180040 */  sw    $t8, 0x40($s0)
/* 019F24 70019324 AE000044 */  sw    $zero, 0x44($s0)
/* 019F28 70019328 8FBF0024 */  lw    $ra, 0x24($sp)
/* 019F2C 7001932C 8FB00020 */  lw    $s0, 0x20($sp)
/* 019F30 70019330 27BD0028 */  addiu $sp, $sp, 0x28
/* 019F34 70019334 03E00008 */  jr    $ra
/* 019F38 70019338 00000000 */   nop   

glabel alEnvmixerNew
/* 019F3C 7001933C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 019F40 70019340 AFA50024 */  sw    $a1, 0x24($sp)
/* 019F44 70019344 AFBF001C */  sw    $ra, 0x1c($sp)
/* 019F48 70019348 3C057002 */  lui   $a1, %hi(alEnvmixerPull) # $a1, 0x7002
/* 019F4C 7001934C 3C067002 */  lui   $a2, %hi(alEnvmixerParam) # $a2, 0x7002
/* 019F50 70019350 24C6AA14 */  addiu $a2, %lo(alEnvmixerParam) # addiu $a2, $a2, -0x55ec
/* 019F54 70019354 24A5AE5C */  addiu $a1, %lo(alEnvmixerPull) # addiu $a1, $a1, -0x51a4
/* 019F58 70019358 AFA40020 */  sw    $a0, 0x20($sp)
/* 019F5C 7001935C 0C007E3C */  jal   alFilterNew
/* 019F60 70019360 24070004 */   li    $a3, 4
/* 019F64 70019364 240E0050 */  li    $t6, 80
/* 019F68 70019368 AFAE0010 */  sw    $t6, 0x10($sp)
/* 019F6C 7001936C 00002025 */  move  $a0, $zero
/* 019F70 70019370 00002825 */  move  $a1, $zero
/* 019F74 70019374 8FA60024 */  lw    $a2, 0x24($sp)
/* 019F78 70019378 0C003AD4 */  jal   alHeapDBAlloc
/* 019F7C 7001937C 24070001 */   li    $a3, 1
/* 019F80 70019380 8FA80020 */  lw    $t0, 0x20($sp)
/* 019F84 70019384 24030001 */  li    $v1, 1
/* 019F88 70019388 AD020014 */  sw    $v0, 0x14($t0)
/* 019F8C 7001938C AD030038 */  sw    $v1, 0x38($t0)
/* 019F90 70019390 AD000048 */  sw    $zero, 0x48($t0)
/* 019F94 70019394 A503001A */  sh    $v1, 0x1a($t0)
/* 019F98 70019398 A5030028 */  sh    $v1, 0x28($t0)
/* 019F9C 7001939C A503002E */  sh    $v1, 0x2e($t0)
/* 019FA0 700193A0 A503001C */  sh    $v1, 0x1c($t0)
/* 019FA4 700193A4 A503001E */  sh    $v1, 0x1e($t0)
/* 019FA8 700193A8 A5000020 */  sh    $zero, 0x20($t0)
/* 019FAC 700193AC A5000022 */  sh    $zero, 0x22($t0)
/* 019FB0 700193B0 A5030026 */  sh    $v1, 0x26($t0)
/* 019FB4 700193B4 A5000024 */  sh    $zero, 0x24($t0)
/* 019FB8 700193B8 AD000030 */  sw    $zero, 0x30($t0)
/* 019FBC 700193BC AD000034 */  sw    $zero, 0x34($t0)
/* 019FC0 700193C0 A5000018 */  sh    $zero, 0x18($t0)
/* 019FC4 700193C4 AD00003C */  sw    $zero, 0x3c($t0)
/* 019FC8 700193C8 AD000040 */  sw    $zero, 0x40($t0)
/* 019FCC 700193CC AD000044 */  sw    $zero, 0x44($t0)
/* 019FD0 700193D0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 019FD4 700193D4 27BD0020 */  addiu $sp, $sp, 0x20
/* 019FD8 700193D8 03E00008 */  jr    $ra
/* 019FDC 700193DC 00000000 */   nop   

glabel init_lpfilter
/* 019FE0 700193E0 84820000 */  lh    $v0, ($a0)
/* 019FE4 700193E4 24194000 */  li    $t9, 16384
/* 019FE8 700193E8 24090001 */  li    $t1, 1
/* 019FEC 700193EC 00027380 */  sll   $t6, $v0, 0xe
/* 019FF0 700193F0 000E1BC3 */  sra   $v1, $t6, 0xf
/* 019FF4 700193F4 00037C00 */  sll   $t7, $v1, 0x10
/* 019FF8 700193F8 000F1C03 */  sra   $v1, $t7, 0x10
/* 019FFC 700193FC 03234023 */  subu  $t0, $t9, $v1
/* 01A000 70019400 A4880002 */  sh    $t0, 2($a0)
/* 01A004 70019404 AC89002C */  sw    $t1, 0x2c($a0)
/* 01A008 70019408 00002825 */  move  $a1, $zero
/* 01A00C 7001940C 00803025 */  move  $a2, $a0
.L70019410:
/* 01A010 70019410 24A50001 */  addiu $a1, $a1, 1
/* 01A014 70019414 28A10008 */  slti  $at, $a1, 8
/* 01A018 70019418 24C60002 */  addiu $a2, $a2, 2
/* 01A01C 7001941C 1420FFFC */  bnez  $at, .L70019410
/* 01A020 70019420 A4C00006 */   sh    $zero, 6($a2)
/* 01A024 70019424 44832000 */  mtc1  $v1, $f4
/* 01A028 70019428 3C0140D0 */  li    $at, 0x40D00000 # 6.500000
/* 01A02C 7001942C 44816800 */  mtc1  $at, $f13
/* 01A030 70019430 468021A1 */  cvt.d.w $f6, $f4
/* 01A034 70019434 44806000 */  mtc1  $zero, $f12
/* 01A038 70019438 24A50001 */  addiu $a1, $a1, 1
/* 01A03C 7001943C 28A10010 */  slti  $at, $a1, 0x10
/* 01A040 70019440 A4C30008 */  sh    $v1, 8($a2)
/* 01A044 70019444 462C3083 */  div.d $f2, $f6, $f12
/* 01A048 70019448 24C60002 */  addiu $a2, $a2, 2
/* 01A04C 7001944C 1020000A */  beqz  $at, .L70019478
/* 01A050 70019450 46201006 */   mov.d $f0, $f2
.L70019454:
/* 01A054 70019454 46220002 */  mul.d $f0, $f0, $f2
/* 01A058 70019458 24A50001 */  addiu $a1, $a1, 1
/* 01A05C 7001945C 28A10010 */  slti  $at, $a1, 0x10
/* 01A060 70019460 24C60002 */  addiu $a2, $a2, 2
/* 01A064 70019464 462C0202 */  mul.d $f8, $f0, $f12
/* 01A068 70019468 4620428D */  trunc.w.d $f10, $f8
/* 01A06C 7001946C 440B5000 */  mfc1  $t3, $f10
/* 01A070 70019470 1420FFF8 */  bnez  $at, .L70019454
/* 01A074 70019474 A4CB0006 */   sh    $t3, 6($a2)
.L70019478:
/* 01A078 70019478 03E00008 */  jr    $ra
/* 01A07C 7001947C 00000000 */   nop   

glabel alFxNew
/* 01A080 70019480 27BDFF98 */  addiu $sp, $sp, -0x68
/* 01A084 70019484 AFB60058 */  sw    $s6, 0x58($sp)
/* 01A088 70019488 00C0B025 */  move  $s6, $a2
/* 01A08C 7001948C AFBF0064 */  sw    $ra, 0x64($sp)
/* 01A090 70019490 AFB50054 */  sw    $s5, 0x54($sp)
/* 01A094 70019494 AFA5006C */  sw    $a1, 0x6c($sp)
/* 01A098 70019498 3C067002 */  lui   $a2, %hi(alFxParam) # $a2, 0x7002
/* 01A09C 7001949C 0080A825 */  move  $s5, $a0
/* 01A0A0 700194A0 AFBE0060 */  sw    $fp, 0x60($sp)
/* 01A0A4 700194A4 AFB7005C */  sw    $s7, 0x5c($sp)
/* 01A0A8 700194A8 AFB40050 */  sw    $s4, 0x50($sp)
/* 01A0AC 700194AC AFB3004C */  sw    $s3, 0x4c($sp)
/* 01A0B0 700194B0 AFB20048 */  sw    $s2, 0x48($sp)
/* 01A0B4 700194B4 AFB10044 */  sw    $s1, 0x44($sp)
/* 01A0B8 700194B8 AFB00040 */  sw    $s0, 0x40($sp)
/* 01A0BC 700194BC F7BA0038 */  sdc1  $f26, 0x38($sp)
/* 01A0C0 700194C0 F7B80030 */  sdc1  $f24, 0x30($sp)
/* 01A0C4 700194C4 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 01A0C8 700194C8 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 01A0CC 700194CC 24C601C0 */  addiu $a2, %lo(alFxParam) # addiu $a2, $a2, 0x1c0
/* 01A0D0 700194D0 00002825 */  move  $a1, $zero
/* 01A0D4 700194D4 0C007E3C */  jal   alFilterNew
/* 01A0D8 700194D8 24070005 */   li    $a3, 5
/* 01A0DC 700194DC 8FA2006C */  lw    $v0, 0x6c($sp)
/* 01A0E0 700194E0 3C0E7002 */  lui   $t6, %hi(alFxPull) # $t6, 0x7002
/* 01A0E4 700194E4 3C0F7002 */  lui   $t7, %hi(alFxParamHdl) # $t7, 0x7002
/* 01A0E8 700194E8 25CE01D8 */  addiu $t6, %lo(alFxPull) # addiu $t6, $t6, 0x1d8
/* 01A0EC 700194EC 25EFFFA8 */  addiu $t7, %lo(alFxParamHdl) # addiu $t7, $t7, -0x58
/* 01A0F0 700194F0 AEAE0004 */  sw    $t6, 4($s5)
/* 01A0F4 700194F4 AEAF0028 */  sw    $t7, 0x28($s5)
/* 01A0F8 700194F8 9058001C */  lbu   $t8, 0x1c($v0)
/* 01A0FC 700194FC 3C138003 */  lui   $s3, %hi(NULL_PARAMS)
/* 01A100 70019500 267381B8 */  addiu $s3, %lo(NULL_PARAMS) # addiu $s3, $s3, -0x7e48
/* 01A104 70019504 2719FFFF */  addiu $t9, $t8, -1
/* 01A108 70019508 2F210006 */  sltiu $at, $t9, 6
/* 01A10C 7001950C 10200017 */  beqz  $at, .L7001956C
/* 01A110 70019510 0019C880 */   sll   $t9, $t9, 2
/* 01A114 70019514 3C018003 */  lui   $at, %hi(jpt_80029830)
/* 01A118 70019518 00390821 */  addu  $at, $at, $t9
/* 01A11C 7001951C 8C399830 */  lw    $t9, %lo(jpt_80029830)($at)
/* 01A120 70019520 03200008 */  jr    $t9
/* 01A124 70019524 00000000 */   nop   
.L70019528:
/* 01A128 70019528 3C138003 */  lui   $s3, %hi(SMALLROOM_PARAMS)
/* 01A12C 7001952C 1000000F */  b     .L7001956C
/* 01A130 70019530 26738050 */   addiu $s3, %lo(SMALLROOM_PARAMS) # addiu $s3, $s3, -0x7fb0
.L70019534:
/* 01A134 70019534 3C138003 */  lui   $s3, %hi(BIGROOM_PARAMS)
/* 01A138 70019538 1000000C */  b     .L7001956C
/* 01A13C 7001953C 267380B8 */   addiu $s3, %lo(BIGROOM_PARAMS) # addiu $s3, $s3, -0x7f48
.L70019540:
/* 01A140 70019540 3C138003 */  lui   $s3, %hi(ECHO_PARAMS)
/* 01A144 70019544 10000009 */  b     .L7001956C
/* 01A148 70019548 26738140 */   addiu $s3, %lo(ECHO_PARAMS) # addiu $s3, $s3, -0x7ec0
.L7001954C:
/* 01A14C 7001954C 3C138003 */  lui   $s3, %hi(CHORUS_PARAMS)
/* 01A150 70019550 10000006 */  b     .L7001956C
/* 01A154 70019554 26738168 */   addiu $s3, %lo(CHORUS_PARAMS) # addiu $s3, $s3, -0x7e98
.L70019558:
/* 01A158 70019558 3C138003 */  lui   $s3, %hi(FLANGE_PARAMS)
/* 01A15C 7001955C 10000003 */  b     .L7001956C
/* 01A160 70019560 26738190 */   addiu $s3, %lo(FLANGE_PARAMS) # addiu $s3, $s3, -0x7e70
.L70019564:
/* 01A164 70019564 10000001 */  b     .L7001956C
/* 01A168 70019568 8C530020 */   lw    $s3, 0x20($v0)
.L7001956C:
/* 01A16C 7001956C 8E680000 */  lw    $t0, ($s3)
/* 01A170 70019570 240A0028 */  li    $t2, 40
/* 01A174 70019574 24110002 */  li    $s1, 2
/* 01A178 70019578 A2A80024 */  sb    $t0, 0x24($s5)
/* 01A17C 7001957C 8E690004 */  lw    $t1, 4($s3)
/* 01A180 70019580 00002025 */  move  $a0, $zero
/* 01A184 70019584 00002825 */  move  $a1, $zero
/* 01A188 70019588 AEA9001C */  sw    $t1, 0x1c($s5)
/* 01A18C 7001958C AFAA0010 */  sw    $t2, 0x10($sp)
/* 01A190 70019590 02C03025 */  move  $a2, $s6
/* 01A194 70019594 0C003AD4 */  jal   alHeapDBAlloc
/* 01A198 70019598 310700FF */   andi  $a3, $t0, 0xff
/* 01A19C 7001959C AEA20020 */  sw    $v0, 0x20($s5)
/* 01A1A0 700195A0 8EA7001C */  lw    $a3, 0x1c($s5)
/* 01A1A4 700195A4 240B0002 */  li    $t3, 2
/* 01A1A8 700195A8 AFAB0010 */  sw    $t3, 0x10($sp)
/* 01A1AC 700195AC 00002025 */  move  $a0, $zero
/* 01A1B0 700195B0 00002825 */  move  $a1, $zero
/* 01A1B4 700195B4 0C003AD4 */  jal   alHeapDBAlloc
/* 01A1B8 700195B8 02C03025 */   move  $a2, $s6
/* 01A1BC 700195BC 8EAC001C */  lw    $t4, 0x1c($s5)
/* 01A1C0 700195C0 AEA20014 */  sw    $v0, 0x14($s5)
/* 01A1C4 700195C4 AEA20018 */  sw    $v0, 0x18($s5)
/* 01A1C8 700195C8 1180000C */  beqz  $t4, .L700195FC
/* 01A1CC 700195CC 00001825 */   move  $v1, $zero
/* 01A1D0 700195D0 8EAD0014 */  lw    $t5, 0x14($s5)
.L700195D4:
/* 01A1D4 700195D4 00037040 */  sll   $t6, $v1, 1
/* 01A1D8 700195D8 24630001 */  addiu $v1, $v1, 1
/* 01A1DC 700195DC 01AE7821 */  addu  $t7, $t5, $t6
/* 01A1E0 700195E0 A5E00000 */  sh    $zero, ($t7)
/* 01A1E4 700195E4 8EB9001C */  lw    $t9, 0x1c($s5)
/* 01A1E8 700195E8 3078FFFF */  andi  $t8, $v1, 0xffff
/* 01A1EC 700195EC 03001825 */  move  $v1, $t8
/* 01A1F0 700195F0 0319082B */  sltu  $at, $t8, $t9
/* 01A1F4 700195F4 5420FFF7 */  bnezl $at, .L700195D4
/* 01A1F8 700195F8 8EAD0014 */   lw    $t5, 0x14($s5)
.L700195FC:
/* 01A1FC 700195FC 92A80024 */  lbu   $t0, 0x24($s5)
/* 01A200 70019600 0000A025 */  move  $s4, $zero
/* 01A204 70019604 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01A208 70019608 1900009C */  blez  $t0, .L7001987C
/* 01A20C 7001960C 241E0001 */   li    $fp, 1
/* 01A210 70019610 4481C000 */  mtc1  $at, $f24
/* 01A214 70019614 3C01447A */  li    $at, 0x447A0000 # 1000.000000
/* 01A218 70019618 4481B000 */  mtc1  $at, $f22
/* 01A21C 7001961C 3C018003 */  lui   $at, %hi(F64_80029848)
/* 01A220 70019620 4480D000 */  mtc1  $zero, $f26
/* 01A224 70019624 D4349848 */  ldc1  $f20, %lo(F64_80029848)($at)
/* 01A228 70019628 24170028 */  li    $s7, 40
.L7001962C:
/* 01A22C 7001962C 02970019 */  multu $s4, $s7
/* 01A230 70019630 00115880 */  sll   $t3, $s1, 2
/* 01A234 70019634 8EA90020 */  lw    $t1, 0x20($s5)
/* 01A238 70019638 026B6021 */  addu  $t4, $s3, $t3
/* 01A23C 7001963C 8D8D0000 */  lw    $t5, ($t4)
/* 01A240 70019640 26310001 */  addiu $s1, $s1, 1
/* 01A244 70019644 322EFFFF */  andi  $t6, $s1, 0xffff
/* 01A248 70019648 000E7880 */  sll   $t7, $t6, 2
/* 01A24C 7001964C 026FC021 */  addu  $t8, $s3, $t7
/* 01A250 70019650 25D10001 */  addiu $s1, $t6, 1
/* 01A254 70019654 00005012 */  mflo  $t2
/* 01A258 70019658 012A8021 */  addu  $s0, $t1, $t2
/* 01A25C 7001965C AE0D0000 */  sw    $t5, ($s0)
/* 01A260 70019660 8F190000 */  lw    $t9, ($t8)
/* 01A264 70019664 3228FFFF */  andi  $t0, $s1, 0xffff
/* 01A268 70019668 00084880 */  sll   $t1, $t0, 2
/* 01A26C 7001966C 02695021 */  addu  $t2, $s3, $t1
/* 01A270 70019670 AE190004 */  sw    $t9, 4($s0)
/* 01A274 70019674 8D4B0000 */  lw    $t3, ($t2)
/* 01A278 70019678 25110001 */  addiu $s1, $t0, 1
/* 01A27C 7001967C 322CFFFF */  andi  $t4, $s1, 0xffff
/* 01A280 70019680 000C6880 */  sll   $t5, $t4, 2
/* 01A284 70019684 026D7021 */  addu  $t6, $s3, $t5
/* 01A288 70019688 A60B000A */  sh    $t3, 0xa($s0)
/* 01A28C 7001968C 8DCF0000 */  lw    $t7, ($t6)
/* 01A290 70019690 25910001 */  addiu $s1, $t4, 1
/* 01A294 70019694 3238FFFF */  andi  $t8, $s1, 0xffff
/* 01A298 70019698 0018C880 */  sll   $t9, $t8, 2
/* 01A29C 7001969C 02794021 */  addu  $t0, $s3, $t9
/* 01A2A0 700196A0 A60F0008 */  sh    $t7, 8($s0)
/* 01A2A4 700196A4 8D090000 */  lw    $t1, ($t0)
/* 01A2A8 700196A8 27110001 */  addiu $s1, $t8, 1
/* 01A2AC 700196AC 322AFFFF */  andi  $t2, $s1, 0xffff
/* 01A2B0 700196B0 000A5880 */  sll   $t3, $t2, 2
/* 01A2B4 700196B4 026B6021 */  addu  $t4, $s3, $t3
/* 01A2B8 700196B8 A609000C */  sh    $t1, 0xc($s0)
/* 01A2BC 700196BC 8D820000 */  lw    $v0, ($t4)
/* 01A2C0 700196C0 01408825 */  move  $s1, $t2
/* 01A2C4 700196C4 02204025 */  move  $t0, $s1
/* 01A2C8 700196C8 10400040 */  beqz  $v0, .L700197CC
/* 01A2CC 700196CC 25110002 */   addiu $s1, $t0, 2
/* 01A2D0 700196D0 44822000 */  mtc1  $v0, $f4
/* 01A2D4 700196D4 8FAD006C */  lw    $t5, 0x6c($sp)
/* 01A2D8 700196D8 8E180004 */  lw    $t8, 4($s0)
/* 01A2DC 700196DC 468021A0 */  cvt.s.w $f6, $f4
/* 01A2E0 700196E0 8DAE0018 */  lw    $t6, 0x18($t5)
/* 01A2E4 700196E4 8E190000 */  lw    $t9, ($s0)
/* 01A2E8 700196E8 25510001 */  addiu $s1, $t2, 1
/* 01A2EC 700196EC 448E8000 */  mtc1  $t6, $f16
/* 01A2F0 700196F0 322FFFFF */  andi  $t7, $s1, 0xffff
/* 01A2F4 700196F4 46163203 */  div.s $f8, $f6, $f22
/* 01A2F8 700196F8 03194023 */  subu  $t0, $t8, $t9
/* 01A2FC 700196FC 01E08825 */  move  $s1, $t7
/* 01A300 70019700 00114880 */  sll   $t1, $s1, 2
/* 01A304 70019704 468084A1 */  cvt.d.w $f18, $f16
/* 01A308 70019708 02695021 */  addu  $t2, $s3, $t1
/* 01A30C 7001970C 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 01A310 70019710 46004021 */  cvt.d.s $f0, $f8
/* 01A314 70019714 44884000 */  mtc1  $t0, $f8
/* 01A318 70019718 46200280 */  add.d $f10, $f0, $f0
/* 01A31C 7001971C 46804421 */  cvt.d.w $f16, $f8
/* 01A320 70019720 46325103 */  div.d $f4, $f10, $f18
/* 01A324 70019724 462021A0 */  cvt.s.d $f6, $f4
/* 01A328 70019728 05010005 */  bgez  $t0, .L70019740
/* 01A32C 7001972C E6060010 */   swc1  $f6, 0x10($s0)
/* 01A330 70019730 44815800 */  mtc1  $at, $f11
/* 01A334 70019734 44805000 */  mtc1  $zero, $f10
/* 01A338 70019738 00000000 */  nop   
/* 01A33C 7001973C 462A8400 */  add.d $f16, $f16, $f10
.L70019740:
/* 01A340 70019740 8D4B0000 */  lw    $t3, ($t2)
/* 01A344 70019744 26310001 */  addiu $s1, $s1, 1
/* 01A348 70019748 322CFFFF */  andi  $t4, $s1, 0xffff
/* 01A34C 7001974C 448B9000 */  mtc1  $t3, $f18
/* 01A350 70019750 E6180014 */  swc1  $f24, 0x14($s0)
/* 01A354 70019754 AE000018 */  sw    $zero, 0x18($s0)
/* 01A358 70019758 46809120 */  cvt.s.w $f4, $f18
/* 01A35C 7001975C 240D0034 */  li    $t5, 52
/* 01A360 70019760 01808825 */  move  $s1, $t4
/* 01A364 70019764 00002025 */  move  $a0, $zero
/* 01A368 70019768 00002825 */  move  $a1, $zero
/* 01A36C 7001976C 02C03025 */  move  $a2, $s6
/* 01A370 70019770 460021A1 */  cvt.d.s $f6, $f4
/* 01A374 70019774 03C03825 */  move  $a3, $fp
/* 01A378 70019778 46343203 */  div.d $f8, $f6, $f20
/* 01A37C 7001977C 46304282 */  mul.d $f10, $f8, $f16
/* 01A380 70019780 462054A0 */  cvt.s.d $f18, $f10
/* 01A384 70019784 E612001C */  swc1  $f18, 0x1c($s0)
/* 01A388 70019788 0C003AD4 */  jal   alHeapDBAlloc
/* 01A38C 7001978C AFAD0010 */   sw    $t5, 0x10($sp)
/* 01A390 70019790 AE020024 */  sw    $v0, 0x24($s0)
/* 01A394 70019794 240E0020 */  li    $t6, 32
/* 01A398 70019798 AFAE0010 */  sw    $t6, 0x10($sp)
/* 01A39C 7001979C 00002025 */  move  $a0, $zero
/* 01A3A0 700197A0 00002825 */  move  $a1, $zero
/* 01A3A4 700197A4 02C03025 */  move  $a2, $s6
/* 01A3A8 700197A8 0C003AD4 */  jal   alHeapDBAlloc
/* 01A3AC 700197AC 03C03825 */   move  $a3, $fp
/* 01A3B0 700197B0 8E0F0024 */  lw    $t7, 0x24($s0)
/* 01A3B4 700197B4 ADE20014 */  sw    $v0, 0x14($t7)
/* 01A3B8 700197B8 8E180024 */  lw    $t8, 0x24($s0)
/* 01A3BC 700197BC E71A0020 */  swc1  $f26, 0x20($t8)
/* 01A3C0 700197C0 8E190024 */  lw    $t9, 0x24($s0)
/* 01A3C4 700197C4 10000004 */  b     .L700197D8
/* 01A3C8 700197C8 AF3E0024 */   sw    $fp, 0x24($t9)
.L700197CC:
/* 01A3CC 700197CC 3229FFFF */  andi  $t1, $s1, 0xffff
/* 01A3D0 700197D0 AE000024 */  sw    $zero, 0x24($s0)
/* 01A3D4 700197D4 01208825 */  move  $s1, $t1
.L700197D8:
/* 01A3D8 700197D8 00115080 */  sll   $t2, $s1, 2
/* 01A3DC 700197DC 026A9021 */  addu  $s2, $s3, $t2
/* 01A3E0 700197E0 8E4B0000 */  lw    $t3, ($s2)
/* 01A3E4 700197E4 00002025 */  move  $a0, $zero
/* 01A3E8 700197E8 00002825 */  move  $a1, $zero
/* 01A3EC 700197EC 11600019 */  beqz  $t3, .L70019854
/* 01A3F0 700197F0 02C03025 */   move  $a2, $s6
/* 01A3F4 700197F4 240C0030 */  li    $t4, 48
/* 01A3F8 700197F8 AFAC0010 */  sw    $t4, 0x10($sp)
/* 01A3FC 700197FC 0C003AD4 */  jal   alHeapDBAlloc
/* 01A400 70019800 03C03825 */   move  $a3, $fp
/* 01A404 70019804 AE020020 */  sw    $v0, 0x20($s0)
/* 01A408 70019808 240D0008 */  li    $t5, 8
/* 01A40C 7001980C AFAD0010 */  sw    $t5, 0x10($sp)
/* 01A410 70019810 00002025 */  move  $a0, $zero
/* 01A414 70019814 00002825 */  move  $a1, $zero
/* 01A418 70019818 02C03025 */  move  $a2, $s6
/* 01A41C 7001981C 0C003AD4 */  jal   alHeapDBAlloc
/* 01A420 70019820 03C03825 */   move  $a3, $fp
/* 01A424 70019824 8E0E0020 */  lw    $t6, 0x20($s0)
/* 01A428 70019828 26310001 */  addiu $s1, $s1, 1
/* 01A42C 7001982C 3239FFFF */  andi  $t9, $s1, 0xffff
/* 01A430 70019830 ADC20028 */  sw    $v0, 0x28($t6)
/* 01A434 70019834 8E180020 */  lw    $t8, 0x20($s0)
/* 01A438 70019838 8E4F0000 */  lw    $t7, ($s2)
/* 01A43C 7001983C 03208825 */  move  $s1, $t9
/* 01A440 70019840 A70F0000 */  sh    $t7, ($t8)
/* 01A444 70019844 0C0064F8 */  jal   init_lpfilter
/* 01A448 70019848 8E040020 */   lw    $a0, 0x20($s0)
/* 01A44C 7001984C 10000006 */  b     .L70019868
/* 01A450 70019850 92AA0024 */   lbu   $t2, 0x24($s5)
.L70019854:
/* 01A454 70019854 26310001 */  addiu $s1, $s1, 1
/* 01A458 70019858 3228FFFF */  andi  $t0, $s1, 0xffff
/* 01A45C 7001985C AE000020 */  sw    $zero, 0x20($s0)
/* 01A460 70019860 01008825 */  move  $s1, $t0
/* 01A464 70019864 92AA0024 */  lbu   $t2, 0x24($s5)
.L70019868:
/* 01A468 70019868 26940001 */  addiu $s4, $s4, 1
/* 01A46C 7001986C 3289FFFF */  andi  $t1, $s4, 0xffff
/* 01A470 70019870 012A082A */  slt   $at, $t1, $t2
/* 01A474 70019874 1420FF6D */  bnez  $at, .L7001962C
/* 01A478 70019878 0120A025 */   move  $s4, $t1
.L7001987C:
/* 01A47C 7001987C 8FBF0064 */  lw    $ra, 0x64($sp)
/* 01A480 70019880 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 01A484 70019884 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 01A488 70019888 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 01A48C 7001988C D7BA0038 */  ldc1  $f26, 0x38($sp)
/* 01A490 70019890 8FB00040 */  lw    $s0, 0x40($sp)
/* 01A494 70019894 8FB10044 */  lw    $s1, 0x44($sp)
/* 01A498 70019898 8FB20048 */  lw    $s2, 0x48($sp)
/* 01A49C 7001989C 8FB3004C */  lw    $s3, 0x4c($sp)
/* 01A4A0 700198A0 8FB40050 */  lw    $s4, 0x50($sp)
/* 01A4A4 700198A4 8FB50054 */  lw    $s5, 0x54($sp)
/* 01A4A8 700198A8 8FB60058 */  lw    $s6, 0x58($sp)
/* 01A4AC 700198AC 8FB7005C */  lw    $s7, 0x5c($sp)
/* 01A4B0 700198B0 8FBE0060 */  lw    $fp, 0x60($sp)
/* 01A4B4 700198B4 03E00008 */  jr    $ra
/* 01A4B8 700198B8 27BD0068 */   addiu $sp, $sp, 0x68



.section .data
glabel SMALLROOM_PARAMS
.word          3,     0xFA0,         0,     0x870,    0x2666,0xFFFFD99A,         0,         0
.word          0,         0,     0x2F8,     0x5F0,     0xCCC,0xFFFFF334,    0x3FFF,         0
.word          0,         0,         0,     0x960,    0x1388,         0,         0,         0
.word          0,    0x5000
glabel BIGROOM_PARAMS
.word          4,     0xFA0,         0,     0xA50,    0x2666,0xFFFFD99A,         0,         0
.word          0,         0,     0x370,     0x870,     0xCCC,0xFFFFF334,    0x3FFF,         0
.word          0,         0,     0xA50,     0xE38,     0xCCC,0xFFFFF334,    0x3FFF,         0
.word          0,         0,         0,     0xEB0,    0x1F40,         0,         0,         0
.word          0,    0x5000
glabel ECHO_PARAMS
.word          1,    0x1F40,         0,    0x1BF8,    0x2EE0,         0,    0x7FFF,         0
.word          0,         0
glabel CHORUS_PARAMS
.word          1,     0x320,         0,      0xC8,    0x4000,         0,    0x7FFF,    0x1DB0
.word      0x2BC,         0
glabel FLANGE_PARAMS
.word          1,     0x320,         0,      0xC8,         0,    0x5FFF,    0x7FFF,     0x17C
.word      0x1F4,         0
glabel NULL_PARAMS
.word          0,         0,         0,         0,         0,         0,         0,         0
.word          0,         0
.section .rodata
glabel jpt_80029830
.word .L70019528
.word .L70019534
.word .L7001954C
.word .L70019558
.word .L70019540
.word .L70019564
glabel F64_80029848
.double 173123.404906676