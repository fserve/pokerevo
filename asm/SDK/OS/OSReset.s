.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global OSRegisterShutdownFunction
OSRegisterShutdownFunction:
/* 8026FC90 0026B8F0  80 AD A8 20 */	lwz r5, lbl_8063FAE0-_SDA_BASE_(r13)
/* 8026FC94 0026B8F4  48 00 00 08 */	b lbl_8026FC9C
lbl_8026FC98:
/* 8026FC98 0026B8F8  80 A5 00 08 */	lwz r5, 8(r5)
lbl_8026FC9C:
/* 8026FC9C 0026B8FC  2C 05 00 00 */	cmpwi r5, 0
/* 8026FCA0 0026B900  41 82 00 14 */	beq lbl_8026FCB4
/* 8026FCA4 0026B904  80 85 00 04 */	lwz r4, 4(r5)
/* 8026FCA8 0026B908  80 03 00 04 */	lwz r0, 4(r3)
/* 8026FCAC 0026B90C  7C 04 00 40 */	cmplw r4, r0
/* 8026FCB0 0026B910  40 81 FF E8 */	ble lbl_8026FC98
lbl_8026FCB4:
/* 8026FCB4 0026B914  2C 05 00 00 */	cmpwi r5, 0
/* 8026FCB8 0026B918  40 82 00 38 */	bne lbl_8026FCF0
/* 8026FCBC 0026B91C  38 8D A8 20 */	addi r4, r13, lbl_8063FAE0-_SDA_BASE_
/* 8026FCC0 0026B920  80 84 00 04 */	lwz r4, 4(r4)
/* 8026FCC4 0026B924  2C 04 00 00 */	cmpwi r4, 0
/* 8026FCC8 0026B928  40 82 00 0C */	bne lbl_8026FCD4
/* 8026FCCC 0026B92C  90 6D A8 20 */	stw r3, lbl_8063FAE0-_SDA_BASE_(r13)
/* 8026FCD0 0026B930  48 00 00 08 */	b lbl_8026FCD8
lbl_8026FCD4:
/* 8026FCD4 0026B934  90 64 00 08 */	stw r3, 8(r4)
lbl_8026FCD8:
/* 8026FCD8 0026B938  38 00 00 00 */	li r0, 0
/* 8026FCDC 0026B93C  90 83 00 0C */	stw r4, 0xc(r3)
/* 8026FCE0 0026B940  38 8D A8 20 */	addi r4, r13, lbl_8063FAE0-_SDA_BASE_
/* 8026FCE4 0026B944  90 03 00 08 */	stw r0, 8(r3)
/* 8026FCE8 0026B948  90 64 00 04 */	stw r3, 4(r4)
/* 8026FCEC 0026B94C  4E 80 00 20 */	blr
lbl_8026FCF0:
/* 8026FCF0 0026B950  90 A3 00 08 */	stw r5, 8(r3)
/* 8026FCF4 0026B954  80 85 00 0C */	lwz r4, 0xc(r5)
/* 8026FCF8 0026B958  90 65 00 0C */	stw r3, 0xc(r5)
/* 8026FCFC 0026B95C  2C 04 00 00 */	cmpwi r4, 0
/* 8026FD00 0026B960  90 83 00 0C */	stw r4, 0xc(r3)
/* 8026FD04 0026B964  40 82 00 0C */	bne lbl_8026FD10
/* 8026FD08 0026B968  90 6D A8 20 */	stw r3, lbl_8063FAE0-_SDA_BASE_(r13)
/* 8026FD0C 0026B96C  4E 80 00 20 */	blr
lbl_8026FD10:
/* 8026FD10 0026B970  90 64 00 08 */	stw r3, 8(r4)
/* 8026FD14 0026B974  4E 80 00 20 */	blr

.global __OSCallShutdownFunctions
__OSCallShutdownFunctions:
/* 8026FD18 0026B978  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026FD1C 0026B97C  7C 08 02 A6 */	mflr r0
/* 8026FD20 0026B980  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026FD24 0026B984  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026FD28 0026B988  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026FD2C 0026B98C  3B C0 00 00 */	li r30, 0
/* 8026FD30 0026B990  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8026FD34 0026B994  7C 9D 23 78 */	mr r29, r4
/* 8026FD38 0026B998  93 81 00 10 */	stw r28, 0x10(r1)
/* 8026FD3C 0026B99C  7C 7C 1B 78 */	mr r28, r3
/* 8026FD40 0026B9A0  38 60 00 00 */	li r3, 0
/* 8026FD44 0026B9A4  83 ED A8 20 */	lwz r31, lbl_8063FAE0-_SDA_BASE_(r13)
/* 8026FD48 0026B9A8  48 00 00 40 */	b lbl_8026FD88
lbl_8026FD4C:
/* 8026FD4C 0026B9AC  2C 1E 00 00 */	cmpwi r30, 0
/* 8026FD50 0026B9B0  41 82 00 10 */	beq lbl_8026FD60
/* 8026FD54 0026B9B4  80 1F 00 04 */	lwz r0, 4(r31)
/* 8026FD58 0026B9B8  7C 03 00 40 */	cmplw r3, r0
/* 8026FD5C 0026B9BC  40 82 00 34 */	bne lbl_8026FD90
lbl_8026FD60:
/* 8026FD60 0026B9C0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8026FD64 0026B9C4  7F 83 E3 78 */	mr r3, r28
/* 8026FD68 0026B9C8  7F A4 EB 78 */	mr r4, r29
/* 8026FD6C 0026B9CC  7D 89 03 A6 */	mtctr r12
/* 8026FD70 0026B9D0  4E 80 04 21 */	bctrl
/* 8026FD74 0026B9D4  7C 60 00 34 */	cntlzw r0, r3
/* 8026FD78 0026B9D8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8026FD7C 0026B9DC  54 00 D9 7E */	srwi r0, r0, 5
/* 8026FD80 0026B9E0  83 FF 00 08 */	lwz r31, 8(r31)
/* 8026FD84 0026B9E4  7F DE 03 78 */	or r30, r30, r0
lbl_8026FD88:
/* 8026FD88 0026B9E8  2C 1F 00 00 */	cmpwi r31, 0
/* 8026FD8C 0026B9EC  40 82 FF C0 */	bne lbl_8026FD4C
lbl_8026FD90:
/* 8026FD90 0026B9F0  48 00 0C 65 */	bl __OSSyncSram
/* 8026FD94 0026B9F4  7C 60 00 34 */	cntlzw r0, r3
/* 8026FD98 0026B9F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026FD9C 0026B9FC  54 00 D9 7E */	srwi r0, r0, 5
/* 8026FDA0 0026BA00  7F DE 03 78 */	or r30, r30, r0
/* 8026FDA4 0026BA04  7F C0 00 34 */	cntlzw r0, r30
/* 8026FDA8 0026BA08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026FDAC 0026BA0C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8026FDB0 0026BA10  54 03 D9 7E */	srwi r3, r0, 5
/* 8026FDB4 0026BA14  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8026FDB8 0026BA18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026FDBC 0026BA1C  7C 08 03 A6 */	mtlr r0
/* 8026FDC0 0026BA20  38 21 00 20 */	addi r1, r1, 0x20
/* 8026FDC4 0026BA24  4E 80 00 20 */	blr

.global __OSShutdownDevices
__OSShutdownDevices:
/* 8026FDC8 0026BA28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026FDCC 0026BA2C  7C 08 02 A6 */	mflr r0
/* 8026FDD0 0026BA30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026FDD4 0026BA34  39 61 00 20 */	addi r11, r1, 0x20
/* 8026FDD8 0026BA38  4B F5 73 51 */	bl _savegpr_27
/* 8026FDDC 0026BA3C  2C 03 00 04 */	cmpwi r3, 4
/* 8026FDE0 0026BA40  7C 7B 1B 78 */	mr r27, r3
/* 8026FDE4 0026BA44  40 80 00 10 */	bge lbl_8026FDF4
/* 8026FDE8 0026BA48  2C 03 00 00 */	cmpwi r3, 0
/* 8026FDEC 0026BA4C  41 82 00 10 */	beq lbl_8026FDFC
/* 8026FDF0 0026BA50  48 00 00 14 */	b lbl_8026FE04
lbl_8026FDF4:
/* 8026FDF4 0026BA54  2C 03 00 07 */	cmpwi r3, 7
/* 8026FDF8 0026BA58  40 80 00 0C */	bge lbl_8026FE04
lbl_8026FDFC:
/* 8026FDFC 0026BA5C  3B 80 00 00 */	li r28, 0
/* 8026FE00 0026BA60  48 00 00 08 */	b lbl_8026FE08
lbl_8026FE04:
/* 8026FE04 0026BA64  3B 80 00 01 */	li r28, 1
lbl_8026FE08:
/* 8026FE08 0026BA68  4B FF A7 41 */	bl __OSStopAudioSystem
/* 8026FE0C 0026BA6C  2C 1C 00 00 */	cmpwi r28, 0
/* 8026FE10 0026BA70  40 82 00 10 */	bne lbl_8026FE20
/* 8026FE14 0026BA74  38 60 00 01 */	li r3, 1
/* 8026FE18 0026BA78  48 03 5D 11 */	bl func_802A5B28
/* 8026FE1C 0026BA7C  7C 7D 1B 78 */	mr r29, r3
lbl_8026FE20:
/* 8026FE20 0026BA80  83 CD A8 20 */	lwz r30, lbl_8063FAE0-_SDA_BASE_(r13)
/* 8026FE24 0026BA84  38 60 00 00 */	li r3, 0
/* 8026FE28 0026BA88  3B E0 00 00 */	li r31, 0
/* 8026FE2C 0026BA8C  48 00 00 40 */	b lbl_8026FE6C
lbl_8026FE30:
/* 8026FE30 0026BA90  2C 1F 00 00 */	cmpwi r31, 0
/* 8026FE34 0026BA94  41 82 00 10 */	beq lbl_8026FE44
/* 8026FE38 0026BA98  80 1E 00 04 */	lwz r0, 4(r30)
/* 8026FE3C 0026BA9C  7C 03 00 40 */	cmplw r3, r0
/* 8026FE40 0026BAA0  40 82 00 34 */	bne lbl_8026FE74
lbl_8026FE44:
/* 8026FE44 0026BAA4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8026FE48 0026BAA8  7F 64 DB 78 */	mr r4, r27
/* 8026FE4C 0026BAAC  38 60 00 00 */	li r3, 0
/* 8026FE50 0026BAB0  7D 89 03 A6 */	mtctr r12
/* 8026FE54 0026BAB4  4E 80 04 21 */	bctrl
/* 8026FE58 0026BAB8  7C 60 00 34 */	cntlzw r0, r3
/* 8026FE5C 0026BABC  80 7E 00 04 */	lwz r3, 4(r30)
/* 8026FE60 0026BAC0  54 00 D9 7E */	srwi r0, r0, 5
/* 8026FE64 0026BAC4  83 DE 00 08 */	lwz r30, 8(r30)
/* 8026FE68 0026BAC8  7F FF 03 78 */	or r31, r31, r0
lbl_8026FE6C:
/* 8026FE6C 0026BACC  2C 1E 00 00 */	cmpwi r30, 0
/* 8026FE70 0026BAD0  40 82 FF C0 */	bne lbl_8026FE30
lbl_8026FE74:
/* 8026FE74 0026BAD4  48 00 0B 81 */	bl __OSSyncSram
/* 8026FE78 0026BAD8  7C 60 00 34 */	cntlzw r0, r3
/* 8026FE7C 0026BADC  54 00 D9 7E */	srwi r0, r0, 5
/* 8026FE80 0026BAE0  7F FF 03 79 */	or. r31, r31, r0
/* 8026FE84 0026BAE4  40 82 FF 9C */	bne lbl_8026FE20
lbl_8026FE88:
/* 8026FE88 0026BAE8  48 00 0B 6D */	bl __OSSyncSram
/* 8026FE8C 0026BAEC  2C 03 00 00 */	cmpwi r3, 0
/* 8026FE90 0026BAF0  41 82 FF F8 */	beq lbl_8026FE88
/* 8026FE94 0026BAF4  4B FF E8 C9 */	bl OSDisableInterrupts
/* 8026FE98 0026BAF8  83 ED A8 20 */	lwz r31, lbl_8063FAE0-_SDA_BASE_(r13)
/* 8026FE9C 0026BAFC  38 60 00 00 */	li r3, 0
/* 8026FEA0 0026BB00  3B C0 00 00 */	li r30, 0
/* 8026FEA4 0026BB04  48 00 00 40 */	b lbl_8026FEE4
lbl_8026FEA8:
/* 8026FEA8 0026BB08  2C 1E 00 00 */	cmpwi r30, 0
/* 8026FEAC 0026BB0C  41 82 00 10 */	beq lbl_8026FEBC
/* 8026FEB0 0026BB10  80 1F 00 04 */	lwz r0, 4(r31)
/* 8026FEB4 0026BB14  7C 03 00 40 */	cmplw r3, r0
/* 8026FEB8 0026BB18  40 82 00 34 */	bne lbl_8026FEEC
lbl_8026FEBC:
/* 8026FEBC 0026BB1C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8026FEC0 0026BB20  7F 64 DB 78 */	mr r4, r27
/* 8026FEC4 0026BB24  38 60 00 01 */	li r3, 1
/* 8026FEC8 0026BB28  7D 89 03 A6 */	mtctr r12
/* 8026FECC 0026BB2C  4E 80 04 21 */	bctrl
/* 8026FED0 0026BB30  7C 60 00 34 */	cntlzw r0, r3
/* 8026FED4 0026BB34  80 7F 00 04 */	lwz r3, 4(r31)
/* 8026FED8 0026BB38  54 00 D9 7E */	srwi r0, r0, 5
/* 8026FEDC 0026BB3C  83 FF 00 08 */	lwz r31, 8(r31)
/* 8026FEE0 0026BB40  7F DE 03 78 */	or r30, r30, r0
lbl_8026FEE4:
/* 8026FEE4 0026BB44  2C 1F 00 00 */	cmpwi r31, 0
/* 8026FEE8 0026BB48  40 82 FF C0 */	bne lbl_8026FEA8
lbl_8026FEEC:
/* 8026FEEC 0026BB4C  48 00 0B 09 */	bl __OSSyncSram
/* 8026FEF0 0026BB50  4B FF A9 A5 */	bl LCDisable
/* 8026FEF4 0026BB54  2C 1C 00 00 */	cmpwi r28, 0
/* 8026FEF8 0026BB58  40 82 00 0C */	bne lbl_8026FF04
/* 8026FEFC 0026BB5C  7F A3 EB 78 */	mr r3, r29
/* 8026FF00 0026BB60  48 03 5C 29 */	bl func_802A5B28
lbl_8026FF04:
/* 8026FF04 0026BB64  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 8026FF08 0026BB68  80 63 00 DC */	lwz r3, 0x800000DC@l(r3)
/* 8026FF0C 0026BB6C  48 00 00 2C */	b lbl_8026FF38
lbl_8026FF10:
/* 8026FF10 0026BB70  A0 03 02 C8 */	lhz r0, 0x2c8(r3)
/* 8026FF14 0026BB74  83 C3 02 FC */	lwz r30, 0x2fc(r3)
/* 8026FF18 0026BB78  2C 00 00 04 */	cmpwi r0, 4
/* 8026FF1C 0026BB7C  41 82 00 14 */	beq lbl_8026FF30
/* 8026FF20 0026BB80  40 80 00 14 */	bge lbl_8026FF34
/* 8026FF24 0026BB84  2C 00 00 01 */	cmpwi r0, 1
/* 8026FF28 0026BB88  41 82 00 08 */	beq lbl_8026FF30
/* 8026FF2C 0026BB8C  48 00 00 08 */	b lbl_8026FF34
lbl_8026FF30:
/* 8026FF30 0026BB90  48 00 1D 01 */	bl OSCancelThread
lbl_8026FF34:
/* 8026FF34 0026BB94  7F C3 F3 78 */	mr r3, r30
lbl_8026FF38:
/* 8026FF38 0026BB98  2C 03 00 00 */	cmpwi r3, 0
/* 8026FF3C 0026BB9C  40 82 FF D4 */	bne lbl_8026FF10
/* 8026FF40 0026BBA0  39 61 00 20 */	addi r11, r1, 0x20
/* 8026FF44 0026BBA4  4B F5 72 31 */	bl _restgpr_27
/* 8026FF48 0026BBA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026FF4C 0026BBAC  7C 08 03 A6 */	mtlr r0
/* 8026FF50 0026BBB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8026FF54 0026BBB4  4E 80 00 20 */	blr

.global OSRebootSystem
OSRebootSystem:
/* 8026FF58 0026BBB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026FF5C 0026BBBC  7C 08 02 A6 */	mflr r0
/* 8026FF60 0026BBC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026FF64 0026BBC4  48 00 3D B9 */	bl __OSStopPlayRecord
/* 8026FF68 0026BBC8  48 00 36 C5 */	bl __OSUnRegisterStateEvent
/* 8026FF6C 0026BBCC  48 01 C8 C1 */	bl __DVDPrepareReset
/* 8026FF70 0026BBD0  38 61 00 10 */	addi r3, r1, 0x10
/* 8026FF74 0026BBD4  48 00 40 75 */	bl __OSReadStateFlags
/* 8026FF78 0026BBD8  48 01 C4 89 */	bl __DVDGetCoverStatus
/* 8026FF7C 0026BBDC  28 03 00 02 */	cmplwi r3, 2
/* 8026FF80 0026BBE0  41 82 00 10 */	beq lbl_8026FF90
/* 8026FF84 0026BBE4  38 00 00 03 */	li r0, 3
/* 8026FF88 0026BBE8  98 01 00 16 */	stb r0, 0x16(r1)
/* 8026FF8C 0026BBEC  48 00 00 40 */	b lbl_8026FFCC
lbl_8026FF90:
/* 8026FF90 0026BBF0  88 01 00 16 */	lbz r0, 0x16(r1)
/* 8026FF94 0026BBF4  28 00 00 01 */	cmplwi r0, 1
/* 8026FF98 0026BBF8  40 82 00 20 */	bne lbl_8026FFB8
/* 8026FF9C 0026BBFC  38 61 00 08 */	addi r3, r1, 8
/* 8026FFA0 0026BC00  48 00 0C 9D */	bl __OSGetRTCFlags
/* 8026FFA4 0026BC04  2C 03 00 00 */	cmpwi r3, 0
/* 8026FFA8 0026BC08  41 82 00 1C */	beq lbl_8026FFC4
/* 8026FFAC 0026BC0C  80 01 00 08 */	lwz r0, 8(r1)
/* 8026FFB0 0026BC10  2C 00 00 00 */	cmpwi r0, 0
/* 8026FFB4 0026BC14  41 82 00 10 */	beq lbl_8026FFC4
lbl_8026FFB8:
/* 8026FFB8 0026BC18  38 00 00 02 */	li r0, 2
/* 8026FFBC 0026BC1C  98 01 00 16 */	stb r0, 0x16(r1)
/* 8026FFC0 0026BC20  48 00 00 0C */	b lbl_8026FFCC
lbl_8026FFC4:
/* 8026FFC4 0026BC24  38 00 00 01 */	li r0, 1
/* 8026FFC8 0026BC28  98 01 00 16 */	stb r0, 0x16(r1)
lbl_8026FFCC:
/* 8026FFCC 0026BC2C  38 00 00 02 */	li r0, 2
/* 8026FFD0 0026BC30  98 01 00 15 */	stb r0, 0x15(r1)
/* 8026FFD4 0026BC34  48 00 0D 85 */	bl __OSClearRTCFlags
/* 8026FFD8 0026BC38  38 61 00 10 */	addi r3, r1, 0x10
/* 8026FFDC 0026BC3C  48 00 3F 29 */	bl __OSWriteStateFlags
/* 8026FFE0 0026BC40  48 00 13 65 */	bl OSDisableScheduler
/* 8026FFE4 0026BC44  38 60 00 01 */	li r3, 1
/* 8026FFE8 0026BC48  4B FF FD E1 */	bl __OSShutdownDevices
/* 8026FFEC 0026BC4C  48 00 34 99 */	bl __OSHotReset
/* 8026FFF0 0026BC50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026FFF4 0026BC54  7C 08 03 A6 */	mtlr r0
/* 8026FFF8 0026BC58  38 21 00 30 */	addi r1, r1, 0x30
/* 8026FFFC 0026BC5C  4E 80 00 20 */	blr

.global OSShutdownSystem
OSShutdownSystem:
/* 80270000 0026BC60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80270004 0026BC64  7C 08 02 A6 */	mflr r0
/* 80270008 0026BC68  38 80 00 00 */	li r4, 0
/* 8027000C 0026BC6C  38 A0 00 02 */	li r5, 2
/* 80270010 0026BC70  90 01 00 44 */	stw r0, 0x44(r1)
/* 80270014 0026BC74  38 61 00 08 */	addi r3, r1, 8
/* 80270018 0026BC78  4B D9 40 ED */	bl memset
/* 8027001C 0026BC7C  48 07 A9 31 */	bl func_802EA94C
lbl_80270020:
/* 80270020 0026BC80  48 07 A9 CD */	bl func_802EA9EC
/* 80270024 0026BC84  28 03 00 01 */	cmplwi r3, 1
/* 80270028 0026BC88  41 82 FF F8 */	beq lbl_80270020
/* 8027002C 0026BC8C  38 61 00 08 */	addi r3, r1, 8
/* 80270030 0026BC90  48 07 C4 0D */	bl func_802EC43C
/* 80270034 0026BC94  48 00 3C E9 */	bl __OSStopPlayRecord
/* 80270038 0026BC98  48 00 35 F5 */	bl __OSUnRegisterStateEvent
/* 8027003C 0026BC9C  48 01 C7 F1 */	bl __DVDPrepareReset
/* 80270040 0026BCA0  38 61 00 18 */	addi r3, r1, 0x18
/* 80270044 0026BCA4  48 00 3F A5 */	bl __OSReadStateFlags
/* 80270048 0026BCA8  48 01 C3 B9 */	bl __DVDGetCoverStatus
/* 8027004C 0026BCAC  28 03 00 02 */	cmplwi r3, 2
/* 80270050 0026BCB0  41 82 00 10 */	beq lbl_80270060
/* 80270054 0026BCB4  38 00 00 03 */	li r0, 3
/* 80270058 0026BCB8  98 01 00 1E */	stb r0, 0x1e(r1)
/* 8027005C 0026BCBC  48 00 00 40 */	b lbl_8027009C
lbl_80270060:
/* 80270060 0026BCC0  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 80270064 0026BCC4  28 00 00 01 */	cmplwi r0, 1
/* 80270068 0026BCC8  40 82 00 20 */	bne lbl_80270088
/* 8027006C 0026BCCC  38 61 00 0C */	addi r3, r1, 0xc
/* 80270070 0026BCD0  48 00 0B CD */	bl __OSGetRTCFlags
/* 80270074 0026BCD4  2C 03 00 00 */	cmpwi r3, 0
/* 80270078 0026BCD8  41 82 00 1C */	beq lbl_80270094
/* 8027007C 0026BCDC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80270080 0026BCE0  2C 00 00 00 */	cmpwi r0, 0
/* 80270084 0026BCE4  41 82 00 10 */	beq lbl_80270094
lbl_80270088:
/* 80270088 0026BCE8  38 00 00 02 */	li r0, 2
/* 8027008C 0026BCEC  98 01 00 1E */	stb r0, 0x1e(r1)
/* 80270090 0026BCF0  48 00 00 0C */	b lbl_8027009C
lbl_80270094:
/* 80270094 0026BCF4  38 00 00 01 */	li r0, 1
/* 80270098 0026BCF8  98 01 00 1E */	stb r0, 0x1e(r1)
lbl_8027009C:
/* 8027009C 0026BCFC  88 01 00 08 */	lbz r0, 8(r1)
/* 802700A0 0026BD00  28 00 00 01 */	cmplwi r0, 1
/* 802700A4 0026BD04  40 82 00 10 */	bne lbl_802700B4
/* 802700A8 0026BD08  38 00 00 05 */	li r0, 5
/* 802700AC 0026BD0C  98 01 00 1D */	stb r0, 0x1d(r1)
/* 802700B0 0026BD10  48 00 00 0C */	b lbl_802700BC
lbl_802700B4:
/* 802700B4 0026BD14  38 00 00 01 */	li r0, 1
/* 802700B8 0026BD18  98 01 00 1D */	stb r0, 0x1d(r1)
lbl_802700BC:
/* 802700BC 0026BD1C  48 00 0C 9D */	bl __OSClearRTCFlags
/* 802700C0 0026BD20  38 61 00 18 */	addi r3, r1, 0x18
/* 802700C4 0026BD24  48 00 3E 41 */	bl __OSWriteStateFlags
/* 802700C8 0026BD28  38 61 00 10 */	addi r3, r1, 0x10
/* 802700CC 0026BD2C  4B FF 83 F5 */	bl __OSGetIOSRev
/* 802700D0 0026BD30  88 01 00 08 */	lbz r0, 8(r1)
/* 802700D4 0026BD34  28 00 00 01 */	cmplwi r0, 1
/* 802700D8 0026BD38  40 82 00 1C */	bne lbl_802700F4
/* 802700DC 0026BD3C  48 00 12 69 */	bl OSDisableScheduler
/* 802700E0 0026BD40  38 60 00 05 */	li r3, 5
/* 802700E4 0026BD44  4B FF FC E5 */	bl __OSShutdownDevices
/* 802700E8 0026BD48  48 00 12 99 */	bl OSEnableScheduler
/* 802700EC 0026BD4C  4B FF C1 41 */	bl __OSLaunchMenu
/* 802700F0 0026BD50  48 00 00 14 */	b lbl_80270104
lbl_802700F4:
/* 802700F4 0026BD54  48 00 12 51 */	bl OSDisableScheduler
/* 802700F8 0026BD58  38 60 00 02 */	li r3, 2
/* 802700FC 0026BD5C  4B FF FC CD */	bl __OSShutdownDevices
/* 80270100 0026BD60  48 00 33 0D */	bl __OSShutdownToSBY
lbl_80270104:
/* 80270104 0026BD64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80270108 0026BD68  7C 08 03 A6 */	mtlr r0
/* 8027010C 0026BD6C  38 21 00 40 */	addi r1, r1, 0x40
/* 80270110 0026BD70  4E 80 00 20 */	blr

.global __OSRebootForNANDAPP
__OSRebootForNANDAPP:
/* 80270114 0026BD74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80270118 0026BD78  7C 08 02 A6 */	mflr r0
/* 8027011C 0026BD7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80270120 0026BD80  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80270124 0026BD84  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80270128 0026BD88  7C 7E 1B 78 */	mr r30, r3
/* 8027012C 0026BD8C  3C 60 81 28 */	lis r3, 0x8128
/* 80270130 0026BD90  4B FF 9F F5 */	bl OSSetArenaLo
/* 80270134 0026BD94  3C 60 81 2F */	lis r3, 0x812f
/* 80270138 0026BD98  4B FF 9F D5 */	bl OSSetArenaHi
/* 8027013C 0026BD9C  38 60 10 20 */	li r3, 0x1020
/* 80270140 0026BDA0  38 80 00 20 */	li r4, 0x20
/* 80270144 0026BDA4  4B FF 9F E9 */	bl OSAllocFromMEM1ArenaLo
/* 80270148 0026BDA8  7C 7F 1B 78 */	mr r31, r3
/* 8027014C 0026BDAC  38 80 00 00 */	li r4, 0
/* 80270150 0026BDB0  38 A0 10 20 */	li r5, 0x1020
/* 80270154 0026BDB4  4B D9 3F B1 */	bl memset
/* 80270158 0026BDB8  7F E3 FB 78 */	mr r3, r31
/* 8027015C 0026BDBC  48 00 41 B1 */	bl func_8027430C
/* 80270160 0026BDC0  38 60 00 01 */	li r3, 1
/* 80270164 0026BDC4  67 C0 80 00 */	oris r0, r30, 0x8000
/* 80270168 0026BDC8  90 7F 00 08 */	stw r3, 8(r31)
/* 8027016C 0026BDCC  7F E3 FB 78 */	mr r3, r31
/* 80270170 0026BDD0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80270174 0026BDD4  48 00 40 41 */	bl __OSWriteNandbootInfo
/* 80270178 0026BDD8  38 61 00 08 */	addi r3, r1, 8
/* 8027017C 0026BDDC  48 00 3E 6D */	bl __OSReadStateFlags
/* 80270180 0026BDE0  2C 03 00 00 */	cmpwi r3, 0
/* 80270184 0026BDE4  41 82 00 14 */	beq lbl_80270198
/* 80270188 0026BDE8  38 00 00 03 */	li r0, 3
/* 8027018C 0026BDEC  38 61 00 08 */	addi r3, r1, 8
/* 80270190 0026BDF0  98 01 00 0D */	stb r0, 0xd(r1)
/* 80270194 0026BDF4  48 00 3D 71 */	bl __OSWriteStateFlags
lbl_80270198:
/* 80270198 0026BDF8  48 00 11 AD */	bl OSDisableScheduler
/* 8027019C 0026BDFC  38 60 00 04 */	li r3, 4
/* 802701A0 0026BE00  4B FF FC 29 */	bl __OSShutdownDevices
/* 802701A4 0026BE04  48 00 11 DD */	bl OSEnableScheduler
/* 802701A8 0026BE08  4B FF C1 81 */	bl func_8026C328
/* 802701AC 0026BE0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802701B0 0026BE10  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802701B4 0026BE14  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802701B8 0026BE18  7C 08 03 A6 */	mtlr r0
/* 802701BC 0026BE1C  38 21 00 30 */	addi r1, r1, 0x30
/* 802701C0 0026BE20  4E 80 00 20 */	blr

.global OSRestart
OSRestart:
/* 802701C4 0026BE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802701C8 0026BE28  7C 08 02 A6 */	mflr r0
/* 802701CC 0026BE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802701D0 0026BE30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802701D4 0026BE34  93 C1 00 08 */	stw r30, 8(r1)
/* 802701D8 0026BE38  7C 7E 1B 78 */	mr r30, r3
/* 802701DC 0026BE3C  4B FF 94 D1 */	bl OSGetAppType
/* 802701E0 0026BE40  7C 7F 1B 78 */	mr r31, r3
/* 802701E4 0026BE44  48 00 3B 39 */	bl __OSStopPlayRecord
/* 802701E8 0026BE48  48 00 34 45 */	bl __OSUnRegisterStateEvent
/* 802701EC 0026BE4C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802701F0 0026BE50  28 00 00 81 */	cmplwi r0, 0x81
/* 802701F4 0026BE54  40 82 00 10 */	bne lbl_80270204
/* 802701F8 0026BE58  7F C3 F3 78 */	mr r3, r30
/* 802701FC 0026BE5C  4B FF FF 19 */	bl __OSRebootForNANDAPP
/* 80270200 0026BE60  48 00 00 28 */	b lbl_80270228
lbl_80270204:
/* 80270204 0026BE64  28 00 00 80 */	cmplwi r0, 0x80
/* 80270208 0026BE68  40 82 00 20 */	bne lbl_80270228
/* 8027020C 0026BE6C  48 00 11 39 */	bl OSDisableScheduler
/* 80270210 0026BE70  38 60 00 04 */	li r3, 4
/* 80270214 0026BE74  4B FF FB B5 */	bl __OSShutdownDevices
/* 80270218 0026BE78  48 00 11 69 */	bl OSEnableScheduler
/* 8027021C 0026BE7C  80 8D A8 18 */	lwz r4, lbl_8063FAD8-_SDA_BASE_(r13)
/* 80270220 0026BE80  7F C3 F3 78 */	mr r3, r30
/* 80270224 0026BE84  4B FF F9 F9 */	bl __OSReboot
lbl_80270228:
/* 80270228 0026BE88  48 00 11 1D */	bl OSDisableScheduler
/* 8027022C 0026BE8C  38 60 00 01 */	li r3, 1
/* 80270230 0026BE90  4B FF FB 99 */	bl __OSShutdownDevices
/* 80270234 0026BE94  48 00 32 51 */	bl __OSHotReset
/* 80270238 0026BE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027023C 0026BE9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80270240 0026BEA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80270244 0026BEA4  7C 08 03 A6 */	mtlr r0
/* 80270248 0026BEA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8027024C 0026BEAC  4E 80 00 20 */	blr

.global OSReturnToMenu
OSReturnToMenu:
/* 80270250 0026BEB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80270254 0026BEB4  7C 08 02 A6 */	mflr r0
/* 80270258 0026BEB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027025C 0026BEBC  48 00 3A C1 */	bl __OSStopPlayRecord
/* 80270260 0026BEC0  48 00 33 CD */	bl __OSUnRegisterStateEvent
/* 80270264 0026BEC4  48 01 C5 C9 */	bl __DVDPrepareReset
/* 80270268 0026BEC8  38 61 00 10 */	addi r3, r1, 0x10
/* 8027026C 0026BECC  48 00 3D 7D */	bl __OSReadStateFlags
/* 80270270 0026BED0  48 01 C1 91 */	bl __DVDGetCoverStatus
/* 80270274 0026BED4  28 03 00 02 */	cmplwi r3, 2
/* 80270278 0026BED8  41 82 00 10 */	beq lbl_80270288
/* 8027027C 0026BEDC  38 00 00 03 */	li r0, 3
/* 80270280 0026BEE0  98 01 00 16 */	stb r0, 0x16(r1)
/* 80270284 0026BEE4  48 00 00 40 */	b lbl_802702C4
lbl_80270288:
/* 80270288 0026BEE8  88 01 00 16 */	lbz r0, 0x16(r1)
/* 8027028C 0026BEEC  28 00 00 01 */	cmplwi r0, 1
/* 80270290 0026BEF0  40 82 00 20 */	bne lbl_802702B0
/* 80270294 0026BEF4  38 61 00 08 */	addi r3, r1, 8
/* 80270298 0026BEF8  48 00 09 A5 */	bl __OSGetRTCFlags
/* 8027029C 0026BEFC  2C 03 00 00 */	cmpwi r3, 0
/* 802702A0 0026BF00  41 82 00 1C */	beq lbl_802702BC
/* 802702A4 0026BF04  80 01 00 08 */	lwz r0, 8(r1)
/* 802702A8 0026BF08  2C 00 00 00 */	cmpwi r0, 0
/* 802702AC 0026BF0C  41 82 00 10 */	beq lbl_802702BC
lbl_802702B0:
/* 802702B0 0026BF10  38 00 00 02 */	li r0, 2
/* 802702B4 0026BF14  98 01 00 16 */	stb r0, 0x16(r1)
/* 802702B8 0026BF18  48 00 00 0C */	b lbl_802702C4
lbl_802702BC:
/* 802702BC 0026BF1C  38 00 00 01 */	li r0, 1
/* 802702C0 0026BF20  98 01 00 16 */	stb r0, 0x16(r1)
lbl_802702C4:
/* 802702C4 0026BF24  38 00 00 03 */	li r0, 3
/* 802702C8 0026BF28  98 01 00 15 */	stb r0, 0x15(r1)
/* 802702CC 0026BF2C  48 00 0A 8D */	bl __OSClearRTCFlags
/* 802702D0 0026BF30  38 61 00 10 */	addi r3, r1, 0x10
/* 802702D4 0026BF34  48 00 3C 31 */	bl __OSWriteStateFlags
/* 802702D8 0026BF38  48 00 10 6D */	bl OSDisableScheduler
/* 802702DC 0026BF3C  38 60 00 05 */	li r3, 5
/* 802702E0 0026BF40  4B FF FA E9 */	bl __OSShutdownDevices
/* 802702E4 0026BF44  48 00 10 9D */	bl OSEnableScheduler
/* 802702E8 0026BF48  4B FF BF 45 */	bl __OSLaunchMenu
/* 802702EC 0026BF4C  48 00 10 59 */	bl OSDisableScheduler
/* 802702F0 0026BF50  48 00 B7 C9 */	bl __VISetRGBModeImm
/* 802702F4 0026BF54  48 00 31 91 */	bl __OSHotReset
/* 802702F8 0026BF58  3C 60 80 42 */	lis r3, lbl_80427D18@ha
/* 802702FC 0026BF5C  3C A0 80 42 */	lis r5, lbl_80427D24@ha
/* 80270300 0026BF60  38 63 7D 18 */	addi r3, r3, lbl_80427D18@l
/* 80270304 0026BF64  38 80 03 4B */	li r4, 0x34b
/* 80270308 0026BF68  38 A5 7D 24 */	addi r5, r5, lbl_80427D24@l
/* 8027030C 0026BF6C  4C C6 31 82 */	crclr 6
/* 80270310 0026BF70  4B FF B1 8D */	bl OSPanic
/* 80270314 0026BF74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80270318 0026BF78  7C 08 03 A6 */	mtlr r0
/* 8027031C 0026BF7C  38 21 00 30 */	addi r1, r1, 0x30
/* 80270320 0026BF80  4E 80 00 20 */	blr

.global __OSReturnToMenuForError
__OSReturnToMenuForError:
/* 80270324 0026BF84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80270328 0026BF88  7C 08 02 A6 */	mflr r0
/* 8027032C 0026BF8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80270330 0026BF90  38 61 00 08 */	addi r3, r1, 8
/* 80270334 0026BF94  48 00 3C B5 */	bl __OSReadStateFlags
/* 80270338 0026BF98  38 60 00 02 */	li r3, 2
/* 8027033C 0026BF9C  38 00 00 03 */	li r0, 3
/* 80270340 0026BFA0  98 61 00 0E */	stb r3, 0xe(r1)
/* 80270344 0026BFA4  98 01 00 0D */	stb r0, 0xd(r1)
/* 80270348 0026BFA8  48 00 0A 11 */	bl __OSClearRTCFlags
/* 8027034C 0026BFAC  38 61 00 08 */	addi r3, r1, 8
/* 80270350 0026BFB0  48 00 3B B5 */	bl __OSWriteStateFlags
/* 80270354 0026BFB4  4B FF BE D9 */	bl __OSLaunchMenu
/* 80270358 0026BFB8  48 00 0F ED */	bl OSDisableScheduler
/* 8027035C 0026BFBC  48 00 B7 5D */	bl __VISetRGBModeImm
/* 80270360 0026BFC0  48 00 31 25 */	bl __OSHotReset
/* 80270364 0026BFC4  3C 60 80 42 */	lis r3, lbl_80427D18@ha
/* 80270368 0026BFC8  3C A0 80 42 */	lis r5, lbl_80427D54@ha
/* 8027036C 0026BFCC  38 63 7D 18 */	addi r3, r3, lbl_80427D18@l
/* 80270370 0026BFD0  38 80 03 65 */	li r4, 0x365
/* 80270374 0026BFD4  38 A5 7D 54 */	addi r5, r5, lbl_80427D54@l
/* 80270378 0026BFD8  4C C6 31 82 */	crclr 6
/* 8027037C 0026BFDC  4B FF B1 21 */	bl OSPanic
/* 80270380 0026BFE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80270384 0026BFE4  7C 08 03 A6 */	mtlr r0
/* 80270388 0026BFE8  38 21 00 30 */	addi r1, r1, 0x30
/* 8027038C 0026BFEC  4E 80 00 20 */	blr

.global OSGetResetCode
OSGetResetCode:
/* 80270390 0026BFF0  3C 60 80 50 */	lis r3, lbl_80503C80@ha
/* 80270394 0026BFF4  80 03 3C 80 */	lwz r0, lbl_80503C80@l(r3)
/* 80270398 0026BFF8  2C 00 00 00 */	cmpwi r0, 0
/* 8027039C 0026BFFC  41 82 00 14 */	beq lbl_802703B0
/* 802703A0 0026C000  38 63 3C 80 */	addi r3, r3, 0x3c80
/* 802703A4 0026C004  80 03 00 04 */	lwz r0, 4(r3)
/* 802703A8 0026C008  64 03 80 00 */	oris r3, r0, 0x8000
/* 802703AC 0026C00C  4E 80 00 20 */	blr
lbl_802703B0:
/* 802703B0 0026C010  3C 60 CC 00 */	lis r3, 0xCC003024@ha
/* 802703B4 0026C014  80 03 30 24 */	lwz r0, 0xCC003024@l(r3)
/* 802703B8 0026C018  54 03 E8 FE */	srwi r3, r0, 3
/* 802703BC 0026C01C  4E 80 00 20 */	blr

.global OSResetSystem
OSResetSystem:
/* 802703C0 0026C020  3C 60 80 42 */	lis r3, lbl_80427D18@ha
/* 802703C4 0026C024  3C A0 80 42 */	lis r5, lbl_80427D88@ha
/* 802703C8 0026C028  38 63 7D 18 */	addi r3, r3, lbl_80427D18@l
/* 802703CC 0026C02C  38 80 03 FC */	li r4, 0x3fc
/* 802703D0 0026C030  38 A5 7D 88 */	addi r5, r5, lbl_80427D88@l
/* 802703D4 0026C034  4C C6 31 82 */	crclr 6
/* 802703D8 0026C038  4B FF B0 C4 */	b OSPanic
