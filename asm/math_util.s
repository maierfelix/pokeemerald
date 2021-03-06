	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_8151534
sub_8151534: @ 8151534
	push {lr}
	lsls r0, 16
	asrs r0, 16
	lsls r1, 16
	asrs r1, 16
	muls r0, r1
	adds r1, r0, 0
	cmp r0, 0
	bge _08151548
	adds r1, 0xFF
_08151548:
	lsls r0, r1, 8
	asrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_8151534

	thumb_func_start sub_8151550
sub_8151550: @ 8151550
	push {lr}
	adds r3, r1, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r3, 16
	asrs r3, 16
	lsls r2, 16
	asrs r2, 16
	muls r3, r2
	movs r1, 0x1
	lsls r1, r0
	adds r0, r3, 0
	bl __divsi3
	lsls r0, 16
	asrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_8151550

	thumb_func_start sub_8151574
sub_8151574: @ 8151574
	push {r4-r7,lr}
	adds r2, r1, 0
	adds r4, r0, 0
	asrs r5, r0, 31
	asrs r3, r2, 31
	adds r1, r5, 0
	adds r0, r4, 0
	bl __muldi3
	adds r5, r1, 0
	adds r4, r0, 0
	adds r7, r5, 0
	adds r6, r4, 0
	cmp r5, 0
	bge _0815159A
	movs r6, 0xFF
	movs r7, 0
	adds r6, r4
	adcs r7, r5
_0815159A:
	lsls r3, r7, 24
	lsrs r2, r6, 8
	adds r0, r3, 0
	orrs r0, r2
	asrs r1, r7, 8
	adds r5, r1, 0
	adds r4, r0, 0
	adds r0, r4, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8151574

	thumb_func_start sub_81515B0
sub_81515B0: @ 81515B0
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	lsls r1, 16
	asrs r1, 16
	cmp r1, 0
	beq _081515CC
	lsls r0, 16
	asrs r0, 8
	bl __divsi3
	lsls r0, 16
	asrs r0, 16
	b _081515CE
_081515CC:
	movs r0, 0
_081515CE:
	pop {r1}
	bx r1
	thumb_func_end sub_81515B0

	thumb_func_start sub_81515D4
sub_81515D4: @ 81515D4
	push {lr}
	lsls r0, 24
	lsrs r3, r0, 24
	lsls r1, 16
	lsrs r0, r1, 16
	lsls r2, 16
	asrs r1, r2, 16
	cmp r1, 0
	beq _081515F6
	lsls r0, 16
	asrs r0, 16
	lsls r0, r3
	bl __divsi3
	lsls r0, 16
	asrs r0, 16
	b _081515F8
_081515F6:
	movs r0, 0
_081515F8:
	pop {r1}
	bx r1
	thumb_func_end sub_81515D4

	thumb_func_start sub_81515FC
sub_81515FC: @ 81515FC
	push {r4-r6,lr}
	adds r6, r1, 0
	cmp r6, 0
	beq _0815161C
	adds r2, r0, 0
	asrs r3, r0, 31
	lsrs r5, r2, 24
	lsls r4, r3, 8
	adds r1, r5, 0
	orrs r1, r4
	lsls r0, r2, 8
	adds r2, r6, 0
	asrs r3, r6, 31
	bl __divdi3
	b _0815161E
_0815161C:
	movs r0, 0
_0815161E:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_81515FC

	thumb_func_start sub_8151624
sub_8151624: @ 8151624
	push {lr}
	adds r1, r0, 0
	movs r0, 0x80
	lsls r0, 9
	lsls r1, 16
	asrs r1, 16
	bl __divsi3
	lsls r0, 16
	asrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_8151624

	thumb_func_start sub_815163C
sub_815163C: @ 815163C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0x80
	lsls r2, 1
	lsls r2, r0
	lsls r1, 16
	asrs r1, 16
	adds r0, r2, 0
	bl __divsi3
	lsls r0, 16
	asrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_815163C

	thumb_func_start sub_815165C
sub_815165C: @ 815165C
	push {lr}
	adds r2, r0, 0
	ldr r1, _08151674
	ldr r0, _08151670
	asrs r3, r2, 31
	bl __divdi3
	pop {r1}
	bx r1
	.align 2, 0
_08151670: .4byte 0x00010000
_08151674: .4byte 0x00000000
	thumb_func_end sub_815165C

	.align 2, 0 @ Don't pad with nop.
