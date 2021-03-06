.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global gt2AddressToString
gt2AddressToString:
/* 8034DB4C 003497AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034DB50 003497B0  7C 08 02 A6 */	mflr r0
/* 8034DB54 003497B4  2C 05 00 00 */	cmpwi r5, 0
/* 8034DB58 003497B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034DB5C 003497BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034DB60 003497C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034DB64 003497C4  7C 9E 23 78 */	mr r30, r4
/* 8034DB68 003497C8  41 82 00 0C */	beq lbl_8034DB74
/* 8034DB6C 003497CC  7C BF 2B 78 */	mr r31, r5
/* 8034DB70 003497D0  48 00 00 20 */	b lbl_8034DB90
lbl_8034DB74:
/* 8034DB74 003497D4  80 0D B0 B0 */	lwz r0, lbl_80640370-_SDA_BASE_(r13)
/* 8034DB78 003497D8  3C A0 80 62 */	lis r5, lbl_80620C60@ha
/* 8034DB7C 003497DC  38 A5 0C 60 */	addi r5, r5, lbl_80620C60@l
/* 8034DB80 003497E0  68 06 00 01 */	xori r6, r0, 1
/* 8034DB84 003497E4  1C 06 00 16 */	mulli r0, r6, 0x16
/* 8034DB88 003497E8  90 CD B0 B0 */	stw r6, lbl_80640370-_SDA_BASE_(r13)
/* 8034DB8C 003497EC  7F E5 02 14 */	add r31, r5, r0
lbl_8034DB90:
/* 8034DB90 003497F0  2C 03 00 00 */	cmpwi r3, 0
/* 8034DB94 003497F4  41 82 00 58 */	beq lbl_8034DBEC
/* 8034DB98 003497F8  2C 04 00 00 */	cmpwi r4, 0
/* 8034DB9C 003497FC  41 82 00 2C */	beq lbl_8034DBC8
/* 8034DBA0 00349800  90 61 00 0C */	stw r3, 0xc(r1)
/* 8034DBA4 00349804  38 61 00 0C */	addi r3, r1, 0xc
/* 8034DBA8 00349808  4B FA 91 71 */	bl SOInetNtoA
/* 8034DBAC 0034980C  7C 65 1B 78 */	mr r5, r3
/* 8034DBB0 00349810  7F E3 FB 78 */	mr r3, r31
/* 8034DBB4 00349814  7F C6 F3 78 */	mr r6, r30
/* 8034DBB8 00349818  38 8D 92 D0 */	addi r4, r13, lbl_8063E590-_SDA_BASE_
/* 8034DBBC 0034981C  4C C6 31 82 */	crclr 6
/* 8034DBC0 00349820  4B E7 EF 3D */	bl sprintf
/* 8034DBC4 00349824  48 00 00 50 */	b lbl_8034DC14
lbl_8034DBC8:
/* 8034DBC8 00349828  90 61 00 08 */	stw r3, 8(r1)
/* 8034DBCC 0034982C  38 61 00 08 */	addi r3, r1, 8
/* 8034DBD0 00349830  4B FA 91 49 */	bl SOInetNtoA
/* 8034DBD4 00349834  7C 65 1B 78 */	mr r5, r3
/* 8034DBD8 00349838  7F E3 FB 78 */	mr r3, r31
/* 8034DBDC 0034983C  38 8D 92 D8 */	addi r4, r13, lbl_8063E598-_SDA_BASE_
/* 8034DBE0 00349840  4C C6 31 82 */	crclr 6
/* 8034DBE4 00349844  4B E7 EF 19 */	bl sprintf
/* 8034DBE8 00349848  48 00 00 2C */	b lbl_8034DC14
lbl_8034DBEC:
/* 8034DBEC 0034984C  2C 04 00 00 */	cmpwi r4, 0
/* 8034DBF0 00349850  41 82 00 1C */	beq lbl_8034DC0C
/* 8034DBF4 00349854  7F E3 FB 78 */	mr r3, r31
/* 8034DBF8 00349858  7F C5 F3 78 */	mr r5, r30
/* 8034DBFC 0034985C  38 8D 92 DC */	addi r4, r13, lbl_8063E59C-_SDA_BASE_
/* 8034DC00 00349860  4C C6 31 82 */	crclr 6
/* 8034DC04 00349864  4B E7 EE F9 */	bl sprintf
/* 8034DC08 00349868  48 00 00 0C */	b lbl_8034DC14
lbl_8034DC0C:
/* 8034DC0C 0034986C  38 00 00 00 */	li r0, 0
/* 8034DC10 00349870  98 1F 00 00 */	stb r0, 0(r31)
lbl_8034DC14:
/* 8034DC14 00349874  7F E3 FB 78 */	mr r3, r31
/* 8034DC18 00349878  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034DC1C 0034987C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034DC20 00349880  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034DC24 00349884  7C 08 03 A6 */	mtlr r0
/* 8034DC28 00349888  38 21 00 20 */	addi r1, r1, 0x20
/* 8034DC2C 0034988C  4E 80 00 20 */	blr

.global gt2StringToAddress
gt2StringToAddress:
/* 8034DC30 00349890  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8034DC34 00349894  7C 08 02 A6 */	mflr r0
/* 8034DC38 00349898  90 01 01 34 */	stw r0, 0x134(r1)
/* 8034DC3C 0034989C  39 61 01 30 */	addi r11, r1, 0x130
/* 8034DC40 003498A0  4B E7 94 E5 */	bl _savegpr_26
/* 8034DC44 003498A4  2C 03 00 00 */	cmpwi r3, 0
/* 8034DC48 003498A8  7C 7C 1B 78 */	mr r28, r3
/* 8034DC4C 003498AC  7C 9D 23 78 */	mr r29, r4
/* 8034DC50 003498B0  7C BE 2B 78 */	mr r30, r5
/* 8034DC54 003498B4  3B E0 00 00 */	li r31, 0
/* 8034DC58 003498B8  41 82 00 10 */	beq lbl_8034DC68
/* 8034DC5C 003498BC  88 03 00 00 */	lbz r0, 0(r3)
/* 8034DC60 003498C0  7C 00 07 75 */	extsb. r0, r0
/* 8034DC64 003498C4  40 82 00 10 */	bne lbl_8034DC74
lbl_8034DC68:
/* 8034DC68 003498C8  3B E0 00 00 */	li r31, 0
/* 8034DC6C 003498CC  3B 60 00 00 */	li r27, 0
/* 8034DC70 003498D0  48 00 01 30 */	b lbl_8034DDA0
lbl_8034DC74:
/* 8034DC74 003498D4  38 80 00 3A */	li r4, 0x3a
/* 8034DC78 003498D8  4B E8 09 31 */	bl strchr
/* 8034DC7C 003498DC  2C 03 00 00 */	cmpwi r3, 0
/* 8034DC80 003498E0  7C 7B 1B 78 */	mr r27, r3
/* 8034DC84 003498E4  40 82 00 0C */	bne lbl_8034DC90
/* 8034DC88 003498E8  3B 60 00 00 */	li r27, 0
/* 8034DC8C 003498EC  48 00 00 D0 */	b lbl_8034DD5C
lbl_8034DC90:
/* 8034DC90 003498F0  7C 03 E0 40 */	cmplw r3, r28
/* 8034DC94 003498F4  40 82 00 10 */	bne lbl_8034DCA4
/* 8034DC98 003498F8  3B 80 00 00 */	li r28, 0
/* 8034DC9C 003498FC  3B E0 00 00 */	li r31, 0
/* 8034DCA0 00349900  48 00 00 24 */	b lbl_8034DCC4
lbl_8034DCA4:
/* 8034DCA4 00349904  7F 5C 18 50 */	subf r26, r28, r3
/* 8034DCA8 00349908  7F 84 E3 78 */	mr r4, r28
/* 8034DCAC 0034990C  7F 45 D3 78 */	mr r5, r26
/* 8034DCB0 00349910  38 61 00 08 */	addi r3, r1, 8
/* 8034DCB4 00349914  4B CB 63 4D */	bl memcpy
/* 8034DCB8 00349918  3B 81 00 08 */	addi r28, r1, 8
/* 8034DCBC 0034991C  38 00 00 00 */	li r0, 0
/* 8034DCC0 00349920  7C 1C D1 AE */	stbx r0, r28, r26
lbl_8034DCC4:
/* 8034DCC4 00349924  3C 60 80 42 */	lis r3, lbl_80422D48@ha
/* 8034DCC8 00349928  38 DB 00 01 */	addi r6, r27, 1
/* 8034DCCC 0034992C  38 63 2D 48 */	addi r3, r3, lbl_80422D48@l
/* 8034DCD0 00349930  80 83 00 38 */	lwz r4, 0x38(r3)
/* 8034DCD4 00349934  48 00 00 50 */	b lbl_8034DD24
lbl_8034DCD8:
/* 8034DCD8 00349938  7C 65 07 75 */	extsb. r5, r3
/* 8034DCDC 0034993C  38 00 00 00 */	li r0, 0
/* 8034DCE0 00349940  41 80 00 0C */	blt lbl_8034DCEC
/* 8034DCE4 00349944  2C 05 01 00 */	cmpwi r5, 0x100
/* 8034DCE8 00349948  41 80 00 08 */	blt lbl_8034DCF0
lbl_8034DCEC:
/* 8034DCEC 0034994C  38 00 00 01 */	li r0, 1
lbl_8034DCF0:
/* 8034DCF0 00349950  2C 00 00 00 */	cmpwi r0, 0
/* 8034DCF4 00349954  41 82 00 0C */	beq lbl_8034DD00
/* 8034DCF8 00349958  38 00 00 00 */	li r0, 0
/* 8034DCFC 0034995C  48 00 00 14 */	b lbl_8034DD10
lbl_8034DD00:
/* 8034DD00 00349960  80 64 00 08 */	lwz r3, 8(r4)
/* 8034DD04 00349964  54 A0 08 3C */	slwi r0, r5, 1
/* 8034DD08 00349968  7C 03 02 2E */	lhzx r0, r3, r0
/* 8034DD0C 0034996C  54 00 07 38 */	rlwinm r0, r0, 0, 0x1c, 0x1c
lbl_8034DD10:
/* 8034DD10 00349970  2C 00 00 00 */	cmpwi r0, 0
/* 8034DD14 00349974  40 82 00 0C */	bne lbl_8034DD20
/* 8034DD18 00349978  38 60 00 00 */	li r3, 0
/* 8034DD1C 0034997C  48 00 00 A0 */	b lbl_8034DDBC
lbl_8034DD20:
/* 8034DD20 00349980  38 C6 00 01 */	addi r6, r6, 1
lbl_8034DD24:
/* 8034DD24 00349984  88 66 00 00 */	lbz r3, 0(r6)
/* 8034DD28 00349988  7C 60 07 75 */	extsb. r0, r3
/* 8034DD2C 0034998C  40 82 FF AC */	bne lbl_8034DCD8
/* 8034DD30 00349990  38 7B 00 01 */	addi r3, r27, 1
/* 8034DD34 00349994  4B E8 29 D9 */	bl atoi
/* 8034DD38 00349998  2C 03 00 00 */	cmpwi r3, 0
/* 8034DD3C 0034999C  41 80 00 14 */	blt lbl_8034DD50
/* 8034DD40 003499A0  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 8034DD44 003499A4  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 8034DD48 003499A8  7C 03 00 00 */	cmpw r3, r0
/* 8034DD4C 003499AC  40 81 00 0C */	ble lbl_8034DD58
lbl_8034DD50:
/* 8034DD50 003499B0  38 60 00 00 */	li r3, 0
/* 8034DD54 003499B4  48 00 00 68 */	b lbl_8034DDBC
lbl_8034DD58:
/* 8034DD58 003499B8  54 7B 04 3E */	clrlwi r27, r3, 0x10
lbl_8034DD5C:
/* 8034DD5C 003499BC  2C 1C 00 00 */	cmpwi r28, 0
/* 8034DD60 003499C0  41 82 00 40 */	beq lbl_8034DDA0
/* 8034DD64 003499C4  7F 83 E3 78 */	mr r3, r28
/* 8034DD68 003499C8  4B FE A2 09 */	bl inet_addr
/* 8034DD6C 003499CC  3C 03 00 01 */	addis r0, r3, 1
/* 8034DD70 003499D0  7C 7F 1B 78 */	mr r31, r3
/* 8034DD74 003499D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8034DD78 003499D8  40 82 00 28 */	bne lbl_8034DDA0
/* 8034DD7C 003499DC  7F 83 E3 78 */	mr r3, r28
/* 8034DD80 003499E0  4B FE A3 59 */	bl gethostbyname
/* 8034DD84 003499E4  2C 03 00 00 */	cmpwi r3, 0
/* 8034DD88 003499E8  40 82 00 0C */	bne lbl_8034DD94
/* 8034DD8C 003499EC  38 60 00 00 */	li r3, 0
/* 8034DD90 003499F0  48 00 00 2C */	b lbl_8034DDBC
lbl_8034DD94:
/* 8034DD94 003499F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8034DD98 003499F8  80 63 00 00 */	lwz r3, 0(r3)
/* 8034DD9C 003499FC  83 E3 00 00 */	lwz r31, 0(r3)
lbl_8034DDA0:
/* 8034DDA0 00349A00  2C 1D 00 00 */	cmpwi r29, 0
/* 8034DDA4 00349A04  41 82 00 08 */	beq lbl_8034DDAC
/* 8034DDA8 00349A08  93 FD 00 00 */	stw r31, 0(r29)
lbl_8034DDAC:
/* 8034DDAC 00349A0C  2C 1E 00 00 */	cmpwi r30, 0
/* 8034DDB0 00349A10  41 82 00 08 */	beq lbl_8034DDB8
/* 8034DDB4 00349A14  B3 7E 00 00 */	sth r27, 0(r30)
lbl_8034DDB8:
/* 8034DDB8 00349A18  38 60 00 01 */	li r3, 1
lbl_8034DDBC:
/* 8034DDBC 00349A1C  39 61 01 30 */	addi r11, r1, 0x130
/* 8034DDC0 00349A20  4B E7 93 B1 */	bl _restgpr_26
/* 8034DDC4 00349A24  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8034DDC8 00349A28  7C 08 03 A6 */	mtlr r0
/* 8034DDCC 00349A2C  38 21 01 30 */	addi r1, r1, 0x130
/* 8034DDD0 00349A30  4E 80 00 20 */	blr

.global gti2MessageCheck
gti2MessageCheck:
/* 8034DDD4 00349A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034DDD8 00349A38  7C 08 02 A6 */	mflr r0
/* 8034DDDC 00349A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034DDE0 00349A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034DDE4 00349A44  7C 9F 23 78 */	mr r31, r4
/* 8034DDE8 00349A48  80 A3 00 00 */	lwz r5, 0(r3)
/* 8034DDEC 00349A4C  2C 05 00 00 */	cmpwi r5, 0
/* 8034DDF0 00349A50  40 82 00 18 */	bne lbl_8034DE08
/* 8034DDF4 00349A54  38 AD 92 E0 */	addi r5, r13, lbl_8063E5A0-_SDA_BASE_
/* 8034DDF8 00349A58  38 00 00 00 */	li r0, 0
/* 8034DDFC 00349A5C  90 A3 00 00 */	stw r5, 0(r3)
/* 8034DE00 00349A60  90 04 00 00 */	stw r0, 0(r4)
/* 8034DE04 00349A64  48 00 00 20 */	b lbl_8034DE24
lbl_8034DE08:
/* 8034DE08 00349A68  80 04 00 00 */	lwz r0, 0(r4)
/* 8034DE0C 00349A6C  2C 00 FF FF */	cmpwi r0, -1
/* 8034DE10 00349A70  40 82 00 14 */	bne lbl_8034DE24
/* 8034DE14 00349A74  7C A3 2B 78 */	mr r3, r5
/* 8034DE18 00349A78  4B E7 8D 4D */	bl strlen
/* 8034DE1C 00349A7C  38 03 00 01 */	addi r0, r3, 1
/* 8034DE20 00349A80  90 1F 00 00 */	stw r0, 0(r31)
lbl_8034DE24:
/* 8034DE24 00349A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034DE28 00349A88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034DE2C 00349A8C  7C 08 03 A6 */	mtlr r0
/* 8034DE30 00349A90  38 21 00 10 */	addi r1, r1, 0x10
/* 8034DE34 00349A94  4E 80 00 20 */	blr
