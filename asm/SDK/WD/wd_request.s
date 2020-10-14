.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global WD_SetLinkState
WD_SetLinkState:
/* 802EDE50 002E9AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EDE54 002E9AB4  7C 08 02 A6 */	mflr r0
/* 802EDE58 002E9AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EDE5C 002E9ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EDE60 002E9AC0  7C 7F 1B 78 */	mr r31, r3
/* 802EDE64 002E9AC4  93 C1 00 08 */	stw r30, 8(r1)
/* 802EDE68 002E9AC8  4B FF FE F5 */	bl WDi_GetWork
/* 802EDE6C 002E9ACC  80 63 00 08 */	lwz r3, 8(r3)
/* 802EDE70 002E9AD0  38 80 00 0C */	li r4, 0xc
/* 802EDE74 002E9AD4  38 A0 00 20 */	li r5, 0x20
/* 802EDE78 002E9AD8  4B FB 64 C1 */	bl iosAllocAligned
/* 802EDE7C 002E9ADC  38 03 00 08 */	addi r0, r3, 8
/* 802EDE80 002E9AE0  7C 7E 1B 78 */	mr r30, r3
/* 802EDE84 002E9AE4  90 03 00 00 */	stw r0, 0(r3)
/* 802EDE88 002E9AE8  38 00 00 04 */	li r0, 4
/* 802EDE8C 002E9AEC  7F C6 F3 78 */	mr r6, r30
/* 802EDE90 002E9AF0  38 80 00 01 */	li r4, 1
/* 802EDE94 002E9AF4  93 E3 00 08 */	stw r31, 8(r3)
/* 802EDE98 002E9AF8  38 A0 00 00 */	li r5, 0
/* 802EDE9C 002E9AFC  90 03 00 04 */	stw r0, 4(r3)
/* 802EDEA0 002E9B00  38 60 10 02 */	li r3, 0x1002
/* 802EDEA4 002E9B04  4B FF FE C5 */	bl WDi_Ioctlv
/* 802EDEA8 002E9B08  7C 7F 1B 78 */	mr r31, r3
/* 802EDEAC 002E9B0C  4B FF FE B1 */	bl WDi_GetWork
/* 802EDEB0 002E9B10  80 63 00 08 */	lwz r3, 8(r3)
/* 802EDEB4 002E9B14  7F C4 F3 78 */	mr r4, r30
/* 802EDEB8 002E9B18  4B FB 64 85 */	bl iosFree
/* 802EDEBC 002E9B1C  7F E3 FB 78 */	mr r3, r31
/* 802EDEC0 002E9B20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EDEC4 002E9B24  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EDEC8 002E9B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EDECC 002E9B2C  7C 08 03 A6 */	mtlr r0
/* 802EDED0 002E9B30  38 21 00 10 */	addi r1, r1, 0x10
/* 802EDED4 002E9B34  4E 80 00 20 */	blr

.global WD_GetLinkState
WD_GetLinkState:
/* 802EDED8 002E9B38  38 60 10 03 */	li r3, 0x1003
/* 802EDEDC 002E9B3C  38 80 00 00 */	li r4, 0
/* 802EDEE0 002E9B40  38 A0 00 00 */	li r5, 0
/* 802EDEE4 002E9B44  38 C0 00 00 */	li r6, 0
/* 802EDEE8 002E9B48  4B FF FE 80 */	b WDi_Ioctlv

.global WD_SetConfig
WD_SetConfig:
/* 802EDEEC 002E9B4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EDEF0 002E9B50  7C 08 02 A6 */	mflr r0
/* 802EDEF4 002E9B54  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EDEF8 002E9B58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EDEFC 002E9B5C  7C BF 2B 78 */	mr r31, r5
/* 802EDF00 002E9B60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802EDF04 002E9B64  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802EDF08 002E9B68  7C DD 33 78 */	mr r29, r6
/* 802EDF0C 002E9B6C  93 81 00 10 */	stw r28, 0x10(r1)
/* 802EDF10 002E9B70  7C 7C 1B 78 */	mr r28, r3
/* 802EDF14 002E9B74  4B FF FE 49 */	bl WDi_GetWork
/* 802EDF18 002E9B78  80 63 00 08 */	lwz r3, 8(r3)
/* 802EDF1C 002E9B7C  38 80 01 98 */	li r4, 0x198
/* 802EDF20 002E9B80  38 A0 00 20 */	li r5, 0x20
/* 802EDF24 002E9B84  4B FB 64 15 */	bl iosAllocAligned
/* 802EDF28 002E9B88  38 03 00 10 */	addi r0, r3, 0x10
/* 802EDF2C 002E9B8C  38 83 01 90 */	addi r4, r3, 0x190
/* 802EDF30 002E9B90  90 03 00 00 */	stw r0, 0(r3)
/* 802EDF34 002E9B94  38 00 00 C0 */	li r0, 0xc0
/* 802EDF38 002E9B98  7C 7E 1B 78 */	mr r30, r3
/* 802EDF3C 002E9B9C  38 C3 00 0F */	addi r6, r3, 0xf
/* 802EDF40 002E9BA0  90 83 00 08 */	stw r4, 8(r3)
/* 802EDF44 002E9BA4  38 BC FF FF */	addi r5, r28, -1
/* 802EDF48 002E9BA8  7C 09 03 A6 */	mtctr r0
lbl_802EDF4C:
/* 802EDF4C 002E9BAC  88 85 00 01 */	lbz r4, 1(r5)
/* 802EDF50 002E9BB0  8C 05 00 02 */	lbzu r0, 2(r5)
/* 802EDF54 002E9BB4  98 86 00 01 */	stb r4, 1(r6)
/* 802EDF58 002E9BB8  9C 06 00 02 */	stbu r0, 2(r6)
/* 802EDF5C 002E9BBC  42 00 FF F0 */	bdnz lbl_802EDF4C
/* 802EDF60 002E9BC0  93 A3 01 94 */	stw r29, 0x194(r3)
/* 802EDF64 002E9BC4  38 E0 01 80 */	li r7, 0x180
/* 802EDF68 002E9BC8  38 00 00 08 */	li r0, 8
/* 802EDF6C 002E9BCC  7F C6 F3 78 */	mr r6, r30
/* 802EDF70 002E9BD0  93 E3 01 90 */	stw r31, 0x190(r3)
/* 802EDF74 002E9BD4  38 80 00 02 */	li r4, 2
/* 802EDF78 002E9BD8  38 A0 00 00 */	li r5, 0
/* 802EDF7C 002E9BDC  90 E3 00 04 */	stw r7, 4(r3)
/* 802EDF80 002E9BE0  90 03 00 0C */	stw r0, 0xc(r3)
/* 802EDF84 002E9BE4  38 60 10 04 */	li r3, 0x1004
/* 802EDF88 002E9BE8  4B FF FD E1 */	bl WDi_Ioctlv
/* 802EDF8C 002E9BEC  7C 7F 1B 78 */	mr r31, r3
/* 802EDF90 002E9BF0  4B FF FD CD */	bl WDi_GetWork
/* 802EDF94 002E9BF4  80 63 00 08 */	lwz r3, 8(r3)
/* 802EDF98 002E9BF8  7F C4 F3 78 */	mr r4, r30
/* 802EDF9C 002E9BFC  4B FB 63 A1 */	bl iosFree
/* 802EDFA0 002E9C00  7F E3 FB 78 */	mr r3, r31
/* 802EDFA4 002E9C04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EDFA8 002E9C08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802EDFAC 002E9C0C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802EDFB0 002E9C10  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802EDFB4 002E9C14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EDFB8 002E9C18  7C 08 03 A6 */	mtlr r0
/* 802EDFBC 002E9C1C  38 21 00 20 */	addi r1, r1, 0x20
/* 802EDFC0 002E9C20  4E 80 00 20 */	blr

.global WD_ChangeBeacon
WD_ChangeBeacon:
/* 802EDFC4 002E9C24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EDFC8 002E9C28  7C 08 02 A6 */	mflr r0
/* 802EDFCC 002E9C2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EDFD0 002E9C30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EDFD4 002E9C34  7C 9F 23 78 */	mr r31, r4
/* 802EDFD8 002E9C38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802EDFDC 002E9C3C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802EDFE0 002E9C40  7C 7D 1B 78 */	mr r29, r3
/* 802EDFE4 002E9C44  4B FF FD 79 */	bl WDi_GetWork
/* 802EDFE8 002E9C48  80 63 00 08 */	lwz r3, 8(r3)
/* 802EDFEC 002E9C4C  38 80 00 14 */	li r4, 0x14
/* 802EDFF0 002E9C50  38 A0 00 20 */	li r5, 0x20
/* 802EDFF4 002E9C54  4B FB 63 45 */	bl iosAllocAligned
/* 802EDFF8 002E9C58  38 03 00 10 */	addi r0, r3, 0x10
/* 802EDFFC 002E9C5C  7C 7E 1B 78 */	mr r30, r3
/* 802EE000 002E9C60  90 03 00 00 */	stw r0, 0(r3)
/* 802EE004 002E9C64  38 E0 00 02 */	li r7, 2
/* 802EE008 002E9C68  38 00 00 80 */	li r0, 0x80
/* 802EE00C 002E9C6C  7F C6 F3 78 */	mr r6, r30
/* 802EE010 002E9C70  B3 A3 00 10 */	sth r29, 0x10(r3)
/* 802EE014 002E9C74  38 80 00 02 */	li r4, 2
/* 802EE018 002E9C78  38 A0 00 00 */	li r5, 0
/* 802EE01C 002E9C7C  93 E3 00 08 */	stw r31, 8(r3)
/* 802EE020 002E9C80  90 E3 00 04 */	stw r7, 4(r3)
/* 802EE024 002E9C84  90 03 00 0C */	stw r0, 0xc(r3)
/* 802EE028 002E9C88  38 60 10 06 */	li r3, 0x1006
/* 802EE02C 002E9C8C  4B FF FD 3D */	bl WDi_Ioctlv
/* 802EE030 002E9C90  7C 7F 1B 78 */	mr r31, r3
/* 802EE034 002E9C94  4B FF FD 29 */	bl WDi_GetWork
/* 802EE038 002E9C98  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE03C 002E9C9C  7F C4 F3 78 */	mr r4, r30
/* 802EE040 002E9CA0  4B FB 62 FD */	bl iosFree
/* 802EE044 002E9CA4  7F E3 FB 78 */	mr r3, r31
/* 802EE048 002E9CA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EE04C 002E9CAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802EE050 002E9CB0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802EE054 002E9CB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EE058 002E9CB8  7C 08 03 A6 */	mtlr r0
/* 802EE05C 002E9CBC  38 21 00 20 */	addi r1, r1, 0x20
/* 802EE060 002E9CC0  4E 80 00 20 */	blr

.global WD_ChangeVTSF
WD_ChangeVTSF:
/* 802EE064 002E9CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EE068 002E9CC8  7C 08 02 A6 */	mflr r0
/* 802EE06C 002E9CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EE070 002E9CD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EE074 002E9CD4  93 C1 00 08 */	stw r30, 8(r1)
/* 802EE078 002E9CD8  7C 7E 1B 78 */	mr r30, r3
/* 802EE07C 002E9CDC  4B FF FC E1 */	bl WDi_GetWork
/* 802EE080 002E9CE0  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE084 002E9CE4  38 80 00 0C */	li r4, 0xc
/* 802EE088 002E9CE8  38 A0 00 20 */	li r5, 0x20
/* 802EE08C 002E9CEC  4B FB 62 AD */	bl iosAllocAligned
/* 802EE090 002E9CF0  B3 C3 00 08 */	sth r30, 8(r3)
/* 802EE094 002E9CF4  38 83 00 08 */	addi r4, r3, 8
/* 802EE098 002E9CF8  7C 7E 1B 78 */	mr r30, r3
/* 802EE09C 002E9CFC  38 00 00 02 */	li r0, 2
/* 802EE0A0 002E9D00  90 83 00 00 */	stw r4, 0(r3)
/* 802EE0A4 002E9D04  7F C6 F3 78 */	mr r6, r30
/* 802EE0A8 002E9D08  38 80 00 01 */	li r4, 1
/* 802EE0AC 002E9D0C  38 A0 00 00 */	li r5, 0
/* 802EE0B0 002E9D10  90 03 00 04 */	stw r0, 4(r3)
/* 802EE0B4 002E9D14  38 60 10 10 */	li r3, 0x1010
/* 802EE0B8 002E9D18  4B FF FC B1 */	bl WDi_Ioctlv
/* 802EE0BC 002E9D1C  7C 7F 1B 78 */	mr r31, r3
/* 802EE0C0 002E9D20  4B FF FC 9D */	bl WDi_GetWork
/* 802EE0C4 002E9D24  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE0C8 002E9D28  7F C4 F3 78 */	mr r4, r30
/* 802EE0CC 002E9D2C  4B FB 62 71 */	bl iosFree
/* 802EE0D0 002E9D30  7F E3 FB 78 */	mr r3, r31
/* 802EE0D4 002E9D34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EE0D8 002E9D38  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EE0DC 002E9D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EE0E0 002E9D40  7C 08 03 A6 */	mtlr r0
/* 802EE0E4 002E9D44  38 21 00 10 */	addi r1, r1, 0x10
/* 802EE0E8 002E9D48  4E 80 00 20 */	blr

.global WD_DisAssoc
WD_DisAssoc:
/* 802EE0EC 002E9D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EE0F0 002E9D50  7C 08 02 A6 */	mflr r0
/* 802EE0F4 002E9D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EE0F8 002E9D58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EE0FC 002E9D5C  7C 7F 1B 78 */	mr r31, r3
/* 802EE100 002E9D60  93 C1 00 08 */	stw r30, 8(r1)
/* 802EE104 002E9D64  4B FF FC 59 */	bl WDi_GetWork
/* 802EE108 002E9D68  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE10C 002E9D6C  38 80 00 10 */	li r4, 0x10
/* 802EE110 002E9D70  38 A0 00 20 */	li r5, 0x20
/* 802EE114 002E9D74  4B FB 62 25 */	bl iosAllocAligned
/* 802EE118 002E9D78  38 03 00 08 */	addi r0, r3, 8
/* 802EE11C 002E9D7C  7C 7E 1B 78 */	mr r30, r3
/* 802EE120 002E9D80  90 03 00 00 */	stw r0, 0(r3)
/* 802EE124 002E9D84  7C 03 03 78 */	mr r3, r0
/* 802EE128 002E9D88  7F E4 FB 78 */	mr r4, r31
/* 802EE12C 002E9D8C  38 A0 00 06 */	li r5, 6
/* 802EE130 002E9D90  4B D1 5E D1 */	bl memcpy
/* 802EE134 002E9D94  38 00 00 06 */	li r0, 6
/* 802EE138 002E9D98  7F C6 F3 78 */	mr r6, r30
/* 802EE13C 002E9D9C  90 1E 00 04 */	stw r0, 4(r30)
/* 802EE140 002E9DA0  38 60 10 07 */	li r3, 0x1007
/* 802EE144 002E9DA4  38 80 00 01 */	li r4, 1
/* 802EE148 002E9DA8  38 A0 00 00 */	li r5, 0
/* 802EE14C 002E9DAC  4B FF FC 1D */	bl WDi_Ioctlv
/* 802EE150 002E9DB0  7C 7F 1B 78 */	mr r31, r3
/* 802EE154 002E9DB4  4B FF FC 09 */	bl WDi_GetWork
/* 802EE158 002E9DB8  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE15C 002E9DBC  7F C4 F3 78 */	mr r4, r30
/* 802EE160 002E9DC0  4B FB 61 DD */	bl iosFree
/* 802EE164 002E9DC4  7F E3 FB 78 */	mr r3, r31
/* 802EE168 002E9DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EE16C 002E9DCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EE170 002E9DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EE174 002E9DD4  7C 08 03 A6 */	mtlr r0
/* 802EE178 002E9DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 802EE17C 002E9DDC  4E 80 00 20 */	blr

.global WD_MpSendFrame
WD_MpSendFrame:
/* 802EE180 002E9DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EE184 002E9DE4  7C 08 02 A6 */	mflr r0
/* 802EE188 002E9DE8  28 04 02 02 */	cmplwi r4, 0x202
/* 802EE18C 002E9DEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EE190 002E9DF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EE194 002E9DF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802EE198 002E9DF8  7C BE 2B 78 */	mr r30, r5
/* 802EE19C 002E9DFC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802EE1A0 002E9E00  7C 9D 23 78 */	mr r29, r4
/* 802EE1A4 002E9E04  93 81 00 10 */	stw r28, 0x10(r1)
/* 802EE1A8 002E9E08  7C 7C 1B 78 */	mr r28, r3
/* 802EE1AC 002E9E0C  40 81 00 10 */	ble lbl_802EE1BC
/* 802EE1B0 002E9E10  3C 60 80 01 */	lis r3, 0x80008001@ha
/* 802EE1B4 002E9E14  38 63 80 01 */	addi r3, r3, 0x80008001@l
/* 802EE1B8 002E9E18  48 00 00 E0 */	b lbl_802EE298
lbl_802EE1BC:
/* 802EE1BC 002E9E1C  4B FF FB A1 */	bl WDi_GetWork
/* 802EE1C0 002E9E20  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE1C4 002E9E24  38 80 00 20 */	li r4, 0x20
/* 802EE1C8 002E9E28  38 A0 00 20 */	li r5, 0x20
/* 802EE1CC 002E9E2C  4B FB 61 6D */	bl iosAllocAligned
/* 802EE1D0 002E9E30  38 03 00 10 */	addi r0, r3, 0x10
/* 802EE1D4 002E9E34  7C 7F 1B 78 */	mr r31, r3
/* 802EE1D8 002E9E38  90 03 00 08 */	stw r0, 8(r3)
/* 802EE1DC 002E9E3C  38 00 00 10 */	li r0, 0x10
/* 802EE1E0 002E9E40  88 BE 00 00 */	lbz r5, 0(r30)
/* 802EE1E4 002E9E44  7F E6 FB 78 */	mr r6, r31
/* 802EE1E8 002E9E48  88 FE 00 01 */	lbz r7, 1(r30)
/* 802EE1EC 002E9E4C  38 80 00 02 */	li r4, 2
/* 802EE1F0 002E9E50  98 A3 00 10 */	stb r5, 0x10(r3)
/* 802EE1F4 002E9E54  38 A0 00 00 */	li r5, 0
/* 802EE1F8 002E9E58  89 1E 00 02 */	lbz r8, 2(r30)
/* 802EE1FC 002E9E5C  98 E3 00 11 */	stb r7, 0x11(r3)
/* 802EE200 002E9E60  88 FE 00 03 */	lbz r7, 3(r30)
/* 802EE204 002E9E64  99 03 00 12 */	stb r8, 0x12(r3)
/* 802EE208 002E9E68  89 1E 00 04 */	lbz r8, 4(r30)
/* 802EE20C 002E9E6C  98 E3 00 13 */	stb r7, 0x13(r3)
/* 802EE210 002E9E70  88 FE 00 05 */	lbz r7, 5(r30)
/* 802EE214 002E9E74  99 03 00 14 */	stb r8, 0x14(r3)
/* 802EE218 002E9E78  89 1E 00 06 */	lbz r8, 6(r30)
/* 802EE21C 002E9E7C  98 E3 00 15 */	stb r7, 0x15(r3)
/* 802EE220 002E9E80  88 FE 00 07 */	lbz r7, 7(r30)
/* 802EE224 002E9E84  99 03 00 16 */	stb r8, 0x16(r3)
/* 802EE228 002E9E88  89 1E 00 08 */	lbz r8, 8(r30)
/* 802EE22C 002E9E8C  98 E3 00 17 */	stb r7, 0x17(r3)
/* 802EE230 002E9E90  88 FE 00 09 */	lbz r7, 9(r30)
/* 802EE234 002E9E94  99 03 00 18 */	stb r8, 0x18(r3)
/* 802EE238 002E9E98  89 1E 00 0A */	lbz r8, 0xa(r30)
/* 802EE23C 002E9E9C  98 E3 00 19 */	stb r7, 0x19(r3)
/* 802EE240 002E9EA0  88 FE 00 0B */	lbz r7, 0xb(r30)
/* 802EE244 002E9EA4  99 03 00 1A */	stb r8, 0x1a(r3)
/* 802EE248 002E9EA8  89 1E 00 0C */	lbz r8, 0xc(r30)
/* 802EE24C 002E9EAC  98 E3 00 1B */	stb r7, 0x1b(r3)
/* 802EE250 002E9EB0  88 FE 00 0D */	lbz r7, 0xd(r30)
/* 802EE254 002E9EB4  99 03 00 1C */	stb r8, 0x1c(r3)
/* 802EE258 002E9EB8  89 1E 00 0E */	lbz r8, 0xe(r30)
/* 802EE25C 002E9EBC  98 E3 00 1D */	stb r7, 0x1d(r3)
/* 802EE260 002E9EC0  88 FE 00 0F */	lbz r7, 0xf(r30)
/* 802EE264 002E9EC4  99 03 00 1E */	stb r8, 0x1e(r3)
/* 802EE268 002E9EC8  98 E3 00 1F */	stb r7, 0x1f(r3)
/* 802EE26C 002E9ECC  93 83 00 00 */	stw r28, 0(r3)
/* 802EE270 002E9ED0  93 A3 00 04 */	stw r29, 4(r3)
/* 802EE274 002E9ED4  90 03 00 0C */	stw r0, 0xc(r3)
/* 802EE278 002E9ED8  38 60 10 08 */	li r3, 0x1008
/* 802EE27C 002E9EDC  4B FF FA ED */	bl WDi_Ioctlv
/* 802EE280 002E9EE0  7C 7C 1B 78 */	mr r28, r3
/* 802EE284 002E9EE4  4B FF FA D9 */	bl WDi_GetWork
/* 802EE288 002E9EE8  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE28C 002E9EEC  7F E4 FB 78 */	mr r4, r31
/* 802EE290 002E9EF0  4B FB 60 AD */	bl iosFree
/* 802EE294 002E9EF4  7F 83 E3 78 */	mr r3, r28
lbl_802EE298:
/* 802EE298 002E9EF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EE29C 002E9EFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EE2A0 002E9F00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802EE2A4 002E9F04  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802EE2A8 002E9F08  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802EE2AC 002E9F0C  7C 08 03 A6 */	mtlr r0
/* 802EE2B0 002E9F10  38 21 00 20 */	addi r1, r1, 0x20
/* 802EE2B4 002E9F14  4E 80 00 20 */	blr

.global WD_GetInfo
WD_GetInfo:
/* 802EE2B8 002E9F18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EE2BC 002E9F1C  7C 08 02 A6 */	mflr r0
/* 802EE2C0 002E9F20  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EE2C4 002E9F24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EE2C8 002E9F28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802EE2CC 002E9F2C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802EE2D0 002E9F30  7C 7D 1B 78 */	mr r29, r3
/* 802EE2D4 002E9F34  4B FF FA 89 */	bl WDi_GetWork
/* 802EE2D8 002E9F38  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE2DC 002E9F3C  38 80 00 98 */	li r4, 0x98
/* 802EE2E0 002E9F40  38 A0 00 20 */	li r5, 0x20
/* 802EE2E4 002E9F44  4B FB 60 55 */	bl iosAllocAligned
/* 802EE2E8 002E9F48  38 83 00 08 */	addi r4, r3, 8
/* 802EE2EC 002E9F4C  38 00 00 48 */	li r0, 0x48
/* 802EE2F0 002E9F50  7C 7E 1B 78 */	mr r30, r3
/* 802EE2F4 002E9F54  90 83 00 00 */	stw r4, 0(r3)
/* 802EE2F8 002E9F58  38 C3 00 07 */	addi r6, r3, 7
/* 802EE2FC 002E9F5C  38 BD FF FF */	addi r5, r29, -1
/* 802EE300 002E9F60  7C 09 03 A6 */	mtctr r0
lbl_802EE304:
/* 802EE304 002E9F64  88 85 00 01 */	lbz r4, 1(r5)
/* 802EE308 002E9F68  8C 05 00 02 */	lbzu r0, 2(r5)
/* 802EE30C 002E9F6C  98 86 00 01 */	stb r4, 1(r6)
/* 802EE310 002E9F70  9C 06 00 02 */	stbu r0, 2(r6)
/* 802EE314 002E9F74  42 00 FF F0 */	bdnz lbl_802EE304
/* 802EE318 002E9F78  38 00 00 90 */	li r0, 0x90
/* 802EE31C 002E9F7C  7F C6 F3 78 */	mr r6, r30
/* 802EE320 002E9F80  90 03 00 04 */	stw r0, 4(r3)
/* 802EE324 002E9F84  38 60 10 0E */	li r3, 0x100e
/* 802EE328 002E9F88  38 80 00 00 */	li r4, 0
/* 802EE32C 002E9F8C  38 A0 00 01 */	li r5, 1
/* 802EE330 002E9F90  4B FF FA 39 */	bl WDi_Ioctlv
/* 802EE334 002E9F94  38 00 00 48 */	li r0, 0x48
/* 802EE338 002E9F98  7C 7F 1B 78 */	mr r31, r3
/* 802EE33C 002E9F9C  38 BD FF FF */	addi r5, r29, -1
/* 802EE340 002E9FA0  38 9E 00 07 */	addi r4, r30, 7
/* 802EE344 002E9FA4  7C 09 03 A6 */	mtctr r0
lbl_802EE348:
/* 802EE348 002E9FA8  88 64 00 01 */	lbz r3, 1(r4)
/* 802EE34C 002E9FAC  8C 04 00 02 */	lbzu r0, 2(r4)
/* 802EE350 002E9FB0  98 65 00 01 */	stb r3, 1(r5)
/* 802EE354 002E9FB4  9C 05 00 02 */	stbu r0, 2(r5)
/* 802EE358 002E9FB8  42 00 FF F0 */	bdnz lbl_802EE348
/* 802EE35C 002E9FBC  4B FF FA 01 */	bl WDi_GetWork
/* 802EE360 002E9FC0  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE364 002E9FC4  7F C4 F3 78 */	mr r4, r30
/* 802EE368 002E9FC8  4B FB 5F D5 */	bl iosFree
/* 802EE36C 002E9FCC  7F E3 FB 78 */	mr r3, r31
/* 802EE370 002E9FD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EE374 002E9FD4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802EE378 002E9FD8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802EE37C 002E9FDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EE380 002E9FE0  7C 08 03 A6 */	mtlr r0
/* 802EE384 002E9FE4  38 21 00 20 */	addi r1, r1, 0x20
/* 802EE388 002E9FE8  4E 80 00 20 */	blr