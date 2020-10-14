.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global NCDSetNwc24Permission
NCDSetNwc24Permission:
/* 802ED204 002E8E64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ED208 002E8E68  7C 08 02 A6 */	mflr r0
/* 802ED20C 002E8E6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ED210 002E8E70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802ED214 002E8E74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802ED218 002E8E78  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802ED21C 002E8E7C  7C 7D 1B 78 */	mr r29, r3
/* 802ED220 002E8E80  4B F8 40 D9 */	bl OSGetCurrentThread
/* 802ED224 002E8E84  2C 03 00 00 */	cmpwi r3, 0
/* 802ED228 002E8E88  40 82 00 0C */	bne lbl_802ED234
/* 802ED22C 002E8E8C  38 60 FF FB */	li r3, -5
/* 802ED230 002E8E90  48 00 00 88 */	b lbl_802ED2B8
lbl_802ED234:
/* 802ED234 002E8E94  48 00 0A 39 */	bl LockRight
/* 802ED238 002E8E98  48 01 6B 59 */	bl NWC24iLockSocket
/* 802ED23C 002E8E9C  2C 03 00 00 */	cmpwi r3, 0
/* 802ED240 002E8EA0  40 82 00 48 */	bne lbl_802ED288
/* 802ED244 002E8EA4  3F E0 80 44 */	lis r31, lbl_80445AF0@ha
/* 802ED248 002E8EA8  38 80 00 00 */	li r4, 0
/* 802ED24C 002E8EAC  38 7F 5A F0 */	addi r3, r31, lbl_80445AF0@l
/* 802ED250 002E8EB0  38 A0 00 03 */	li r5, 3
/* 802ED254 002E8EB4  48 00 08 85 */	bl ExecConfigCommand
/* 802ED258 002E8EB8  2C 03 00 00 */	cmpwi r3, 0
/* 802ED25C 002E8EBC  7C 7E 1B 78 */	mr r30, r3
/* 802ED260 002E8EC0  40 82 00 20 */	bne lbl_802ED280
/* 802ED264 002E8EC4  80 CD AF 34 */	lwz r6, lbl_806401F4-_SDA_BASE_(r13)
/* 802ED268 002E8EC8  38 7F 5A F0 */	addi r3, r31, 0x5af0
/* 802ED26C 002E8ECC  38 80 00 00 */	li r4, 0
/* 802ED270 002E8ED0  38 A0 00 04 */	li r5, 4
/* 802ED274 002E8ED4  9B A6 00 05 */	stb r29, 5(r6)
/* 802ED278 002E8ED8  48 00 08 61 */	bl ExecConfigCommand
/* 802ED27C 002E8EDC  7C 7E 1B 78 */	mr r30, r3
lbl_802ED280:
/* 802ED280 002E8EE0  48 01 6B 21 */	bl NWC24iUnlockSocket
/* 802ED284 002E8EE4  48 00 00 24 */	b lbl_802ED2A8
lbl_802ED288:
/* 802ED288 002E8EE8  2C 03 FF EA */	cmpwi r3, -22
/* 802ED28C 002E8EEC  40 82 00 0C */	bne lbl_802ED298
/* 802ED290 002E8EF0  3B C0 FF FC */	li r30, -4
/* 802ED294 002E8EF4  48 00 00 14 */	b lbl_802ED2A8
lbl_802ED298:
/* 802ED298 002E8EF8  2C 03 FF E3 */	cmpwi r3, -29
/* 802ED29C 002E8EFC  3B C0 FF FE */	li r30, -2
/* 802ED2A0 002E8F00  40 82 00 08 */	bne lbl_802ED2A8
/* 802ED2A4 002E8F04  3B C0 FF F8 */	li r30, -8
lbl_802ED2A8:
/* 802ED2A8 002E8F08  3C 60 80 58 */	lis r3, lbl_80579060@ha
/* 802ED2AC 002E8F0C  38 63 90 60 */	addi r3, r3, lbl_80579060@l
/* 802ED2B0 002E8F10  4B F8 27 75 */	bl OSUnlockMutex
/* 802ED2B4 002E8F14  7F C3 F3 78 */	mr r3, r30
lbl_802ED2B8:
/* 802ED2B8 002E8F18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ED2BC 002E8F1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802ED2C0 002E8F20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802ED2C4 002E8F24  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802ED2C8 002E8F28  7C 08 03 A6 */	mtlr r0
/* 802ED2CC 002E8F2C  38 21 00 20 */	addi r1, r1, 0x20
/* 802ED2D0 002E8F30  4E 80 00 20 */	blr

.global NCDGetCurrentIfConfig
NCDGetCurrentIfConfig:
/* 802ED2D4 002E8F34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ED2D8 002E8F38  7C 08 02 A6 */	mflr r0
/* 802ED2DC 002E8F3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ED2E0 002E8F40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802ED2E4 002E8F44  3B E0 00 00 */	li r31, 0
/* 802ED2E8 002E8F48  7C 03 F8 40 */	cmplw r3, r31
/* 802ED2EC 002E8F4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802ED2F0 002E8F50  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802ED2F4 002E8F54  7C 7D 1B 78 */	mr r29, r3
/* 802ED2F8 002E8F58  40 82 00 0C */	bne lbl_802ED304
/* 802ED2FC 002E8F5C  38 60 FF FD */	li r3, -3
/* 802ED300 002E8F60  48 00 00 B0 */	b lbl_802ED3B0
lbl_802ED304:
/* 802ED304 002E8F64  48 00 09 69 */	bl LockRight
/* 802ED308 002E8F68  3C 60 80 44 */	lis r3, lbl_80445B08@ha
/* 802ED30C 002E8F6C  38 80 00 00 */	li r4, 0
/* 802ED310 002E8F70  38 63 5B 08 */	addi r3, r3, lbl_80445B08@l
/* 802ED314 002E8F74  38 A0 00 03 */	li r5, 3
/* 802ED318 002E8F78  48 00 07 C1 */	bl ExecConfigCommand
/* 802ED31C 002E8F7C  2C 03 00 00 */	cmpwi r3, 0
/* 802ED320 002E8F80  7C 7F 1B 78 */	mr r31, r3
/* 802ED324 002E8F84  40 82 00 7C */	bne lbl_802ED3A0
/* 802ED328 002E8F88  3C 60 80 58 */	lis r3, lbl_80579080@ha
/* 802ED32C 002E8F8C  83 CD AF 34 */	lwz r30, lbl_806401F4-_SDA_BASE_(r13)
/* 802ED330 002E8F90  38 63 90 80 */	addi r3, r3, lbl_80579080@l
/* 802ED334 002E8F94  80 03 00 04 */	lwz r0, 4(r3)
/* 802ED338 002E8F98  2C 00 00 00 */	cmpwi r0, 0
/* 802ED33C 002E8F9C  41 80 00 0C */	blt lbl_802ED348
/* 802ED340 002E8FA0  2C 00 00 03 */	cmpwi r0, 3
/* 802ED344 002E8FA4  41 80 00 0C */	blt lbl_802ED350
lbl_802ED348:
/* 802ED348 002E8FA8  3B E0 FF F9 */	li r31, -7
/* 802ED34C 002E8FAC  48 00 00 54 */	b lbl_802ED3A0
lbl_802ED350:
/* 802ED350 002E8FB0  1C 00 09 1C */	mulli r0, r0, 0x91c
/* 802ED354 002E8FB4  7C 9E 02 14 */	add r4, r30, r0
/* 802ED358 002E8FB8  88 04 00 08 */	lbz r0, 8(r4)
/* 802ED35C 002E8FBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802ED360 002E8FC0  41 82 00 20 */	beq lbl_802ED380
/* 802ED364 002E8FC4  38 00 00 02 */	li r0, 2
/* 802ED368 002E8FC8  38 7D 00 02 */	addi r3, r29, 2
/* 802ED36C 002E8FCC  98 1D 00 00 */	stb r0, 0(r29)
/* 802ED370 002E8FD0  38 84 07 C8 */	addi r4, r4, 0x7c8
/* 802ED374 002E8FD4  38 A0 00 04 */	li r5, 4
/* 802ED378 002E8FD8  4B D1 6C 89 */	bl memcpy
/* 802ED37C 002E8FDC  48 00 00 1C */	b lbl_802ED398
lbl_802ED380:
/* 802ED380 002E8FE0  38 00 00 01 */	li r0, 1
/* 802ED384 002E8FE4  38 7D 00 02 */	addi r3, r29, 2
/* 802ED388 002E8FE8  98 1D 00 00 */	stb r0, 0(r29)
/* 802ED38C 002E8FEC  38 84 07 C8 */	addi r4, r4, 0x7c8
/* 802ED390 002E8FF0  38 A0 01 5C */	li r5, 0x15c
/* 802ED394 002E8FF4  4B D1 6C 6D */	bl memcpy
lbl_802ED398:
/* 802ED398 002E8FF8  88 1E 00 06 */	lbz r0, 6(r30)
/* 802ED39C 002E8FFC  98 1D 00 01 */	stb r0, 1(r29)
lbl_802ED3A0:
/* 802ED3A0 002E9000  3C 60 80 58 */	lis r3, lbl_80579060@ha
/* 802ED3A4 002E9004  38 63 90 60 */	addi r3, r3, lbl_80579060@l
/* 802ED3A8 002E9008  4B F8 26 7D */	bl OSUnlockMutex
/* 802ED3AC 002E900C  7F E3 FB 78 */	mr r3, r31
lbl_802ED3B0:
/* 802ED3B0 002E9010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ED3B4 002E9014  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802ED3B8 002E9018  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802ED3BC 002E901C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802ED3C0 002E9020  7C 08 03 A6 */	mtlr r0
/* 802ED3C4 002E9024  38 21 00 20 */	addi r1, r1, 0x20
/* 802ED3C8 002E9028  4E 80 00 20 */	blr

.global NCDGetCurrentIpConfig
NCDGetCurrentIpConfig:
/* 802ED3CC 002E902C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ED3D0 002E9030  7C 08 02 A6 */	mflr r0
/* 802ED3D4 002E9034  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ED3D8 002E9038  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802ED3DC 002E903C  7C 7F 1B 78 */	mr r31, r3
/* 802ED3E0 002E9040  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802ED3E4 002E9044  3B C0 00 00 */	li r30, 0
/* 802ED3E8 002E9048  7C 03 F0 40 */	cmplw r3, r30
/* 802ED3EC 002E904C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802ED3F0 002E9050  93 81 00 10 */	stw r28, 0x10(r1)
/* 802ED3F4 002E9054  40 82 00 0C */	bne lbl_802ED400
/* 802ED3F8 002E9058  38 60 FF FD */	li r3, -3
/* 802ED3FC 002E905C  48 00 01 08 */	b lbl_802ED504
lbl_802ED400:
/* 802ED400 002E9060  48 00 08 6D */	bl LockRight
/* 802ED404 002E9064  3C 60 80 44 */	lis r3, lbl_80445B20@ha
/* 802ED408 002E9068  38 80 00 00 */	li r4, 0
/* 802ED40C 002E906C  38 63 5B 20 */	addi r3, r3, lbl_80445B20@l
/* 802ED410 002E9070  38 A0 00 03 */	li r5, 3
/* 802ED414 002E9074  48 00 06 C5 */	bl ExecConfigCommand
/* 802ED418 002E9078  2C 03 00 00 */	cmpwi r3, 0
/* 802ED41C 002E907C  7C 7E 1B 78 */	mr r30, r3
/* 802ED420 002E9080  40 82 00 D4 */	bne lbl_802ED4F4
/* 802ED424 002E9084  3C 60 80 58 */	lis r3, lbl_80579080@ha
/* 802ED428 002E9088  83 AD AF 34 */	lwz r29, lbl_806401F4-_SDA_BASE_(r13)
/* 802ED42C 002E908C  38 63 90 80 */	addi r3, r3, lbl_80579080@l
/* 802ED430 002E9090  83 83 00 04 */	lwz r28, 4(r3)
/* 802ED434 002E9094  2C 1C 00 00 */	cmpwi r28, 0
/* 802ED438 002E9098  41 80 00 0C */	blt lbl_802ED444
/* 802ED43C 002E909C  2C 1C 00 03 */	cmpwi r28, 3
/* 802ED440 002E90A0  41 80 00 0C */	blt lbl_802ED44C
lbl_802ED444:
/* 802ED444 002E90A4  3B C0 FF F9 */	li r30, -7
/* 802ED448 002E90A8  48 00 00 AC */	b lbl_802ED4F4
lbl_802ED44C:
/* 802ED44C 002E90AC  1C 1C 09 1C */	mulli r0, r28, 0x91c
/* 802ED450 002E90B0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802ED454 002E90B4  38 A0 00 0C */	li r5, 0xc
/* 802ED458 002E90B8  7C 9D 02 14 */	add r4, r29, r0
/* 802ED45C 002E90BC  38 84 00 20 */	addi r4, r4, 0x20
/* 802ED460 002E90C0  4B D1 6B A1 */	bl memcpy
/* 802ED464 002E90C4  1C 1C 09 1C */	mulli r0, r28, 0x91c
/* 802ED468 002E90C8  7C 9D 02 14 */	add r4, r29, r0
/* 802ED46C 002E90CC  88 04 00 08 */	lbz r0, 8(r4)
/* 802ED470 002E90D0  54 00 07 7D */	rlwinm. r0, r0, 0, 0x1d, 0x1e
/* 802ED474 002E90D4  41 82 00 20 */	beq lbl_802ED494
/* 802ED478 002E90D8  38 00 00 01 */	li r0, 1
/* 802ED47C 002E90DC  38 7F 00 08 */	addi r3, r31, 8
/* 802ED480 002E90E0  90 1F 00 00 */	stw r0, 0(r31)
/* 802ED484 002E90E4  38 84 00 0C */	addi r4, r4, 0xc
/* 802ED488 002E90E8  38 A0 00 14 */	li r5, 0x14
/* 802ED48C 002E90EC  4B D1 6B 75 */	bl memcpy
/* 802ED490 002E90F0  48 00 00 1C */	b lbl_802ED4AC
lbl_802ED494:
/* 802ED494 002E90F4  38 00 00 00 */	li r0, 0
/* 802ED498 002E90F8  38 7F 00 08 */	addi r3, r31, 8
/* 802ED49C 002E90FC  90 1F 00 00 */	stw r0, 0(r31)
/* 802ED4A0 002E9100  38 84 00 0C */	addi r4, r4, 0xc
/* 802ED4A4 002E9104  38 A0 00 14 */	li r5, 0x14
/* 802ED4A8 002E9108  4B D1 6B 59 */	bl memcpy
lbl_802ED4AC:
/* 802ED4AC 002E910C  1C 1C 09 1C */	mulli r0, r28, 0x91c
/* 802ED4B0 002E9110  7C 9D 02 14 */	add r4, r29, r0
/* 802ED4B4 002E9114  88 04 00 08 */	lbz r0, 8(r4)
/* 802ED4B8 002E9118  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 802ED4BC 002E911C  41 82 00 20 */	beq lbl_802ED4DC
/* 802ED4C0 002E9120  38 00 00 01 */	li r0, 1
/* 802ED4C4 002E9124  38 7F 00 28 */	addi r3, r31, 0x28
/* 802ED4C8 002E9128  90 1F 00 04 */	stw r0, 4(r31)
/* 802ED4CC 002E912C  38 84 00 2C */	addi r4, r4, 0x2c
/* 802ED4D0 002E9130  38 A0 07 9C */	li r5, 0x79c
/* 802ED4D4 002E9134  4B D1 6B 2D */	bl memcpy
/* 802ED4D8 002E9138  48 00 00 1C */	b lbl_802ED4F4
lbl_802ED4DC:
/* 802ED4DC 002E913C  38 00 00 00 */	li r0, 0
/* 802ED4E0 002E9140  38 7F 00 28 */	addi r3, r31, 0x28
/* 802ED4E4 002E9144  90 1F 00 04 */	stw r0, 4(r31)
/* 802ED4E8 002E9148  38 80 00 00 */	li r4, 0
/* 802ED4EC 002E914C  38 A0 07 9C */	li r5, 0x79c
/* 802ED4F0 002E9150  4B D1 6C 15 */	bl memset
lbl_802ED4F4:
/* 802ED4F4 002E9154  3C 60 80 58 */	lis r3, lbl_80579060@ha
/* 802ED4F8 002E9158  38 63 90 60 */	addi r3, r3, lbl_80579060@l
/* 802ED4FC 002E915C  4B F8 25 29 */	bl OSUnlockMutex
/* 802ED500 002E9160  7F C3 F3 78 */	mr r3, r30
lbl_802ED504:
/* 802ED504 002E9164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ED508 002E9168  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802ED50C 002E916C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802ED510 002E9170  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802ED514 002E9174  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802ED518 002E9178  7C 08 03 A6 */	mtlr r0
/* 802ED51C 002E917C  38 21 00 20 */	addi r1, r1, 0x20
/* 802ED520 002E9180  4E 80 00 20 */	blr

.global NCDGetLinkStatus
NCDGetLinkStatus:
/* 802ED524 002E9184  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ED528 002E9188  7C 08 02 A6 */	mflr r0
/* 802ED52C 002E918C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ED530 002E9190  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802ED534 002E9194  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802ED538 002E9198  3F C0 80 58 */	lis r30, lbl_80579060@ha
/* 802ED53C 002E919C  3B DE 90 60 */	addi r30, r30, lbl_80579060@l
/* 802ED540 002E91A0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802ED544 002E91A4  93 81 00 10 */	stw r28, 0x10(r1)
/* 802ED548 002E91A8  4B F8 3D B1 */	bl OSGetCurrentThread
/* 802ED54C 002E91AC  2C 03 00 00 */	cmpwi r3, 0
/* 802ED550 002E91B0  40 82 00 0C */	bne lbl_802ED55C
/* 802ED554 002E91B4  38 60 FF FB */	li r3, -5
/* 802ED558 002E91B8  48 00 00 B0 */	b lbl_802ED608
lbl_802ED55C:
/* 802ED55C 002E91BC  48 00 07 11 */	bl LockRight
/* 802ED560 002E91C0  3C 60 80 44 */	lis r3, lbl_80445B38@ha
/* 802ED564 002E91C4  38 80 00 00 */	li r4, 0
/* 802ED568 002E91C8  38 63 5B 38 */	addi r3, r3, lbl_80445B38@l
/* 802ED56C 002E91CC  4B FB 5B ED */	bl IOS_Open
/* 802ED570 002E91D0  2C 03 00 00 */	cmpwi r3, 0
/* 802ED574 002E91D4  7C 7C 1B 78 */	mr r28, r3
/* 802ED578 002E91D8  40 80 00 1C */	bge lbl_802ED594
/* 802ED57C 002E91DC  2C 03 FF FA */	cmpwi r3, -6
/* 802ED580 002E91E0  40 82 00 0C */	bne lbl_802ED58C
/* 802ED584 002E91E4  3B A0 FF F8 */	li r29, -8
/* 802ED588 002E91E8  48 00 00 74 */	b lbl_802ED5FC
lbl_802ED58C:
/* 802ED58C 002E91EC  3B A0 FF FE */	li r29, -2
/* 802ED590 002E91F0  48 00 00 6C */	b lbl_802ED5FC
lbl_802ED594:
/* 802ED594 002E91F4  3B FE 00 20 */	addi r31, r30, 0x20
/* 802ED598 002E91F8  38 FE 00 40 */	addi r7, r30, 0x40
/* 802ED59C 002E91FC  38 00 00 20 */	li r0, 0x20
/* 802ED5A0 002E9200  93 FE 00 40 */	stw r31, 0x40(r30)
/* 802ED5A4 002E9204  38 80 00 07 */	li r4, 7
/* 802ED5A8 002E9208  38 A0 00 00 */	li r5, 0
/* 802ED5AC 002E920C  90 07 00 04 */	stw r0, 4(r7)
/* 802ED5B0 002E9210  38 C0 00 01 */	li r6, 1
/* 802ED5B4 002E9214  4B FB 68 8D */	bl IOS_Ioctlv
/* 802ED5B8 002E9218  2C 03 00 00 */	cmpwi r3, 0
/* 802ED5BC 002E921C  40 80 00 0C */	bge lbl_802ED5C8
/* 802ED5C0 002E9220  3B A0 FF FE */	li r29, -2
/* 802ED5C4 002E9224  48 00 00 24 */	b lbl_802ED5E8
lbl_802ED5C8:
/* 802ED5C8 002E9228  83 BE 00 20 */	lwz r29, 0x20(r30)
/* 802ED5CC 002E922C  2C 1D 00 00 */	cmpwi r29, 0
/* 802ED5D0 002E9230  40 82 00 18 */	bne lbl_802ED5E8
/* 802ED5D4 002E9234  83 BF 00 04 */	lwz r29, 4(r31)
/* 802ED5D8 002E9238  2C 1D 00 00 */	cmpwi r29, 0
/* 802ED5DC 002E923C  41 80 00 08 */	blt lbl_802ED5E4
/* 802ED5E0 002E9240  48 00 00 08 */	b lbl_802ED5E8
lbl_802ED5E4:
/* 802ED5E4 002E9244  3B A0 FF FF */	li r29, -1
lbl_802ED5E8:
/* 802ED5E8 002E9248  7F 83 E3 78 */	mr r3, r28
/* 802ED5EC 002E924C  4B FB 5D 4D */	bl IOS_Close
/* 802ED5F0 002E9250  2C 03 00 00 */	cmpwi r3, 0
/* 802ED5F4 002E9254  40 80 00 08 */	bge lbl_802ED5FC
/* 802ED5F8 002E9258  3B A0 FF FF */	li r29, -1
lbl_802ED5FC:
/* 802ED5FC 002E925C  38 7E 00 00 */	addi r3, r30, 0
/* 802ED600 002E9260  4B F8 24 25 */	bl OSUnlockMutex
/* 802ED604 002E9264  7F A3 EB 78 */	mr r3, r29
lbl_802ED608:
/* 802ED608 002E9268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ED60C 002E926C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802ED610 002E9270  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802ED614 002E9274  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802ED618 002E9278  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802ED61C 002E927C  7C 08 03 A6 */	mtlr r0
/* 802ED620 002E9280  38 21 00 20 */	addi r1, r1, 0x20
/* 802ED624 002E9284  4E 80 00 20 */	blr

.global NCDiGetWirelessMacAddress
NCDiGetWirelessMacAddress:
/* 802ED628 002E9288  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ED62C 002E928C  7C 08 02 A6 */	mflr r0
/* 802ED630 002E9290  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ED634 002E9294  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802ED638 002E9298  3F E0 80 58 */	lis r31, lbl_80579060@ha
/* 802ED63C 002E929C  3B FF 90 60 */	addi r31, r31, lbl_80579060@l
/* 802ED640 002E92A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802ED644 002E92A4  3B C0 00 00 */	li r30, 0
/* 802ED648 002E92A8  7C 03 F0 40 */	cmplw r3, r30
/* 802ED64C 002E92AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802ED650 002E92B0  93 81 00 10 */	stw r28, 0x10(r1)
/* 802ED654 002E92B4  7C 7C 1B 78 */	mr r28, r3
/* 802ED658 002E92B8  40 82 00 0C */	bne lbl_802ED664
/* 802ED65C 002E92BC  38 60 FF FD */	li r3, -3
/* 802ED660 002E92C0  48 00 00 D0 */	b lbl_802ED730
lbl_802ED664:
/* 802ED664 002E92C4  4B F8 3C 95 */	bl OSGetCurrentThread
/* 802ED668 002E92C8  2C 03 00 00 */	cmpwi r3, 0
/* 802ED66C 002E92CC  40 82 00 0C */	bne lbl_802ED678
/* 802ED670 002E92D0  38 60 FF FB */	li r3, -5
/* 802ED674 002E92D4  48 00 00 BC */	b lbl_802ED730
lbl_802ED678:
/* 802ED678 002E92D8  48 00 05 F5 */	bl LockRight
/* 802ED67C 002E92DC  3C 60 80 44 */	lis r3, lbl_80445B38@ha
/* 802ED680 002E92E0  38 80 00 00 */	li r4, 0
/* 802ED684 002E92E4  38 63 5B 38 */	addi r3, r3, lbl_80445B38@l
/* 802ED688 002E92E8  4B FB 5A D1 */	bl IOS_Open
/* 802ED68C 002E92EC  2C 03 00 00 */	cmpwi r3, 0
/* 802ED690 002E92F0  7C 7D 1B 78 */	mr r29, r3
/* 802ED694 002E92F4  40 80 00 1C */	bge lbl_802ED6B0
/* 802ED698 002E92F8  2C 03 FF FA */	cmpwi r3, -6
/* 802ED69C 002E92FC  40 82 00 0C */	bne lbl_802ED6A8
/* 802ED6A0 002E9300  3B C0 FF F8 */	li r30, -8
/* 802ED6A4 002E9304  48 00 00 80 */	b lbl_802ED724
lbl_802ED6A8:
/* 802ED6A8 002E9308  3B C0 FF FE */	li r30, -2
/* 802ED6AC 002E930C  48 00 00 78 */	b lbl_802ED724
lbl_802ED6B0:
/* 802ED6B0 002E9310  81 0D AF 34 */	lwz r8, lbl_806401F4-_SDA_BASE_(r13)
/* 802ED6B4 002E9314  38 FF 00 40 */	addi r7, r31, 0x40
/* 802ED6B8 002E9318  38 9F 00 20 */	addi r4, r31, 0x20
/* 802ED6BC 002E931C  38 A0 00 20 */	li r5, 0x20
/* 802ED6C0 002E9320  38 00 00 06 */	li r0, 6
/* 802ED6C4 002E9324  90 9F 00 40 */	stw r4, 0x40(r31)
/* 802ED6C8 002E9328  38 80 00 08 */	li r4, 8
/* 802ED6CC 002E932C  38 C0 00 02 */	li r6, 2
/* 802ED6D0 002E9330  90 A7 00 04 */	stw r5, 4(r7)
/* 802ED6D4 002E9334  38 A0 00 00 */	li r5, 0
/* 802ED6D8 002E9338  91 07 00 08 */	stw r8, 8(r7)
/* 802ED6DC 002E933C  90 07 00 0C */	stw r0, 0xc(r7)
/* 802ED6E0 002E9340  4B FB 67 61 */	bl IOS_Ioctlv
/* 802ED6E4 002E9344  2C 03 00 00 */	cmpwi r3, 0
/* 802ED6E8 002E9348  40 80 00 0C */	bge lbl_802ED6F4
/* 802ED6EC 002E934C  3B C0 FF FE */	li r30, -2
/* 802ED6F0 002E9350  48 00 00 20 */	b lbl_802ED710
lbl_802ED6F4:
/* 802ED6F4 002E9354  83 DF 00 20 */	lwz r30, 0x20(r31)
/* 802ED6F8 002E9358  2C 1E 00 00 */	cmpwi r30, 0
/* 802ED6FC 002E935C  40 82 00 14 */	bne lbl_802ED710
/* 802ED700 002E9360  80 8D AF 34 */	lwz r4, lbl_806401F4-_SDA_BASE_(r13)
/* 802ED704 002E9364  7F 83 E3 78 */	mr r3, r28
/* 802ED708 002E9368  38 A0 00 06 */	li r5, 6
/* 802ED70C 002E936C  4B D1 68 F5 */	bl memcpy
lbl_802ED710:
/* 802ED710 002E9370  7F A3 EB 78 */	mr r3, r29
/* 802ED714 002E9374  4B FB 5C 25 */	bl IOS_Close
/* 802ED718 002E9378  2C 03 00 00 */	cmpwi r3, 0
/* 802ED71C 002E937C  40 80 00 08 */	bge lbl_802ED724
/* 802ED720 002E9380  3B C0 FF FF */	li r30, -1
lbl_802ED724:
/* 802ED724 002E9384  38 7F 00 00 */	addi r3, r31, 0
/* 802ED728 002E9388  4B F8 22 FD */	bl OSUnlockMutex
/* 802ED72C 002E938C  7F C3 F3 78 */	mr r3, r30
lbl_802ED730:
/* 802ED730 002E9390  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ED734 002E9394  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802ED738 002E9398  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802ED73C 002E939C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802ED740 002E93A0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802ED744 002E93A4  7C 08 03 A6 */	mtlr r0
/* 802ED748 002E93A8  38 21 00 20 */	addi r1, r1, 0x20
/* 802ED74C 002E93AC  4E 80 00 20 */	blr

.global NCDLockWirelessDriver
NCDLockWirelessDriver:
/* 802ED750 002E93B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ED754 002E93B4  7C 08 02 A6 */	mflr r0
/* 802ED758 002E93B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ED75C 002E93BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802ED760 002E93C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802ED764 002E93C4  3F C0 80 58 */	lis r30, lbl_80579060@ha
/* 802ED768 002E93C8  3B DE 90 60 */	addi r30, r30, lbl_80579060@l
/* 802ED76C 002E93CC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802ED770 002E93D0  93 81 00 10 */	stw r28, 0x10(r1)
/* 802ED774 002E93D4  4B F8 3B 85 */	bl OSGetCurrentThread
/* 802ED778 002E93D8  2C 03 00 00 */	cmpwi r3, 0
/* 802ED77C 002E93DC  40 82 00 0C */	bne lbl_802ED788
/* 802ED780 002E93E0  38 60 FF FB */	li r3, -5
/* 802ED784 002E93E4  48 00 00 B0 */	b lbl_802ED834
lbl_802ED788:
/* 802ED788 002E93E8  48 00 04 E5 */	bl LockRight
/* 802ED78C 002E93EC  3C 60 80 44 */	lis r3, lbl_80445B38@ha
/* 802ED790 002E93F0  38 80 00 00 */	li r4, 0
/* 802ED794 002E93F4  38 63 5B 38 */	addi r3, r3, lbl_80445B38@l
/* 802ED798 002E93F8  4B FB 59 C1 */	bl IOS_Open
/* 802ED79C 002E93FC  2C 03 00 00 */	cmpwi r3, 0
/* 802ED7A0 002E9400  7C 7C 1B 78 */	mr r28, r3
/* 802ED7A4 002E9404  40 80 00 1C */	bge lbl_802ED7C0
/* 802ED7A8 002E9408  2C 03 FF FA */	cmpwi r3, -6
/* 802ED7AC 002E940C  40 82 00 0C */	bne lbl_802ED7B8
/* 802ED7B0 002E9410  3B A0 FF F8 */	li r29, -8
/* 802ED7B4 002E9414  48 00 00 74 */	b lbl_802ED828
lbl_802ED7B8:
/* 802ED7B8 002E9418  3B A0 FF FE */	li r29, -2
/* 802ED7BC 002E941C  48 00 00 6C */	b lbl_802ED828
lbl_802ED7C0:
/* 802ED7C0 002E9420  3B FE 00 20 */	addi r31, r30, 0x20
/* 802ED7C4 002E9424  38 FE 00 40 */	addi r7, r30, 0x40
/* 802ED7C8 002E9428  38 00 00 20 */	li r0, 0x20
/* 802ED7CC 002E942C  93 FE 00 40 */	stw r31, 0x40(r30)
/* 802ED7D0 002E9430  38 80 00 01 */	li r4, 1
/* 802ED7D4 002E9434  38 A0 00 00 */	li r5, 0
/* 802ED7D8 002E9438  90 07 00 04 */	stw r0, 4(r7)
/* 802ED7DC 002E943C  38 C0 00 01 */	li r6, 1
/* 802ED7E0 002E9440  4B FB 66 61 */	bl IOS_Ioctlv
/* 802ED7E4 002E9444  2C 03 00 00 */	cmpwi r3, 0
/* 802ED7E8 002E9448  40 80 00 0C */	bge lbl_802ED7F4
/* 802ED7EC 002E944C  3B A0 FF FE */	li r29, -2
/* 802ED7F0 002E9450  48 00 00 24 */	b lbl_802ED814
lbl_802ED7F4:
/* 802ED7F4 002E9454  83 BE 00 20 */	lwz r29, 0x20(r30)
/* 802ED7F8 002E9458  2C 1D 00 00 */	cmpwi r29, 0
/* 802ED7FC 002E945C  40 82 00 18 */	bne lbl_802ED814
/* 802ED800 002E9460  83 BF 00 04 */	lwz r29, 4(r31)
/* 802ED804 002E9464  2C 1D 00 00 */	cmpwi r29, 0
/* 802ED808 002E9468  40 81 00 08 */	ble lbl_802ED810
/* 802ED80C 002E946C  48 00 00 08 */	b lbl_802ED814
lbl_802ED810:
/* 802ED810 002E9470  3B A0 FF FF */	li r29, -1
lbl_802ED814:
/* 802ED814 002E9474  7F 83 E3 78 */	mr r3, r28
/* 802ED818 002E9478  4B FB 5B 21 */	bl IOS_Close
/* 802ED81C 002E947C  2C 03 00 00 */	cmpwi r3, 0
/* 802ED820 002E9480  40 80 00 08 */	bge lbl_802ED828
/* 802ED824 002E9484  3B A0 FF FF */	li r29, -1
lbl_802ED828:
/* 802ED828 002E9488  38 7E 00 00 */	addi r3, r30, 0
/* 802ED82C 002E948C  4B F8 21 F9 */	bl OSUnlockMutex
/* 802ED830 002E9490  7F A3 EB 78 */	mr r3, r29
lbl_802ED834:
/* 802ED834 002E9494  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ED838 002E9498  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802ED83C 002E949C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802ED840 002E94A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802ED844 002E94A4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802ED848 002E94A8  7C 08 03 A6 */	mtlr r0
/* 802ED84C 002E94AC  38 21 00 20 */	addi r1, r1, 0x20
/* 802ED850 002E94B0  4E 80 00 20 */	blr

.global NCDUnlockWirelessDriver
NCDUnlockWirelessDriver:
/* 802ED854 002E94B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ED858 002E94B8  7C 08 02 A6 */	mflr r0
/* 802ED85C 002E94BC  2C 03 00 00 */	cmpwi r3, 0
/* 802ED860 002E94C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ED864 002E94C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802ED868 002E94C8  3F E0 80 58 */	lis r31, lbl_80579060@ha
/* 802ED86C 002E94CC  3B FF 90 60 */	addi r31, r31, lbl_80579060@l
/* 802ED870 002E94D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802ED874 002E94D4  7C 7E 1B 78 */	mr r30, r3
/* 802ED878 002E94D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802ED87C 002E94DC  41 81 00 0C */	bgt lbl_802ED888
/* 802ED880 002E94E0  38 60 FF FD */	li r3, -3
/* 802ED884 002E94E4  48 00 00 BC */	b lbl_802ED940
lbl_802ED888:
/* 802ED888 002E94E8  4B F8 3A 71 */	bl OSGetCurrentThread
/* 802ED88C 002E94EC  2C 03 00 00 */	cmpwi r3, 0
/* 802ED890 002E94F0  40 82 00 0C */	bne lbl_802ED89C
/* 802ED894 002E94F4  38 60 FF FB */	li r3, -5
/* 802ED898 002E94F8  48 00 00 A8 */	b lbl_802ED940
lbl_802ED89C:
/* 802ED89C 002E94FC  48 00 03 D1 */	bl LockRight
/* 802ED8A0 002E9500  3C 60 80 44 */	lis r3, lbl_80445B38@ha
/* 802ED8A4 002E9504  38 80 00 00 */	li r4, 0
/* 802ED8A8 002E9508  38 63 5B 38 */	addi r3, r3, lbl_80445B38@l
/* 802ED8AC 002E950C  4B FB 58 AD */	bl IOS_Open
/* 802ED8B0 002E9510  2C 03 00 00 */	cmpwi r3, 0
/* 802ED8B4 002E9514  7C 7D 1B 78 */	mr r29, r3
/* 802ED8B8 002E9518  40 80 00 1C */	bge lbl_802ED8D4
/* 802ED8BC 002E951C  2C 03 FF FA */	cmpwi r3, -6
/* 802ED8C0 002E9520  40 82 00 0C */	bne lbl_802ED8CC
/* 802ED8C4 002E9524  3B C0 FF F8 */	li r30, -8
/* 802ED8C8 002E9528  48 00 00 6C */	b lbl_802ED934
lbl_802ED8CC:
/* 802ED8CC 002E952C  3B C0 FF FE */	li r30, -2
/* 802ED8D0 002E9530  48 00 00 64 */	b lbl_802ED934
lbl_802ED8D4:
/* 802ED8D4 002E9534  81 2D AF 34 */	lwz r9, lbl_806401F4-_SDA_BASE_(r13)
/* 802ED8D8 002E9538  38 FF 00 40 */	addi r7, r31, 0x40
/* 802ED8DC 002E953C  39 1F 00 20 */	addi r8, r31, 0x20
/* 802ED8E0 002E9540  38 A0 00 04 */	li r5, 4
/* 802ED8E4 002E9544  38 00 00 20 */	li r0, 0x20
/* 802ED8E8 002E9548  90 A7 00 04 */	stw r5, 4(r7)
/* 802ED8EC 002E954C  38 80 00 02 */	li r4, 2
/* 802ED8F0 002E9550  38 A0 00 01 */	li r5, 1
/* 802ED8F4 002E9554  91 3F 00 40 */	stw r9, 0x40(r31)
/* 802ED8F8 002E9558  38 C0 00 01 */	li r6, 1
/* 802ED8FC 002E955C  91 07 00 08 */	stw r8, 8(r7)
/* 802ED900 002E9560  90 07 00 0C */	stw r0, 0xc(r7)
/* 802ED904 002E9564  93 C9 00 00 */	stw r30, 0(r9)
/* 802ED908 002E9568  4B FB 65 39 */	bl IOS_Ioctlv
/* 802ED90C 002E956C  2C 03 00 00 */	cmpwi r3, 0
/* 802ED910 002E9570  40 80 00 0C */	bge lbl_802ED91C
/* 802ED914 002E9574  3B C0 FF FE */	li r30, -2
/* 802ED918 002E9578  48 00 00 08 */	b lbl_802ED920
lbl_802ED91C:
/* 802ED91C 002E957C  83 DF 00 20 */	lwz r30, 0x20(r31)
lbl_802ED920:
/* 802ED920 002E9580  7F A3 EB 78 */	mr r3, r29
/* 802ED924 002E9584  4B FB 5A 15 */	bl IOS_Close
/* 802ED928 002E9588  2C 03 00 00 */	cmpwi r3, 0
/* 802ED92C 002E958C  40 80 00 08 */	bge lbl_802ED934
/* 802ED930 002E9590  3B C0 FF FF */	li r30, -1
lbl_802ED934:
/* 802ED934 002E9594  38 7F 00 00 */	addi r3, r31, 0
/* 802ED938 002E9598  4B F8 20 ED */	bl OSUnlockMutex
/* 802ED93C 002E959C  7F C3 F3 78 */	mr r3, r30
lbl_802ED940:
/* 802ED940 002E95A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ED944 002E95A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802ED948 002E95A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802ED94C 002E95AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802ED950 002E95B0  7C 08 03 A6 */	mtlr r0
/* 802ED954 002E95B4  38 21 00 20 */	addi r1, r1, 0x20
/* 802ED958 002E95B8  4E 80 00 20 */	blr

.global NCDiGetEnabledConfigList
NCDiGetEnabledConfigList:
/* 802ED95C 002E95BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802ED960 002E95C0  7C 08 02 A6 */	mflr r0
/* 802ED964 002E95C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802ED968 002E95C8  39 61 00 30 */	addi r11, r1, 0x30
/* 802ED96C 002E95CC  4B ED 97 B5 */	bl _savegpr_25
/* 802ED970 002E95D0  7C 7D 1B 78 */	mr r29, r3
/* 802ED974 002E95D4  7C 9E 23 78 */	mr r30, r4
/* 802ED978 002E95D8  7C BF 2B 78 */	mr r31, r5
/* 802ED97C 002E95DC  3B 60 00 00 */	li r27, 0
/* 802ED980 002E95E0  3B 40 00 00 */	li r26, 0
/* 802ED984 002E95E4  3B 20 00 00 */	li r25, 0
/* 802ED988 002E95E8  48 00 02 E5 */	bl LockRight
/* 802ED98C 002E95EC  3C 60 80 44 */	lis r3, lbl_80445B4C@ha
/* 802ED990 002E95F0  38 80 00 00 */	li r4, 0
/* 802ED994 002E95F4  38 63 5B 4C */	addi r3, r3, lbl_80445B4C@l
/* 802ED998 002E95F8  38 A0 00 03 */	li r5, 3
/* 802ED99C 002E95FC  48 00 01 3D */	bl ExecConfigCommand
/* 802ED9A0 002E9600  2C 03 00 00 */	cmpwi r3, 0
/* 802ED9A4 002E9604  7C 7C 1B 78 */	mr r28, r3
/* 802ED9A8 002E9608  40 82 00 E4 */	bne lbl_802EDA8C
/* 802ED9AC 002E960C  80 8D AF 34 */	lwz r4, lbl_806401F4-_SDA_BASE_(r13)
/* 802ED9B0 002E9610  38 C0 00 00 */	li r6, 0
/* 802ED9B4 002E9614  38 60 00 01 */	li r3, 1
/* 802ED9B8 002E9618  88 A4 00 08 */	lbz r5, 8(r4)
/* 802ED9BC 002E961C  54 A0 06 31 */	rlwinm. r0, r5, 0, 0x18, 0x18
/* 802ED9C0 002E9620  41 82 00 34 */	beq lbl_802ED9F4
/* 802ED9C4 002E9624  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 802ED9C8 002E9628  41 82 00 0C */	beq lbl_802ED9D4
/* 802ED9CC 002E962C  7C 7B 30 30 */	slw r27, r3, r6
/* 802ED9D0 002E9630  48 00 00 24 */	b lbl_802ED9F4
lbl_802ED9D4:
/* 802ED9D4 002E9634  88 04 07 CA */	lbz r0, 0x7ca(r4)
/* 802ED9D8 002E9638  28 00 00 01 */	cmplwi r0, 1
/* 802ED9DC 002E963C  41 82 00 08 */	beq lbl_802ED9E4
/* 802ED9E0 002E9640  7C 7A 30 30 */	slw r26, r3, r6
lbl_802ED9E4:
/* 802ED9E4 002E9644  88 04 07 CA */	lbz r0, 0x7ca(r4)
/* 802ED9E8 002E9648  28 00 00 01 */	cmplwi r0, 1
/* 802ED9EC 002E964C  40 82 00 08 */	bne lbl_802ED9F4
/* 802ED9F0 002E9650  7C 79 30 30 */	slw r25, r3, r6
lbl_802ED9F4:
/* 802ED9F4 002E9654  88 A4 09 24 */	lbz r5, 0x924(r4)
/* 802ED9F8 002E9658  38 C0 00 01 */	li r6, 1
/* 802ED9FC 002E965C  54 A0 06 31 */	rlwinm. r0, r5, 0, 0x18, 0x18
/* 802EDA00 002E9660  41 82 00 40 */	beq lbl_802EDA40
/* 802EDA04 002E9664  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 802EDA08 002E9668  41 82 00 10 */	beq lbl_802EDA18
/* 802EDA0C 002E966C  7C 60 30 30 */	slw r0, r3, r6
/* 802EDA10 002E9670  7F 7B 03 78 */	or r27, r27, r0
/* 802EDA14 002E9674  48 00 00 2C */	b lbl_802EDA40
lbl_802EDA18:
/* 802EDA18 002E9678  88 04 10 E6 */	lbz r0, 0x10e6(r4)
/* 802EDA1C 002E967C  28 00 00 01 */	cmplwi r0, 1
/* 802EDA20 002E9680  41 82 00 0C */	beq lbl_802EDA2C
/* 802EDA24 002E9684  7C 60 30 30 */	slw r0, r3, r6
/* 802EDA28 002E9688  7F 5A 03 78 */	or r26, r26, r0
lbl_802EDA2C:
/* 802EDA2C 002E968C  88 04 10 E6 */	lbz r0, 0x10e6(r4)
/* 802EDA30 002E9690  28 00 00 01 */	cmplwi r0, 1
/* 802EDA34 002E9694  40 82 00 0C */	bne lbl_802EDA40
/* 802EDA38 002E9698  7C 60 30 30 */	slw r0, r3, r6
/* 802EDA3C 002E969C  7F 39 03 78 */	or r25, r25, r0
lbl_802EDA40:
/* 802EDA40 002E96A0  88 A4 12 40 */	lbz r5, 0x1240(r4)
/* 802EDA44 002E96A4  38 C0 00 02 */	li r6, 2
/* 802EDA48 002E96A8  54 A0 06 31 */	rlwinm. r0, r5, 0, 0x18, 0x18
/* 802EDA4C 002E96AC  41 82 00 40 */	beq lbl_802EDA8C
/* 802EDA50 002E96B0  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 802EDA54 002E96B4  41 82 00 10 */	beq lbl_802EDA64
/* 802EDA58 002E96B8  7C 60 30 30 */	slw r0, r3, r6
/* 802EDA5C 002E96BC  7F 7B 03 78 */	or r27, r27, r0
/* 802EDA60 002E96C0  48 00 00 2C */	b lbl_802EDA8C
lbl_802EDA64:
/* 802EDA64 002E96C4  88 04 1A 02 */	lbz r0, 0x1a02(r4)
/* 802EDA68 002E96C8  28 00 00 01 */	cmplwi r0, 1
/* 802EDA6C 002E96CC  41 82 00 0C */	beq lbl_802EDA78
/* 802EDA70 002E96D0  7C 60 30 30 */	slw r0, r3, r6
/* 802EDA74 002E96D4  7F 5A 03 78 */	or r26, r26, r0
lbl_802EDA78:
/* 802EDA78 002E96D8  88 04 1A 02 */	lbz r0, 0x1a02(r4)
/* 802EDA7C 002E96DC  28 00 00 01 */	cmplwi r0, 1
/* 802EDA80 002E96E0  40 82 00 0C */	bne lbl_802EDA8C
/* 802EDA84 002E96E4  7C 60 30 30 */	slw r0, r3, r6
/* 802EDA88 002E96E8  7F 39 03 78 */	or r25, r25, r0
lbl_802EDA8C:
/* 802EDA8C 002E96EC  3C 60 80 58 */	lis r3, lbl_80579060@ha
/* 802EDA90 002E96F0  38 63 90 60 */	addi r3, r3, lbl_80579060@l
/* 802EDA94 002E96F4  4B F8 1F 91 */	bl OSUnlockMutex
/* 802EDA98 002E96F8  2C 1D 00 00 */	cmpwi r29, 0
/* 802EDA9C 002E96FC  41 82 00 08 */	beq lbl_802EDAA4
/* 802EDAA0 002E9700  93 7D 00 00 */	stw r27, 0(r29)
lbl_802EDAA4:
/* 802EDAA4 002E9704  2C 1E 00 00 */	cmpwi r30, 0
/* 802EDAA8 002E9708  41 82 00 08 */	beq lbl_802EDAB0
/* 802EDAAC 002E970C  93 5E 00 00 */	stw r26, 0(r30)
lbl_802EDAB0:
/* 802EDAB0 002E9710  2C 1F 00 00 */	cmpwi r31, 0
/* 802EDAB4 002E9714  41 82 00 08 */	beq lbl_802EDABC
/* 802EDAB8 002E9718  93 3F 00 00 */	stw r25, 0(r31)
lbl_802EDABC:
/* 802EDABC 002E971C  39 61 00 30 */	addi r11, r1, 0x30
/* 802EDAC0 002E9720  7F 83 E3 78 */	mr r3, r28
/* 802EDAC4 002E9724  4B ED 96 A9 */	bl _restgpr_25
/* 802EDAC8 002E9728  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802EDACC 002E972C  7C 08 03 A6 */	mtlr r0
/* 802EDAD0 002E9730  38 21 00 30 */	addi r1, r1, 0x30
/* 802EDAD4 002E9734  4E 80 00 20 */	blr

.global ExecConfigCommand
ExecConfigCommand:
/* 802EDAD8 002E9738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EDADC 002E973C  7C 08 02 A6 */	mflr r0
/* 802EDAE0 002E9740  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EDAE4 002E9744  39 61 00 20 */	addi r11, r1, 0x20
/* 802EDAE8 002E9748  4B ED 96 41 */	bl _savegpr_27
/* 802EDAEC 002E974C  3F E0 80 58 */	lis r31, lbl_80579060@ha
/* 802EDAF0 002E9750  7C 9B 23 78 */	mr r27, r4
/* 802EDAF4 002E9754  7C BC 2B 78 */	mr r28, r5
/* 802EDAF8 002E9758  3B C0 00 00 */	li r30, 0
/* 802EDAFC 002E975C  3B FF 90 60 */	addi r31, r31, lbl_80579060@l
/* 802EDB00 002E9760  4B F8 37 F9 */	bl OSGetCurrentThread
/* 802EDB04 002E9764  2C 03 00 00 */	cmpwi r3, 0
/* 802EDB08 002E9768  40 82 00 0C */	bne lbl_802EDB14
/* 802EDB0C 002E976C  38 60 FF FB */	li r3, -5
/* 802EDB10 002E9770  48 00 01 44 */	b lbl_802EDC54
lbl_802EDB14:
/* 802EDB14 002E9774  48 00 01 59 */	bl LockRight
/* 802EDB18 002E9778  3C 60 80 44 */	lis r3, lbl_80445B38@ha
/* 802EDB1C 002E977C  38 80 00 00 */	li r4, 0
/* 802EDB20 002E9780  38 63 5B 38 */	addi r3, r3, lbl_80445B38@l
/* 802EDB24 002E9784  4B FB 56 35 */	bl IOS_Open
/* 802EDB28 002E9788  2C 03 00 00 */	cmpwi r3, 0
/* 802EDB2C 002E978C  7C 7D 1B 78 */	mr r29, r3
/* 802EDB30 002E9790  40 80 00 1C */	bge lbl_802EDB4C
/* 802EDB34 002E9794  2C 03 FF FA */	cmpwi r3, -6
/* 802EDB38 002E9798  40 82 00 0C */	bne lbl_802EDB44
/* 802EDB3C 002E979C  3B C0 FF F8 */	li r30, -8
/* 802EDB40 002E97A0  48 00 01 08 */	b lbl_802EDC48
lbl_802EDB44:
/* 802EDB44 002E97A4  3B C0 FF FE */	li r30, -2
/* 802EDB48 002E97A8  48 00 01 00 */	b lbl_802EDC48
lbl_802EDB4C:
/* 802EDB4C 002E97AC  80 CD AF 34 */	lwz r6, lbl_806401F4-_SDA_BASE_(r13)
/* 802EDB50 002E97B0  2C 1C 00 05 */	cmpwi r28, 5
/* 802EDB54 002E97B4  38 9F 00 40 */	addi r4, r31, 0x40
/* 802EDB58 002E97B8  38 7F 00 20 */	addi r3, r31, 0x20
/* 802EDB5C 002E97BC  38 A0 1B 5C */	li r5, 0x1b5c
/* 802EDB60 002E97C0  38 00 00 20 */	li r0, 0x20
/* 802EDB64 002E97C4  90 DF 00 40 */	stw r6, 0x40(r31)
/* 802EDB68 002E97C8  90 A4 00 04 */	stw r5, 4(r4)
/* 802EDB6C 002E97CC  90 64 00 08 */	stw r3, 8(r4)
/* 802EDB70 002E97D0  90 04 00 0C */	stw r0, 0xc(r4)
/* 802EDB74 002E97D4  41 82 00 24 */	beq lbl_802EDB98
/* 802EDB78 002E97D8  40 80 00 14 */	bge lbl_802EDB8C
/* 802EDB7C 002E97DC  2C 1C 00 03 */	cmpwi r28, 3
/* 802EDB80 002E97E0  41 82 00 18 */	beq lbl_802EDB98
/* 802EDB84 002E97E4  40 80 00 68 */	bge lbl_802EDBEC
/* 802EDB88 002E97E8  48 00 00 AC */	b lbl_802EDC34
lbl_802EDB8C:
/* 802EDB8C 002E97EC  2C 1C 00 07 */	cmpwi r28, 7
/* 802EDB90 002E97F0  40 80 00 A4 */	bge lbl_802EDC34
/* 802EDB94 002E97F4  48 00 00 58 */	b lbl_802EDBEC
lbl_802EDB98:
/* 802EDB98 002E97F8  7F A3 EB 78 */	mr r3, r29
/* 802EDB9C 002E97FC  7F 84 E3 78 */	mr r4, r28
/* 802EDBA0 002E9800  38 FF 00 40 */	addi r7, r31, 0x40
/* 802EDBA4 002E9804  38 A0 00 00 */	li r5, 0
/* 802EDBA8 002E9808  38 C0 00 02 */	li r6, 2
/* 802EDBAC 002E980C  4B FB 62 95 */	bl IOS_Ioctlv
/* 802EDBB0 002E9810  2C 03 00 00 */	cmpwi r3, 0
/* 802EDBB4 002E9814  40 80 00 0C */	bge lbl_802EDBC0
/* 802EDBB8 002E9818  3B C0 FF FE */	li r30, -2
/* 802EDBBC 002E981C  48 00 00 78 */	b lbl_802EDC34
lbl_802EDBC0:
/* 802EDBC0 002E9820  83 DF 00 20 */	lwz r30, 0x20(r31)
/* 802EDBC4 002E9824  2C 1E 00 00 */	cmpwi r30, 0
/* 802EDBC8 002E9828  40 82 00 6C */	bne lbl_802EDC34
/* 802EDBCC 002E982C  38 00 00 00 */	li r0, 0
/* 802EDBD0 002E9830  7C 1B 00 40 */	cmplw r27, r0
/* 802EDBD4 002E9834  41 82 00 60 */	beq lbl_802EDC34
/* 802EDBD8 002E9838  80 8D AF 34 */	lwz r4, lbl_806401F4-_SDA_BASE_(r13)
/* 802EDBDC 002E983C  7F 63 DB 78 */	mr r3, r27
/* 802EDBE0 002E9840  38 A0 1B 5C */	li r5, 0x1b5c
/* 802EDBE4 002E9844  4B D1 64 1D */	bl memcpy
/* 802EDBE8 002E9848  48 00 00 4C */	b lbl_802EDC34
lbl_802EDBEC:
/* 802EDBEC 002E984C  38 00 00 00 */	li r0, 0
/* 802EDBF0 002E9850  7C 1B 00 40 */	cmplw r27, r0
/* 802EDBF4 002E9854  41 82 00 14 */	beq lbl_802EDC08
/* 802EDBF8 002E9858  80 6D AF 34 */	lwz r3, lbl_806401F4-_SDA_BASE_(r13)
/* 802EDBFC 002E985C  7F 64 DB 78 */	mr r4, r27
/* 802EDC00 002E9860  38 A0 1B 5C */	li r5, 0x1b5c
/* 802EDC04 002E9864  4B D1 63 FD */	bl memcpy
lbl_802EDC08:
/* 802EDC08 002E9868  7F A3 EB 78 */	mr r3, r29
/* 802EDC0C 002E986C  7F 84 E3 78 */	mr r4, r28
/* 802EDC10 002E9870  38 FF 00 40 */	addi r7, r31, 0x40
/* 802EDC14 002E9874  38 A0 00 01 */	li r5, 1
/* 802EDC18 002E9878  38 C0 00 01 */	li r6, 1
/* 802EDC1C 002E987C  4B FB 62 25 */	bl IOS_Ioctlv
/* 802EDC20 002E9880  2C 03 00 00 */	cmpwi r3, 0
/* 802EDC24 002E9884  40 80 00 0C */	bge lbl_802EDC30
/* 802EDC28 002E9888  3B C0 FF FE */	li r30, -2
/* 802EDC2C 002E988C  48 00 00 08 */	b lbl_802EDC34
lbl_802EDC30:
/* 802EDC30 002E9890  83 DF 00 20 */	lwz r30, 0x20(r31)
lbl_802EDC34:
/* 802EDC34 002E9894  7F A3 EB 78 */	mr r3, r29
/* 802EDC38 002E9898  4B FB 57 01 */	bl IOS_Close
/* 802EDC3C 002E989C  2C 03 00 00 */	cmpwi r3, 0
/* 802EDC40 002E98A0  40 80 00 08 */	bge lbl_802EDC48
/* 802EDC44 002E98A4  3B C0 FF FF */	li r30, -1
lbl_802EDC48:
/* 802EDC48 002E98A8  38 7F 00 00 */	addi r3, r31, 0
/* 802EDC4C 002E98AC  4B F8 1D D9 */	bl OSUnlockMutex
/* 802EDC50 002E98B0  7F C3 F3 78 */	mr r3, r30
lbl_802EDC54:
/* 802EDC54 002E98B4  39 61 00 20 */	addi r11, r1, 0x20
/* 802EDC58 002E98B8  4B ED 95 1D */	bl _restgpr_27
/* 802EDC5C 002E98BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EDC60 002E98C0  7C 08 03 A6 */	mtlr r0
/* 802EDC64 002E98C4  38 21 00 20 */	addi r1, r1, 0x20
/* 802EDC68 002E98C8  4E 80 00 20 */	blr

.global LockRight
LockRight:
/* 802EDC6C 002E98CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EDC70 002E98D0  7C 08 02 A6 */	mflr r0
/* 802EDC74 002E98D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EDC78 002E98D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EDC7C 002E98DC  3F E0 80 58 */	lis r31, lbl_80579060@ha
/* 802EDC80 002E98E0  3B FF 90 60 */	addi r31, r31, lbl_80579060@l
/* 802EDC84 002E98E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802EDC88 002E98E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802EDC8C 002E98EC  4B F8 0A D1 */	bl OSDisableInterrupts
/* 802EDC90 002E98F0  80 0D AF 30 */	lwz r0, lbl_806401F0-_SDA_BASE_(r13)
/* 802EDC94 002E98F4  7C 7E 1B 78 */	mr r30, r3
/* 802EDC98 002E98F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802EDC9C 002E98FC  40 82 00 94 */	bne lbl_802EDD30
/* 802EDCA0 002E9900  80 6D 8B E8 */	lwz r3, lbl_8063DEA8-_SDA_BASE_(r13)
/* 802EDCA4 002E9904  4B F7 B9 AD */	bl OSRegisterVersion
/* 802EDCA8 002E9908  38 7F 00 00 */	addi r3, r31, 0
/* 802EDCAC 002E990C  4B F8 1C 65 */	bl OSInitMutex
/* 802EDCB0 002E9910  4B FB 4C 45 */	bl IPCGetBufferLo
/* 802EDCB4 002E9914  38 03 00 1F */	addi r0, r3, 0x1f
/* 802EDCB8 002E9918  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 802EDCBC 002E991C  4B FB 4C 31 */	bl IPCGetBufferHi
/* 802EDCC0 002E9920  7C 1D 18 50 */	subf r0, r29, r3
/* 802EDCC4 002E9924  28 00 1B 60 */	cmplwi r0, 0x1b60
/* 802EDCC8 002E9928  40 80 00 20 */	bge lbl_802EDCE8
/* 802EDCCC 002E992C  3C 60 80 44 */	lis r3, lbl_80445B68@ha
/* 802EDCD0 002E9930  3C A0 80 44 */	lis r5, lbl_80445B74@ha
/* 802EDCD4 002E9934  38 63 5B 68 */	addi r3, r3, lbl_80445B68@l
/* 802EDCD8 002E9938  38 80 05 A8 */	li r4, 0x5a8
/* 802EDCDC 002E993C  38 A5 5B 74 */	addi r5, r5, lbl_80445B74@l
/* 802EDCE0 002E9940  4C C6 31 82 */	crclr 6
/* 802EDCE4 002E9944  4B F7 D7 B9 */	bl OSPanic
lbl_802EDCE8:
/* 802EDCE8 002E9948  38 7D 1B 60 */	addi r3, r29, 0x1b60
/* 802EDCEC 002E994C  4B FB 4C 11 */	bl IPCSetBufferLo
/* 802EDCF0 002E9950  93 AD AF 34 */	stw r29, lbl_806401F4-_SDA_BASE_(r13)
/* 802EDCF4 002E9954  7F A3 EB 78 */	mr r3, r29
/* 802EDCF8 002E9958  38 80 00 00 */	li r4, 0
/* 802EDCFC 002E995C  38 A0 1B 60 */	li r5, 0x1b60
/* 802EDD00 002E9960  4B D1 64 05 */	bl memset
/* 802EDD04 002E9964  38 7F 00 20 */	addi r3, r31, 0x20
/* 802EDD08 002E9968  38 80 00 00 */	li r4, 0
/* 802EDD0C 002E996C  38 A0 00 20 */	li r5, 0x20
/* 802EDD10 002E9970  4B D1 63 F5 */	bl memset
/* 802EDD14 002E9974  38 7F 00 40 */	addi r3, r31, 0x40
/* 802EDD18 002E9978  38 80 00 00 */	li r4, 0
/* 802EDD1C 002E997C  38 A0 00 20 */	li r5, 0x20
/* 802EDD20 002E9980  4B D1 63 E5 */	bl memset
/* 802EDD24 002E9984  80 0D AF 30 */	lwz r0, lbl_806401F0-_SDA_BASE_(r13)
/* 802EDD28 002E9988  60 00 00 01 */	ori r0, r0, 1
/* 802EDD2C 002E998C  90 0D AF 30 */	stw r0, lbl_806401F0-_SDA_BASE_(r13)
lbl_802EDD30:
/* 802EDD30 002E9990  7F C3 F3 78 */	mr r3, r30
/* 802EDD34 002E9994  4B F8 0A 51 */	bl OSRestoreInterrupts
/* 802EDD38 002E9998  38 7F 00 00 */	addi r3, r31, 0
/* 802EDD3C 002E999C  4B F8 1C 0D */	bl OSLockMutex
/* 802EDD40 002E99A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EDD44 002E99A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EDD48 002E99A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802EDD4C 002E99AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802EDD50 002E99B0  7C 08 03 A6 */	mtlr r0
/* 802EDD54 002E99B4  38 21 00 20 */	addi r1, r1, 0x20
/* 802EDD58 002E99B8  4E 80 00 20 */	blr