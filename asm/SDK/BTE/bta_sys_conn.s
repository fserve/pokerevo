.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global bta_sys_rm_register
bta_sys_rm_register:
/* 802BD634 002B9294  3C 80 80 57 */	lis r4, lbl_805686D8@ha
/* 802BD638 002B9298  38 84 86 D8 */	addi r4, r4, lbl_805686D8@l
/* 802BD63C 002B929C  90 64 00 80 */	stw r3, 0x80(r4)
/* 802BD640 002B92A0  4E 80 00 20 */	blr

.global bta_sys_compress_register
bta_sys_compress_register:
/* 802BD644 002B92A4  3C 80 80 57 */	lis r4, lbl_805686D8@ha
/* 802BD648 002B92A8  38 84 86 D8 */	addi r4, r4, lbl_805686D8@l
/* 802BD64C 002B92AC  90 64 00 88 */	stw r3, 0x88(r4)
/* 802BD650 002B92B0  4E 80 00 20 */	blr

.global bta_sys_pm_register
bta_sys_pm_register:
/* 802BD654 002B92B4  3C 80 80 57 */	lis r4, lbl_805686D8@ha
/* 802BD658 002B92B8  38 84 86 D8 */	addi r4, r4, lbl_805686D8@l
/* 802BD65C 002B92BC  90 64 00 84 */	stw r3, 0x84(r4)
/* 802BD660 002B92C0  4E 80 00 20 */	blr

.global bta_sys_conn_open
bta_sys_conn_open:
/* 802BD664 002B92C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD668 002B92C8  7C 08 02 A6 */	mflr r0
/* 802BD66C 002B92CC  3C C0 80 57 */	lis r6, lbl_805686D8@ha
/* 802BD670 002B92D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD674 002B92D4  38 C6 86 D8 */	addi r6, r6, lbl_805686D8@l
/* 802BD678 002B92D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BD67C 002B92DC  7C BF 2B 78 */	mr r31, r5
/* 802BD680 002B92E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BD684 002B92E4  7C 9E 23 78 */	mr r30, r4
/* 802BD688 002B92E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BD68C 002B92EC  7C 7D 1B 78 */	mr r29, r3
/* 802BD690 002B92F0  81 86 00 80 */	lwz r12, 0x80(r6)
/* 802BD694 002B92F4  2C 0C 00 00 */	cmpwi r12, 0
/* 802BD698 002B92F8  41 82 00 1C */	beq lbl_802BD6B4
/* 802BD69C 002B92FC  7F A4 EB 78 */	mr r4, r29
/* 802BD6A0 002B9300  7F C5 F3 78 */	mr r5, r30
/* 802BD6A4 002B9304  7F E6 FB 78 */	mr r6, r31
/* 802BD6A8 002B9308  38 60 00 00 */	li r3, 0
/* 802BD6AC 002B930C  7D 89 03 A6 */	mtctr r12
/* 802BD6B0 002B9310  4E 80 04 21 */	bctrl
lbl_802BD6B4:
/* 802BD6B4 002B9314  3C 60 80 57 */	lis r3, lbl_805686D8@ha
/* 802BD6B8 002B9318  38 63 86 D8 */	addi r3, r3, lbl_805686D8@l
/* 802BD6BC 002B931C  81 83 00 84 */	lwz r12, 0x84(r3)
/* 802BD6C0 002B9320  2C 0C 00 00 */	cmpwi r12, 0
/* 802BD6C4 002B9324  41 82 00 1C */	beq lbl_802BD6E0
/* 802BD6C8 002B9328  7F A4 EB 78 */	mr r4, r29
/* 802BD6CC 002B932C  7F C5 F3 78 */	mr r5, r30
/* 802BD6D0 002B9330  7F E6 FB 78 */	mr r6, r31
/* 802BD6D4 002B9334  38 60 00 00 */	li r3, 0
/* 802BD6D8 002B9338  7D 89 03 A6 */	mtctr r12
/* 802BD6DC 002B933C  4E 80 04 21 */	bctrl
lbl_802BD6E0:
/* 802BD6E0 002B9340  3C 60 80 57 */	lis r3, lbl_805686D8@ha
/* 802BD6E4 002B9344  38 63 86 D8 */	addi r3, r3, lbl_805686D8@l
/* 802BD6E8 002B9348  81 83 00 88 */	lwz r12, 0x88(r3)
/* 802BD6EC 002B934C  2C 0C 00 00 */	cmpwi r12, 0
/* 802BD6F0 002B9350  41 82 00 1C */	beq lbl_802BD70C
/* 802BD6F4 002B9354  7F A4 EB 78 */	mr r4, r29
/* 802BD6F8 002B9358  7F C5 F3 78 */	mr r5, r30
/* 802BD6FC 002B935C  7F E6 FB 78 */	mr r6, r31
/* 802BD700 002B9360  38 60 00 00 */	li r3, 0
/* 802BD704 002B9364  7D 89 03 A6 */	mtctr r12
/* 802BD708 002B9368  4E 80 04 21 */	bctrl
lbl_802BD70C:
/* 802BD70C 002B936C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD710 002B9370  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BD714 002B9374  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BD718 002B9378  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BD71C 002B937C  7C 08 03 A6 */	mtlr r0
/* 802BD720 002B9380  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD724 002B9384  4E 80 00 20 */	blr

.global bta_sys_conn_close
bta_sys_conn_close:
/* 802BD728 002B9388  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD72C 002B938C  7C 08 02 A6 */	mflr r0
/* 802BD730 002B9390  3C C0 80 57 */	lis r6, lbl_805686D8@ha
/* 802BD734 002B9394  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD738 002B9398  38 C6 86 D8 */	addi r6, r6, lbl_805686D8@l
/* 802BD73C 002B939C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BD740 002B93A0  7C BF 2B 78 */	mr r31, r5
/* 802BD744 002B93A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BD748 002B93A8  7C 9E 23 78 */	mr r30, r4
/* 802BD74C 002B93AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BD750 002B93B0  7C 7D 1B 78 */	mr r29, r3
/* 802BD754 002B93B4  81 86 00 80 */	lwz r12, 0x80(r6)
/* 802BD758 002B93B8  2C 0C 00 00 */	cmpwi r12, 0
/* 802BD75C 002B93BC  41 82 00 1C */	beq lbl_802BD778
/* 802BD760 002B93C0  7F A4 EB 78 */	mr r4, r29
/* 802BD764 002B93C4  7F C5 F3 78 */	mr r5, r30
/* 802BD768 002B93C8  7F E6 FB 78 */	mr r6, r31
/* 802BD76C 002B93CC  38 60 00 01 */	li r3, 1
/* 802BD770 002B93D0  7D 89 03 A6 */	mtctr r12
/* 802BD774 002B93D4  4E 80 04 21 */	bctrl
lbl_802BD778:
/* 802BD778 002B93D8  3C 60 80 57 */	lis r3, lbl_805686D8@ha
/* 802BD77C 002B93DC  38 63 86 D8 */	addi r3, r3, lbl_805686D8@l
/* 802BD780 002B93E0  81 83 00 84 */	lwz r12, 0x84(r3)
/* 802BD784 002B93E4  2C 0C 00 00 */	cmpwi r12, 0
/* 802BD788 002B93E8  41 82 00 1C */	beq lbl_802BD7A4
/* 802BD78C 002B93EC  7F A4 EB 78 */	mr r4, r29
/* 802BD790 002B93F0  7F C5 F3 78 */	mr r5, r30
/* 802BD794 002B93F4  7F E6 FB 78 */	mr r6, r31
/* 802BD798 002B93F8  38 60 00 01 */	li r3, 1
/* 802BD79C 002B93FC  7D 89 03 A6 */	mtctr r12
/* 802BD7A0 002B9400  4E 80 04 21 */	bctrl
lbl_802BD7A4:
/* 802BD7A4 002B9404  3C 60 80 57 */	lis r3, lbl_805686D8@ha
/* 802BD7A8 002B9408  38 63 86 D8 */	addi r3, r3, lbl_805686D8@l
/* 802BD7AC 002B940C  81 83 00 88 */	lwz r12, 0x88(r3)
/* 802BD7B0 002B9410  2C 0C 00 00 */	cmpwi r12, 0
/* 802BD7B4 002B9414  41 82 00 1C */	beq lbl_802BD7D0
/* 802BD7B8 002B9418  7F A4 EB 78 */	mr r4, r29
/* 802BD7BC 002B941C  7F C5 F3 78 */	mr r5, r30
/* 802BD7C0 002B9420  7F E6 FB 78 */	mr r6, r31
/* 802BD7C4 002B9424  38 60 00 01 */	li r3, 1
/* 802BD7C8 002B9428  7D 89 03 A6 */	mtctr r12
/* 802BD7CC 002B942C  4E 80 04 21 */	bctrl
lbl_802BD7D0:
/* 802BD7D0 002B9430  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD7D4 002B9434  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BD7D8 002B9438  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BD7DC 002B943C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BD7E0 002B9440  7C 08 03 A6 */	mtlr r0
/* 802BD7E4 002B9444  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD7E8 002B9448  4E 80 00 20 */	blr

.global bta_sys_sco_close
bta_sys_sco_close:
/* 802BD7EC 002B944C  3C C0 80 57 */	lis r6, lbl_805686D8@ha
/* 802BD7F0 002B9450  7C 80 23 78 */	mr r0, r4
/* 802BD7F4 002B9454  38 C6 86 D8 */	addi r6, r6, lbl_805686D8@l
/* 802BD7F8 002B9458  81 86 00 84 */	lwz r12, 0x84(r6)
/* 802BD7FC 002B945C  7C A6 2B 78 */	mr r6, r5
/* 802BD800 002B9460  2C 0C 00 00 */	cmpwi r12, 0
/* 802BD804 002B9464  4D 82 00 20 */	beqlr
/* 802BD808 002B9468  7C 64 1B 78 */	mr r4, r3
/* 802BD80C 002B946C  7C 05 03 78 */	mr r5, r0
/* 802BD810 002B9470  38 60 00 05 */	li r3, 5
/* 802BD814 002B9474  7D 89 03 A6 */	mtctr r12
/* 802BD818 002B9478  4E 80 04 20 */	bctr
/* 802BD81C 002B947C  4E 80 00 20 */	blr

.global bta_sys_idle
bta_sys_idle:
/* 802BD820 002B9480  3C C0 80 57 */	lis r6, lbl_805686D8@ha
/* 802BD824 002B9484  7C 80 23 78 */	mr r0, r4
/* 802BD828 002B9488  38 C6 86 D8 */	addi r6, r6, lbl_805686D8@l
/* 802BD82C 002B948C  81 86 00 84 */	lwz r12, 0x84(r6)
/* 802BD830 002B9490  7C A6 2B 78 */	mr r6, r5
/* 802BD834 002B9494  2C 0C 00 00 */	cmpwi r12, 0
/* 802BD838 002B9498  4D 82 00 20 */	beqlr
/* 802BD83C 002B949C  7C 64 1B 78 */	mr r4, r3
/* 802BD840 002B94A0  7C 05 03 78 */	mr r5, r0
/* 802BD844 002B94A4  38 60 00 06 */	li r3, 6
/* 802BD848 002B94A8  7D 89 03 A6 */	mtctr r12
/* 802BD84C 002B94AC  4E 80 04 20 */	bctr
/* 802BD850 002B94B0  4E 80 00 20 */	blr

.global bta_sys_busy
bta_sys_busy:
/* 802BD854 002B94B4  3C C0 80 57 */	lis r6, lbl_805686D8@ha
/* 802BD858 002B94B8  7C 80 23 78 */	mr r0, r4
/* 802BD85C 002B94BC  38 C6 86 D8 */	addi r6, r6, lbl_805686D8@l
/* 802BD860 002B94C0  81 86 00 84 */	lwz r12, 0x84(r6)
/* 802BD864 002B94C4  7C A6 2B 78 */	mr r6, r5
/* 802BD868 002B94C8  2C 0C 00 00 */	cmpwi r12, 0
/* 802BD86C 002B94CC  4D 82 00 20 */	beqlr
/* 802BD870 002B94D0  7C 64 1B 78 */	mr r4, r3
/* 802BD874 002B94D4  7C 05 03 78 */	mr r5, r0
/* 802BD878 002B94D8  38 60 00 07 */	li r3, 7
/* 802BD87C 002B94DC  7D 89 03 A6 */	mtctr r12
/* 802BD880 002B94E0  4E 80 04 20 */	bctr
/* 802BD884 002B94E4  4E 80 00 20 */	blr