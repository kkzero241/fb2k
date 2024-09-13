; Disassembly of "Faceball 2000 (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    ld [bc], a
    ld [bc], a
    db $10
    ld a, a
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $00e0
    rlca
    inc bc
    ret nz

    nop
    inc bc
    inc bc
    pop bc
    ld bc, $8383
    jp $c303


    jp $07c7


    db $e3
    db $e3
    call $b30d
    or e
    ret


    add hl, bc
    sub e
    sub e
    pop bc
    ld bc, $8383
    pop bc
    ld bc, $8383
    pop bc
    ld bc, $8383
    ret nz

    nop
    inc bc
    inc bc
    ldh [rP1], a
    rlca
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp $fe
    ld [bc], a
    ld [bc], a
    db $10
    ld a, a
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $00e0
    rlca
    inc bc
    ret nz

    nop
    inc bc
    inc bc
    ret nz

    nop
    inc bc
    inc bc
    jp $f303


    di
    ret nz

    nop
    ld [hl], e
    ld [hl], e
    ret nz

    nop
    di
    di
    pop bc
    ld bc, $d3d3
    jp $9303


    sub e
    rst $00
    rlca
    inc de
    inc de
    jp nz, $0302

    inc bc
    ret nz

    nop
    inc bc
    inc bc
    ldh [rP1], a
    rlca
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp $fe
    ld [bc], a
    ld [bc], a
    db $10
    ld a, a
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $00e0
    rlca
    inc bc
    ret nz

    nop
    inc bc
    inc bc
    pop bc
    ld bc, $8383
    ret nz

    nop
    jp $c0c3


    nop
    ld h, e
    ld h, e
    rst $08
    rrca
    di
    di
    rst $08
    rrca
    di
    di
    ret nz

    nop
    ld h, e
    ld h, e
    ret nz

    nop
    jp $c1c3


    ld bc, $8383
    ret nz

    nop
    inc bc
    inc bc
    ldh [rP1], a
    rlca
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp $fe
    ld [bc], a
    ld [bc], a
    db $10
    ld a, a
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $00e0
    rlca
    inc bc
    ret nz

    nop
    inc bc
    inc bc
    ret nz

    nop
    inc bc
    inc bc
    jp nz, $0302

    inc bc
    rst $00
    rlca
    inc de
    inc de
    jp $9303


    sub e
    pop bc
    ld bc, $d3d3
    ret nz

    nop
    di
    di
    ret nz

    nop
    ld [hl], e
    ld [hl], e
    jp $f303


    di
    ret nz

    nop
    inc bc
    inc bc
    ldh [rP1], a
    rlca
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp $fe
    ld [bc], a
    ld [bc], a
    db $10
    ld a, a
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $00e0
    rlca
    inc bc
    ret nz

    nop
    inc bc
    inc bc
    pop bc
    ld bc, $8383
    pop bc
    ld bc, $8383
    pop bc
    ld bc, $8383
    ret


    add hl, bc
    sub e
    sub e
    call $b30d
    or e
    rst $00
    rlca
    db $e3
    db $e3
    jp $c303


    jp $01c1


    add e
    add e
    ret nz

    nop
    inc bc
    inc bc
    ldh [rP1], a
    rlca
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp $fe
    ld [bc], a
    ld [bc], a
    db $10
    ld a, a
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $00e0
    rlca
    inc bc
    ret nz

    nop
    inc bc
    inc bc
    ret nz

    nop
    inc bc
    inc bc
    ret nz

    nop
    inc hl
    inc hl
    call nz, Call_007_7304
    ld [hl], e
    call nz, $e304
    db $e3
    push bc
    dec b
    jp $c7c3


    rlca
    add e
    add e
    rst $00
    rlca
    inc bc
    inc bc
    rst $00
    rlca
    db $e3
    db $e3
    ret nz

    nop
    inc bc
    inc bc
    ldh [rP1], a
    rlca
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp $fe
    ld [bc], a
    ld [bc], a
    db $10
    ld a, a
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $00e0
    rlca
    inc bc
    ret nz

    nop
    inc bc
    inc bc
    pop bc
    ld bc, $8383
    jp $0303


    inc bc
    add $06
    inc bc
    inc bc
    rst $08
    rrca
    di
    di
    rst $08
    rrca
    di
    di
    add $06
    inc bc
    inc bc
    jp $0303


    inc bc
    pop bc
    ld bc, $8383
    ret nz

    nop
    inc bc
    inc bc
    ldh [rP1], a
    rlca
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp $fe
    ld [bc], a
    ld [bc], a
    db $10
    ld a, a
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $00e0
    rlca
    inc bc
    ret nz

    nop
    inc bc
    inc bc
    ret nz

    nop
    inc bc
    inc bc
    rst $00
    rlca
    db $e3
    db $e3
    rst $00
    rlca
    inc bc
    inc bc
    rst $00
    rlca
    add e
    add e
    push bc
    dec b
    jp $c4c3


    inc b
    db $e3
    db $e3
    call nz, Call_007_7304
    ld [hl], e
    ret nz

    nop
    inc hl
    inc hl
    ret nz

    nop
    inc bc
    inc bc
    ldh [rP1], a
    rlca
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp $fe
    inc [hl]
    ld b, d
    rra
    ld b, d
    nop
    nop
    nop
    jr nz, @+$48

    ld b, c
    ld b, e
    ld b, l
    ld b, d
    ld b, c
    ld c, h
    ld c, h
    jr nz, jr_007_425c

    jr nc, jr_007_425c

    jr nc, @+$22

    jr z, jr_007_42a4

    ld l, l
    add hl, hl
    jr nz, jr_007_4234

jr_007_4234:
    ld d, b
    ld b, d
    dec sp
    ld b, d
    nop
    nop
    ld [bc], a
    jr nz, jr_007_425d

    ld b, e
    ld l, a
    ld [hl], b
    ld a, c
    ld [hl], d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_007_4283

    jr nz, jr_007_427b

    add hl, sp
    add hl, sp
    ld sp, $2020
    nop
    ld l, h
    ld b, d
    ld d, a
    ld b, d
    nop
    nop
    inc bc
    jr nz, jr_007_42b1

    ld h, c
    ld l, [hl]
    ld [hl], h

jr_007_425c:
    ld l, b

jr_007_425d:
    jr nz, jr_007_42b2

    ld l, a
    ld h, [hl]
    ld [hl], h
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, @+$48

    cpl
    ld e, b
    jr nz, jr_007_426c

jr_007_426c:
    adc b
    ld b, d
    ld [hl], e
    ld b, d
    nop
    nop
    inc b
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_007_42ea

    ld l, c
    ld h, a
    ld l, b

jr_007_427b:
    ld [hl], h
    ld [hl], e
    jr nz, @+$74

    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d

jr_007_4283:
    db $76
    ld h, l
    ld h, h
    ld l, $00
    and h
    ld b, d
    adc a
    ld b, d
    nop
    nop
    ld b, $20
    ld c, a
    ld [hl], d
    ld l, c
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_007_4301

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_007_42bf

    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_007_42a4

jr_007_42a4:
    ret nz

    ld b, d
    xor e
    ld b, d
    nop
    nop
    rlca
    jr nz, jr_007_42cd

    jr nz, jr_007_4313

    ld h, l
    ld [hl], e

jr_007_42b1:
    ld l, c

jr_007_42b2:
    ld h, a
    ld l, [hl]
    jr nz, @+$3d

    jr nz, jr_007_42e9

    add hl, sp
    jr c, jr_007_42f2

    ld l, $20
    jr nz, jr_007_42df

jr_007_42bf:
    nop
    call c, $c742
    ld b, d
    nop
    nop
    add hl, bc
    jr nz, jr_007_430d

    ld l, c
    ld [hl], e
    ld [hl], h
    ld [hl], d

jr_007_42cd:
    ld l, c
    ld h, d
    ld [hl], l
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_007_42f5

    ld [hl], l
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_007_42dc

jr_007_42dc:
    ld hl, sp+$42
    db $e3

jr_007_42df:
    ld b, d
    nop
    nop
    ld a, [bc]
    jr nz, jr_007_4351

    ld l, c
    ld h, e
    ld h, l
    ld l, [hl]

jr_007_42e9:
    ld [hl], e

jr_007_42ea:
    ld h, l
    jr nz, jr_007_4353

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_007_434a

jr_007_42f2:
    ld h, c
    ld l, [hl]
    ld [hl], h

jr_007_42f5:
    ld l, b
    jr nz, jr_007_42f8

jr_007_42f8:
    inc d
    ld b, e
    rst $38
    ld b, d
    nop
    nop
    dec bc
    jr nz, @+$55

jr_007_4301:
    ld l, a
    ld h, [hl]
    ld [hl], h
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_007_4350

    cpl
    ld e, b
    inc l

jr_007_430d:
    jr nz, jr_007_4358

    ld l, [hl]
    ld h, e
    ld l, $20

jr_007_4313:
    nop
    jr nc, jr_007_4359

    dec de
    ld b, e
    nop
    nop
    dec c
    ld d, h
    ld c, l
    jr nz, jr_007_4350

    add hl, sp
    add hl, sp
    ld sp, $4220
    ld [hl], l
    ld l, h
    ld l, h
    ld h, l
    ld [hl], h
    dec l
    ld d, b
    ld [hl], d
    ld l, a
    ld l, a
    ld h, [hl]
    nop
    ld c, h
    ld b, e
    scf
    ld b, e
    nop
    nop
    ld c, $53
    ld l, a
    ld h, [hl]
    ld [hl], h
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, l
    ld l, $20
    ld d, l
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_007_43bc

    ld l, [hl]
    ld h, h
    ld h, l

jr_007_434a:
    ld [hl], d
    nop
    ld l, b
    ld b, e
    ld d, e
    ld b, e

jr_007_4350:
    nop

jr_007_4351:
    nop
    rrca

jr_007_4353:
    jr nz, jr_007_4375

    jr nz, jr_007_4377

    ld h, c

jr_007_4358:
    ld [hl], l

jr_007_4359:
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], d
    ld l, c
    ld a, d
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $20
    jr nz, jr_007_4368

jr_007_4368:
    nop
    nop
    ld l, a
    ld b, e
    nop
    nop
    ld de, $694c
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], e

jr_007_4375:
    ld h, l
    ld h, h

jr_007_4377:
    jr nz, jr_007_43db

    ld a, c
    jr nz, jr_007_43ca

    ld c, c
    ld c, [hl]
    ld d, h
    ld b, l
    ld c, [hl]
    ld b, h
    ld c, a
    nop

PrepareCopyrightScreen::
    call Call_000_009e
    ld hl, $4218
    call Call_000_00a7
    call Call_000_00a1
    ret

Call_007_4391::
    xor a
    ldh [$ffdd], a
    ldh a, [$ffc9]
    ld c, a
    ldh a, [$ffca]
    ld b, a
    ldh a, [$ffcb]
    ld e, a
    ldh a, [$ffcc]
    ld d, a
    bit 7, b
    jr z, jr_007_43ae

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_007_43ae:
    bit 7, d
    jp nz, Jump_007_4468

    ld a, b
    cp d
    jr c, jr_007_43c1

    jp nz, Jump_007_4468

    ld a, c
    cp e

jr_007_43bc:
    jr z, jr_007_43c1

    jp nc, Jump_007_4468

jr_007_43c1:
    ldh a, [$ffcd]
    ld c, a
    ldh a, [$ffce]
    ld b, a
    ldh a, [$ffcf]
    ld e, a

jr_007_43ca:
    ldh a, [$ffd0]
    ld d, a
    bit 7, b
    jr z, jr_007_43db

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_007_43db:
    bit 7, d
    jr nz, jr_007_445c

    ld a, b
    cp d
    jr c, jr_007_43eb

    jr nz, jr_007_445c

    ld a, c
    cp e
    jr z, jr_007_43eb

    jr nc, jr_007_445c

Jump_007_43eb:
jr_007_43eb:
    ldh a, [$fff7]
    ld c, a
    ld b, $00
    ld hl, $dacf
    add hl, bc
    ldh a, [$ffec]
    ld b, a
    ldh a, [$ffed]
    ld e, a
    ld d, $c5
    ld a, [de]
    bit 2, b
    jr nz, jr_007_440f

    rra
    rra
    bit 0, b
    jr nz, jr_007_440f

    rra
    rra
    bit 1, b
    jr nz, jr_007_440f

    rra
    rra

jr_007_440f:
    and $03
    swap a
    ld b, a
    ldh a, [$ffdd]
    and $c0
    or b
    or $02
    ld [hl+], a
    ldh a, [$ffc9]
    ld c, a
    ldh a, [$ffca]
    ld b, a
    ldh a, [$ffcb]
    ld e, a
    ldh a, [$ffcc]
    ld d, a
    push hl
    call Call_000_00ad
    pop hl
    ld [hl+], a
    ldh a, [$ffe7]
    add $48
    ld [hl+], a
    ldh [$ffdd], a
    ldh a, [$ffcd]
    ld c, a
    ldh a, [$ffce]
    ld b, a
    ldh a, [$ffcf]
    ld e, a
    ldh a, [$ffd0]
    ld d, a
    push hl
    call Call_000_00ad
    pop hl
    ld [hl+], a
    ldh a, [$ffe7]
    add $48
    ld [hl+], a
    ld c, a
    ldh a, [$ffdd]
    ld b, a
    call Call_000_00b3
    jr nc, jr_007_445b

    ldh a, [$fff7]
    add $07
    ldh [$fff7], a

jr_007_445b:
    ret


jr_007_445c:
    call Call_007_452f
    ldh a, [$ffdd]
    set 7, a
    ldh [$ffdd], a
    jp Jump_007_43eb


Jump_007_4468:
    ldh a, [$ffcd]
    ld c, a
    ldh a, [$ffce]
    ld b, a
    ldh a, [$ffcf]
    ld e, a
    ldh a, [$ffd0]
    ld d, a
    bit 7, b
    jr z, jr_007_4482

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_007_4482:
    bit 7, d
    jp nz, Jump_007_44a4

    ld a, b
    cp d
    jr c, jr_007_4495

    jp nz, Jump_007_44a4

    ld a, c
    cp e
    jr z, jr_007_4495

    jp nc, Jump_007_44a4

jr_007_4495:
    call Call_007_4506
    call Call_007_452f
    ldh a, [$ffdd]
    set 7, a
    ldh [$ffdd], a
    jp Jump_007_43eb


Jump_007_44a4:
    ldh a, [$ffca]
    ld b, a
    ldh a, [$ffce]
    xor b
    rla
    ret nc

    ldh a, [$ffca]
    bit 7, a
    jr nz, jr_007_44b5

    call Call_007_4506

jr_007_44b5:
    ldh a, [$ffc9]
    ldh [$ffd1], a
    ldh a, [$ffca]
    ldh [$ffd2], a
    ldh a, [$ffcb]
    ldh [$ffd3], a
    ldh a, [$ffcc]
    ldh [$ffd4], a
    call Call_007_45f9
    ret c

    call Call_007_452f
    ldh a, [$ffcd]
    ldh [$ffd5], a
    ldh a, [$ffce]
    ldh [$ffd6], a
    ldh a, [$ffcf]
    ldh [$ffd7], a
    ldh a, [$ffd0]
    ldh [$ffd8], a
    ldh a, [$ffd1]
    ldh [$ffcd], a
    ldh a, [$ffd2]
    ldh [$ffce], a
    ldh a, [$ffd3]
    ldh [$ffcf], a
    ldh a, [$ffd4]
    ldh [$ffd0], a
    call Call_007_452f
    ldh a, [$ffd5]
    ldh [$ffcb], a
    ldh a, [$ffd6]
    ldh [$ffcc], a
    ldh a, [$ffd7]
    ldh [$ffc9], a
    ldh a, [$ffd8]
    ldh [$ffca], a
    ld a, $c0
    ldh [$ffdd], a
    jp Jump_007_43eb


Call_007_4506:
    ldh a, [$ffcd]
    ld c, a
    ldh a, [$ffce]
    ld b, a
    ldh a, [$ffc9]
    ldh [$ffcd], a
    ldh a, [$ffca]
    ldh [$ffce], a
    ld a, c
    ldh [$ffc9], a
    ld a, b
    ldh [$ffca], a
    ldh a, [$ffcf]
    ld c, a
    ldh a, [$ffd0]
    ld b, a
    ldh a, [$ffcb]
    ldh [$ffcf], a
    ldh a, [$ffcc]
    ldh [$ffd0], a
    ld a, c
    ldh [$ffcb], a
    ld a, b
    ldh [$ffcc], a
    ret


Call_007_452f:
    ldh a, [$ffc9]
    ldh [$ffd9], a
    ldh a, [$ffca]
    ldh [$ffda], a
    ldh a, [$ffcb]
    ldh [$ffdb], a
    ldh a, [$ffcc]
    ldh [$ffdc], a

Jump_007_453f:
jr_007_453f:
    ldh a, [$ffc9]
    ld c, a
    ldh a, [$ffca]
    ld b, a
    ldh a, [$ffcd]
    ld l, a
    ldh a, [$ffce]
    ld h, a
    add hl, bc
    sra h
    rr l
    ld e, l
    ld d, h
    ldh a, [$ffcb]
    ld c, a
    ldh a, [$ffcc]
    ld b, a
    ldh a, [$ffcf]
    ld l, a
    ldh a, [$ffd0]
    ld h, a
    add hl, bc
    sra h
    rr l
    ld c, e
    ld b, d
    ld a, h
    xor b
    rlca
    jr c, jr_007_4574

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_007_4574:
    push hl
    add hl, bc
    ld a, h
    bit 7, a
    jr nz, jr_007_4585

    and a
    jr nz, jr_007_458e

    ld a, l
    cp $03
    jr c, jr_007_45cc

    jr jr_007_458e

jr_007_4585:
    cp $ff
    jr nz, jr_007_458e

    ld a, l
    cp $fe
    jr nc, jr_007_45cc

jr_007_458e:
    pop hl
    ld c, e
    ld b, d
    bit 7, b
    jr z, jr_007_459f

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_007_459f:
    bit 7, h
    jr nz, jr_007_45bd

    ld a, b
    cp h
    jr c, jr_007_45af

    jr nz, jr_007_45bd

    ld a, c
    cp l
    jr z, jr_007_45cc

    jr nc, jr_007_45bd

jr_007_45af:
    ld a, d
    ldh [$ffca], a
    ld a, e
    ldh [$ffc9], a
    ld a, h
    ldh [$ffcc], a
    ld a, l
    ldh [$ffcb], a
    jr jr_007_453f

jr_007_45bd:
    ld a, d
    ldh [$ffce], a
    ld a, e
    ldh [$ffcd], a
    ld a, h
    ldh [$ffd0], a
    ld a, l
    ldh [$ffcf], a
    jp Jump_007_453f


jr_007_45cc:
    pop hl
    ld a, d
    ldh [$ffce], a
    ld a, e
    ldh [$ffcd], a
    bit 7, d
    jr z, jr_007_45e1

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_007_45e1:
    ld a, d
    ldh [$ffd0], a
    ld a, e
    ldh [$ffcf], a
    ldh a, [$ffd9]
    ldh [$ffc9], a
    ldh a, [$ffda]
    ldh [$ffca], a
    ldh a, [$ffdb]
    ldh [$ffcb], a
    ldh a, [$ffdc]
    ldh [$ffcc], a
    or a
    ret


Call_007_45f9:
    ldh a, [$ffcd]
    ldh [$ffd5], a
    ldh a, [$ffce]
    ldh [$ffd6], a
    ldh a, [$ffcf]
    ldh [$ffd7], a
    ldh a, [$ffd0]
    ldh [$ffd8], a

jr_007_4609:
    ldh a, [$ffc9]
    ld c, a
    ldh a, [$ffca]
    ld b, a
    ldh a, [$ffcd]
    ld l, a
    ldh a, [$ffce]
    ld h, a
    add hl, bc
    sra h
    rr l
    ld e, l
    ld d, h
    ldh a, [$ffca]
    cp d
    jr nz, jr_007_4628

    ldh a, [$ffc9]
    cp e
    jr nz, jr_007_4628

jr_007_4626:
    scf
    ret


jr_007_4628:
    ldh a, [$ffce]
    cp d
    jr nz, jr_007_4632

    ldh a, [$ffcd]
    cp e
    jr z, jr_007_4626

jr_007_4632:
    ldh a, [$ffcb]
    ld c, a
    ldh a, [$ffcc]
    ld b, a
    ldh a, [$ffcf]
    ld l, a
    ldh a, [$ffd0]
    ld h, a
    add hl, bc
    sra h
    rr l
    ld c, e
    ld b, d
    bit 7, b
    jr z, jr_007_4653

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_007_4653:
    bit 7, h
    jr nz, jr_007_4661

    ld a, b
    cp h
    jr c, jr_007_4681

    jr nz, jr_007_4661

    ld a, c
    cp l
    jr c, jr_007_4681

jr_007_4661:
    bit 7, d
    jr z, jr_007_4673

    ld a, e
    ldh [$ffc9], a
    ld a, d
    ldh [$ffca], a
    ld a, l
    ldh [$ffcb], a
    ld a, h
    ldh [$ffcc], a
    jr jr_007_4609

jr_007_4673:
    ld a, e
    ldh [$ffcd], a
    ld a, d
    ldh [$ffce], a
    ld a, l
    ldh [$ffcf], a
    ld a, h
    ldh [$ffd0], a
    jr jr_007_4609

jr_007_4681:
    ld a, e
    ldh [$ffc9], a
    ld a, d
    ldh [$ffca], a
    ld a, l
    ldh [$ffcb], a
    ld a, h
    ldh [$ffcc], a
    ldh a, [$ffd5]
    ldh [$ffcd], a
    ldh a, [$ffd6]
    ldh [$ffce], a
    ldh a, [$ffd7]
    ldh [$ffcf], a
    ldh a, [$ffd8]
    ldh [$ffd0], a
    or a
    ret


    ld [bc], a
    ld [$0020], sp
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rra
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff01
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld [$ff20], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ccf
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [$0020], sp
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rra
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff01
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld [$ff20], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ccf
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [$0020], sp
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rra
    ld bc, $c0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    ld bc, $fcff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    inc de
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    rlca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    rlca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    rlca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    ld c, a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    rrca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld [$ff20], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    rra
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ccf
    nop
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    nop
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff01
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff01
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [$0020], sp
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rra
    db $10
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    jr nz, @+$01

    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld b, b
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    add c
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff01
    add e
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff01
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    ld [bc], a
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    ld b, $ff
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    inc b
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    inc c
    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    jr @+$01

    ccf
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    jr @+$01

    ccf
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    db $10
    rst $38
    ld a, a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    jr nc, @+$01

    ld a, a
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nc, @+$01

    ld a, a
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    ld h, b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld h, b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld h, b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld h, b
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    ld b, b
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld [$ff20], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ccf
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    nop
    rst $38
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    db $10
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld [$1fff], sp
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    ld b, $ff
    ld a, a
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff01
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [$0020], sp
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $00ff
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    ld b, $ff
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rra
    inc c
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    jr @+$01

    rlca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    jr nc, @+$01

    rlca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    ld [hl], b
    rst $38
    rrca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ldh [rIE], a
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff01
    ldh [rIE], a
    ccf
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    inc bc
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    inc bc
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    rlca
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    rlca
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    rrca
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    rrca
    rst $38
    ld bc, $ffff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    rra
    rst $38
    ld bc, $ffff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    rra
    rst $38
    ld bc, $ffff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld e, $ff
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    ld e, $ff
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld a, $ff
    inc bc
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld a, $ff
    inc bc
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc a
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    inc a
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld bc, $f0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld [$ff20], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ccf
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nc, @+$01

    nop
    rst $38
    ld bc, $fcff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    jr @+$01

    nop
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc e
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld c, $ff
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    rlca
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    rlca
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    ld a, a
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    rra
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [$0020], sp
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    ld b, b
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $c0ff
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rra
    inc bc
    rst $38
    add b
    rst $38
    rra
    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    rlca
    rst $38
    add b
    rst $38
    rra
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rrca
    rst $38
    nop
    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ld a, $ff
    nop
    rst $38
    ld a, a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld bc, $ffff
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    cp $ff
    ld bc, $ffff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    db $fc
    rst $38
    ld bc, $ffff
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld bc, $fcff
    rst $38
    ld bc, $ffff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    ld bc, $fcff
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld bc, $fcff
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc bc
    rst $38
    ld hl, sp-$01
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    inc bc
    rst $38
    ld hl, sp-$01
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc bc
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    inc bc
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc bc
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc bc
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc bc
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $c0ff
    rst $38
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld [$ff20], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    cp $00
    ld a, a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    cp $00
    ccf
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    rlca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    ld bc, $ffff
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [$0020], sp
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    jr nc, @+$01

    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    jr c, @+$01

    nop
    rst $38
    ld a, b
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    cp $ff
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    cp $ff
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    ld bc, $ffff
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    inc bc
    rst $38
    ld hl, sp-$01
    ld bc, $ffff
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    rlca
    rst $38
    ld hl, sp-$01
    ld bc, $ffff
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    ldh [rP1], a
    rrca
    nop
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    ldh a, [rP1]
    rra
    nop
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    nop
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld [$ff20], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    add b
    rst $38
    nop
    ld a, a
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    nop
    cp $00
    ld a, a
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    nop
    cp $00
    ld a, a
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    cp $00
    ld a, a
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    cp $00
    ccf
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ld bc, $f8ff
    rst $38
    nop
    db $fc
    nop
    rra
    nop
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ret nz

    rst $38
    nop
    ld hl, sp+$00
    rrca
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    ld bc, $ffff
    rst $38
    add b
    rst $38
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    rrca
    rst $38
    cp $ff
    rra
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [$0020], sp
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld bc, $00ff
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    rlca
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    ldh [$fff8], a
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    ldh a, [$fffc]
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    ldh a, [$fffe]
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    db $fc
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    nop
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    db $fc
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    db $fc
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    ldh [rP1], a
    rrca
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    ldh a, [rP1]
    rra
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    ld hl, sp+$00
    ccf
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    db $fc
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    cp $ff
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    add b
    rst $38
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld [$ff20], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    nop
    ld a, a
    nop
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $fe
    nop
    ld a, a
    nop
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    cp $00
    ld a, a
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    cp $00
    ld a, a
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$02
    nop
    ccf
    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $f0ff
    db $fc
    nop
    ccf
    nop
    rst $38
    rlca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [$fffc], a
    nop
    rra
    nop
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ret nz

    ld hl, sp+$00
    rra
    nop
    rst $38
    ld bc, $fcff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ret nz

    ld hl, sp+$00
    rra
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    ld hl, sp+$00
    rrca
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    cp $ff
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    db $fc
    rst $38
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $18
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld b, $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ccf
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $18
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
    db $10
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff01
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld b, $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ccf
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $18
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
    inc b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    jr @+$01

    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    rlca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    cpl
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    sbc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld b, $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ccf
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    rlca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    rrca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $18
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
    ld bc, $80ff
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    inc bc
    rst $38
    add b
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    ld [bc], a
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    inc b
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld [$7eff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld [$feff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    db $10
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    ld sp, $fcff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld hl, $f8ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld hl, $f8ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    ld h, e
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, e
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, e
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    jp $e0ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $e0ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld b, $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    rlca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    ccf
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    db $10
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    rrca
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    rrca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    rlca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $18
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    jr nc, @+$01

    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff01
    add c
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    inc bc
    rst $38
    add e
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    rlca
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    rlca
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld c, $ff
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    ld e, $ff
    rrca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    ld e, $ff
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc e
    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc a
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    inc a
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr c, @+$01

    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr c, @+$01

    rra
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    jr c, @+$01

    rra
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld b, $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    cp $00
    ccf
    jr nz, @+$01

    nop
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    nop
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr @+$01

    ld bc, $f8ff
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    inc e
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    rlca
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    ld bc, $ffff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $18
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
    ld [$03ff], sp
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    jr @+$01

    rlca
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    ld [hl], b
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ldh a, [rIE]
    rra
    rst $38
    add b
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    ldh a, [rIE]
    rra
    rst $38
    add b
    rst $38
    nop
    ret nz

    nop
    rlca
    ld bc, $e0ff
    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    ldh [rP1], a
    rrca
    inc bc
    rst $38
    ldh [rIE], a
    ccf
    rst $38
    add b
    rst $38
    nop
    ldh a, [rP1]
    rrca
    inc bc
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    add b
    rst $38
    nop
    ldh a, [rP1]
    rra
    rlca
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$00
    ccf
    rlca
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    ccf
    rlca
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    ccf
    rlca
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    rrca
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    rrca
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop

Call_007_7304:
    rst $38
    nop
    cp $00
    ld a, a
    rrca
    rst $38
    add b
    rst $38
    cp $ff
    nop
    rst $38
    nop
    cp $00
    rst $38
    rrca
    rst $38
    add b
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld b, $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    ld a, a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    cp $00
    ld a, a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    nop
    cp $00
    ld a, a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    nop
    cp $00
    ccf
    jr @+$01

    nop
    rst $38
    ld bc, $f0ff
    rst $38
    nop
    db $fc
    nop
    ccf
    inc c
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    db $fc
    nop
    ccf
    rrca
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh [rIE], a
    nop
    db $fc
    nop
    rra
    rlca
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$00
    rrca
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld bc, $ffff
    rst $38
    cp $ff
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $18
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
    inc bc
    rst $38
    nop
    rst $38
    ld h, b
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rlca
    rst $38
    nop
    rst $38
    ld [hl], b
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    nop
    nop
    nop
    ld bc, $ff00
    rra
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    ccf
    rst $38
    ld bc, $fcff
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    ccf
    rst $38
    ld bc, $fcff
    rst $38
    nop
    ldh [rP1], a
    rrca
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld bc, $fcff
    rst $38
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    ld a, [hl]
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    ldh a, [rP1]
    rra
    nop
    rst $38
    ld a, [hl]
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    ld hl, sp+$00
    ccf
    nop
    rst $38
    cp $ff
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    cp $ff
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    cp $ff
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    nop
    ld a, a
    nop
    rst $38
    cp $ff
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    cp $ff
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    cp $00
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    ld bc, $f0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld b, $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    nop
    ld a, a
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    ld bc, $f0ff
    cp $00
    ld a, a
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    ld bc, $e0ff
    cp $00
    ld a, a
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ret nz

    cp $00
    ccf
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ret nz

    db $fc
    nop
    ccf
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rrca
    rst $38
    add b
    db $fc
    nop
    ccf
    ld bc, $f0ff
    rst $38
    nop
    rst $38
    ccf
    rst $38
    nop
    db $fc
    nop
    rra
    nop
    rst $38
    db $fc
    rst $38
    ld bc, $feff
    rst $38
    nop
    ld hl, sp+$00
    rrca
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $18
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    ld h, b
    rst $38
    ld b, $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    ldh a, [rIE]
    rlca
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $f0ff
    rst $38
    rrca
    rst $38
    add b
    nop
    nop
    ld bc, $ff00
    inc bc
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ret nz

    add b
    nop
    inc bc
    nop
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ret nz

    ret nz

    nop
    rlca
    nop
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh [$ffe0], a
    nop
    rrca
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh [$fff0], a
    nop
    rrca
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh [$fff0], a
    nop
    rra
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh [$fff8], a
    nop
    ccf
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    rrca
    rst $38
    ldh [$fffc], a
    nop
    ccf
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh a, [$fffc]
    nop
    ccf
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh [$fffc], a
    nop
    ld a, a
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh [$fffe], a
    nop
    ld a, a
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh [$fffe], a
    nop
    ld a, a
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh [$fffe], a
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e0ff
    rst $38
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld [bc], a
    ld b, $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    add b
    ld a, a
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    cp $80
    ld a, a
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    rrca
    cp $00
    ld a, a
    nop
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $fe
    nop
    ccf
    nop
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $fc
    nop
    ccf
    nop
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, h
    db $fc
    nop
    ccf
    nop
    rst $38
    rra
    rst $38
    add b
    rst $38
    ld bc, $f8ff
    db $fc
    nop
    rra
    nop
    rst $38
    rrca
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    ldh a, [$fff8]
    nop
    rrca
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ldh a, [rP1]
    rrca
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    add b
    ldh a, [rP1]
    rlca
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    cp $ff
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ld hl, sp-$01
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld bc, $ff00
    nop
    add b
    nop
    rlca
    inc b
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld [$00ff], sp
    ldh a, [rP1]
    rrca
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    jr nz, @+$01

    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    db $10
    rst $38
    nop
    db $fc
    nop
    ccf
    db $10
    rst $38
    nop
    db $fc
    nop
    rra
    db $10
    rst $38
    nop
    ld hl, sp+$00
    rra
    db $10
    rst $38
    nop
    ld hl, sp+$00
    rrca
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    nop
    ldh [rP1], a
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld bc, $ff00
    nop
    add b
    nop
    rlca
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    inc b
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld [$00ff], sp
    ldh a, [rP1]
    rra
    db $10
    rst $38
    nop
    ld hl, sp+$00
    rra
    db $10
    rst $38
    nop
    ld hl, sp+$00
    ccf
    jr nz, @+$01

    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    nop
    db $fc
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld [$00ff], sp
    db $fc
    nop
    ccf
    ld [$00ff], sp
    db $fc
    nop
    rra
    ld [$00ff], sp
    ld hl, sp+$00
    rra
    jr @+$01

    nop
    ld hl, sp+$00
    rrca
    ld [$00ff], sp
    ldh a, [rP1]
    rrca
    ld [$00ff], sp
    ldh a, [rP1]
    rlca
    nop
    rst $38
    nop
    ldh [rP1], a
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld bc, $ff00
    nop
    add b
    nop
    rlca
    inc bc
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld b, $ff
    nop
    ldh a, [rP1]
    rrca
    inc c
    rst $38
    nop
    ldh a, [rP1]
    rra
    inc c
    rst $38
    nop
    ld hl, sp+$00
    rra
    jr @+$01

    nop
    ld hl, sp+$00
    ccf
    jr @+$01

    nop
    db $fc
    nop
    ccf
    jr @+$01

    nop
    db $fc
    nop
    ccf
    db $10
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc bc
    rst $38
    nop
    db $fc
    nop
    ccf
    ld b, $ff
    nop
    db $fc
    nop
    rra
    ld b, $ff
    nop
    ld hl, sp+$00
    rra
    inc c
    rst $38
    nop
    ld hl, sp+$00
    rrca
    inc c
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld [$00ff], sp
    ldh a, [rP1]
    rlca
    nop
    rst $38
    nop
    ldh [rP1], a
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld bc, $ff00
    nop
    add b
    nop
    rlca
    dec b
    rst $38
    add b
    ldh [rP1], a
    rrca
    dec bc
    rst $38
    add b
    ldh a, [rP1]
    rrca
    inc bc
    rst $38
    nop
    ldh a, [rP1]
    rra
    rla
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld b, $ff
    nop
    ld hl, sp+$00
    ccf
    ld h, $ff
    nop
    db $fc
    nop
    ccf
    inc l
    rst $38
    nop
    db $fc
    nop
    ccf
    inc b
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ret nz

    db $fc
    nop
    ccf
    nop
    rst $38
    add b
    db $fc
    nop
    rra
    ld bc, $80ff
    ld hl, sp+$00
    rra
    inc bc
    rst $38
    nop
    ld hl, sp+$00
    rrca
    rrca
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld b, $ff
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    nop
    ldh [rP1], a
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld bc, $ff00
    nop
    add b
    nop
    rlca
    nop
    rst $38
    ld h, b
    ldh [rP1], a
    rrca
    inc b
    rst $38
    ret nz

    ldh a, [rP1]
    rrca
    add hl, bc
    rst $38
    ret nz

    ldh a, [rP1]
    rra
    add hl, de
    rst $38
    ret nz

    ld hl, sp+$00
    rra
    ld de, $c0ff
    ld hl, sp+$00
    ccf
    inc de
    rst $38
    add b
    db $fc
    nop
    ccf
    inc de
    rst $38
    add b
    db $fc
    nop
    ccf
    ld bc, $00ff
    db $fc
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    ccf

jr_007_7b40:
    nop
    rst $38
    jr c, jr_007_7b40

    nop
    ccf

jr_007_7b46:
    jr nz, @+$01

    jr nc, jr_007_7b46

    nop
    rra
    nop
    rst $38
    ld h, b
    ld hl, sp+$00
    rra
    db $10
    rst $38
    ldh [$fff8], a
    nop
    rrca
    rrca
    rst $38
    ret nz

    ldh a, [rP1]
    rrca
    rlca
    rst $38
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    nop
    ldh [rP1], a

jr_007_7b69:
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld bc, $ff00
    nop
    add b
    nop
    rlca
    ld [bc], a
    rst $38
    jr nc, jr_007_7b69

    nop
    rrca
    ld b, $ff
    jr nc, @-$0e

    nop
    rrca
    ld b, $ff
    ld [hl], b
    ldh a, [rP1]
    rra
    inc c
    rst $38
    ld [hl], b
    ld hl, sp+$00
    rra
    inc c
    rst $38
    ld [hl], b
    ld hl, sp+$00
    ccf
    inc c
    rst $38
    ld [hl], b
    db $fc
    nop
    ccf
    inc c
    rst $38
    ld h, b
    db $fc
    nop
    ccf
    ld [$60ff], sp
    db $fc
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    ld b, $fc
    nop
    ccf
    nop
    rst $38
    inc c
    db $fc
    nop
    rra
    db $10
    rst $38
    inc c
    ld hl, sp+$00
    rra
    ld [$38ff], sp
    ld hl, sp+$00
    rrca
    rlca
    rst $38
    ldh a, [$fff0]
    nop
    rrca
    ld bc, $c0ff
    ldh a, [rP1]
    rlca
    nop
    rst $38
    nop
    ldh [rP1], a
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld bc, $ff00
    nop
    add b
    nop
    rlca
    ld bc, $8cff
    ldh [rP1], a
    rrca
    inc bc
    rst $38
    inc c
    ldh a, [rP1]
    rrca
    inc bc
    rst $38
    ld e, $f0
    nop
    rra
    inc bc
    rst $38
    ld e, $f8
    nop
    rra
    rlca
    rst $38
    ld e, $f8
    nop
    ccf
    rlca
    rst $38
    inc e
    db $fc
    nop
    ccf
    inc bc
    rst $38
    inc e
    db $fc
    nop
    ccf
    ld [bc], a
    rst $38
    ld [$00fc], sp
    ld [bc], a
    inc bc
    ld a, [bc]
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    db $10
    rst $38
    ld bc, $c0fc
    ccf
    ld [$01ff], sp
    db $fc
    add b
    rra
    inc c
    rst $38
    inc bc
    ld hl, sp+$00
    rra
    ld b, $ff
    ld c, $f8
    nop
    rrca
    inc bc
    rst $38
    db $fc
    ldh a, [rP1]
    rrca
    nop
    rst $38
    ldh a, [$fff0]
    nop
    rlca
    nop
    rst $38
    nop
    ldh [rP1], a
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld bc, $ff00
    nop
    add b
    nop
    rlca
    nop
    rst $38
    ld b, e
    ldh [rP1], a
    rrca
    nop
    rst $38
    jp $00f0


    rrca
    ld bc, $c3ff
    ldh a, [$ff80]
    rra
    ld bc, $e3ff
    ld hl, sp-$80
    rra
    ld bc, $e3ff
    ld hl, sp-$80
    ccf
    ld bc, $c3ff
    db $fc
    add b
    ccf
    nop
    rst $38
    jp $00fc


    ccf
    nop
    rst $38
    jp $00fc


    ld [bc], a
    inc bc
    ld a, [bc]
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc b
    rst $38
    nop
    db $fc
    jr nz, jr_007_7cff

    ld b, $ff
    nop
    db $fc
    ld h, b
    rra
    inc bc
    rst $38
    nop
    ld hl, sp-$40
    rra
    ld bc, $81ff
    ld hl, sp-$80
    rrca
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    nop
    rst $38
    inc a
    ldh a, [rP1]
    rlca
    nop
    rst $38
    nop
    ldh [rP1], a
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    ld bc, $3c04
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ld bc, $ff04
    add b

jr_007_7cff:
    rst $38
    add b
    ld a, [hl]
    nop
    inc a
    nop
    ld [bc], a
    ld bc, $3c04
    nop
    ld a, [hl]
    nop
    rst $38
    add b
    rst $38
    nop
    ld [bc], a
    ld bc, $ff04
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    inc a
    nop
    ld [bc], a
    ld bc, $3c04
    nop
    ld a, [hl]
    ld b, b
    rst $38
    nop
    rst $38
    add b
    ld [bc], a
    ld bc, $ff04
    ld b, b
    rst $38
    ld b, b
    ld a, [hl]
    nop
    inc a
    nop
    ld [bc], a
    ld bc, $3c04
    nop
    ld a, [hl]
    jr nz, @+$01

    ret nz

    rst $38
    ld b, b
    ld [bc], a
    ld bc, $ff04
    jr nz, @+$01

    jr nz, @+$80

    ld b, b
    inc a
    nop
    ld [bc], a
    ld bc, $3c04
    nop
    ld a, [hl]
    jr nz, @+$01

    and b
    rst $38
    and b
    ld [bc], a
    ld bc, $ff04
    db $10
    rst $38
    sub b
    ld a, [hl]
    ld h, b
    inc a
    nop
    ld [bc], a
    ld bc, $3c04
    nop
    ld a, [hl]
    ld d, b
    rst $38
    ld d, b
    rst $38
    db $10
    ld [bc], a
    ld bc, $ff04
    ld [$08ff], sp
    ld a, [hl]
    jr nz, jr_007_7dae

    nop
    ld [bc], a
    ld bc, $3c04
    nop
    ld a, [hl]
    jr z, @+$01

    ld c, b
    rst $38
    ld c, b
    ld [bc], a
    ld bc, $ff04
    add h
    rst $38
    ld b, h
    ld a, [hl]
    jr nc, @+$3e

    nop
    ld [bc], a
    ld bc, $3c04
    nop
    ld a, [hl]
    inc h
    rst $38
    inc h
    rst $38
    inc h
    ld [bc], a
    ld bc, $ff04
    ld b, d
    rst $38
    nop
    ld a, [hl]
    jr @+$3e

    nop
    ld [bc], a
    ld bc, $1802
    nop
    inc a
    nop
    ld [bc], a
    ld bc, $3c02
    nop
    jr jr_007_7dad

jr_007_7dad:
    ld [bc], a

jr_007_7dae:
    ld bc, $1802
    nop
    inc a
    nop
    ld [bc], a
    ld bc, $3c02
    jr nz, @+$1a

    nop
    ld [bc], a
    ld bc, $1802
    nop
    inc a
    jr nz, @+$04

    ld bc, $3c02
    nop
    jr jr_007_7dc9

jr_007_7dc9:
    ld [bc], a
    ld bc, $1802
    nop
    inc a
    nop
    ld [bc], a
    ld bc, $3c02
    nop
    jr jr_007_7dd7

jr_007_7dd7:
    ld [bc], a
    ld bc, $1802
    db $10
    inc a
    nop
    ld [bc], a
    ld bc, $3c02
    nop
    jr jr_007_7de5

jr_007_7de5:
    ld [bc], a
    ld bc, $1802
    nop
    inc a
    jr nc, @+$04

    ld bc, $3c02
    nop
    jr jr_007_7df3

jr_007_7df3:
    ld [bc], a
    ld bc, $1802
    nop
    inc a
    nop
    ld [bc], a
    ld bc, $3c02
    jr nz, jr_007_7e18

    nop
    ld [bc], a
    ld bc, $1802
    jr jr_007_7e43

    jr @+$04

    ld bc, $3c02
    nop
    jr jr_007_7e0f

jr_007_7e0f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_007_7e18:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38

jr_007_7e43:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
