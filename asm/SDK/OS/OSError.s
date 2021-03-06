.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global OSPanic
OSPanic:
/* 8026B49C 002670FC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8026B4A0 00267100  7C 08 02 A6 */	mflr r0
/* 8026B4A4 00267104  90 01 00 94 */	stw r0, 0x94(r1)
/* 8026B4A8 00267108  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8026B4AC 0026710C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8026B4B0 00267110  7C 9E 23 78 */	mr r30, r4
/* 8026B4B4 00267114  93 A1 00 84 */	stw r29, 0x84(r1)
/* 8026B4B8 00267118  7C BD 2B 78 */	mr r29, r5
/* 8026B4BC 0026711C  93 81 00 80 */	stw r28, 0x80(r1)
/* 8026B4C0 00267120  7C 7C 1B 78 */	mr r28, r3
/* 8026B4C4 00267124  40 86 00 24 */	bne cr1, lbl_8026B4E8
/* 8026B4C8 00267128  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8026B4CC 0026712C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8026B4D0 00267130  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8026B4D4 00267134  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8026B4D8 00267138  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8026B4DC 0026713C  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8026B4E0 00267140  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8026B4E4 00267144  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8026B4E8:
/* 8026B4E8 00267148  3F E0 80 42 */	lis r31, lbl_80426E78@ha
/* 8026B4EC 0026714C  90 61 00 08 */	stw r3, 8(r1)
/* 8026B4F0 00267150  3B FF 6E 78 */	addi r31, r31, lbl_80426E78@l
/* 8026B4F4 00267154  90 81 00 0C */	stw r4, 0xc(r1)
/* 8026B4F8 00267158  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8026B4FC 0026715C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8026B500 00267160  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8026B504 00267164  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8026B508 00267168  91 21 00 20 */	stw r9, 0x20(r1)
/* 8026B50C 0026716C  91 41 00 24 */	stw r10, 0x24(r1)
/* 8026B510 00267170  48 00 32 4D */	bl OSDisableInterrupts
/* 8026B514 00267174  38 A1 00 98 */	addi r5, r1, 0x98
/* 8026B518 00267178  38 01 00 08 */	addi r0, r1, 8
/* 8026B51C 0026717C  3C 60 03 00 */	lis r3, 0x300
/* 8026B520 00267180  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 8026B524 00267184  38 81 00 68 */	addi r4, r1, 0x68
/* 8026B528 00267188  90 61 00 68 */	stw r3, 0x68(r1)
/* 8026B52C 0026718C  7F A3 EB 78 */	mr r3, r29
/* 8026B530 00267190  90 01 00 70 */	stw r0, 0x70(r1)
/* 8026B534 00267194  4B F6 13 F9 */	bl vprintf
/* 8026B538 00267198  7F 84 E3 78 */	mr r4, r28
/* 8026B53C 0026719C  7F C5 F3 78 */	mr r5, r30
/* 8026B540 002671A0  38 7F 00 00 */	addi r3, r31, 0
/* 8026B544 002671A4  4C C6 31 82 */	crclr 6
/* 8026B548 002671A8  4B D9 C5 7D */	bl OSReport
/* 8026B54C 002671AC  38 7F 00 18 */	addi r3, r31, 0x18
/* 8026B550 002671B0  4C C6 31 82 */	crclr 6
/* 8026B554 002671B4  4B D9 C5 71 */	bl OSReport
/* 8026B558 002671B8  3B C0 00 00 */	li r30, 0
/* 8026B55C 002671BC  4B FF FA CD */	bl OSGetStackPointer
/* 8026B560 002671C0  7C 7D 1B 78 */	mr r29, r3
/* 8026B564 002671C4  48 00 00 20 */	b lbl_8026B584
lbl_8026B568:
/* 8026B568 002671C8  80 BD 00 00 */	lwz r5, 0(r29)
/* 8026B56C 002671CC  7F A4 EB 78 */	mr r4, r29
/* 8026B570 002671D0  80 DD 00 04 */	lwz r6, 4(r29)
/* 8026B574 002671D4  38 7F 00 40 */	addi r3, r31, 0x40
/* 8026B578 002671D8  4C C6 31 82 */	crclr 6
/* 8026B57C 002671DC  4B D9 C5 49 */	bl OSReport
/* 8026B580 002671E0  83 BD 00 00 */	lwz r29, 0(r29)
lbl_8026B584:
/* 8026B584 002671E4  2C 1D 00 00 */	cmpwi r29, 0
/* 8026B588 002671E8  41 82 00 1C */	beq lbl_8026B5A4
/* 8026B58C 002671EC  3C 1D 00 01 */	addis r0, r29, 1
/* 8026B590 002671F0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8026B594 002671F4  41 82 00 10 */	beq lbl_8026B5A4
/* 8026B598 002671F8  28 1E 00 10 */	cmplwi r30, 0x10
/* 8026B59C 002671FC  3B DE 00 01 */	addi r30, r30, 1
/* 8026B5A0 00267200  41 80 FF C8 */	blt lbl_8026B568
lbl_8026B5A4:
/* 8026B5A4 00267204  4B FF CC C5 */	bl PPCHalt
/* 8026B5A8 00267208  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8026B5AC 0026720C  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8026B5B0 00267210  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8026B5B4 00267214  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 8026B5B8 00267218  83 81 00 80 */	lwz r28, 0x80(r1)
/* 8026B5BC 0026721C  7C 08 03 A6 */	mtlr r0
/* 8026B5C0 00267220  38 21 00 90 */	addi r1, r1, 0x90
/* 8026B5C4 00267224  4E 80 00 20 */	blr

.global OSSetErrorHandler
OSSetErrorHandler:
/* 8026B5C8 00267228  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026B5CC 0026722C  7C 08 02 A6 */	mflr r0
/* 8026B5D0 00267230  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026B5D4 00267234  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026B5D8 00267238  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026B5DC 0026723C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8026B5E0 00267240  7C 7D 1B 78 */	mr r29, r3
/* 8026B5E4 00267244  93 81 00 10 */	stw r28, 0x10(r1)
/* 8026B5E8 00267248  7C 9C 23 78 */	mr r28, r4
/* 8026B5EC 0026724C  48 00 31 71 */	bl OSDisableInterrupts
/* 8026B5F0 00267250  3C 80 80 50 */	lis r4, lbl_80503CF0@ha
/* 8026B5F4 00267254  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 8026B5F8 00267258  38 84 3C F0 */	addi r4, r4, lbl_80503CF0@l
/* 8026B5FC 0026725C  28 1D 00 10 */	cmplwi r29, 0x10
/* 8026B600 00267260  7F C4 00 2E */	lwzx r30, r4, r0
/* 8026B604 00267264  7C 7D 1B 78 */	mr r29, r3
/* 8026B608 00267268  7F 84 01 2E */	stwx r28, r4, r0
/* 8026B60C 0026726C  40 82 02 18 */	bne lbl_8026B824
/* 8026B610 00267270  4B FF CC 19 */	bl PPCMfmsr
/* 8026B614 00267274  7C 7F 1B 78 */	mr r31, r3
/* 8026B618 00267278  60 63 20 00 */	ori r3, r3, 0x2000
/* 8026B61C 0026727C  4B FF CC 15 */	bl PPCMtmsr
/* 8026B620 00267280  4B FF CC 8D */	bl PPCMffpscr
/* 8026B624 00267284  2C 1C 00 00 */	cmpwi r28, 0
/* 8026B628 00267288  41 82 01 98 */	beq lbl_8026B7C0
/* 8026B62C 0026728C  3C A0 80 00 */	lis r5, 0x800000DC@ha
/* 8026B630 00267290  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 8026B634 00267294  81 25 00 DC */	lwz r9, 0x800000DC@l(r5)
/* 8026B638 00267298  38 A4 F8 FF */	addi r5, r4, 0x6005F8FF@l
/* 8026B63C 0026729C  39 00 FF FF */	li r8, -1
/* 8026B640 002672A0  38 E0 00 04 */	li r7, 4
/* 8026B644 002672A4  38 00 00 02 */	li r0, 2
/* 8026B648 002672A8  48 00 01 5C */	b lbl_8026B7A4
lbl_8026B64C:
/* 8026B64C 002672AC  80 89 01 9C */	lwz r4, 0x19c(r9)
/* 8026B650 002672B0  60 84 09 00 */	ori r4, r4, 0x900
/* 8026B654 002672B4  90 89 01 9C */	stw r4, 0x19c(r9)
/* 8026B658 002672B8  A0 C9 01 A2 */	lhz r6, 0x1a2(r9)
/* 8026B65C 002672BC  54 C4 07 FF */	clrlwi. r4, r6, 0x1f
/* 8026B660 002672C0  40 82 01 28 */	bne lbl_8026B788
/* 8026B664 002672C4  60 C4 00 01 */	ori r4, r6, 1
/* 8026B668 002672C8  38 C9 00 90 */	addi r6, r9, 0x90
/* 8026B66C 002672CC  B0 89 01 A2 */	sth r4, 0x1a2(r9)
/* 8026B670 002672D0  38 89 01 C8 */	addi r4, r9, 0x1c8
/* 8026B674 002672D4  7C 09 03 A6 */	mtctr r0
lbl_8026B678:
/* 8026B678 002672D8  91 06 00 04 */	stw r8, 4(r6)
/* 8026B67C 002672DC  91 06 00 00 */	stw r8, 0(r6)
/* 8026B680 002672E0  91 04 00 04 */	stw r8, 4(r4)
/* 8026B684 002672E4  91 04 00 00 */	stw r8, 0(r4)
/* 8026B688 002672E8  91 06 00 0C */	stw r8, 0xc(r6)
/* 8026B68C 002672EC  91 06 00 08 */	stw r8, 8(r6)
/* 8026B690 002672F0  91 04 00 0C */	stw r8, 0xc(r4)
/* 8026B694 002672F4  91 04 00 08 */	stw r8, 8(r4)
/* 8026B698 002672F8  91 06 00 14 */	stw r8, 0x14(r6)
/* 8026B69C 002672FC  91 06 00 10 */	stw r8, 0x10(r6)
/* 8026B6A0 00267300  91 04 00 14 */	stw r8, 0x14(r4)
/* 8026B6A4 00267304  91 04 00 10 */	stw r8, 0x10(r4)
/* 8026B6A8 00267308  91 06 00 1C */	stw r8, 0x1c(r6)
/* 8026B6AC 0026730C  91 06 00 18 */	stw r8, 0x18(r6)
/* 8026B6B0 00267310  91 04 00 1C */	stw r8, 0x1c(r4)
/* 8026B6B4 00267314  91 04 00 18 */	stw r8, 0x18(r4)
/* 8026B6B8 00267318  91 06 00 24 */	stw r8, 0x24(r6)
/* 8026B6BC 0026731C  91 06 00 20 */	stw r8, 0x20(r6)
/* 8026B6C0 00267320  91 04 00 24 */	stw r8, 0x24(r4)
/* 8026B6C4 00267324  91 04 00 20 */	stw r8, 0x20(r4)
/* 8026B6C8 00267328  91 06 00 2C */	stw r8, 0x2c(r6)
/* 8026B6CC 0026732C  91 06 00 28 */	stw r8, 0x28(r6)
/* 8026B6D0 00267330  91 04 00 2C */	stw r8, 0x2c(r4)
/* 8026B6D4 00267334  91 04 00 28 */	stw r8, 0x28(r4)
/* 8026B6D8 00267338  91 06 00 34 */	stw r8, 0x34(r6)
/* 8026B6DC 0026733C  91 06 00 30 */	stw r8, 0x30(r6)
/* 8026B6E0 00267340  91 04 00 34 */	stw r8, 0x34(r4)
/* 8026B6E4 00267344  91 04 00 30 */	stw r8, 0x30(r4)
/* 8026B6E8 00267348  91 06 00 3C */	stw r8, 0x3c(r6)
/* 8026B6EC 0026734C  91 06 00 38 */	stw r8, 0x38(r6)
/* 8026B6F0 00267350  91 04 00 3C */	stw r8, 0x3c(r4)
/* 8026B6F4 00267354  91 04 00 38 */	stw r8, 0x38(r4)
/* 8026B6F8 00267358  91 06 00 44 */	stw r8, 0x44(r6)
/* 8026B6FC 0026735C  91 06 00 40 */	stw r8, 0x40(r6)
/* 8026B700 00267360  91 04 00 44 */	stw r8, 0x44(r4)
/* 8026B704 00267364  91 04 00 40 */	stw r8, 0x40(r4)
/* 8026B708 00267368  91 06 00 4C */	stw r8, 0x4c(r6)
/* 8026B70C 0026736C  91 06 00 48 */	stw r8, 0x48(r6)
/* 8026B710 00267370  91 04 00 4C */	stw r8, 0x4c(r4)
/* 8026B714 00267374  91 04 00 48 */	stw r8, 0x48(r4)
/* 8026B718 00267378  91 06 00 54 */	stw r8, 0x54(r6)
/* 8026B71C 0026737C  91 06 00 50 */	stw r8, 0x50(r6)
/* 8026B720 00267380  91 04 00 54 */	stw r8, 0x54(r4)
/* 8026B724 00267384  91 04 00 50 */	stw r8, 0x50(r4)
/* 8026B728 00267388  91 06 00 5C */	stw r8, 0x5c(r6)
/* 8026B72C 0026738C  91 06 00 58 */	stw r8, 0x58(r6)
/* 8026B730 00267390  91 04 00 5C */	stw r8, 0x5c(r4)
/* 8026B734 00267394  91 04 00 58 */	stw r8, 0x58(r4)
/* 8026B738 00267398  91 06 00 64 */	stw r8, 0x64(r6)
/* 8026B73C 0026739C  91 06 00 60 */	stw r8, 0x60(r6)
/* 8026B740 002673A0  91 04 00 64 */	stw r8, 0x64(r4)
/* 8026B744 002673A4  91 04 00 60 */	stw r8, 0x60(r4)
/* 8026B748 002673A8  91 06 00 6C */	stw r8, 0x6c(r6)
/* 8026B74C 002673AC  91 06 00 68 */	stw r8, 0x68(r6)
/* 8026B750 002673B0  91 04 00 6C */	stw r8, 0x6c(r4)
/* 8026B754 002673B4  91 04 00 68 */	stw r8, 0x68(r4)
/* 8026B758 002673B8  91 06 00 74 */	stw r8, 0x74(r6)
/* 8026B75C 002673BC  91 06 00 70 */	stw r8, 0x70(r6)
/* 8026B760 002673C0  91 04 00 74 */	stw r8, 0x74(r4)
/* 8026B764 002673C4  91 04 00 70 */	stw r8, 0x70(r4)
/* 8026B768 002673C8  91 06 00 7C */	stw r8, 0x7c(r6)
/* 8026B76C 002673CC  91 06 00 78 */	stw r8, 0x78(r6)
/* 8026B770 002673D0  38 C6 00 80 */	addi r6, r6, 0x80
/* 8026B774 002673D4  91 04 00 7C */	stw r8, 0x7c(r4)
/* 8026B778 002673D8  91 04 00 78 */	stw r8, 0x78(r4)
/* 8026B77C 002673DC  38 84 00 80 */	addi r4, r4, 0x80
/* 8026B780 002673E0  42 00 FE F8 */	bdnz lbl_8026B678
/* 8026B784 002673E4  90 E9 01 94 */	stw r7, 0x194(r9)
lbl_8026B788:
/* 8026B788 002673E8  80 8D 87 B8 */	lwz r4, lbl_8063DA78-_SDA_BASE_(r13)
/* 8026B78C 002673EC  80 C9 01 94 */	lwz r6, 0x194(r9)
/* 8026B790 002673F0  54 84 06 38 */	rlwinm r4, r4, 0, 0x18, 0x1c
/* 8026B794 002673F4  7C C4 23 78 */	or r4, r6, r4
/* 8026B798 002673F8  7C 84 28 38 */	and r4, r4, r5
/* 8026B79C 002673FC  90 89 01 94 */	stw r4, 0x194(r9)
/* 8026B7A0 00267400  81 29 02 FC */	lwz r9, 0x2fc(r9)
lbl_8026B7A4:
/* 8026B7A4 00267404  2C 09 00 00 */	cmpwi r9, 0
/* 8026B7A8 00267408  40 82 FE A4 */	bne lbl_8026B64C
/* 8026B7AC 0026740C  80 0D 87 B8 */	lwz r0, lbl_8063DA78-_SDA_BASE_(r13)
/* 8026B7B0 00267410  63 FF 09 00 */	ori r31, r31, 0x900
/* 8026B7B4 00267414  54 00 06 38 */	rlwinm r0, r0, 0, 0x18, 0x1c
/* 8026B7B8 00267418  7C 64 03 78 */	or r4, r3, r0
/* 8026B7BC 0026741C  48 00 00 50 */	b lbl_8026B80C
lbl_8026B7C0:
/* 8026B7C0 00267420  3C A0 80 00 */	lis r5, 0x800000DC@ha
/* 8026B7C4 00267424  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 8026B7C8 00267428  80 C5 00 DC */	lwz r6, 0x800000DC@l(r5)
/* 8026B7CC 0026742C  38 84 F8 FF */	addi r4, r4, 0x6005F8FF@l
/* 8026B7D0 00267430  38 A0 F6 FF */	li r5, -2305
/* 8026B7D4 00267434  48 00 00 24 */	b lbl_8026B7F8
lbl_8026B7D8:
/* 8026B7D8 00267438  80 06 01 9C */	lwz r0, 0x19c(r6)
/* 8026B7DC 0026743C  7C 00 28 38 */	and r0, r0, r5
/* 8026B7E0 00267440  90 06 01 9C */	stw r0, 0x19c(r6)
/* 8026B7E4 00267444  80 06 01 94 */	lwz r0, 0x194(r6)
/* 8026B7E8 00267448  54 00 07 6E */	rlwinm r0, r0, 0, 0x1d, 0x17
/* 8026B7EC 0026744C  7C 00 20 38 */	and r0, r0, r4
/* 8026B7F0 00267450  90 06 01 94 */	stw r0, 0x194(r6)
/* 8026B7F4 00267454  80 C6 02 FC */	lwz r6, 0x2fc(r6)
lbl_8026B7F8:
/* 8026B7F8 00267458  2C 06 00 00 */	cmpwi r6, 0
/* 8026B7FC 0026745C  40 82 FF DC */	bne lbl_8026B7D8
/* 8026B800 00267460  38 00 F6 FF */	li r0, -2305
/* 8026B804 00267464  54 64 07 6E */	rlwinm r4, r3, 0, 0x1d, 0x17
/* 8026B808 00267468  7F FF 00 38 */	and r31, r31, r0
lbl_8026B80C:
/* 8026B80C 0026746C  3C 60 60 06 */	lis r3, 0x6005F8FF@ha
/* 8026B810 00267470  38 03 F8 FF */	addi r0, r3, 0x6005F8FF@l
/* 8026B814 00267474  7C 83 00 38 */	and r3, r4, r0
/* 8026B818 00267478  4B FF CA B5 */	bl PPCMtfpscr
/* 8026B81C 0026747C  7F E3 FB 78 */	mr r3, r31
/* 8026B820 00267480  4B FF CA 11 */	bl PPCMtmsr
lbl_8026B824:
/* 8026B824 00267484  7F A3 EB 78 */	mr r3, r29
/* 8026B828 00267488  48 00 2F 5D */	bl OSRestoreInterrupts
/* 8026B82C 0026748C  7F C3 F3 78 */	mr r3, r30
/* 8026B830 00267490  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026B834 00267494  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026B838 00267498  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8026B83C 0026749C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8026B840 002674A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026B844 002674A4  7C 08 03 A6 */	mtlr r0
/* 8026B848 002674A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8026B84C 002674AC  4E 80 00 20 */	blr

.global __OSUnhandledException
__OSUnhandledException:
/* 8026B850 002674B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026B854 002674B4  7C 08 02 A6 */	mflr r0
/* 8026B858 002674B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026B85C 002674BC  39 61 00 30 */	addi r11, r1, 0x30
/* 8026B860 002674C0  4B F5 B8 B9 */	bl _savegpr_23
/* 8026B864 002674C4  3F E0 80 42 */	lis r31, lbl_80426E78@ha
/* 8026B868 002674C8  7C 79 1B 78 */	mr r25, r3
/* 8026B86C 002674CC  7C 9A 23 78 */	mr r26, r4
/* 8026B870 002674D0  7C BB 2B 78 */	mr r27, r5
/* 8026B874 002674D4  7C DC 33 78 */	mr r28, r6
/* 8026B878 002674D8  3B FF 6E 78 */	addi r31, r31, lbl_80426E78@l
/* 8026B87C 002674DC  48 00 6F 3D */	bl OSGetTime
/* 8026B880 002674E0  80 BA 01 9C */	lwz r5, 0x19c(r26)
/* 8026B884 002674E4  7C 9D 23 78 */	mr r29, r4
/* 8026B888 002674E8  7C 7E 1B 78 */	mr r30, r3
/* 8026B88C 002674EC  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 8026B890 002674F0  40 82 00 18 */	bne lbl_8026B8A8
/* 8026B894 002674F4  7F 24 CB 78 */	mr r4, r25
/* 8026B898 002674F8  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8026B89C 002674FC  4C C6 31 82 */	crclr 6
/* 8026B8A0 00267500  4B D9 C2 25 */	bl OSReport
/* 8026B8A4 00267504  48 00 01 60 */	b lbl_8026BA04
lbl_8026B8A8:
/* 8026B8A8 00267508  28 19 00 06 */	cmplwi r25, 6
/* 8026B8AC 0026750C  40 82 00 EC */	bne lbl_8026B998
/* 8026B8B0 00267510  54 A0 02 D7 */	rlwinm. r0, r5, 0, 0xb, 0xb
/* 8026B8B4 00267514  41 82 00 E4 */	beq lbl_8026B998
/* 8026B8B8 00267518  3C 60 80 50 */	lis r3, lbl_80503CF0@ha
/* 8026B8BC 0026751C  38 63 3C F0 */	addi r3, r3, lbl_80503CF0@l
/* 8026B8C0 00267520  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8026B8C4 00267524  2C 00 00 00 */	cmpwi r0, 0
/* 8026B8C8 00267528  41 82 00 D0 */	beq lbl_8026B998
/* 8026B8CC 0026752C  3B 20 00 10 */	li r25, 0x10
/* 8026B8D0 00267530  4B FF C9 59 */	bl PPCMfmsr
/* 8026B8D4 00267534  7C 77 1B 78 */	mr r23, r3
/* 8026B8D8 00267538  60 63 20 00 */	ori r3, r3, 0x2000
/* 8026B8DC 0026753C  4B FF C9 55 */	bl PPCMtmsr
/* 8026B8E0 00267540  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 8026B8E4 00267544  80 63 00 D8 */	lwz r3, 0x800000D8@l(r3)
/* 8026B8E8 00267548  2C 03 00 00 */	cmpwi r3, 0
/* 8026B8EC 0026754C  41 82 00 08 */	beq lbl_8026B8F4
/* 8026B8F0 00267550  4B FF F5 71 */	bl OSSaveFPUContext
lbl_8026B8F4:
/* 8026B8F4 00267554  4B FF C9 B9 */	bl PPCMffpscr
/* 8026B8F8 00267558  3F 00 60 06 */	lis r24, 0x6005F8FF@ha
/* 8026B8FC 0026755C  38 18 F8 FF */	addi r0, r24, 0x6005F8FF@l
/* 8026B900 00267560  7C 63 00 38 */	and r3, r3, r0
/* 8026B904 00267564  4B FF C9 C9 */	bl PPCMtfpscr
/* 8026B908 00267568  7E E3 BB 78 */	mr r3, r23
/* 8026B90C 0026756C  4B FF C9 25 */	bl PPCMtmsr
/* 8026B910 00267570  3E E0 80 00 */	lis r23, 0x800000D8@ha
/* 8026B914 00267574  80 17 00 D8 */	lwz r0, 0x800000D8@l(r23)
/* 8026B918 00267578  7C 00 D0 40 */	cmplw r0, r26
/* 8026B91C 0026757C  40 82 00 60 */	bne lbl_8026B97C
/* 8026B920 00267580  48 00 5A 25 */	bl OSDisableScheduler
/* 8026B924 00267584  7F 44 D3 78 */	mr r4, r26
/* 8026B928 00267588  7F 65 DB 78 */	mr r5, r27
/* 8026B92C 0026758C  7F 86 E3 78 */	mr r6, r28
/* 8026B930 00267590  38 60 00 10 */	li r3, 0x10
/* 8026B934 00267594  4C C6 31 82 */	crclr 6
/* 8026B938 00267598  3C E0 80 50 */	lis r7, lbl_80503CF0@ha
/* 8026B93C 0026759C  38 E7 3C F0 */	addi r7, r7, lbl_80503CF0@l
/* 8026B940 002675A0  81 87 00 40 */	lwz r12, 0x40(r7)
/* 8026B944 002675A4  7D 89 03 A6 */	mtctr r12
/* 8026B948 002675A8  4E 80 04 21 */	bctrl
/* 8026B94C 002675AC  80 9A 01 9C */	lwz r4, 0x19c(r26)
/* 8026B950 002675B0  38 60 00 00 */	li r3, 0
/* 8026B954 002675B4  38 18 F8 FF */	addi r0, r24, -1793
/* 8026B958 002675B8  54 84 04 E2 */	rlwinm r4, r4, 0, 0x13, 0x11
/* 8026B95C 002675BC  90 9A 01 9C */	stw r4, 0x19c(r26)
/* 8026B960 002675C0  90 77 00 D8 */	stw r3, 0xd8(r23)
/* 8026B964 002675C4  80 7A 01 94 */	lwz r3, 0x194(r26)
/* 8026B968 002675C8  7C 60 00 38 */	and r0, r3, r0
/* 8026B96C 002675CC  90 1A 01 94 */	stw r0, 0x194(r26)
/* 8026B970 002675D0  48 00 5A 11 */	bl OSEnableScheduler
/* 8026B974 002675D4  48 00 5F 19 */	bl __OSReschedule
/* 8026B978 002675D8  48 00 00 18 */	b lbl_8026B990
lbl_8026B97C:
/* 8026B97C 002675DC  80 7A 01 9C */	lwz r3, 0x19c(r26)
/* 8026B980 002675E0  38 00 00 00 */	li r0, 0
/* 8026B984 002675E4  54 63 04 E2 */	rlwinm r3, r3, 0, 0x13, 0x11
/* 8026B988 002675E8  90 7A 01 9C */	stw r3, 0x19c(r26)
/* 8026B98C 002675EC  90 17 00 D8 */	stw r0, 0xd8(r23)
lbl_8026B990:
/* 8026B990 002675F0  7F 43 D3 78 */	mr r3, r26
/* 8026B994 002675F4  4B FF F5 BD */	bl OSLoadContext
lbl_8026B998:
/* 8026B998 002675F8  3F 00 80 50 */	lis r24, lbl_80503CF0@ha
/* 8026B99C 002675FC  57 37 15 BA */	rlwinm r23, r25, 2, 0x16, 0x1d
/* 8026B9A0 00267600  3B 18 3C F0 */	addi r24, r24, lbl_80503CF0@l
/* 8026B9A4 00267604  7C 18 B8 2E */	lwzx r0, r24, r23
/* 8026B9A8 00267608  2C 00 00 00 */	cmpwi r0, 0
/* 8026B9AC 0026760C  41 82 00 38 */	beq lbl_8026B9E4
/* 8026B9B0 00267610  48 00 59 95 */	bl OSDisableScheduler
/* 8026B9B4 00267614  7F 23 CB 78 */	mr r3, r25
/* 8026B9B8 00267618  7F 44 D3 78 */	mr r4, r26
/* 8026B9BC 0026761C  7F 65 DB 78 */	mr r5, r27
/* 8026B9C0 00267620  7F 86 E3 78 */	mr r6, r28
/* 8026B9C4 00267624  4C C6 31 82 */	crclr 6
/* 8026B9C8 00267628  7D 98 B8 2E */	lwzx r12, r24, r23
/* 8026B9CC 0026762C  7D 89 03 A6 */	mtctr r12
/* 8026B9D0 00267630  4E 80 04 21 */	bctrl
/* 8026B9D4 00267634  48 00 59 AD */	bl OSEnableScheduler
/* 8026B9D8 00267638  48 00 5E B5 */	bl __OSReschedule
/* 8026B9DC 0026763C  7F 43 D3 78 */	mr r3, r26
/* 8026B9E0 00267640  4B FF F5 71 */	bl OSLoadContext
lbl_8026B9E4:
/* 8026B9E4 00267644  28 19 00 08 */	cmplwi r25, 8
/* 8026B9E8 00267648  40 82 00 0C */	bne lbl_8026B9F4
/* 8026B9EC 0026764C  7F 43 D3 78 */	mr r3, r26
/* 8026B9F0 00267650  4B FF F5 61 */	bl OSLoadContext
lbl_8026B9F4:
/* 8026B9F4 00267654  7F 24 CB 78 */	mr r4, r25
/* 8026B9F8 00267658  38 7F 00 7C */	addi r3, r31, 0x7c
/* 8026B9FC 0026765C  4C C6 31 82 */	crclr 6
/* 8026BA00 00267660  4B D9 C0 C5 */	bl OSReport
lbl_8026BA04:
/* 8026BA04 00267664  38 6D 87 BC */	addi r3, r13, lbl_8063DA7C-_SDA_BASE_
/* 8026BA08 00267668  4C C6 31 82 */	crclr 6
/* 8026BA0C 0026766C  4B D9 C0 B9 */	bl OSReport
/* 8026BA10 00267670  7F 43 D3 78 */	mr r3, r26
/* 8026BA14 00267674  4B FF F7 5D */	bl OSDumpContext
/* 8026BA18 00267678  7F 64 DB 78 */	mr r4, r27
/* 8026BA1C 0026767C  7F 85 E3 78 */	mr r5, r28
/* 8026BA20 00267680  38 7F 00 94 */	addi r3, r31, 0x94
/* 8026BA24 00267684  4C C6 31 82 */	crclr 6
/* 8026BA28 00267688  4B D9 C0 9D */	bl OSReport
/* 8026BA2C 0026768C  7F A6 EB 78 */	mr r6, r29
/* 8026BA30 00267690  7F C5 F3 78 */	mr r5, r30
/* 8026BA34 00267694  38 7F 00 C8 */	addi r3, r31, 0xc8
/* 8026BA38 00267698  4C C6 31 82 */	crclr 6
/* 8026BA3C 0026769C  4B D9 C0 89 */	bl OSReport
/* 8026BA40 002676A0  28 19 00 0F */	cmplwi r25, 0xf
/* 8026BA44 002676A4  41 81 00 C4 */	bgt lbl_8026BB08
/* 8026BA48 002676A8  3C 60 80 42 */	lis r3, lbl_80427154@ha
/* 8026BA4C 002676AC  57 20 10 3A */	slwi r0, r25, 2
/* 8026BA50 002676B0  38 63 71 54 */	addi r3, r3, lbl_80427154@l
/* 8026BA54 002676B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8026BA58 002676B8  7C 69 03 A6 */	mtctr r3
/* 8026BA5C 002676BC  4E 80 04 20 */	bctr
/* 8026BA60 002676C0  80 9A 01 98 */	lwz r4, 0x198(r26)
/* 8026BA64 002676C4  7F 85 E3 78 */	mr r5, r28
/* 8026BA68 002676C8  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 8026BA6C 002676CC  4C C6 31 82 */	crclr 6
/* 8026BA70 002676D0  4B D9 C0 55 */	bl OSReport
/* 8026BA74 002676D4  48 00 00 94 */	b lbl_8026BB08
/* 8026BA78 002676D8  80 9A 01 98 */	lwz r4, 0x198(r26)
/* 8026BA7C 002676DC  38 7F 01 38 */	addi r3, r31, 0x138
/* 8026BA80 002676E0  4C C6 31 82 */	crclr 6
/* 8026BA84 002676E4  4B D9 C0 41 */	bl OSReport
/* 8026BA88 002676E8  48 00 00 80 */	b lbl_8026BB08
/* 8026BA8C 002676EC  80 9A 01 98 */	lwz r4, 0x198(r26)
/* 8026BA90 002676F0  7F 85 E3 78 */	mr r5, r28
/* 8026BA94 002676F4  38 7F 01 84 */	addi r3, r31, 0x184
/* 8026BA98 002676F8  4C C6 31 82 */	crclr 6
/* 8026BA9C 002676FC  4B D9 C0 29 */	bl OSReport
/* 8026BAA0 00267700  48 00 00 68 */	b lbl_8026BB08
/* 8026BAA4 00267704  80 9A 01 98 */	lwz r4, 0x198(r26)
/* 8026BAA8 00267708  7F 85 E3 78 */	mr r5, r28
/* 8026BAAC 0026770C  38 7F 01 E8 */	addi r3, r31, 0x1e8
/* 8026BAB0 00267710  4C C6 31 82 */	crclr 6
/* 8026BAB4 00267714  4B D9 C0 11 */	bl OSReport
/* 8026BAB8 00267718  48 00 00 50 */	b lbl_8026BB08
/* 8026BABC 0026771C  38 6D 87 BC */	addi r3, r13, lbl_8063DA7C-_SDA_BASE_
/* 8026BAC0 00267720  4C C6 31 82 */	crclr 6
/* 8026BAC4 00267724  4B D9 C0 01 */	bl OSReport
/* 8026BAC8 00267728  3F 20 CC 00 */	lis r25, 0xCC005030@ha
/* 8026BACC 0026772C  38 7F 02 48 */	addi r3, r31, 0x248
/* 8026BAD0 00267730  A0 99 50 30 */	lhz r4, 0xCC005030@l(r25)
/* 8026BAD4 00267734  A0 B9 50 32 */	lhz r5, 0x5032(r25)
/* 8026BAD8 00267738  4C C6 31 82 */	crclr 6
/* 8026BADC 0026773C  4B D9 BF E9 */	bl OSReport
/* 8026BAE0 00267740  A0 99 50 20 */	lhz r4, 0x5020(r25)
/* 8026BAE4 00267744  38 7F 02 68 */	addi r3, r31, 0x268
/* 8026BAE8 00267748  A0 B9 50 22 */	lhz r5, 0x5022(r25)
/* 8026BAEC 0026774C  4C C6 31 82 */	crclr 6
/* 8026BAF0 00267750  4B D9 BF D5 */	bl OSReport
/* 8026BAF4 00267754  3C 80 CD 00 */	lis r4, 0xCD006014@ha
/* 8026BAF8 00267758  38 7F 02 88 */	addi r3, r31, 0x288
/* 8026BAFC 0026775C  80 84 60 14 */	lwz r4, 0xCD006014@l(r4)
/* 8026BB00 00267760  4C C6 31 82 */	crclr 6
/* 8026BB04 00267764  4B D9 BF C1 */	bl OSReport
lbl_8026BB08:
/* 8026BB08 00267768  A8 8D A7 FC */	lha r4, lbl_8063FABC-_SDA_BASE_(r13)
/* 8026BB0C 0026776C  38 7F 02 A4 */	addi r3, r31, 0x2a4
/* 8026BB10 00267770  80 AD A7 F8 */	lwz r5, lbl_8063FAB8-_SDA_BASE_(r13)
/* 8026BB14 00267774  80 ED A8 00 */	lwz r7, lbl_8063FAC0-_SDA_BASE_(r13)
/* 8026BB18 00267778  81 0D A8 04 */	lwz r8, lbl_8063FAC4-_SDA_BASE_(r13)
/* 8026BB1C 0026777C  4C C6 31 82 */	crclr 6
/* 8026BB20 00267780  4B D9 BF A5 */	bl OSReport
/* 8026BB24 00267784  4B FF C7 45 */	bl PPCHalt
/* 8026BB28 00267788  39 61 00 30 */	addi r11, r1, 0x30
/* 8026BB2C 0026778C  4B F5 B6 39 */	bl _restgpr_23
/* 8026BB30 00267790  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026BB34 00267794  7C 08 03 A6 */	mtlr r0
/* 8026BB38 00267798  38 21 00 30 */	addi r1, r1, 0x30
/* 8026BB3C 0026779C  4E 80 00 20 */	blr
