.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global SOGetHostID
SOGetHostID:
/* 802F7250 002F2EB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F7254 002F2EB4  7C 08 02 A6 */	mflr r0
/* 802F7258 002F2EB8  38 60 00 00 */	li r3, 0
/* 802F725C 002F2EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F7260 002F2EC0  38 81 00 08 */	addi r4, r1, 8
/* 802F7264 002F2EC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F7268 002F2EC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F726C 002F2ECC  3B C0 00 00 */	li r30, 0
/* 802F7270 002F2ED0  4B FF E9 55 */	bl SOiPrepare
/* 802F7274 002F2ED4  2C 03 00 00 */	cmpwi r3, 0
/* 802F7278 002F2ED8  7C 7F 1B 78 */	mr r31, r3
/* 802F727C 002F2EDC  40 82 00 30 */	bne lbl_802F72AC
/* 802F7280 002F2EE0  80 61 00 08 */	lwz r3, 8(r1)
/* 802F7284 002F2EE4  38 80 00 10 */	li r4, 0x10
/* 802F7288 002F2EE8  38 A0 00 00 */	li r5, 0
/* 802F728C 002F2EEC  38 C0 00 00 */	li r6, 0
/* 802F7290 002F2EF0  38 E0 00 00 */	li r7, 0
/* 802F7294 002F2EF4  39 00 00 00 */	li r8, 0
/* 802F7298 002F2EF8  4B FA C8 59 */	bl IOS_Ioctl
/* 802F729C 002F2EFC  7C 7E 1B 78 */	mr r30, r3
/* 802F72A0 002F2F00  7F E4 FB 78 */	mr r4, r31
/* 802F72A4 002F2F04  38 60 00 00 */	li r3, 0
/* 802F72A8 002F2F08  4B FF EA 05 */	bl SOiConclude
lbl_802F72AC:
/* 802F72AC 002F2F0C  7F C3 F3 78 */	mr r3, r30
/* 802F72B0 002F2F10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F72B4 002F2F14  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F72B8 002F2F18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F72BC 002F2F1C  7C 08 03 A6 */	mtlr r0
/* 802F72C0 002F2F20  38 21 00 20 */	addi r1, r1, 0x20
/* 802F72C4 002F2F24  4E 80 00 20 */	blr

.global SOGetHostByName
SOGetHostByName:
/* 802F72C8 002F2F28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F72CC 002F2F2C  7C 08 02 A6 */	mflr r0
/* 802F72D0 002F2F30  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F72D4 002F2F34  39 61 00 30 */	addi r11, r1, 0x30
/* 802F72D8 002F2F38  4B EC FE 4D */	bl _savegpr_26
/* 802F72DC 002F2F3C  7C 7A 1B 78 */	mr r26, r3
/* 802F72E0 002F2F40  38 81 00 08 */	addi r4, r1, 8
/* 802F72E4 002F2F44  3B 60 00 00 */	li r27, 0
/* 802F72E8 002F2F48  38 60 00 00 */	li r3, 0
/* 802F72EC 002F2F4C  4B FF E8 D9 */	bl SOiPrepare
/* 802F72F0 002F2F50  2C 03 00 00 */	cmpwi r3, 0
/* 802F72F4 002F2F54  40 82 00 F8 */	bne lbl_802F73EC
/* 802F72F8 002F2F58  2C 1A 00 00 */	cmpwi r26, 0
/* 802F72FC 002F2F5C  40 82 00 0C */	bne lbl_802F7308
/* 802F7300 002F2F60  3B A0 FF E4 */	li r29, -28
/* 802F7304 002F2F64  48 00 00 DC */	b lbl_802F73E0
lbl_802F7308:
/* 802F7308 002F2F68  7F 43 D3 78 */	mr r3, r26
/* 802F730C 002F2F6C  4B EC F8 59 */	bl strlen
/* 802F7310 002F2F70  38 03 00 20 */	addi r0, r3, 0x20
/* 802F7314 002F2F74  7C 7D 1B 78 */	mr r29, r3
/* 802F7318 002F2F78  54 1C 00 34 */	rlwinm r28, r0, 0, 0, 0x1a
/* 802F731C 002F2F7C  38 60 00 0C */	li r3, 0xc
/* 802F7320 002F2F80  7F 84 E3 78 */	mr r4, r28
/* 802F7324 002F2F84  4B FF E7 85 */	bl SOiAlloc
/* 802F7328 002F2F88  7C 7F 1B 78 */	mr r31, r3
/* 802F732C 002F2F8C  4B FF E7 19 */	bl SOiGetSysWork
/* 802F7330 002F2F90  2C 1F 00 00 */	cmpwi r31, 0
/* 802F7334 002F2F94  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 802F7338 002F2F98  40 82 00 0C */	bne lbl_802F7344
/* 802F733C 002F2F9C  3B A0 FF CF */	li r29, -49
/* 802F7340 002F2FA0  48 00 00 A0 */	b lbl_802F73E0
lbl_802F7344:
/* 802F7344 002F2FA4  7F E3 FB 78 */	mr r3, r31
/* 802F7348 002F2FA8  7F 44 D3 78 */	mr r4, r26
/* 802F734C 002F2FAC  4B ED 6F 85 */	bl strcpy
/* 802F7350 002F2FB0  80 61 00 08 */	lwz r3, 8(r1)
/* 802F7354 002F2FB4  7F E5 FB 78 */	mr r5, r31
/* 802F7358 002F2FB8  7F C7 F3 78 */	mr r7, r30
/* 802F735C 002F2FBC  38 DD 00 01 */	addi r6, r29, 1
/* 802F7360 002F2FC0  38 80 00 11 */	li r4, 0x11
/* 802F7364 002F2FC4  39 00 04 60 */	li r8, 0x460
/* 802F7368 002F2FC8  4B FA C7 89 */	bl IOS_Ioctl
/* 802F736C 002F2FCC  2C 03 00 00 */	cmpwi r3, 0
/* 802F7370 002F2FD0  7C 7D 1B 78 */	mr r29, r3
/* 802F7374 002F2FD4  41 80 00 5C */	blt lbl_802F73D0
/* 802F7378 002F2FD8  80 7E 00 00 */	lwz r3, 0(r30)
/* 802F737C 002F2FDC  38 1E 00 10 */	addi r0, r30, 0x10
/* 802F7380 002F2FE0  38 9E 03 40 */	addi r4, r30, 0x340
/* 802F7384 002F2FE4  7C 63 00 50 */	subf r3, r3, r0
/* 802F7388 002F2FE8  48 00 00 14 */	b lbl_802F739C
lbl_802F738C:
/* 802F738C 002F2FEC  80 04 00 00 */	lwz r0, 0(r4)
/* 802F7390 002F2FF0  7C 00 1A 14 */	add r0, r0, r3
/* 802F7394 002F2FF4  90 04 00 00 */	stw r0, 0(r4)
/* 802F7398 002F2FF8  38 84 00 04 */	addi r4, r4, 4
lbl_802F739C:
/* 802F739C 002F2FFC  80 04 00 00 */	lwz r0, 0(r4)
/* 802F73A0 002F3000  2C 00 00 00 */	cmpwi r0, 0
/* 802F73A4 002F3004  40 82 FF E8 */	bne lbl_802F738C
/* 802F73A8 002F3008  80 1E 00 04 */	lwz r0, 4(r30)
/* 802F73AC 002F300C  7F DB F3 78 */	mr r27, r30
/* 802F73B0 002F3010  7C 00 1A 14 */	add r0, r0, r3
/* 802F73B4 002F3014  90 1E 00 04 */	stw r0, 4(r30)
/* 802F73B8 002F3018  80 1E 00 00 */	lwz r0, 0(r30)
/* 802F73BC 002F301C  7C 00 1A 14 */	add r0, r0, r3
/* 802F73C0 002F3020  90 1E 00 00 */	stw r0, 0(r30)
/* 802F73C4 002F3024  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802F73C8 002F3028  7C 00 1A 14 */	add r0, r0, r3
/* 802F73CC 002F302C  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_802F73D0:
/* 802F73D0 002F3030  7F E4 FB 78 */	mr r4, r31
/* 802F73D4 002F3034  7F 85 E3 78 */	mr r5, r28
/* 802F73D8 002F3038  38 60 00 0C */	li r3, 0xc
/* 802F73DC 002F303C  4B FF E7 B5 */	bl SOiFree
lbl_802F73E0:
/* 802F73E0 002F3040  7F A4 EB 78 */	mr r4, r29
/* 802F73E4 002F3044  38 60 00 00 */	li r3, 0
/* 802F73E8 002F3048  4B FF E8 C5 */	bl SOiConclude
lbl_802F73EC:
/* 802F73EC 002F304C  39 61 00 30 */	addi r11, r1, 0x30
/* 802F73F0 002F3050  7F 63 DB 78 */	mr r3, r27
/* 802F73F4 002F3054  4B EC FD 7D */	bl _restgpr_26
/* 802F73F8 002F3058  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F73FC 002F305C  7C 08 03 A6 */	mtlr r0
/* 802F7400 002F3060  38 21 00 30 */	addi r1, r1, 0x30
/* 802F7404 002F3064  4E 80 00 20 */	blr

.global SOGetAddrInfo
SOGetAddrInfo:
/* 802F7408 002F3068  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802F740C 002F306C  7C 08 02 A6 */	mflr r0
/* 802F7410 002F3070  90 01 00 44 */	stw r0, 0x44(r1)
/* 802F7414 002F3074  39 61 00 40 */	addi r11, r1, 0x40
/* 802F7418 002F3078  4B EC FC FD */	bl _savegpr_22
/* 802F741C 002F307C  7C 79 1B 78 */	mr r25, r3
/* 802F7420 002F3080  7C 9A 23 78 */	mr r26, r4
/* 802F7424 002F3084  7C BB 2B 78 */	mr r27, r5
/* 802F7428 002F3088  7C DC 33 78 */	mr r28, r6
/* 802F742C 002F308C  38 81 00 08 */	addi r4, r1, 8
/* 802F7430 002F3090  38 60 00 00 */	li r3, 0
/* 802F7434 002F3094  4B FF E7 91 */	bl SOiPrepare
/* 802F7438 002F3098  2C 03 00 00 */	cmpwi r3, 0
/* 802F743C 002F309C  40 82 02 98 */	bne lbl_802F76D4
/* 802F7440 002F30A0  2C 1A 00 00 */	cmpwi r26, 0
/* 802F7444 002F30A4  40 82 00 0C */	bne lbl_802F7450
/* 802F7448 002F30A8  3B A0 00 00 */	li r29, 0
/* 802F744C 002F30AC  48 00 00 10 */	b lbl_802F745C
lbl_802F7450:
/* 802F7450 002F30B0  7F 23 CB 78 */	mr r3, r25
/* 802F7454 002F30B4  4B EC F7 11 */	bl strlen
/* 802F7458 002F30B8  3B A3 00 01 */	addi r29, r3, 1
lbl_802F745C:
/* 802F745C 002F30BC  2C 19 00 00 */	cmpwi r25, 0
/* 802F7460 002F30C0  40 82 00 0C */	bne lbl_802F746C
/* 802F7464 002F30C4  38 60 00 00 */	li r3, 0
/* 802F7468 002F30C8  48 00 00 10 */	b lbl_802F7478
lbl_802F746C:
/* 802F746C 002F30CC  7F 23 CB 78 */	mr r3, r25
/* 802F7470 002F30D0  4B EC F6 F5 */	bl strlen
/* 802F7474 002F30D4  38 63 00 01 */	addi r3, r3, 1
lbl_802F7478:
/* 802F7478 002F30D8  38 63 00 1F */	addi r3, r3, 0x1f
/* 802F747C 002F30DC  38 1D 00 1F */	addi r0, r29, 0x1f
/* 802F7480 002F30E0  54 64 00 34 */	rlwinm r4, r3, 0, 0, 0x1a
/* 802F7484 002F30E4  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 802F7488 002F30E8  38 60 00 0C */	li r3, 0xc
/* 802F748C 002F30EC  7C 84 02 14 */	add r4, r4, r0
/* 802F7490 002F30F0  38 04 00 5F */	addi r0, r4, 0x5f
/* 802F7494 002F30F4  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 802F7498 002F30F8  7F E4 FB 78 */	mr r4, r31
/* 802F749C 002F30FC  4B FF E6 0D */	bl SOiAlloc
/* 802F74A0 002F3100  2C 03 00 00 */	cmpwi r3, 0
/* 802F74A4 002F3104  7C 7D 1B 78 */	mr r29, r3
/* 802F74A8 002F3108  40 82 00 0C */	bne lbl_802F74B4
/* 802F74AC 002F310C  3B 20 FF CF */	li r25, -49
/* 802F74B0 002F3110  48 00 02 18 */	b lbl_802F76C8
lbl_802F74B4:
/* 802F74B4 002F3114  38 60 00 0A */	li r3, 0xa
/* 802F74B8 002F3118  38 80 08 40 */	li r4, 0x840
/* 802F74BC 002F311C  4B FF E5 ED */	bl SOiAlloc
/* 802F74C0 002F3120  2C 03 00 00 */	cmpwi r3, 0
/* 802F74C4 002F3124  7C 7E 1B 78 */	mr r30, r3
/* 802F74C8 002F3128  40 82 00 1C */	bne lbl_802F74E4
/* 802F74CC 002F312C  7F A4 EB 78 */	mr r4, r29
/* 802F74D0 002F3130  7F E5 FB 78 */	mr r5, r31
/* 802F74D4 002F3134  38 60 00 0C */	li r3, 0xc
/* 802F74D8 002F3138  4B FF E6 B9 */	bl SOiFree
/* 802F74DC 002F313C  3B 20 FF CF */	li r25, -49
/* 802F74E0 002F3140  48 00 01 E8 */	b lbl_802F76C8
lbl_802F74E4:
/* 802F74E4 002F3144  2C 19 00 00 */	cmpwi r25, 0
/* 802F74E8 002F3148  3B 1D 00 20 */	addi r24, r29, 0x20
/* 802F74EC 002F314C  40 82 00 0C */	bne lbl_802F74F8
/* 802F74F0 002F3150  38 60 00 00 */	li r3, 0
/* 802F74F4 002F3154  48 00 00 10 */	b lbl_802F7504
lbl_802F74F8:
/* 802F74F8 002F3158  7F 23 CB 78 */	mr r3, r25
/* 802F74FC 002F315C  4B EC F6 69 */	bl strlen
/* 802F7500 002F3160  38 63 00 01 */	addi r3, r3, 1
lbl_802F7504:
/* 802F7504 002F3164  38 03 00 1F */	addi r0, r3, 0x1f
/* 802F7508 002F3168  2C 1A 00 00 */	cmpwi r26, 0
/* 802F750C 002F316C  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 802F7510 002F3170  7E F8 02 14 */	add r23, r24, r0
/* 802F7514 002F3174  40 82 00 0C */	bne lbl_802F7520
/* 802F7518 002F3178  38 60 00 00 */	li r3, 0
/* 802F751C 002F317C  48 00 00 10 */	b lbl_802F752C
lbl_802F7520:
/* 802F7520 002F3180  7F 23 CB 78 */	mr r3, r25
/* 802F7524 002F3184  4B EC F6 41 */	bl strlen
/* 802F7528 002F3188  38 63 00 01 */	addi r3, r3, 1
lbl_802F752C:
/* 802F752C 002F318C  38 03 00 1F */	addi r0, r3, 0x1f
/* 802F7530 002F3190  2C 19 00 00 */	cmpwi r25, 0
/* 802F7534 002F3194  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 802F7538 002F3198  7E D7 02 14 */	add r22, r23, r0
/* 802F753C 002F319C  41 82 00 10 */	beq lbl_802F754C
/* 802F7540 002F31A0  7F 03 C3 78 */	mr r3, r24
/* 802F7544 002F31A4  7F 24 CB 78 */	mr r4, r25
/* 802F7548 002F31A8  4B ED 6D 89 */	bl strcpy
lbl_802F754C:
/* 802F754C 002F31AC  2C 19 00 00 */	cmpwi r25, 0
/* 802F7550 002F31B0  41 82 00 08 */	beq lbl_802F7558
/* 802F7554 002F31B4  48 00 00 08 */	b lbl_802F755C
lbl_802F7558:
/* 802F7558 002F31B8  3B 00 00 00 */	li r24, 0
lbl_802F755C:
/* 802F755C 002F31BC  2C 19 00 00 */	cmpwi r25, 0
/* 802F7560 002F31C0  93 1D 00 00 */	stw r24, 0(r29)
/* 802F7564 002F31C4  40 82 00 0C */	bne lbl_802F7570
/* 802F7568 002F31C8  38 60 00 00 */	li r3, 0
/* 802F756C 002F31CC  48 00 00 0C */	b lbl_802F7578
lbl_802F7570:
/* 802F7570 002F31D0  7F 23 CB 78 */	mr r3, r25
/* 802F7574 002F31D4  4B EC F5 F1 */	bl strlen
lbl_802F7578:
/* 802F7578 002F31D8  2C 1A 00 00 */	cmpwi r26, 0
/* 802F757C 002F31DC  90 7D 00 04 */	stw r3, 4(r29)
/* 802F7580 002F31E0  41 82 00 10 */	beq lbl_802F7590
/* 802F7584 002F31E4  7E E3 BB 78 */	mr r3, r23
/* 802F7588 002F31E8  7F 44 D3 78 */	mr r4, r26
/* 802F758C 002F31EC  4B ED 6D 45 */	bl strcpy
lbl_802F7590:
/* 802F7590 002F31F0  2C 1A 00 00 */	cmpwi r26, 0
/* 802F7594 002F31F4  41 82 00 08 */	beq lbl_802F759C
/* 802F7598 002F31F8  48 00 00 08 */	b lbl_802F75A0
lbl_802F759C:
/* 802F759C 002F31FC  3A E0 00 00 */	li r23, 0
lbl_802F75A0:
/* 802F75A0 002F3200  2C 1A 00 00 */	cmpwi r26, 0
/* 802F75A4 002F3204  92 FD 00 08 */	stw r23, 8(r29)
/* 802F75A8 002F3208  40 82 00 0C */	bne lbl_802F75B4
/* 802F75AC 002F320C  38 60 00 00 */	li r3, 0
/* 802F75B0 002F3210  48 00 00 0C */	b lbl_802F75BC
lbl_802F75B4:
/* 802F75B4 002F3214  7F 43 D3 78 */	mr r3, r26
/* 802F75B8 002F3218  4B EC F5 AD */	bl strlen
lbl_802F75BC:
/* 802F75BC 002F321C  2C 1B 00 00 */	cmpwi r27, 0
/* 802F75C0 002F3220  90 7D 00 0C */	stw r3, 0xc(r29)
/* 802F75C4 002F3224  41 82 00 18 */	beq lbl_802F75DC
/* 802F75C8 002F3228  7E C3 B3 78 */	mr r3, r22
/* 802F75CC 002F322C  7F 64 DB 78 */	mr r4, r27
/* 802F75D0 002F3230  38 A0 00 20 */	li r5, 0x20
/* 802F75D4 002F3234  4B D0 CA 2D */	bl memcpy
/* 802F75D8 002F3238  48 00 00 14 */	b lbl_802F75EC
lbl_802F75DC:
/* 802F75DC 002F323C  7E C3 B3 78 */	mr r3, r22
/* 802F75E0 002F3240  38 80 00 00 */	li r4, 0
/* 802F75E4 002F3244  38 A0 00 20 */	li r5, 0x20
/* 802F75E8 002F3248  4B D0 CB 1D */	bl memset
lbl_802F75EC:
/* 802F75EC 002F324C  80 16 00 04 */	lwz r0, 4(r22)
/* 802F75F0 002F3250  2C 00 00 00 */	cmpwi r0, 0
/* 802F75F4 002F3254  40 82 00 0C */	bne lbl_802F7600
/* 802F75F8 002F3258  38 00 00 02 */	li r0, 2
/* 802F75FC 002F325C  90 16 00 04 */	stw r0, 4(r22)
lbl_802F7600:
/* 802F7600 002F3260  80 16 00 04 */	lwz r0, 4(r22)
/* 802F7604 002F3264  2C 00 00 17 */	cmpwi r0, 0x17
/* 802F7608 002F3268  40 82 00 24 */	bne lbl_802F762C
/* 802F760C 002F326C  38 00 00 00 */	li r0, 0
/* 802F7610 002F3270  7F C4 F3 78 */	mr r4, r30
/* 802F7614 002F3274  90 1C 00 00 */	stw r0, 0(r28)
/* 802F7618 002F3278  3B 20 FF BC */	li r25, -68
/* 802F761C 002F327C  38 60 00 0A */	li r3, 0xa
/* 802F7620 002F3280  38 A0 08 40 */	li r5, 0x840
/* 802F7624 002F3284  4B FF E5 6D */	bl SOiFree
/* 802F7628 002F3288  48 00 00 90 */	b lbl_802F76B8
lbl_802F762C:
/* 802F762C 002F328C  92 DD 00 10 */	stw r22, 0x10(r29)
/* 802F7630 002F3290  38 60 00 20 */	li r3, 0x20
/* 802F7634 002F3294  38 00 08 34 */	li r0, 0x834
/* 802F7638 002F3298  7F A7 EB 78 */	mr r7, r29
/* 802F763C 002F329C  90 7D 00 14 */	stw r3, 0x14(r29)
/* 802F7640 002F32A0  38 80 00 18 */	li r4, 0x18
/* 802F7644 002F32A4  38 A0 00 03 */	li r5, 3
/* 802F7648 002F32A8  38 C0 00 01 */	li r6, 1
/* 802F764C 002F32AC  93 DD 00 18 */	stw r30, 0x18(r29)
/* 802F7650 002F32B0  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 802F7654 002F32B4  80 61 00 08 */	lwz r3, 8(r1)
/* 802F7658 002F32B8  4B FA C7 E9 */	bl IOS_Ioctlv
/* 802F765C 002F32BC  2C 03 00 00 */	cmpwi r3, 0
/* 802F7660 002F32C0  7C 79 1B 78 */	mr r25, r3
/* 802F7664 002F32C4  41 80 00 3C */	blt lbl_802F76A0
/* 802F7668 002F32C8  93 DC 00 00 */	stw r30, 0(r28)
/* 802F766C 002F32CC  38 7E 04 60 */	addi r3, r30, 0x460
/* 802F7670 002F32D0  48 00 00 24 */	b lbl_802F7694
lbl_802F7674:
/* 802F7674 002F32D4  90 7E 00 18 */	stw r3, 0x18(r30)
/* 802F7678 002F32D8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802F767C 002F32DC  2C 00 00 00 */	cmpwi r0, 0
/* 802F7680 002F32E0  41 82 00 0C */	beq lbl_802F768C
/* 802F7684 002F32E4  38 1E 00 20 */	addi r0, r30, 0x20
/* 802F7688 002F32E8  90 1E 00 1C */	stw r0, 0x1c(r30)
lbl_802F768C:
/* 802F768C 002F32EC  83 DE 00 1C */	lwz r30, 0x1c(r30)
/* 802F7690 002F32F0  38 63 00 1C */	addi r3, r3, 0x1c
lbl_802F7694:
/* 802F7694 002F32F4  2C 1E 00 00 */	cmpwi r30, 0
/* 802F7698 002F32F8  40 82 FF DC */	bne lbl_802F7674
/* 802F769C 002F32FC  48 00 00 1C */	b lbl_802F76B8
lbl_802F76A0:
/* 802F76A0 002F3300  38 00 00 00 */	li r0, 0
/* 802F76A4 002F3304  7F C4 F3 78 */	mr r4, r30
/* 802F76A8 002F3308  90 1C 00 00 */	stw r0, 0(r28)
/* 802F76AC 002F330C  38 60 00 0A */	li r3, 0xa
/* 802F76B0 002F3310  38 A0 08 40 */	li r5, 0x840
/* 802F76B4 002F3314  4B FF E4 DD */	bl SOiFree
lbl_802F76B8:
/* 802F76B8 002F3318  7F A4 EB 78 */	mr r4, r29
/* 802F76BC 002F331C  7F E5 FB 78 */	mr r5, r31
/* 802F76C0 002F3320  38 60 00 0C */	li r3, 0xc
/* 802F76C4 002F3324  4B FF E4 CD */	bl SOiFree
lbl_802F76C8:
/* 802F76C8 002F3328  7F 24 CB 78 */	mr r4, r25
/* 802F76CC 002F332C  38 60 00 00 */	li r3, 0
/* 802F76D0 002F3330  4B FF E5 DD */	bl SOiConclude
lbl_802F76D4:
/* 802F76D4 002F3334  39 61 00 40 */	addi r11, r1, 0x40
/* 802F76D8 002F3338  4B EC FA 89 */	bl _restgpr_22
/* 802F76DC 002F333C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802F76E0 002F3340  7C 08 03 A6 */	mtlr r0
/* 802F76E4 002F3344  38 21 00 40 */	addi r1, r1, 0x40
/* 802F76E8 002F3348  4E 80 00 20 */	blr

.global SOFreeAddrInfo
SOFreeAddrInfo:
/* 802F76EC 002F334C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F76F0 002F3350  7C 08 02 A6 */	mflr r0
/* 802F76F4 002F3354  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F76F8 002F3358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F76FC 002F335C  93 C1 00 08 */	stw r30, 8(r1)
/* 802F7700 002F3360  7C 7E 1B 78 */	mr r30, r3
/* 802F7704 002F3364  4B F7 70 59 */	bl OSDisableInterrupts
/* 802F7708 002F3368  7C 7F 1B 78 */	mr r31, r3
/* 802F770C 002F336C  4B FF E3 4D */	bl SOiIsInitialized
/* 802F7710 002F3370  2C 03 00 01 */	cmpwi r3, 1
/* 802F7714 002F3374  40 82 00 1C */	bne lbl_802F7730
/* 802F7718 002F3378  2C 1E 00 00 */	cmpwi r30, 0
/* 802F771C 002F337C  41 82 00 14 */	beq lbl_802F7730
/* 802F7720 002F3380  7F C4 F3 78 */	mr r4, r30
/* 802F7724 002F3384  38 60 00 0A */	li r3, 0xa
/* 802F7728 002F3388  38 A0 08 40 */	li r5, 0x840
/* 802F772C 002F338C  4B FF E4 65 */	bl SOiFree
lbl_802F7730:
/* 802F7730 002F3390  7F E3 FB 78 */	mr r3, r31
/* 802F7734 002F3394  4B F7 70 51 */	bl OSRestoreInterrupts
/* 802F7738 002F3398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F773C 002F339C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F7740 002F33A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F7744 002F33A4  7C 08 03 A6 */	mtlr r0
/* 802F7748 002F33A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F774C 002F33AC  4E 80 00 20 */	blr
