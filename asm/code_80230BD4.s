.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80230BD4
func_80230BD4:
/* 80230BD4 0022C834  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80230BD8 0022C838  7C 08 02 A6 */	mflr r0
/* 80230BDC 0022C83C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80230BE0 0022C840  39 61 00 30 */	addi r11, r1, 0x30
/* 80230BE4 0022C844  4B F9 65 41 */	bl _savegpr_26
/* 80230BE8 0022C848  3B 60 00 01 */	li r27, 1
/* 80230BEC 0022C84C  38 CD A3 C8 */	addi r6, r13, lbl_8063F688-_SDA_BASE_
/* 80230BF0 0022C850  3B 80 00 04 */	li r28, 4
/* 80230BF4 0022C854  3B A0 00 00 */	li r29, 0
/* 80230BF8 0022C858  9B 6D A3 C8 */	stb r27, lbl_8063F688-_SDA_BASE_(r13)
/* 80230BFC 0022C85C  3F 40 80 49 */	lis r26, lbl_80494468@ha
/* 80230C00 0022C860  3B 5A 44 68 */	addi r26, r26, lbl_80494468@l
/* 80230C04 0022C864  38 80 00 01 */	li r4, 1
/* 80230C08 0022C868  B3 86 00 02 */	sth r28, 2(r6)
/* 80230C0C 0022C86C  38 7A 00 6C */	addi r3, r26, 0x6c
/* 80230C10 0022C870  38 A0 00 04 */	li r5, 4
/* 80230C14 0022C874  38 E0 00 00 */	li r7, 0
/* 80230C18 0022C878  9B A6 00 04 */	stb r29, 4(r6)
/* 80230C1C 0022C87C  38 C0 00 00 */	li r6, 0
/* 80230C20 0022C880  39 00 00 01 */	li r8, 1
/* 80230C24 0022C884  39 20 00 05 */	li r9, 5
/* 80230C28 0022C888  93 A1 00 08 */	stw r29, 8(r1)
/* 80230C2C 0022C88C  39 40 00 00 */	li r10, 0
/* 80230C30 0022C890  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80230C34 0022C894  48 00 BB E1 */	bl func_8023C814
/* 80230C38 0022C898  3F C0 80 1E */	lis r30, func_801E42B4@ha
/* 80230C3C 0022C89C  38 7A 00 6C */	addi r3, r26, 0x6c
/* 80230C40 0022C8A0  38 9E 42 B4 */	addi r4, r30, func_801E42B4@l
/* 80230C44 0022C8A4  38 BA 00 00 */	addi r5, r26, 0
/* 80230C48 0022C8A8  4B F9 60 01 */	bl __register_global_object_tmp
/* 80230C4C 0022C8AC  93 A1 00 08 */	stw r29, 8(r1)
/* 80230C50 0022C8B0  3B FA 00 6C */	addi r31, r26, 0x6c
/* 80230C54 0022C8B4  38 80 00 01 */	li r4, 1
/* 80230C58 0022C8B8  38 A0 00 03 */	li r5, 3
/* 80230C5C 0022C8BC  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80230C60 0022C8C0  38 7F 03 D4 */	addi r3, r31, 0x3d4
/* 80230C64 0022C8C4  38 C0 00 00 */	li r6, 0
/* 80230C68 0022C8C8  38 E0 00 00 */	li r7, 0
/* 80230C6C 0022C8CC  39 00 00 01 */	li r8, 1
/* 80230C70 0022C8D0  39 20 00 05 */	li r9, 5
/* 80230C74 0022C8D4  39 40 00 00 */	li r10, 0
/* 80230C78 0022C8D8  48 00 BB 9D */	bl func_8023C814
/* 80230C7C 0022C8DC  38 7F 03 D4 */	addi r3, r31, 0x3d4
/* 80230C80 0022C8E0  38 9E 42 B4 */	addi r4, r30, 0x42b4
/* 80230C84 0022C8E4  38 BA 00 0C */	addi r5, r26, 0xc
/* 80230C88 0022C8E8  4B F9 5F C1 */	bl __register_global_object_tmp
/* 80230C8C 0022C8EC  93 A1 00 08 */	stw r29, 8(r1)
/* 80230C90 0022C8F0  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 80230C94 0022C8F4  38 80 00 00 */	li r4, 0
/* 80230C98 0022C8F8  38 A0 00 04 */	li r5, 4
/* 80230C9C 0022C8FC  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80230CA0 0022C900  38 C0 00 00 */	li r6, 0
/* 80230CA4 0022C904  38 E0 00 00 */	li r7, 0
/* 80230CA8 0022C908  39 00 00 01 */	li r8, 1
/* 80230CAC 0022C90C  39 20 00 05 */	li r9, 5
/* 80230CB0 0022C910  39 40 00 00 */	li r10, 0
/* 80230CB4 0022C914  48 00 BB 61 */	bl func_8023C814
/* 80230CB8 0022C918  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 80230CBC 0022C91C  38 9E 42 B4 */	addi r4, r30, 0x42b4
/* 80230CC0 0022C920  38 BA 00 18 */	addi r5, r26, 0x18
/* 80230CC4 0022C924  4B F9 5F 85 */	bl __register_global_object_tmp
/* 80230CC8 0022C928  93 A1 00 08 */	stw r29, 8(r1)
/* 80230CCC 0022C92C  38 7F 0B 7C */	addi r3, r31, 0xb7c
/* 80230CD0 0022C930  38 80 00 00 */	li r4, 0
/* 80230CD4 0022C934  38 A0 00 03 */	li r5, 3
/* 80230CD8 0022C938  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80230CDC 0022C93C  38 C0 00 00 */	li r6, 0
/* 80230CE0 0022C940  38 E0 00 00 */	li r7, 0
/* 80230CE4 0022C944  39 00 00 01 */	li r8, 1
/* 80230CE8 0022C948  39 20 00 05 */	li r9, 5
/* 80230CEC 0022C94C  39 40 00 00 */	li r10, 0
/* 80230CF0 0022C950  48 00 BB 25 */	bl func_8023C814
/* 80230CF4 0022C954  38 7F 0B 7C */	addi r3, r31, 0xb7c
/* 80230CF8 0022C958  38 9E 42 B4 */	addi r4, r30, 0x42b4
/* 80230CFC 0022C95C  38 BA 00 24 */	addi r5, r26, 0x24
/* 80230D00 0022C960  4B F9 5F 49 */	bl __register_global_object_tmp
/* 80230D04 0022C964  93 61 00 08 */	stw r27, 8(r1)
/* 80230D08 0022C968  38 7F 0F 50 */	addi r3, r31, 0xf50
/* 80230D0C 0022C96C  38 80 00 01 */	li r4, 1
/* 80230D10 0022C970  38 A0 00 04 */	li r5, 4
/* 80230D14 0022C974  93 81 00 0C */	stw r28, 0xc(r1)
/* 80230D18 0022C978  38 C0 00 00 */	li r6, 0
/* 80230D1C 0022C97C  38 E0 00 00 */	li r7, 0
/* 80230D20 0022C980  39 00 00 00 */	li r8, 0
/* 80230D24 0022C984  39 20 00 00 */	li r9, 0
/* 80230D28 0022C988  39 40 00 01 */	li r10, 1
/* 80230D2C 0022C98C  48 00 BA E9 */	bl func_8023C814
/* 80230D30 0022C990  38 7F 0F 50 */	addi r3, r31, 0xf50
/* 80230D34 0022C994  38 9E 42 B4 */	addi r4, r30, 0x42b4
/* 80230D38 0022C998  38 BA 00 30 */	addi r5, r26, 0x30
/* 80230D3C 0022C99C  4B F9 5F 0D */	bl __register_global_object_tmp
/* 80230D40 0022C9A0  93 61 00 08 */	stw r27, 8(r1)
/* 80230D44 0022C9A4  38 7F 13 24 */	addi r3, r31, 0x1324
/* 80230D48 0022C9A8  38 80 00 00 */	li r4, 0
/* 80230D4C 0022C9AC  38 A0 00 04 */	li r5, 4
/* 80230D50 0022C9B0  93 81 00 0C */	stw r28, 0xc(r1)
/* 80230D54 0022C9B4  38 C0 00 00 */	li r6, 0
/* 80230D58 0022C9B8  38 E0 00 00 */	li r7, 0
/* 80230D5C 0022C9BC  39 00 00 00 */	li r8, 0
/* 80230D60 0022C9C0  39 20 00 00 */	li r9, 0
/* 80230D64 0022C9C4  39 40 00 01 */	li r10, 1
/* 80230D68 0022C9C8  48 00 BA AD */	bl func_8023C814
/* 80230D6C 0022C9CC  38 7F 13 24 */	addi r3, r31, 0x1324
/* 80230D70 0022C9D0  38 9E 42 B4 */	addi r4, r30, 0x42b4
/* 80230D74 0022C9D4  38 BA 00 3C */	addi r5, r26, 0x3c
/* 80230D78 0022C9D8  4B F9 5E D1 */	bl __register_global_object_tmp
/* 80230D7C 0022C9DC  93 61 00 08 */	stw r27, 8(r1)
/* 80230D80 0022C9E0  38 7F 16 F8 */	addi r3, r31, 0x16f8
/* 80230D84 0022C9E4  38 80 00 01 */	li r4, 1
/* 80230D88 0022C9E8  38 A0 00 04 */	li r5, 4
/* 80230D8C 0022C9EC  93 81 00 0C */	stw r28, 0xc(r1)
/* 80230D90 0022C9F0  38 C0 00 00 */	li r6, 0
/* 80230D94 0022C9F4  38 E0 00 00 */	li r7, 0
/* 80230D98 0022C9F8  39 00 00 01 */	li r8, 1
/* 80230D9C 0022C9FC  39 20 00 05 */	li r9, 5
/* 80230DA0 0022CA00  39 40 00 01 */	li r10, 1
/* 80230DA4 0022CA04  48 00 BA 71 */	bl func_8023C814
/* 80230DA8 0022CA08  38 7F 16 F8 */	addi r3, r31, 0x16f8
/* 80230DAC 0022CA0C  38 9E 42 B4 */	addi r4, r30, 0x42b4
/* 80230DB0 0022CA10  38 BA 00 48 */	addi r5, r26, 0x48
/* 80230DB4 0022CA14  4B F9 5E 95 */	bl __register_global_object_tmp
/* 80230DB8 0022CA18  93 61 00 08 */	stw r27, 8(r1)
/* 80230DBC 0022CA1C  38 7F 1A CC */	addi r3, r31, 0x1acc
/* 80230DC0 0022CA20  38 80 00 00 */	li r4, 0
/* 80230DC4 0022CA24  38 A0 00 04 */	li r5, 4
/* 80230DC8 0022CA28  93 81 00 0C */	stw r28, 0xc(r1)
/* 80230DCC 0022CA2C  38 C0 00 00 */	li r6, 0
/* 80230DD0 0022CA30  38 E0 00 00 */	li r7, 0
/* 80230DD4 0022CA34  39 00 00 01 */	li r8, 1
/* 80230DD8 0022CA38  39 20 00 05 */	li r9, 5
/* 80230DDC 0022CA3C  39 40 00 01 */	li r10, 1
/* 80230DE0 0022CA40  48 00 BA 35 */	bl func_8023C814
/* 80230DE4 0022CA44  38 7F 1A CC */	addi r3, r31, 0x1acc
/* 80230DE8 0022CA48  38 9E 42 B4 */	addi r4, r30, 0x42b4
/* 80230DEC 0022CA4C  38 BA 00 54 */	addi r5, r26, 0x54
/* 80230DF0 0022CA50  4B F9 5E 59 */	bl __register_global_object_tmp
/* 80230DF4 0022CA54  93 A1 00 08 */	stw r29, 8(r1)
/* 80230DF8 0022CA58  38 7F 1E A0 */	addi r3, r31, 0x1ea0
/* 80230DFC 0022CA5C  38 80 00 01 */	li r4, 1
/* 80230E00 0022CA60  38 A0 00 04 */	li r5, 4
/* 80230E04 0022CA64  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80230E08 0022CA68  38 C0 00 01 */	li r6, 1
/* 80230E0C 0022CA6C  38 E0 00 00 */	li r7, 0
/* 80230E10 0022CA70  39 00 00 00 */	li r8, 0
/* 80230E14 0022CA74  39 20 00 00 */	li r9, 0
/* 80230E18 0022CA78  39 40 00 00 */	li r10, 0
/* 80230E1C 0022CA7C  48 00 B9 F9 */	bl func_8023C814
/* 80230E20 0022CA80  38 7F 1E A0 */	addi r3, r31, 0x1ea0
/* 80230E24 0022CA84  38 9E 42 B4 */	addi r4, r30, 0x42b4
/* 80230E28 0022CA88  38 BA 00 60 */	addi r5, r26, 0x60
/* 80230E2C 0022CA8C  4B F9 5E 1D */	bl __register_global_object_tmp
/* 80230E30 0022CA90  39 61 00 30 */	addi r11, r1, 0x30
/* 80230E34 0022CA94  4B F9 63 3D */	bl _restgpr_26
/* 80230E38 0022CA98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80230E3C 0022CA9C  7C 08 03 A6 */	mtlr r0
/* 80230E40 0022CAA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80230E44 0022CAA4  4E 80 00 20 */	blr
