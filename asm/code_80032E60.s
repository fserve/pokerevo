.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80032E60
func_80032E60:
/* 80032E60 0002EAC0  4E 80 00 20 */	blr

.global func_80032E64
func_80032E64:
/* 80032E64 0002EAC4  A0 A4 00 00 */	lhz r5, 0(r4)
/* 80032E68 0002EAC8  38 04 00 08 */	addi r0, r4, 8
/* 80032E6C 0002EACC  38 C0 00 00 */	li r6, 0
/* 80032E70 0002EAD0  90 A3 00 00 */	stw r5, 0(r3)
/* 80032E74 0002EAD4  90 03 00 04 */	stw r0, 4(r3)
/* 80032E78 0002EAD8  48 00 00 34 */	b lbl_80032EAC
lbl_80032E7C:
/* 80032E7C 0002EADC  7C 04 02 14 */	add r0, r4, r0
/* 80032E80 0002EAE0  7C 05 31 2E */	stwx r0, r5, r6
/* 80032E84 0002EAE4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80032E88 0002EAE8  7C A5 30 2E */	lwzx r5, r5, r6
/* 80032E8C 0002EAEC  48 00 00 10 */	b lbl_80032E9C
lbl_80032E90:
/* 80032E90 0002EAF0  7C 04 02 14 */	add r0, r4, r0
/* 80032E94 0002EAF4  90 05 00 00 */	stw r0, 0(r5)
/* 80032E98 0002EAF8  38 A5 00 04 */	addi r5, r5, 4
lbl_80032E9C:
/* 80032E9C 0002EAFC  80 05 00 00 */	lwz r0, 0(r5)
/* 80032EA0 0002EB00  2C 00 00 00 */	cmpwi r0, 0
/* 80032EA4 0002EB04  40 82 FF EC */	bne lbl_80032E90
/* 80032EA8 0002EB08  38 C6 00 04 */	addi r6, r6, 4
lbl_80032EAC:
/* 80032EAC 0002EB0C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80032EB0 0002EB10  7C 05 30 2E */	lwzx r0, r5, r6
/* 80032EB4 0002EB14  2C 00 00 00 */	cmpwi r0, 0
/* 80032EB8 0002EB18  40 82 FF C4 */	bne lbl_80032E7C
/* 80032EBC 0002EB1C  4E 80 00 20 */	blr

.global func_80032EC0
func_80032EC0:
/* 80032EC0 0002EB20  2C 04 00 00 */	cmpwi r4, 0
/* 80032EC4 0002EB24  41 80 00 10 */	blt lbl_80032ED4
/* 80032EC8 0002EB28  80 03 00 00 */	lwz r0, 0(r3)
/* 80032ECC 0002EB2C  7C 04 00 40 */	cmplw r4, r0
/* 80032ED0 0002EB30  41 80 00 0C */	blt lbl_80032EDC
lbl_80032ED4:
/* 80032ED4 0002EB34  38 60 00 00 */	li r3, 0
/* 80032ED8 0002EB38  4E 80 00 20 */	blr
lbl_80032EDC:
/* 80032EDC 0002EB3C  80 63 00 04 */	lwz r3, 4(r3)
/* 80032EE0 0002EB40  54 80 10 3A */	slwi r0, r4, 2
/* 80032EE4 0002EB44  7C 63 00 2E */	lwzx r3, r3, r0
/* 80032EE8 0002EB48  4E 80 00 20 */	blr

.global func_80032EEC
func_80032EEC:
/* 80032EEC 0002EB4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80032EF0 0002EB50  7C 08 02 A6 */	mflr r0
/* 80032EF4 0002EB54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80032EF8 0002EB58  39 61 00 20 */	addi r11, r1, 0x20
/* 80032EFC 0002EB5C  48 19 42 2D */	bl _savegpr_27
/* 80032F00 0002EB60  7C BB 2B 78 */	mr r27, r5
/* 80032F04 0002EB64  7C DC 33 78 */	mr r28, r6
/* 80032F08 0002EB68  4B FF FF B9 */	bl func_80032EC0
/* 80032F0C 0002EB6C  2C 03 00 00 */	cmpwi r3, 0
/* 80032F10 0002EB70  40 82 00 0C */	bne lbl_80032F1C
/* 80032F14 0002EB74  38 60 00 00 */	li r3, 0
/* 80032F18 0002EB78  48 00 00 98 */	b lbl_80032FB0
lbl_80032F1C:
/* 80032F1C 0002EB7C  7C 7E 1B 78 */	mr r30, r3
/* 80032F20 0002EB80  48 00 00 80 */	b lbl_80032FA0
lbl_80032F24:
/* 80032F24 0002EB84  88 1D 00 00 */	lbz r0, 0(r29)
/* 80032F28 0002EB88  88 7D 00 01 */	lbz r3, 1(r29)
/* 80032F2C 0002EB8C  2C 00 00 02 */	cmpwi r0, 2
/* 80032F30 0002EB90  8B FD 00 02 */	lbz r31, 2(r29)
/* 80032F34 0002EB94  50 7F 44 2E */	rlwimi r31, r3, 8, 0x10, 0x17
/* 80032F38 0002EB98  41 82 00 2C */	beq lbl_80032F64
/* 80032F3C 0002EB9C  40 80 00 14 */	bge lbl_80032F50
/* 80032F40 0002EBA0  2C 00 00 00 */	cmpwi r0, 0
/* 80032F44 0002EBA4  41 82 00 58 */	beq lbl_80032F9C
/* 80032F48 0002EBA8  40 80 00 14 */	bge lbl_80032F5C
/* 80032F4C 0002EBAC  48 00 00 50 */	b lbl_80032F9C
lbl_80032F50:
/* 80032F50 0002EBB0  2C 00 00 04 */	cmpwi r0, 4
/* 80032F54 0002EBB4  40 80 00 48 */	bge lbl_80032F9C
/* 80032F58 0002EBB8  48 00 00 20 */	b lbl_80032F78
lbl_80032F5C:
/* 80032F5C 0002EBBC  38 7D 00 03 */	addi r3, r29, 3
/* 80032F60 0002EBC0  48 00 00 50 */	b lbl_80032FB0
lbl_80032F64:
/* 80032F64 0002EBC4  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 80032F68 0002EBC8  7C 00 D8 00 */	cmpw r0, r27
/* 80032F6C 0002EBCC  40 82 00 30 */	bne lbl_80032F9C
/* 80032F70 0002EBD0  38 7D 00 03 */	addi r3, r29, 3
/* 80032F74 0002EBD4  48 00 00 3C */	b lbl_80032FB0
lbl_80032F78:
/* 80032F78 0002EBD8  48 00 B1 E5 */	bl func_8003E15C
/* 80032F7C 0002EBDC  7F 84 E3 78 */	mr r4, r28
/* 80032F80 0002EBE0  57 E5 04 3E */	clrlwi r5, r31, 0x10
/* 80032F84 0002EBE4  48 00 B4 B1 */	bl func_8003E434
/* 80032F88 0002EBE8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80032F8C 0002EBEC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80032F90 0002EBF0  41 82 00 0C */	beq lbl_80032F9C
/* 80032F94 0002EBF4  38 7D 00 03 */	addi r3, r29, 3
/* 80032F98 0002EBF8  48 00 00 18 */	b lbl_80032FB0
lbl_80032F9C:
/* 80032F9C 0002EBFC  3B DE 00 04 */	addi r30, r30, 4
lbl_80032FA0:
/* 80032FA0 0002EC00  83 BE 00 00 */	lwz r29, 0(r30)
/* 80032FA4 0002EC04  2C 1D 00 00 */	cmpwi r29, 0
/* 80032FA8 0002EC08  40 82 FF 7C */	bne lbl_80032F24
/* 80032FAC 0002EC0C  38 60 00 00 */	li r3, 0
lbl_80032FB0:
/* 80032FB0 0002EC10  39 61 00 20 */	addi r11, r1, 0x20
/* 80032FB4 0002EC14  48 19 41 C1 */	bl _restgpr_27
/* 80032FB8 0002EC18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80032FBC 0002EC1C  7C 08 03 A6 */	mtlr r0
/* 80032FC0 0002EC20  38 21 00 20 */	addi r1, r1, 0x20
/* 80032FC4 0002EC24  4E 80 00 20 */	blr

.global func_80032FC8
func_80032FC8:
/* 80032FC8 0002EC28  38 A0 00 01 */	li r5, 1
/* 80032FCC 0002EC2C  38 6D 97 88 */	addi r3, r13, lbl_8063EA48-_SDA_BASE_
/* 80032FD0 0002EC30  38 80 00 04 */	li r4, 4
/* 80032FD4 0002EC34  38 00 00 00 */	li r0, 0
/* 80032FD8 0002EC38  98 AD 97 88 */	stb r5, lbl_8063EA48-_SDA_BASE_(r13)
/* 80032FDC 0002EC3C  B0 83 00 02 */	sth r4, 2(r3)
/* 80032FE0 0002EC40  98 03 00 04 */	stb r0, 4(r3)
/* 80032FE4 0002EC44  4E 80 00 20 */	blr