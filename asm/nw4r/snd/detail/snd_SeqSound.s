.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail49SoundInstanceManager$0Q44nw4r3snd6detail8SeqSound$1
__ct__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail49SoundInstanceManager$0Q44nw4r3snd6detail8SeqSound$1:
/* 80374C30 00370890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80374C34 00370894  7C 08 02 A6 */	mflr r0
/* 80374C38 00370898  90 01 00 14 */	stw r0, 0x14(r1)
/* 80374C3C 0037089C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80374C40 003708A0  7C 9F 23 78 */	mr r31, r4
/* 80374C44 003708A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80374C48 003708A8  7C 7E 1B 78 */	mr r30, r3
/* 80374C4C 003708AC  4B FF 83 99 */	bl __ct__Q44nw4r3snd6detail10BasicSoundFv
/* 80374C50 003708B0  3C 80 80 45 */	lis r4, lbl_8044CD88@ha
/* 80374C54 003708B4  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 80374C58 003708B8  38 84 CD 88 */	addi r4, r4, lbl_8044CD88@l
/* 80374C5C 003708BC  90 9E 00 00 */	stw r4, 0(r30)
/* 80374C60 003708C0  4B FF EE 01 */	bl __ct__Q44nw4r3snd6detail9SeqPlayerFv
/* 80374C64 003708C4  3C 80 80 45 */	lis r4, lbl_8044CDF8@ha
/* 80374C68 003708C8  38 00 00 00 */	li r0, 0
/* 80374C6C 003708CC  38 84 CD F8 */	addi r4, r4, lbl_8044CDF8@l
/* 80374C70 003708D0  98 1E 02 20 */	stb r0, 0x220(r30)
/* 80374C74 003708D4  38 7E 04 4C */	addi r3, r30, 0x44c
/* 80374C78 003708D8  98 1E 02 21 */	stb r0, 0x221(r30)
/* 80374C7C 003708DC  90 1E 02 0C */	stw r0, 0x20c(r30)
/* 80374C80 003708E0  93 FE 02 10 */	stw r31, 0x210(r30)
/* 80374C84 003708E4  90 1E 02 1C */	stw r0, 0x21c(r30)
/* 80374C88 003708E8  90 1E 02 24 */	stw r0, 0x224(r30)
/* 80374C8C 003708EC  90 1E 04 2C */	stw r0, 0x42c(r30)
/* 80374C90 003708F0  90 1E 04 30 */	stw r0, 0x430(r30)
/* 80374C94 003708F4  98 1E 04 34 */	stb r0, 0x434(r30)
/* 80374C98 003708F8  90 9E 04 28 */	stw r4, 0x428(r30)
/* 80374C9C 003708FC  90 1E 04 38 */	stw r0, 0x438(r30)
/* 80374CA0 00370900  90 1E 04 3C */	stw r0, 0x43c(r30)
/* 80374CA4 00370904  90 1E 04 44 */	stw r0, 0x444(r30)
/* 80374CA8 00370908  90 1E 04 48 */	stw r0, 0x448(r30)
/* 80374CAC 0037090C  4B EF AC 65 */	bl func_8026F910
/* 80374CB0 00370910  7F C3 F3 78 */	mr r3, r30
/* 80374CB4 00370914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80374CB8 00370918  83 C1 00 08 */	lwz r30, 8(r1)
/* 80374CBC 0037091C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80374CC0 00370920  7C 08 03 A6 */	mtlr r0
/* 80374CC4 00370924  38 21 00 10 */	addi r1, r1, 0x10
/* 80374CC8 00370928  4E 80 00 20 */	blr

.global __dt__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv
__dt__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv:
/* 80374CCC 0037092C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80374CD0 00370930  7C 08 02 A6 */	mflr r0
/* 80374CD4 00370934  2C 03 00 00 */	cmpwi r3, 0
/* 80374CD8 00370938  90 01 00 14 */	stw r0, 0x14(r1)
/* 80374CDC 0037093C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80374CE0 00370940  7C 9F 23 78 */	mr r31, r4
/* 80374CE4 00370944  93 C1 00 08 */	stw r30, 8(r1)
/* 80374CE8 00370948  7C 7E 1B 78 */	mr r30, r3
/* 80374CEC 0037094C  41 82 00 1C */	beq lbl_80374D08
/* 80374CF0 00370950  38 80 00 00 */	li r4, 0
/* 80374CF4 00370954  48 00 AC 4D */	bl func_8037F940
/* 80374CF8 00370958  2C 1F 00 00 */	cmpwi r31, 0
/* 80374CFC 0037095C  40 81 00 0C */	ble lbl_80374D08
/* 80374D00 00370960  7F C3 F3 78 */	mr r3, r30
/* 80374D04 00370964  4B E6 5D B5 */	bl func_801DAAB8
lbl_80374D08:
/* 80374D08 00370968  7F C3 F3 78 */	mr r3, r30
/* 80374D0C 0037096C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80374D10 00370970  83 C1 00 08 */	lwz r30, 8(r1)
/* 80374D14 00370974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80374D18 00370978  7C 08 03 A6 */	mtlr r0
/* 80374D1C 0037097C  38 21 00 10 */	addi r1, r1, 0x10
/* 80374D20 00370980  4E 80 00 20 */	blr

.global InitParam__Q44nw4r3snd6detail8SeqSoundFv
InitParam__Q44nw4r3snd6detail8SeqSoundFv:
/* 80374D24 00370984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80374D28 00370988  7C 08 02 A6 */	mflr r0
/* 80374D2C 0037098C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80374D30 00370990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80374D34 00370994  7C 7F 1B 78 */	mr r31, r3
/* 80374D38 00370998  4B FF 83 41 */	bl InitParam__Q44nw4r3snd6detail10BasicSoundFv
/* 80374D3C 0037099C  38 00 00 00 */	li r0, 0
/* 80374D40 003709A0  90 1F 02 1C */	stw r0, 0x21c(r31)
/* 80374D44 003709A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80374D48 003709A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80374D4C 003709AC  7C 08 03 A6 */	mtlr r0
/* 80374D50 003709B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80374D54 003709B4  4E 80 00 20 */	blr

.global Setup__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail17SeqTrackAllocatorUliPQ44nw4r3snd6detail14NoteOnCallback
Setup__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail17SeqTrackAllocatorUliPQ44nw4r3snd6detail14NoteOnCallback:
/* 80374D58 003709B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80374D5C 003709BC  7C 08 02 A6 */	mflr r0
/* 80374D60 003709C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80374D64 003709C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80374D68 003709C8  4B E5 23 C1 */	bl _savegpr_27
/* 80374D6C 003709CC  81 83 00 00 */	lwz r12, 0(r3)
/* 80374D70 003709D0  7C 7B 1B 78 */	mr r27, r3
/* 80374D74 003709D4  7C 9C 23 78 */	mr r28, r4
/* 80374D78 003709D8  7C BD 2B 78 */	mr r29, r5
/* 80374D7C 003709DC  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 80374D80 003709E0  7C DE 33 78 */	mr r30, r6
/* 80374D84 003709E4  7C FF 3B 78 */	mr r31, r7
/* 80374D88 003709E8  7D 89 03 A6 */	mtctr r12
/* 80374D8C 003709EC  4E 80 04 21 */	bctrl
/* 80374D90 003709F0  7F 84 E3 78 */	mr r4, r28
/* 80374D94 003709F4  7F A5 EB 78 */	mr r5, r29
/* 80374D98 003709F8  7F C6 F3 78 */	mr r6, r30
/* 80374D9C 003709FC  7F E7 FB 78 */	mr r7, r31
/* 80374DA0 00370A00  38 7B 00 D8 */	addi r3, r27, 0xd8
/* 80374DA4 00370A04  4B FF F0 6D */	bl Setup__Q44nw4r3snd6detail9SeqPlayerFPQ44nw4r3snd6detail17SeqTrackAllocatorUliPQ44nw4r3snd6detail14NoteOnCallback
/* 80374DA8 00370A08  39 61 00 20 */	addi r11, r1, 0x20
/* 80374DAC 00370A0C  4B E5 23 C9 */	bl _restgpr_27
/* 80374DB0 00370A10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80374DB4 00370A14  7C 08 03 A6 */	mtlr r0
/* 80374DB8 00370A18  38 21 00 20 */	addi r1, r1, 0x20
/* 80374DBC 00370A1C  4E 80 00 20 */	blr

.global Prepare__Q44nw4r3snd6detail8SeqSoundFPCvlQ54nw4r3snd6detail9SeqPlayer10OffsetTypei
Prepare__Q44nw4r3snd6detail8SeqSoundFPCvlQ54nw4r3snd6detail9SeqPlayer10OffsetTypei:
/* 80374DC0 00370A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80374DC4 00370A24  7C 08 02 A6 */	mflr r0
/* 80374DC8 00370A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80374DCC 00370A2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80374DD0 00370A30  7C FF 3B 78 */	mr r31, r7
/* 80374DD4 00370A34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80374DD8 00370A38  7C DE 33 78 */	mr r30, r6
/* 80374DDC 00370A3C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80374DE0 00370A40  7C 7D 1B 78 */	mr r29, r3
/* 80374DE4 00370A44  38 63 00 D8 */	addi r3, r3, 0xd8
/* 80374DE8 00370A48  4B FF F2 2D */	bl SetSeqData__Q44nw4r3snd6detail9SeqPlayerFPCvl
/* 80374DEC 00370A4C  2C 1F 00 00 */	cmpwi r31, 0
/* 80374DF0 00370A50  40 81 00 14 */	ble lbl_80374E04
/* 80374DF4 00370A54  7F C4 F3 78 */	mr r4, r30
/* 80374DF8 00370A58  7F E5 FB 78 */	mr r5, r31
/* 80374DFC 00370A5C  38 7D 00 D8 */	addi r3, r29, 0xd8
/* 80374E00 00370A60  4B FF F4 A9 */	bl Skip__Q44nw4r3snd6detail9SeqPlayerFQ54nw4r3snd6detail9SeqPlayer10OffsetTypei
lbl_80374E04:
/* 80374E04 00370A64  38 00 00 01 */	li r0, 1
/* 80374E08 00370A68  98 1D 02 21 */	stb r0, 0x221(r29)
/* 80374E0C 00370A6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80374E10 00370A70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80374E14 00370A74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80374E18 00370A78  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80374E1C 00370A7C  7C 08 03 A6 */	mtlr r0
/* 80374E20 00370A80  38 21 00 20 */	addi r1, r1, 0x20
/* 80374E24 00370A84  4E 80 00 20 */	blr

.global Prepare__Q44nw4r3snd6detail8SeqSoundFPQ34nw4r2ut10FileStreamlQ54nw4r3snd6detail9SeqPlayer10OffsetTypei
Prepare__Q44nw4r3snd6detail8SeqSoundFPQ34nw4r2ut10FileStreamlQ54nw4r3snd6detail9SeqPlayer10OffsetTypei:
/* 80374E28 00370A88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80374E2C 00370A8C  7C 08 02 A6 */	mflr r0
/* 80374E30 00370A90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80374E34 00370A94  38 00 00 01 */	li r0, 1
/* 80374E38 00370A98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80374E3C 00370A9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80374E40 00370AA0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80374E44 00370AA4  7C 7D 1B 78 */	mr r29, r3
/* 80374E48 00370AA8  83 C3 00 04 */	lwz r30, 4(r3)
/* 80374E4C 00370AAC  90 83 02 24 */	stw r4, 0x224(r3)
/* 80374E50 00370AB0  2C 1E 00 00 */	cmpwi r30, 0
/* 80374E54 00370AB4  90 A3 02 14 */	stw r5, 0x214(r3)
/* 80374E58 00370AB8  90 C3 02 18 */	stw r6, 0x218(r3)
/* 80374E5C 00370ABC  90 E3 02 1C */	stw r7, 0x21c(r3)
/* 80374E60 00370AC0  98 03 02 20 */	stb r0, 0x220(r3)
/* 80374E64 00370AC4  40 82 00 0C */	bne lbl_80374E70
/* 80374E68 00370AC8  38 00 00 00 */	li r0, 0
/* 80374E6C 00370ACC  48 00 00 78 */	b lbl_80374EE4
lbl_80374E70:
/* 80374E70 00370AD0  81 84 00 00 */	lwz r12, 0(r4)
/* 80374E74 00370AD4  7C 83 23 78 */	mr r3, r4
/* 80374E78 00370AD8  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80374E7C 00370ADC  7D 89 03 A6 */	mtctr r12
/* 80374E80 00370AE0  4E 80 04 21 */	bctrl
/* 80374E84 00370AE4  81 9E 00 00 */	lwz r12, 0(r30)
/* 80374E88 00370AE8  7C 7F 1B 78 */	mr r31, r3
/* 80374E8C 00370AEC  7F C3 F3 78 */	mr r3, r30
/* 80374E90 00370AF0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80374E94 00370AF4  7F E4 FB 78 */	mr r4, r31
/* 80374E98 00370AF8  7D 89 03 A6 */	mtctr r12
/* 80374E9C 00370AFC  4E 80 04 21 */	bctrl
/* 80374EA0 00370B00  2C 03 00 00 */	cmpwi r3, 0
/* 80374EA4 00370B04  40 82 00 0C */	bne lbl_80374EB0
/* 80374EA8 00370B08  38 00 00 00 */	li r0, 0
/* 80374EAC 00370B0C  48 00 00 38 */	b lbl_80374EE4
lbl_80374EB0:
/* 80374EB0 00370B10  80 1D 02 24 */	lwz r0, 0x224(r29)
/* 80374EB4 00370B14  3C 80 80 37 */	lis r4, NotifyLoadAsyncEndSeqData__Q44nw4r3snd6detail8SeqSoundFbPCvPv@ha
/* 80374EB8 00370B18  38 84 4F 1C */	addi r4, r4, NotifyLoadAsyncEndSeqData__Q44nw4r3snd6detail8SeqSoundFbPCvPv@l
/* 80374EBC 00370B1C  90 7D 04 3C */	stw r3, 0x43c(r29)
/* 80374EC0 00370B20  90 1D 04 38 */	stw r0, 0x438(r29)
/* 80374EC4 00370B24  93 FD 04 40 */	stw r31, 0x440(r29)
/* 80374EC8 00370B28  90 9D 04 44 */	stw r4, 0x444(r29)
/* 80374ECC 00370B2C  93 BD 04 48 */	stw r29, 0x448(r29)
/* 80374ED0 00370B30  48 00 AA B1 */	bl func_8037F980
/* 80374ED4 00370B34  38 9D 04 28 */	addi r4, r29, 0x428
/* 80374ED8 00370B38  38 A0 00 01 */	li r5, 1
/* 80374EDC 00370B3C  48 00 AC 1D */	bl func_8037FAF8
/* 80374EE0 00370B40  38 00 00 01 */	li r0, 1
lbl_80374EE4:
/* 80374EE4 00370B44  2C 00 00 00 */	cmpwi r0, 0
/* 80374EE8 00370B48  40 82 00 18 */	bne lbl_80374F00
/* 80374EEC 00370B4C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80374EF0 00370B50  7F A3 EB 78 */	mr r3, r29
/* 80374EF4 00370B54  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80374EF8 00370B58  7D 89 03 A6 */	mtctr r12
/* 80374EFC 00370B5C  4E 80 04 21 */	bctrl
lbl_80374F00:
/* 80374F00 00370B60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80374F04 00370B64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80374F08 00370B68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80374F0C 00370B6C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80374F10 00370B70  7C 08 03 A6 */	mtlr r0
/* 80374F14 00370B74  38 21 00 20 */	addi r1, r1, 0x20
/* 80374F18 00370B78  4E 80 00 20 */	blr

.global NotifyLoadAsyncEndSeqData__Q44nw4r3snd6detail8SeqSoundFbPCvPv
NotifyLoadAsyncEndSeqData__Q44nw4r3snd6detail8SeqSoundFbPCvPv:
/* 80374F1C 00370B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80374F20 00370B80  7C 08 02 A6 */	mflr r0
/* 80374F24 00370B84  2C 03 00 00 */	cmpwi r3, 0
/* 80374F28 00370B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80374F2C 00370B8C  38 00 00 00 */	li r0, 0
/* 80374F30 00370B90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80374F34 00370B94  7C BF 2B 78 */	mr r31, r5
/* 80374F38 00370B98  98 05 02 20 */	stb r0, 0x220(r5)
/* 80374F3C 00370B9C  40 82 00 20 */	bne lbl_80374F5C
/* 80374F40 00370BA0  81 9F 00 00 */	lwz r12, 0(r31)
/* 80374F44 00370BA4  7F E3 FB 78 */	mr r3, r31
/* 80374F48 00370BA8  38 80 00 00 */	li r4, 0
/* 80374F4C 00370BAC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80374F50 00370BB0  7D 89 03 A6 */	mtctr r12
/* 80374F54 00370BB4  4E 80 04 21 */	bctrl
/* 80374F58 00370BB8  48 00 00 30 */	b lbl_80374F88
lbl_80374F5C:
/* 80374F5C 00370BBC  38 65 00 D8 */	addi r3, r5, 0xd8
/* 80374F60 00370BC0  80 A5 02 14 */	lwz r5, 0x214(r5)
/* 80374F64 00370BC4  4B FF F0 B1 */	bl SetSeqData__Q44nw4r3snd6detail9SeqPlayerFPCvl
/* 80374F68 00370BC8  80 BF 02 1C */	lwz r5, 0x21c(r31)
/* 80374F6C 00370BCC  2C 05 00 00 */	cmpwi r5, 0
/* 80374F70 00370BD0  40 81 00 10 */	ble lbl_80374F80
/* 80374F74 00370BD4  80 9F 02 18 */	lwz r4, 0x218(r31)
/* 80374F78 00370BD8  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 80374F7C 00370BDC  4B FF F3 2D */	bl Skip__Q44nw4r3snd6detail9SeqPlayerFQ54nw4r3snd6detail9SeqPlayer10OffsetTypei
lbl_80374F80:
/* 80374F80 00370BE0  38 00 00 01 */	li r0, 1
/* 80374F84 00370BE4  98 1F 02 21 */	stb r0, 0x221(r31)
lbl_80374F88:
/* 80374F88 00370BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80374F8C 00370BEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80374F90 00370BF0  7C 08 03 A6 */	mtlr r0
/* 80374F94 00370BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80374F98 00370BF8  4E 80 00 20 */	blr

.global Shutdown__Q44nw4r3snd6detail8SeqSoundFv
Shutdown__Q44nw4r3snd6detail8SeqSoundFv:
/* 80374F9C 00370BFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80374FA0 00370C00  7C 08 02 A6 */	mflr r0
/* 80374FA4 00370C04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80374FA8 00370C08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80374FAC 00370C0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80374FB0 00370C10  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80374FB4 00370C14  7C 7D 1B 78 */	mr r29, r3
/* 80374FB8 00370C18  88 03 02 20 */	lbz r0, 0x220(r3)
/* 80374FBC 00370C1C  2C 00 00 00 */	cmpwi r0, 0
/* 80374FC0 00370C20  41 82 00 10 */	beq lbl_80374FD0
/* 80374FC4 00370C24  48 00 A9 BD */	bl func_8037F980
/* 80374FC8 00370C28  38 9D 04 28 */	addi r4, r29, 0x428
/* 80374FCC 00370C2C  48 00 AE 8D */	bl func_8037FE58
lbl_80374FD0:
/* 80374FD0 00370C30  80 7D 02 24 */	lwz r3, 0x224(r29)
/* 80374FD4 00370C34  2C 03 00 00 */	cmpwi r3, 0
/* 80374FD8 00370C38  41 82 00 1C */	beq lbl_80374FF4
/* 80374FDC 00370C3C  81 83 00 00 */	lwz r12, 0(r3)
/* 80374FE0 00370C40  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80374FE4 00370C44  7D 89 03 A6 */	mtctr r12
/* 80374FE8 00370C48  4E 80 04 21 */	bctrl
/* 80374FEC 00370C4C  38 00 00 00 */	li r0, 0
/* 80374FF0 00370C50  90 1D 02 24 */	stw r0, 0x224(r29)
lbl_80374FF4:
/* 80374FF4 00370C54  7F A3 EB 78 */	mr r3, r29
/* 80374FF8 00370C58  4B FF 8C 85 */	bl Shutdown__Q44nw4r3snd6detail10BasicSoundFv
/* 80374FFC 00370C5C  83 DD 02 10 */	lwz r30, 0x210(r29)
/* 80375000 00370C60  3B FE 00 10 */	addi r31, r30, 0x10
/* 80375004 00370C64  7F E3 FB 78 */	mr r3, r31
/* 80375008 00370C68  4B EF A9 41 */	bl func_8026F948
/* 8037500C 00370C6C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80375010 00370C70  2C 00 00 00 */	cmpwi r0, 0
/* 80375014 00370C74  40 82 00 10 */	bne lbl_80375024
/* 80375018 00370C78  7F E3 FB 78 */	mr r3, r31
/* 8037501C 00370C7C  4B EF AA 09 */	bl func_8026FA24
/* 80375020 00370C80  48 00 00 3C */	b lbl_8037505C
lbl_80375024:
/* 80375024 00370C84  38 7E 00 04 */	addi r3, r30, 4
/* 80375028 00370C88  38 9D 00 B8 */	addi r4, r29, 0xb8
/* 8037502C 00370C8C  4B FE DC 49 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80375030 00370C90  81 9D 00 00 */	lwz r12, 0(r29)
/* 80375034 00370C94  7F A3 EB 78 */	mr r3, r29
/* 80375038 00370C98  38 80 FF FF */	li r4, -1
/* 8037503C 00370C9C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80375040 00370CA0  7D 89 03 A6 */	mtctr r12
/* 80375044 00370CA4  4E 80 04 21 */	bctrl
/* 80375048 00370CA8  7F C3 F3 78 */	mr r3, r30
/* 8037504C 00370CAC  7F A4 EB 78 */	mr r4, r29
/* 80375050 00370CB0  4B FF CB 65 */	bl FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
/* 80375054 00370CB4  7F E3 FB 78 */	mr r3, r31
/* 80375058 00370CB8  4B EF A9 CD */	bl func_8026FA24
lbl_8037505C:
/* 8037505C 00370CBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80375060 00370CC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80375064 00370CC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80375068 00370CC8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8037506C 00370CCC  7C 08 03 A6 */	mtlr r0
/* 80375070 00370CD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80375074 00370CD4  4E 80 00 20 */	blr

.global __dt__Q44nw4r3snd6detail8SeqSoundFv
__dt__Q44nw4r3snd6detail8SeqSoundFv:
/* 80375078 00370CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037507C 00370CDC  7C 08 02 A6 */	mflr r0
/* 80375080 00370CE0  2C 03 00 00 */	cmpwi r3, 0
/* 80375084 00370CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80375088 00370CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037508C 00370CEC  7C 9F 23 78 */	mr r31, r4
/* 80375090 00370CF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80375094 00370CF4  7C 7E 1B 78 */	mr r30, r3
/* 80375098 00370CF8  41 82 00 30 */	beq lbl_803750C8
/* 8037509C 00370CFC  34 63 04 28 */	addic. r3, r3, 0x428
/* 803750A0 00370D00  41 82 00 0C */	beq lbl_803750AC
/* 803750A4 00370D04  38 80 00 00 */	li r4, 0
/* 803750A8 00370D08  48 00 A8 99 */	bl func_8037F940
lbl_803750AC:
/* 803750AC 00370D0C  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 803750B0 00370D10  38 80 FF FF */	li r4, -1
/* 803750B4 00370D14  4B FF EA FD */	bl __dt__Q44nw4r3snd6detail9SeqPlayerFv
/* 803750B8 00370D18  2C 1F 00 00 */	cmpwi r31, 0
/* 803750BC 00370D1C  40 81 00 0C */	ble lbl_803750C8
/* 803750C0 00370D20  7F C3 F3 78 */	mr r3, r30
/* 803750C4 00370D24  4B E6 59 F5 */	bl func_801DAAB8
lbl_803750C8:
/* 803750C8 00370D28  7F C3 F3 78 */	mr r3, r30
/* 803750CC 00370D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803750D0 00370D30  83 C1 00 08 */	lwz r30, 8(r1)
/* 803750D4 00370D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803750D8 00370D38  7C 08 03 A6 */	mtlr r0
/* 803750DC 00370D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803750E0 00370D40  4E 80 00 20 */	blr

.global func_803750E4
func_803750E4:
/* 803750E4 00370D44  38 63 00 D8 */	addi r3, r3, 0xd8
/* 803750E8 00370D48  4B FF F2 78 */	b SetPanRange__Q44nw4r3snd6detail9SeqPlayerFf

.global func_803750EC
func_803750EC:
/* 803750EC 00370D4C  38 63 00 D8 */	addi r3, r3, 0xd8
/* 803750F0 00370D50  4B FF F2 C4 */	b SetReleasePriorityFix__Q44nw4r3snd6detail9SeqPlayerFb

.global SetPlayerPriority__Q44nw4r3snd6detail8SeqSoundFi
SetPlayerPriority__Q44nw4r3snd6detail8SeqSoundFi:
/* 803750F4 00370D54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803750F8 00370D58  7C 08 02 A6 */	mflr r0
/* 803750FC 00370D5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80375100 00370D60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80375104 00370D64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80375108 00370D68  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8037510C 00370D6C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80375110 00370D70  7C 7C 1B 78 */	mr r28, r3
/* 80375114 00370D74  4B FF 8C D9 */	bl SetPlayerPriority__Q44nw4r3snd6detail10BasicSoundFi
/* 80375118 00370D78  88 7C 00 74 */	lbz r3, 0x74(r28)
/* 8037511C 00370D7C  80 1C 00 40 */	lwz r0, 0x40(r28)
/* 80375120 00370D80  7C 63 02 14 */	add r3, r3, r0
/* 80375124 00370D84  2C 03 00 7F */	cmpwi r3, 0x7f
/* 80375128 00370D88  40 81 00 0C */	ble lbl_80375134
/* 8037512C 00370D8C  3B A0 00 7F */	li r29, 0x7f
/* 80375130 00370D90  48 00 00 0C */	b lbl_8037513C
lbl_80375134:
/* 80375134 00370D94  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 80375138 00370D98  7C 7D 00 78 */	andc r29, r3, r0
lbl_8037513C:
/* 8037513C 00370D9C  83 DC 02 10 */	lwz r30, 0x210(r28)
/* 80375140 00370DA0  3B FE 00 10 */	addi r31, r30, 0x10
/* 80375144 00370DA4  7F E3 FB 78 */	mr r3, r31
/* 80375148 00370DA8  4B EF A8 01 */	bl func_8026F948
/* 8037514C 00370DAC  3B 9C 00 B8 */	addi r28, r28, 0xb8
/* 80375150 00370DB0  38 7E 00 04 */	addi r3, r30, 4
/* 80375154 00370DB4  7F 84 E3 78 */	mr r4, r28
/* 80375158 00370DB8  4B FE DB 1D */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 8037515C 00370DBC  80 7E 00 08 */	lwz r3, 8(r30)
/* 80375160 00370DC0  38 1E 00 08 */	addi r0, r30, 8
/* 80375164 00370DC4  48 00 00 34 */	b lbl_80375198
lbl_80375168:
/* 80375168 00370DC8  88 A3 FF BC */	lbz r5, -0x44(r3)
/* 8037516C 00370DCC  80 83 FF 88 */	lwz r4, -0x78(r3)
/* 80375170 00370DD0  7C A5 22 14 */	add r5, r5, r4
/* 80375174 00370DD4  2C 05 00 7F */	cmpwi r5, 0x7f
/* 80375178 00370DD8  40 81 00 0C */	ble lbl_80375184
/* 8037517C 00370DDC  38 80 00 7F */	li r4, 0x7f
/* 80375180 00370DE0  48 00 00 0C */	b lbl_8037518C
lbl_80375184:
/* 80375184 00370DE4  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 80375188 00370DE8  7C A4 20 78 */	andc r4, r5, r4
lbl_8037518C:
/* 8037518C 00370DEC  7C 1D 20 00 */	cmpw r29, r4
/* 80375190 00370DF0  41 80 00 10 */	blt lbl_803751A0
/* 80375194 00370DF4  80 63 00 00 */	lwz r3, 0(r3)
lbl_80375198:
/* 80375198 00370DF8  7C 03 00 40 */	cmplw r3, r0
/* 8037519C 00370DFC  40 82 FF CC */	bne lbl_80375168
lbl_803751A0:
/* 803751A0 00370E00  90 61 00 08 */	stw r3, 8(r1)
/* 803751A4 00370E04  7F 85 E3 78 */	mr r5, r28
/* 803751A8 00370E08  38 7E 00 04 */	addi r3, r30, 4
/* 803751AC 00370E0C  38 81 00 08 */	addi r4, r1, 8
/* 803751B0 00370E10  4B FE DA 99 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 803751B4 00370E14  7F E3 FB 78 */	mr r3, r31
/* 803751B8 00370E18  4B EF A8 6D */	bl func_8026FA24
/* 803751BC 00370E1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803751C0 00370E20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803751C4 00370E24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803751C8 00370E28  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803751CC 00370E2C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803751D0 00370E30  7C 08 03 A6 */	mtlr r0
/* 803751D4 00370E34  38 21 00 20 */	addi r1, r1, 0x20
/* 803751D8 00370E38  4E 80 00 20 */	blr
/* 803751DC 00370E3C  80 63 02 0C */	lwz r3, 0x20c(r3)
/* 803751E0 00370E40  7C 03 00 D0 */	neg r0, r3
/* 803751E4 00370E44  7C 00 1B 78 */	or r0, r0, r3
/* 803751E8 00370E48  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803751EC 00370E4C  4E 80 00 20 */	blr
/* 803751F0 00370E50  80 63 02 0C */	lwz r3, 0x20c(r3)
/* 803751F4 00370E54  48 00 01 78 */	b DetachSound__Q34nw4r3snd14SeqSoundHandleFv

.global Execute__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv
Execute__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv:
/* 803751F8 00370E58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803751FC 00370E5C  7C 08 02 A6 */	mflr r0
/* 80375200 00370E60  38 80 00 00 */	li r4, 0
/* 80375204 00370E64  38 A0 00 00 */	li r5, 0
/* 80375208 00370E68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037520C 00370E6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80375210 00370E70  7C 7F 1B 78 */	mr r31, r3
/* 80375214 00370E74  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80375218 00370E78  81 83 00 00 */	lwz r12, 0(r3)
/* 8037521C 00370E7C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80375220 00370E80  7D 89 03 A6 */	mtctr r12
/* 80375224 00370E84  4E 80 04 21 */	bctrl
/* 80375228 00370E88  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8037522C 00370E8C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80375230 00370E90  81 83 00 00 */	lwz r12, 0(r3)
/* 80375234 00370E94  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 80375238 00370E98  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8037523C 00370E9C  7D 89 03 A6 */	mtctr r12
/* 80375240 00370EA0  4E 80 04 21 */	bctrl
/* 80375244 00370EA4  38 00 00 00 */	li r0, 0
/* 80375248 00370EA8  2C 03 FF FD */	cmpwi r3, -3
/* 8037524C 00370EAC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80375250 00370EB0  40 82 00 28 */	bne lbl_80375278
/* 80375254 00370EB4  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 80375258 00370EB8  2C 0C 00 00 */	cmpwi r12, 0
/* 8037525C 00370EBC  41 82 00 80 */	beq lbl_803752DC
/* 80375260 00370EC0  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 80375264 00370EC4  38 60 00 00 */	li r3, 0
/* 80375268 00370EC8  38 80 00 00 */	li r4, 0
/* 8037526C 00370ECC  7D 89 03 A6 */	mtctr r12
/* 80375270 00370ED0  4E 80 04 21 */	bctrl
/* 80375274 00370ED4  48 00 00 68 */	b lbl_803752DC
lbl_80375278:
/* 80375278 00370ED8  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8037527C 00370EDC  7C 03 00 00 */	cmpw r3, r0
/* 80375280 00370EE0  41 82 00 28 */	beq lbl_803752A8
/* 80375284 00370EE4  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 80375288 00370EE8  2C 0C 00 00 */	cmpwi r12, 0
/* 8037528C 00370EEC  41 82 00 50 */	beq lbl_803752DC
/* 80375290 00370EF0  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 80375294 00370EF4  38 60 00 00 */	li r3, 0
/* 80375298 00370EF8  38 80 00 00 */	li r4, 0
/* 8037529C 00370EFC  7D 89 03 A6 */	mtctr r12
/* 803752A0 00370F00  4E 80 04 21 */	bctrl
/* 803752A4 00370F04  48 00 00 38 */	b lbl_803752DC
lbl_803752A8:
/* 803752A8 00370F08  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 803752AC 00370F0C  38 61 00 08 */	addi r3, r1, 8
/* 803752B0 00370F10  4B FF E7 35 */	bl __ct__Q44nw4r3snd6detail13SeqFileReaderFPCv
/* 803752B4 00370F14  38 61 00 08 */	addi r3, r1, 8
/* 803752B8 00370F18  4B FF E7 99 */	bl GetBaseAddress__Q44nw4r3snd6detail13SeqFileReaderCFv
/* 803752BC 00370F1C  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 803752C0 00370F20  2C 0C 00 00 */	cmpwi r12, 0
/* 803752C4 00370F24  41 82 00 18 */	beq lbl_803752DC
/* 803752C8 00370F28  7C 64 1B 78 */	mr r4, r3
/* 803752CC 00370F2C  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 803752D0 00370F30  38 60 00 01 */	li r3, 1
/* 803752D4 00370F34  7D 89 03 A6 */	mtctr r12
/* 803752D8 00370F38  4E 80 04 21 */	bctrl
lbl_803752DC:
/* 803752DC 00370F3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803752E0 00370F40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803752E4 00370F44  7C 08 03 A6 */	mtlr r0
/* 803752E8 00370F48  38 21 00 20 */	addi r1, r1, 0x20
/* 803752EC 00370F4C  4E 80 00 20 */	blr

.global Cancel__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv
Cancel__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv:
/* 803752F0 00370F50  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 803752F4 00370F54  2C 0C 00 00 */	cmpwi r12, 0
/* 803752F8 00370F58  4D 82 00 20 */	beqlr
/* 803752FC 00370F5C  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 80375300 00370F60  38 60 00 00 */	li r3, 0
/* 80375304 00370F64  38 80 00 00 */	li r4, 0
/* 80375308 00370F68  7D 89 03 A6 */	mtctr r12
/* 8037530C 00370F6C  4E 80 04 20 */	bctr
/* 80375310 00370F70  4E 80 00 20 */	blr

.global OnCancel__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv
OnCancel__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv:
/* 80375314 00370F74  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80375318 00370F78  38 00 00 00 */	li r0, 0
/* 8037531C 00370F7C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80375320 00370F80  2C 04 00 00 */	cmpwi r4, 0
/* 80375324 00370F84  4D 82 00 20 */	beqlr
/* 80375328 00370F88  81 84 00 00 */	lwz r12, 0(r4)
/* 8037532C 00370F8C  7C 83 23 78 */	mr r3, r4
/* 80375330 00370F90  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 80375334 00370F94  7D 89 03 A6 */	mtctr r12
/* 80375338 00370F98  4E 80 04 20 */	bctr
/* 8037533C 00370F9C  4E 80 00 20 */	blr

.global GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundFv
GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundFv:
/* 80375340 00370FA0  38 63 00 D8 */	addi r3, r3, 0xd8
/* 80375344 00370FA4  4E 80 00 20 */	blr

.global GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundCFv
GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundCFv:
/* 80375348 00370FA8  38 63 00 D8 */	addi r3, r3, 0xd8
/* 8037534C 00370FAC  4E 80 00 20 */	blr

.global IsPrepared__Q44nw4r3snd6detail8SeqSoundCFv
IsPrepared__Q44nw4r3snd6detail8SeqSoundCFv:
/* 80375350 00370FB0  88 63 02 21 */	lbz r3, 0x221(r3)
/* 80375354 00370FB4  4E 80 00 20 */	blr

.global GetRuntimeTypeInfo__Q44nw4r3snd6detail8SeqSoundCFv
GetRuntimeTypeInfo__Q44nw4r3snd6detail8SeqSoundCFv:
/* 80375358 00370FB8  38 6D B2 20 */	addi r3, r13, lbl_806404E0-_SDA_BASE_
/* 8037535C 00370FBC  4E 80 00 20 */	blr

.global __sinit_$3snd_SeqSound_cpp
__sinit_$3snd_SeqSound_cpp:
/* 80375360 00370FC0  38 0D B1 F0 */	addi r0, r13, lbl_806404B0-_SDA_BASE_
/* 80375364 00370FC4  90 0D B2 20 */	stw r0, lbl_806404E0-_SDA_BASE_(r13)
/* 80375368 00370FC8  4E 80 00 20 */	blr