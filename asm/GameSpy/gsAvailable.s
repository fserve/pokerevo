.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global GSIStartAvailableCheckA
GSIStartAvailableCheckA:
/* 80339358 00334FB8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8033935C 00334FBC  7C 08 02 A6 */	mflr r0
/* 80339360 00334FC0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80339364 00334FC4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80339368 00334FC8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8033936C 00334FCC  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80339370 00334FD0  3F A0 80 61 */	lis r29, lbl_80610AF8@ha
/* 80339374 00334FD4  3B BD 0A F8 */	addi r29, r29, lbl_80610AF8@l
/* 80339378 00334FD8  93 81 00 50 */	stw r28, 0x50(r1)
/* 8033937C 00334FDC  7C 7C 1B 78 */	mr r28, r3
/* 80339380 00334FE0  7F 84 E3 78 */	mr r4, r28
/* 80339384 00334FE4  38 7D 00 00 */	addi r3, r29, 0
/* 80339388 00334FE8  4B E9 4F 49 */	bl strcpy
/* 8033938C 00334FEC  38 00 FF FF */	li r0, -1
/* 80339390 00334FF0  90 1D 00 80 */	stw r0, 0x80(r29)
/* 80339394 00334FF4  4B FF FC 3D */	bl SocketStartUp
/* 80339398 00334FF8  8B FD 00 40 */	lbz r31, 0x40(r29)
/* 8033939C 00334FFC  7F FF 07 75 */	extsb. r31, r31
/* 803393A0 00335000  40 82 00 1C */	bne lbl_803393BC
/* 803393A4 00335004  3C 80 80 45 */	lis r4, lbl_8044A430@ha
/* 803393A8 00335008  7F 85 E3 78 */	mr r5, r28
/* 803393AC 0033500C  38 61 00 08 */	addi r3, r1, 8
/* 803393B0 00335010  38 84 A4 30 */	addi r4, r4, lbl_8044A430@l
/* 803393B4 00335014  4C C6 31 82 */	crclr 6
/* 803393B8 00335018  4B E9 37 45 */	bl sprintf
lbl_803393BC:
/* 803393BC 0033501C  3B DD 00 80 */	addi r30, r29, 0x80
/* 803393C0 00335020  38 00 00 02 */	li r0, 2
/* 803393C4 00335024  98 1E 00 05 */	stb r0, 5(r30)
/* 803393C8 00335028  38 60 6C FC */	li r3, 0x6cfc
/* 803393CC 0033502C  4B FB D9 B1 */	bl SOHtoNs
/* 803393D0 00335030  2C 1F 00 00 */	cmpwi r31, 0
/* 803393D4 00335034  B0 7E 00 06 */	sth r3, 6(r30)
/* 803393D8 00335038  38 61 00 08 */	addi r3, r1, 8
/* 803393DC 0033503C  41 82 00 08 */	beq lbl_803393E4
/* 803393E0 00335040  38 7D 00 40 */	addi r3, r29, 0x40
lbl_803393E4:
/* 803393E4 00335044  4B FF EB 8D */	bl inet_addr
/* 803393E8 00335048  3C 03 00 01 */	addis r0, r3, 1
/* 803393EC 0033504C  38 9D 00 80 */	addi r4, r29, 0x80
/* 803393F0 00335050  28 00 FF FF */	cmplwi r0, 0xffff
/* 803393F4 00335054  90 64 00 08 */	stw r3, 8(r4)
/* 803393F8 00335058  40 82 00 3C */	bne lbl_80339434
/* 803393FC 0033505C  2C 1F 00 00 */	cmpwi r31, 0
/* 80339400 00335060  38 61 00 08 */	addi r3, r1, 8
/* 80339404 00335064  41 82 00 08 */	beq lbl_8033940C
/* 80339408 00335068  38 7D 00 40 */	addi r3, r29, 0x40
lbl_8033940C:
/* 8033940C 0033506C  4B FF EC CD */	bl gethostbyname
/* 80339410 00335070  2C 03 00 00 */	cmpwi r3, 0
/* 80339414 00335074  40 82 00 0C */	bne lbl_80339420
/* 80339418 00335078  38 00 00 00 */	li r0, 0
/* 8033941C 0033507C  48 00 00 1C */	b lbl_80339438
lbl_80339420:
/* 80339420 00335080  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80339424 00335084  38 7D 00 80 */	addi r3, r29, 0x80
/* 80339428 00335088  80 84 00 00 */	lwz r4, 0(r4)
/* 8033942C 0033508C  80 04 00 00 */	lwz r0, 0(r4)
/* 80339430 00335090  90 03 00 08 */	stw r0, 8(r3)
lbl_80339434:
/* 80339434 00335094  38 00 00 01 */	li r0, 1
lbl_80339438:
/* 80339438 00335098  2C 00 00 00 */	cmpwi r0, 0
/* 8033943C 0033509C  41 82 00 78 */	beq lbl_803394B4
/* 80339440 003350A0  38 60 00 02 */	li r3, 2
/* 80339444 003350A4  38 80 00 02 */	li r4, 2
/* 80339448 003350A8  38 A0 00 11 */	li r5, 0x11
/* 8033944C 003350AC  4B FF E7 79 */	bl socket
/* 80339450 003350B0  2C 03 FF FF */	cmpwi r3, -1
/* 80339454 003350B4  90 7D 00 80 */	stw r3, 0x80(r29)
/* 80339458 003350B8  41 82 00 5C */	beq lbl_803394B4
/* 8033945C 003350BC  3B DD 00 80 */	addi r30, r29, 0x80
/* 80339460 003350C0  38 00 00 09 */	li r0, 9
/* 80339464 003350C4  98 1E 00 0C */	stb r0, 0xc(r30)
/* 80339468 003350C8  7F 83 E3 78 */	mr r3, r28
/* 8033946C 003350CC  4B E8 D6 F9 */	bl strlen
/* 80339470 003350D0  7C 7F 1B 78 */	mr r31, r3
/* 80339474 003350D4  7F 84 E3 78 */	mr r4, r28
/* 80339478 003350D8  38 7E 00 11 */	addi r3, r30, 0x11
/* 8033947C 003350DC  38 BF 00 01 */	addi r5, r31, 1
/* 80339480 003350E0  4B CC AB 81 */	bl memcpy
/* 80339484 003350E4  38 BF 00 06 */	addi r5, r31, 6
/* 80339488 003350E8  80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8033948C 003350EC  90 BE 00 4C */	stw r5, 0x4c(r30)
/* 80339490 003350F0  38 9E 00 0C */	addi r4, r30, 0xc
/* 80339494 003350F4  38 FE 00 04 */	addi r7, r30, 4
/* 80339498 003350F8  38 C0 00 00 */	li r6, 0
/* 8033949C 003350FC  39 00 00 08 */	li r8, 8
/* 803394A0 00335100  4B FF E9 F5 */	bl sendto
/* 803394A4 00335104  4B FF FB 35 */	bl current_time
/* 803394A8 00335108  38 00 00 00 */	li r0, 0
/* 803394AC 0033510C  90 7E 00 50 */	stw r3, 0x50(r30)
/* 803394B0 00335110  90 1E 00 54 */	stw r0, 0x54(r30)
lbl_803394B4:
/* 803394B4 00335114  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803394B8 00335118  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 803394BC 0033511C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 803394C0 00335120  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 803394C4 00335124  83 81 00 50 */	lwz r28, 0x50(r1)
/* 803394C8 00335128  7C 08 03 A6 */	mtlr r0
/* 803394CC 0033512C  38 21 00 60 */	addi r1, r1, 0x60
/* 803394D0 00335130  4E 80 00 20 */	blr

.global GSIAvailableCheckThink
GSIAvailableCheckThink:
/* 803394D4 00335134  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803394D8 00335138  7C 08 02 A6 */	mflr r0
/* 803394DC 0033513C  90 01 00 64 */	stw r0, 0x64(r1)
/* 803394E0 00335140  38 00 00 08 */	li r0, 8
/* 803394E4 00335144  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 803394E8 00335148  3F E0 80 61 */	lis r31, lbl_80610B78@ha
/* 803394EC 0033514C  80 7F 0B 78 */	lwz r3, lbl_80610B78@l(r31)
/* 803394F0 00335150  90 01 00 08 */	stw r0, 8(r1)
/* 803394F4 00335154  2C 03 FF FF */	cmpwi r3, -1
/* 803394F8 00335158  40 82 00 14 */	bne lbl_8033950C
/* 803394FC 0033515C  38 00 00 01 */	li r0, 1
/* 80339500 00335160  38 60 00 01 */	li r3, 1
/* 80339504 00335164  90 0D B0 A8 */	stw r0, lbl_80640368-_SDA_BASE_(r13)
/* 80339508 00335168  48 00 01 78 */	b lbl_80339680
lbl_8033950C:
/* 8033950C 0033516C  4B FF F3 41 */	bl CanReceiveOnSocket
/* 80339510 00335170  2C 03 00 00 */	cmpwi r3, 0
/* 80339514 00335174  41 82 00 F8 */	beq lbl_8033960C
/* 80339518 00335178  80 7F 0B 78 */	lwz r3, 0xb78(r31)
/* 8033951C 0033517C  38 81 00 18 */	addi r4, r1, 0x18
/* 80339520 00335180  38 E1 00 10 */	addi r7, r1, 0x10
/* 80339524 00335184  39 01 00 08 */	addi r8, r1, 8
/* 80339528 00335188  38 A0 00 40 */	li r5, 0x40
/* 8033952C 0033518C  38 C0 00 00 */	li r6, 0
/* 80339530 00335190  4B FF E8 D5 */	bl recvfrom
/* 80339534 00335194  2C 03 00 07 */	cmpwi r3, 7
/* 80339538 00335198  40 80 00 0C */	bge lbl_80339544
/* 8033953C 0033519C  38 A0 00 01 */	li r5, 1
/* 80339540 003351A0  48 00 00 88 */	b lbl_803395C8
lbl_80339544:
/* 80339544 003351A4  3B FF 0B 78 */	addi r31, r31, 0xb78
/* 80339548 003351A8  38 61 00 14 */	addi r3, r1, 0x14
/* 8033954C 003351AC  38 9F 00 08 */	addi r4, r31, 8
/* 80339550 003351B0  38 A0 00 04 */	li r5, 4
/* 80339554 003351B4  4B E9 0E 45 */	bl memcmp
/* 80339558 003351B8  2C 03 00 00 */	cmpwi r3, 0
/* 8033955C 003351BC  41 82 00 0C */	beq lbl_80339568
/* 80339560 003351C0  38 A0 00 01 */	li r5, 1
/* 80339564 003351C4  48 00 00 64 */	b lbl_803395C8
lbl_80339568:
/* 80339568 003351C8  A0 61 00 12 */	lhz r3, 0x12(r1)
/* 8033956C 003351CC  A0 1F 00 06 */	lhz r0, 6(r31)
/* 80339570 003351D0  7C 03 00 40 */	cmplw r3, r0
/* 80339574 003351D4  41 82 00 0C */	beq lbl_80339580
/* 80339578 003351D8  38 A0 00 01 */	li r5, 1
/* 8033957C 003351DC  48 00 00 4C */	b lbl_803395C8
lbl_80339580:
/* 80339580 003351E0  38 61 00 18 */	addi r3, r1, 0x18
/* 80339584 003351E4  38 8D 8F 38 */	addi r4, r13, lbl_8063E1F8-_SDA_BASE_
/* 80339588 003351E8  38 A0 00 03 */	li r5, 3
/* 8033958C 003351EC  4B E9 0E 0D */	bl memcmp
/* 80339590 003351F0  2C 03 00 00 */	cmpwi r3, 0
/* 80339594 003351F4  41 82 00 0C */	beq lbl_803395A0
/* 80339598 003351F8  38 A0 00 01 */	li r5, 1
/* 8033959C 003351FC  48 00 00 2C */	b lbl_803395C8
lbl_803395A0:
/* 803395A0 00335200  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 803395A4 00335204  38 A0 00 00 */	li r5, 0
/* 803395A8 00335208  88 61 00 1D */	lbz r3, 0x1d(r1)
/* 803395AC 0033520C  54 06 82 1E */	rlwinm r6, r0, 0x10, 8, 0xf
/* 803395B0 00335210  88 81 00 1B */	lbz r4, 0x1b(r1)
/* 803395B4 00335214  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 803395B8 00335218  54 63 44 2E */	rlwinm r3, r3, 8, 0x10, 0x17
/* 803395BC 0033521C  50 86 C0 0E */	rlwimi r6, r4, 0x18, 0, 7
/* 803395C0 00335220  7C C6 1B 78 */	or r6, r6, r3
/* 803395C4 00335224  7C DF 03 78 */	or r31, r6, r0
lbl_803395C8:
/* 803395C8 00335228  2C 05 00 00 */	cmpwi r5, 0
/* 803395CC 0033522C  40 82 00 40 */	bne lbl_8033960C
/* 803395D0 00335230  3C 60 80 61 */	lis r3, lbl_80610B78@ha
/* 803395D4 00335234  80 63 0B 78 */	lwz r3, lbl_80610B78@l(r3)
/* 803395D8 00335238  4B FF E6 25 */	bl closesocket
/* 803395DC 0033523C  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 803395E0 00335240  41 82 00 10 */	beq lbl_803395F0
/* 803395E4 00335244  38 00 00 02 */	li r0, 2
/* 803395E8 00335248  90 0D B0 A8 */	stw r0, lbl_80640368-_SDA_BASE_(r13)
/* 803395EC 0033524C  48 00 00 18 */	b lbl_80339604
lbl_803395F0:
/* 803395F0 00335250  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 803395F4 00335254  38 00 00 01 */	li r0, 1
/* 803395F8 00335258  41 82 00 08 */	beq lbl_80339600
/* 803395FC 0033525C  38 00 00 03 */	li r0, 3
lbl_80339600:
/* 80339600 00335260  90 0D B0 A8 */	stw r0, lbl_80640368-_SDA_BASE_(r13)
lbl_80339604:
/* 80339604 00335264  7C 03 03 78 */	mr r3, r0
/* 80339608 00335268  48 00 00 78 */	b lbl_80339680
lbl_8033960C:
/* 8033960C 0033526C  4B FF F9 CD */	bl current_time
/* 80339610 00335270  3C A0 80 61 */	lis r5, lbl_80610B78@ha
/* 80339614 00335274  3B E5 0B 78 */	addi r31, r5, lbl_80610B78@l
/* 80339618 00335278  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 8033961C 0033527C  38 04 07 D0 */	addi r0, r4, 0x7d0
/* 80339620 00335280  7C 03 00 40 */	cmplw r3, r0
/* 80339624 00335284  40 81 00 58 */	ble lbl_8033967C
/* 80339628 00335288  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8033962C 0033528C  2C 00 00 01 */	cmpwi r0, 1
/* 80339630 00335290  40 82 00 1C */	bne lbl_8033964C
/* 80339634 00335294  80 65 0B 78 */	lwz r3, 0xb78(r5)
/* 80339638 00335298  4B FF E5 C5 */	bl closesocket
/* 8033963C 0033529C  38 00 00 01 */	li r0, 1
/* 80339640 003352A0  38 60 00 01 */	li r3, 1
/* 80339644 003352A4  90 0D B0 A8 */	stw r0, lbl_80640368-_SDA_BASE_(r13)
/* 80339648 003352A8  48 00 00 38 */	b lbl_80339680
lbl_8033964C:
/* 8033964C 003352AC  80 65 0B 78 */	lwz r3, 0xb78(r5)
/* 80339650 003352B0  38 9F 00 0C */	addi r4, r31, 0xc
/* 80339654 003352B4  80 BF 00 4C */	lwz r5, 0x4c(r31)
/* 80339658 003352B8  38 FF 00 04 */	addi r7, r31, 4
/* 8033965C 003352BC  38 C0 00 00 */	li r6, 0
/* 80339660 003352C0  39 00 00 08 */	li r8, 8
/* 80339664 003352C4  4B FF E8 31 */	bl sendto
/* 80339668 003352C8  4B FF F9 71 */	bl current_time
/* 8033966C 003352CC  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 80339670 003352D0  90 7F 00 50 */	stw r3, 0x50(r31)
/* 80339674 003352D4  38 04 00 01 */	addi r0, r4, 1
/* 80339678 003352D8  90 1F 00 54 */	stw r0, 0x54(r31)
lbl_8033967C:
/* 8033967C 003352DC  38 60 00 00 */	li r3, 0
lbl_80339680:
/* 80339680 003352E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80339684 003352E4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80339688 003352E8  7C 08 03 A6 */	mtlr r0
/* 8033968C 003352EC  38 21 00 60 */	addi r1, r1, 0x60
/* 80339690 003352F0  4E 80 00 20 */	blr
