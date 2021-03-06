.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

bta_dm_sm_execute:
/* 802C0498 002BC0F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C049C 002BC0FC  7C 08 02 A6 */	mflr r0
/* 802C04A0 002BC100  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C04A4 002BC104  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C04A8 002BC108  3F E0 80 40 */	lis r31, lbl_803FDC08@ha
/* 802C04AC 002BC10C  3B FF DC 08 */	addi r31, r31, lbl_803FDC08@l
/* 802C04B0 002BC110  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C04B4 002BC114  3F C0 80 40 */	lis r30, lbl_803FDC3C@ha
/* 802C04B8 002BC118  3B DE DC 3C */	addi r30, r30, lbl_803FDC3C@l
/* 802C04BC 002BC11C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C04C0 002BC120  3B A0 00 00 */	li r29, 0
/* 802C04C4 002BC124  93 81 00 10 */	stw r28, 0x10(r1)
/* 802C04C8 002BC128  7C 7C 1B 78 */	mr r28, r3
lbl_802C04CC:
/* 802C04CC 002BC12C  A0 7C 00 00 */	lhz r3, 0(r28)
/* 802C04D0 002BC130  7C 1D F2 14 */	add r0, r29, r30
/* 802C04D4 002BC134  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 802C04D8 002BC138  54 63 15 BA */	rlwinm r3, r3, 2, 0x16, 0x1d
/* 802C04DC 002BC13C  7C 64 18 50 */	subf r3, r4, r3
/* 802C04E0 002BC140  7C 03 00 AE */	lbzx r0, r3, r0
/* 802C04E4 002BC144  28 00 00 0D */	cmplwi r0, 0xd
/* 802C04E8 002BC148  41 82 00 24 */	beq lbl_802C050C
/* 802C04EC 002BC14C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802C04F0 002BC150  7F 83 E3 78 */	mr r3, r28
/* 802C04F4 002BC154  7D 9F 00 2E */	lwzx r12, r31, r0
/* 802C04F8 002BC158  7D 89 03 A6 */	mtctr r12
/* 802C04FC 002BC15C  4E 80 04 21 */	bctrl
/* 802C0500 002BC160  3B BD 00 01 */	addi r29, r29, 1
/* 802C0504 002BC164  2C 1D 00 02 */	cmpwi r29, 2
/* 802C0508 002BC168  41 80 FF C4 */	blt lbl_802C04CC
lbl_802C050C:
/* 802C050C 002BC16C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C0510 002BC170  38 60 00 01 */	li r3, 1
/* 802C0514 002BC174  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C0518 002BC178  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C051C 002BC17C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802C0520 002BC180  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C0524 002BC184  7C 08 03 A6 */	mtlr r0
/* 802C0528 002BC188  38 21 00 20 */	addi r1, r1, 0x20
/* 802C052C 002BC18C  4E 80 00 20 */	blr

bta_dm_search_sm_execute:
/* 802C0530 002BC190  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0534 002BC194  7C 08 02 A6 */	mflr r0
/* 802C0538 002BC198  3C E0 80 57 */	lis r7, lbl_80568798@ha
/* 802C053C 002BC19C  3C A0 80 40 */	lis r5, lbl_803FDD20@ha
/* 802C0540 002BC1A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0544 002BC1A4  38 E7 87 98 */	addi r7, r7, lbl_80568798@l
/* 802C0548 002BC1A8  38 A5 DD 20 */	addi r5, r5, lbl_803FDD20@l
/* 802C054C 002BC1AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C0550 002BC1B0  3F E0 80 40 */	lis r31, lbl_803FDC68@ha
/* 802C0554 002BC1B4  3B FF DC 68 */	addi r31, r31, lbl_803FDC68@l
/* 802C0558 002BC1B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C055C 002BC1BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C0560 002BC1C0  3B A0 00 00 */	li r29, 0
/* 802C0564 002BC1C4  93 81 00 10 */	stw r28, 0x10(r1)
/* 802C0568 002BC1C8  7C 7C 1B 78 */	mr r28, r3
/* 802C056C 002BC1CC  A0 C7 00 18 */	lhz r6, 0x18(r7)
/* 802C0570 002BC1D0  A0 03 00 00 */	lhz r0, 0(r3)
/* 802C0574 002BC1D4  54 C6 10 3A */	slwi r6, r6, 2
/* 802C0578 002BC1D8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802C057C 002BC1DC  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802C0580 002BC1E0  7F C5 30 2E */	lwzx r30, r5, r6
/* 802C0584 002BC1E4  7C 04 00 50 */	subf r0, r4, r0
/* 802C0588 002BC1E8  7C 7E 02 14 */	add r3, r30, r0
/* 802C058C 002BC1EC  88 03 00 02 */	lbz r0, 2(r3)
/* 802C0590 002BC1F0  B0 07 00 18 */	sth r0, 0x18(r7)
lbl_802C0594:
/* 802C0594 002BC1F4  A0 7C 00 00 */	lhz r3, 0(r28)
/* 802C0598 002BC1F8  7C 1D F2 14 */	add r0, r29, r30
/* 802C059C 002BC1FC  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 802C05A0 002BC200  54 63 15 BA */	rlwinm r3, r3, 2, 0x16, 0x1d
/* 802C05A4 002BC204  7C 64 18 50 */	subf r3, r4, r3
/* 802C05A8 002BC208  7C 03 00 AE */	lbzx r0, r3, r0
/* 802C05AC 002BC20C  28 00 00 12 */	cmplwi r0, 0x12
/* 802C05B0 002BC210  41 82 00 24 */	beq lbl_802C05D4
/* 802C05B4 002BC214  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802C05B8 002BC218  7F 83 E3 78 */	mr r3, r28
/* 802C05BC 002BC21C  7D 9F 00 2E */	lwzx r12, r31, r0
/* 802C05C0 002BC220  7D 89 03 A6 */	mtctr r12
/* 802C05C4 002BC224  4E 80 04 21 */	bctrl
/* 802C05C8 002BC228  3B BD 00 01 */	addi r29, r29, 1
/* 802C05CC 002BC22C  2C 1D 00 02 */	cmpwi r29, 2
/* 802C05D0 002BC230  41 80 FF C4 */	blt lbl_802C0594
lbl_802C05D4:
/* 802C05D4 002BC234  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C05D8 002BC238  38 60 00 01 */	li r3, 1
/* 802C05DC 002BC23C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C05E0 002BC240  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C05E4 002BC244  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802C05E8 002BC248  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C05EC 002BC24C  7C 08 03 A6 */	mtlr r0
/* 802C05F0 002BC250  38 21 00 20 */	addi r1, r1, 0x20
/* 802C05F4 002BC254  4E 80 00 20 */	blr
