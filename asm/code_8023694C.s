.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_8023694C
func_8023694C:
/* 8023694C 002325AC  80 8D A4 30 */	lwz r4, lbl_8063F6F0-_SDA_BASE_(r13)
/* 80236950 002325B0  48 00 00 1C */	b lbl_8023696C
lbl_80236954:
/* 80236954 002325B4  88 04 00 04 */	lbz r0, 4(r4)
/* 80236958 002325B8  7C 00 18 40 */	cmplw r0, r3
/* 8023695C 002325BC  40 82 00 0C */	bne lbl_80236968
/* 80236960 002325C0  7C 83 23 78 */	mr r3, r4
/* 80236964 002325C4  4E 80 00 20 */	blr
lbl_80236968:
/* 80236968 002325C8  80 84 00 08 */	lwz r4, 8(r4)
lbl_8023696C:
/* 8023696C 002325CC  2C 04 00 00 */	cmpwi r4, 0
/* 80236970 002325D0  40 82 FF E4 */	bne lbl_80236954
/* 80236974 002325D4  38 60 00 00 */	li r3, 0
/* 80236978 002325D8  4E 80 00 20 */	blr

.global func_8023697C
func_8023697C:
/* 8023697C 002325DC  80 0D A4 30 */	lwz r0, lbl_8063F6F0-_SDA_BASE_(r13)
/* 80236980 002325E0  2C 00 00 00 */	cmpwi r0, 0
/* 80236984 002325E4  40 82 00 08 */	bne lbl_8023698C
/* 80236988 002325E8  90 6D A4 30 */	stw r3, lbl_8063F6F0-_SDA_BASE_(r13)
lbl_8023698C:
/* 8023698C 002325EC  80 8D A4 34 */	lwz r4, lbl_8063F6F4-_SDA_BASE_(r13)
/* 80236990 002325F0  2C 04 00 00 */	cmpwi r4, 0
/* 80236994 002325F4  41 82 00 08 */	beq lbl_8023699C
/* 80236998 002325F8  90 64 00 08 */	stw r3, 8(r4)
lbl_8023699C:
/* 8023699C 002325FC  90 6D A4 34 */	stw r3, lbl_8063F6F4-_SDA_BASE_(r13)
/* 802369A0 00232600  38 00 00 00 */	li r0, 0
/* 802369A4 00232604  90 03 00 08 */	stw r0, 8(r3)
/* 802369A8 00232608  4E 80 00 20 */	blr

.global func_802369AC
func_802369AC:
/* 802369AC 0023260C  80 8D A4 30 */	lwz r4, lbl_8063F6F0-_SDA_BASE_(r13)
/* 802369B0 00232610  7C 03 20 40 */	cmplw r3, r4
/* 802369B4 00232614  40 82 00 38 */	bne lbl_802369EC
/* 802369B8 00232618  80 0D A4 34 */	lwz r0, lbl_8063F6F4-_SDA_BASE_(r13)
/* 802369BC 0023261C  80 83 00 08 */	lwz r4, 8(r3)
/* 802369C0 00232620  7C 00 18 40 */	cmplw r0, r3
/* 802369C4 00232624  90 8D A4 30 */	stw r4, lbl_8063F6F0-_SDA_BASE_(r13)
/* 802369C8 00232628  40 82 00 48 */	bne lbl_80236A10
/* 802369CC 0023262C  38 00 00 00 */	li r0, 0
/* 802369D0 00232630  90 0D A4 34 */	stw r0, lbl_8063F6F4-_SDA_BASE_(r13)
/* 802369D4 00232634  48 00 00 3C */	b lbl_80236A10
/* 802369D8 00232638  48 00 00 14 */	b lbl_802369EC
lbl_802369DC:
/* 802369DC 0023263C  80 04 00 08 */	lwz r0, 8(r4)
/* 802369E0 00232640  7C 00 18 40 */	cmplw r0, r3
/* 802369E4 00232644  41 82 00 10 */	beq lbl_802369F4
/* 802369E8 00232648  7C 04 03 78 */	mr r4, r0
lbl_802369EC:
/* 802369EC 0023264C  2C 04 00 00 */	cmpwi r4, 0
/* 802369F0 00232650  40 82 FF EC */	bne lbl_802369DC
lbl_802369F4:
/* 802369F4 00232654  80 03 00 08 */	lwz r0, 8(r3)
/* 802369F8 00232658  90 04 00 08 */	stw r0, 8(r4)
/* 802369FC 0023265C  80 0D A4 34 */	lwz r0, lbl_8063F6F4-_SDA_BASE_(r13)
/* 80236A00 00232660  7C 00 18 40 */	cmplw r0, r3
/* 80236A04 00232664  40 82 00 0C */	bne lbl_80236A10
/* 80236A08 00232668  80 03 00 08 */	lwz r0, 8(r3)
/* 80236A0C 0023266C  90 0D A4 34 */	stw r0, lbl_8063F6F4-_SDA_BASE_(r13)
lbl_80236A10:
/* 80236A10 00232670  38 00 00 00 */	li r0, 0
/* 80236A14 00232674  90 03 00 08 */	stw r0, 8(r3)
/* 80236A18 00232678  4E 80 00 20 */	blr

.global func_80236A1C
func_80236A1C:
/* 80236A1C 0023267C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80236A20 00232680  7C 08 02 A6 */	mflr r0
/* 80236A24 00232684  3C A0 80 42 */	lis r5, lbl_80424658@ha
/* 80236A28 00232688  90 01 00 14 */	stw r0, 0x14(r1)
/* 80236A2C 0023268C  38 A5 46 58 */	addi r5, r5, lbl_80424658@l
/* 80236A30 00232690  38 00 00 00 */	li r0, 0
/* 80236A34 00232694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80236A38 00232698  7C 7F 1B 78 */	mr r31, r3
/* 80236A3C 0023269C  90 83 00 00 */	stw r4, 0(r3)
/* 80236A40 002326A0  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80236A44 002326A4  88 8D 86 90 */	lbz r4, lbl_8063D950-_SDA_BASE_(r13)
/* 80236A48 002326A8  98 83 00 04 */	stb r4, 4(r3)
/* 80236A4C 002326AC  38 84 00 01 */	addi r4, r4, 1
/* 80236A50 002326B0  98 8D 86 90 */	stb r4, lbl_8063D950-_SDA_BASE_(r13)
/* 80236A54 002326B4  90 03 00 08 */	stw r0, 8(r3)
/* 80236A58 002326B8  4B FF FF 25 */	bl func_8023697C
/* 80236A5C 002326BC  7F E3 FB 78 */	mr r3, r31
/* 80236A60 002326C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80236A64 002326C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80236A68 002326C8  7C 08 03 A6 */	mtlr r0
/* 80236A6C 002326CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80236A70 002326D0  4E 80 00 20 */	blr

.global func_80236A74
func_80236A74:
/* 80236A74 002326D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80236A78 002326D8  7C 08 02 A6 */	mflr r0
/* 80236A7C 002326DC  2C 03 00 00 */	cmpwi r3, 0
/* 80236A80 002326E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80236A84 002326E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80236A88 002326E8  7C 9F 23 78 */	mr r31, r4
/* 80236A8C 002326EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80236A90 002326F0  7C 7E 1B 78 */	mr r30, r3
/* 80236A94 002326F4  41 82 00 2C */	beq lbl_80236AC0
/* 80236A98 002326F8  3C 80 80 42 */	lis r4, lbl_80424658@ha
/* 80236A9C 002326FC  38 84 46 58 */	addi r4, r4, lbl_80424658@l
/* 80236AA0 00232700  90 83 00 0C */	stw r4, 0xc(r3)
/* 80236AA4 00232704  4B FF FB 75 */	bl func_80236618
/* 80236AA8 00232708  7F C3 F3 78 */	mr r3, r30
/* 80236AAC 0023270C  4B FF FF 01 */	bl func_802369AC
/* 80236AB0 00232710  2C 1F 00 00 */	cmpwi r31, 0
/* 80236AB4 00232714  40 81 00 0C */	ble lbl_80236AC0
/* 80236AB8 00232718  7F C3 F3 78 */	mr r3, r30
/* 80236ABC 0023271C  4B FA 3F FD */	bl func_801DAAB8
lbl_80236AC0:
/* 80236AC0 00232720  7F C3 F3 78 */	mr r3, r30
/* 80236AC4 00232724  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80236AC8 00232728  83 C1 00 08 */	lwz r30, 8(r1)
/* 80236ACC 0023272C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80236AD0 00232730  7C 08 03 A6 */	mtlr r0
/* 80236AD4 00232734  38 21 00 10 */	addi r1, r1, 0x10
/* 80236AD8 00232738  4E 80 00 20 */	blr
/* 80236ADC 0023273C  4E 80 00 20 */	blr
/* 80236AE0 00232740  4E 80 00 20 */	blr
/* 80236AE4 00232744  4E 80 00 20 */	blr

.global func_80236AE8
func_80236AE8:
/* 80236AE8 00232748  38 A0 00 01 */	li r5, 1
/* 80236AEC 0023274C  38 6D A4 28 */	addi r3, r13, lbl_8063F6E8-_SDA_BASE_
/* 80236AF0 00232750  38 80 00 04 */	li r4, 4
/* 80236AF4 00232754  38 00 00 00 */	li r0, 0
/* 80236AF8 00232758  98 AD A4 28 */	stb r5, lbl_8063F6E8-_SDA_BASE_(r13)
/* 80236AFC 0023275C  B0 83 00 02 */	sth r4, 2(r3)
/* 80236B00 00232760  98 03 00 04 */	stb r0, 4(r3)
/* 80236B04 00232764  4E 80 00 20 */	blr
