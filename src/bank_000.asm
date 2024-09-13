; Disassembly of "Faceball 2000 (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0080]
Jump_000_0080::
    jp Jump_000_0912


Jump_000_0083::
    jp Jump_000_0918


Jump_000_0086::
    jp Jump_000_0924


Jump_000_0089::
    jp Jump_000_091e


Jump_000_008c::
    jp UpdateAudioStuff


Jump_000_008f::
    jp Jump_000_361d


Jump_000_0092::
    jp IncrementWeirdCountThing


Jump_000_0095::
    jp RefreshHIRAMPosStuff


Jump_000_0098::
    jp Call_000_0aef


Jump_000_009b::
    jp Jump_000_090c


Call_000_009e::
    jp CheckIfCopyrightTilemapUpdate


Call_000_00a1::
    jp UpdateFrameBuffer


Call_000_00a4::
    jp Call_000_1bd9


Call_000_00a7::
    jp UpdateTilemapBeyond9A00


Call_000_00aa::
    jp Call_000_09f1


Call_000_00ad::
    jp Call_000_3737


    jp Call_000_36d0


Call_000_00b3::
    jp Jump_000_363e


    jp Jump_000_0906


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

Boot::
    nop
    jp Init


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "FACEBALL 2000   "

HeaderNewLicenseeCode::
    db $00, $00

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $01

HeaderROMSize::
    db $02

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $8b

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $ec

HeaderGlobalChecksum::
    db $a1, $64

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
    cp $ff
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
    ld d, $00
    ld d, $01
    ld d, $02
    ld d, $03
    ld d, $04
    dec d
    dec b
    dec d
    ld b, $15
    rlca
    inc d
    ld [$0914], sp
    inc de
    ld a, [bc]
    inc de
    dec bc
    ld [de], a
    inc c
    ld [de], a
    dec c
    ld de, $100e
    rrca
    db $10
    db $10
    rrca
    db $10
    ld c, $11
    dec c
    ld [de], a
    inc c
    ld [de], a
    dec bc
    inc de
    ld a, [bc]
    inc de
    add hl, bc
    inc d
    ld [$0714], sp
    dec d
    ld b, $15
    dec b
    dec d
    inc b
    ld d, $03
    ld d, $02
    ld d, $01
    ld d, $00
    ld d, $00
    ld d, $ff
    ld d, $fe
    ld d, $fd
    ld d, $fc
    dec d
    ei
    dec d
    ld a, [$f915]
    inc d
    ld hl, sp+$14
    rst $30
    inc de
    or $13
    push af
    ld [de], a
    db $f4
    ld [de], a
    di
    ld de, $10f2
    pop af
    db $10
    pop af
    rrca
    ldh a, [$ff0e]
    rst $28
    dec c
    rst $28
    inc c
    xor $0b
    xor $0a
    db $ed
    add hl, bc
    db $ed
    ld [$07ec], sp
    db $ec
    ld b, $ec
    dec b
    db $eb
    inc b
    db $eb
    inc bc
    db $eb
    ld [bc], a
    db $eb
    ld bc, $00eb
    db $eb
    nop
    db $eb
    rst $38
    db $eb
    cp $eb
    db $fd
    db $ec
    db $fc
    db $ec
    ei
    db $ec
    ld a, [$f9ed]
    db $ed
    ld hl, sp-$12
    rst $30
    xor $f6
    rst $28
    push af
    rst $28
    db $f4
    ldh a, [$fff3]
    pop af
    ld a, [c]
    pop af
    pop af
    ld a, [c]
    pop af
    di
    ldh a, [$fff4]
    rst $28
    push af
    rst $28
    or $ee
    rst $30
    xor $f8
    db $ed
    ld sp, hl
    db $ed
    ld a, [$fbec]
    db $ec
    db $fc
    db $ec
    db $fd
    db $eb
    cp $eb
    rst $38
    db $eb
    nop
    db $eb
    nop
    db $eb
    ld bc, $02eb
    db $eb
    inc bc
    db $eb
    inc b
    db $eb
    dec b
    db $ec
    ld b, $ec
    rlca
    db $ec
    ld [$09ed], sp
    db $ed
    ld a, [bc]
    xor $0b
    xor $0c
    rst $28
    dec c
    rst $28
    ld c, $f0
    rrca
    pop af
    db $10
    pop af
    db $10
    ld a, [c]
    ld de, $12f3
    db $f4
    ld [de], a
    push af
    inc de
    or $13
    rst $30
    inc d
    ld hl, sp+$14
    ld sp, hl
    dec d
    ld a, [$fb15]
    dec d
    db $fc
    ld d, $fd
    ld d, $fe
    ld d, $ff
    ld d, $00
    ld bc, $03ca
    jp z, $ca05

    rlca
    jp z, $ca09

    dec bc
    jp z, $ca0d

    rrca
    jp z, $cb21

    inc hl
    sla l
    sla a
    sra c
    sra e
    sra l
    sra a
    bit 0, c
    call z, $cc43
    ld b, l
    call z, $cc47
    ld c, c
    call z, $cc4b
    ld c, l
    call z, $cc4f
    ld h, c
    call $cd63
    ld h, l
    call $cd67
    ld l, c
    call $cd6b
    ld l, l
    call $cd6f
    add c
    adc $83
    adc $85
    adc $87
    adc $89
    adc $8b
    adc $8d
    adc $8f
    adc $a1
    rst $08
    and e
    rst $08
    and l
    rst $08
    and a
    rst $08
    xor c
    rst $08
    xor e
    rst $08
    xor l
    rst $08
    xor a
    rst $08
    pop bc
    ret nc

    jp $c5d0


    ret nc

    rst $00
    ret nc

    ret


    ret nc

    set 2, b
    call $cfd0
    ret nc

    pop hl
    pop de
    db $e3
    pop de
    push hl
    pop de
    rst $20
    pop de
    jp hl


    pop de
    db $eb
    pop de
    db $ed
    pop de
    rst $28
    pop de
    ld bc, $03d3
    db $d3
    dec b
    db $d3
    rlca
    db $d3
    add hl, bc
    db $d3
    dec bc
    db $d3
    dec c
    db $d3
    rrca
    db $d3
    ld hl, $23d4
    call nc, $d425
    daa
    call nc, $d429
    dec hl
    call nc, $d42d
    cpl
    call nc, $d541
    ld b, e
    push de
    ld b, l
    push de
    ld b, a
    push de
    ld c, c
    push de
    ld c, e
    push de
    ld c, l
    push de
    ld c, a
    push de
    ld h, c
    sub $63
    sub $65
    sub $67
    sub $69
    sub $6b
    sub $6d
    sub $6f
    sub $81
    rst $10
    add e
    rst $10
    add l
    rst $10
    add a
    rst $10
    adc c
    rst $10
    adc e
    rst $10
    adc l
    rst $10
    adc a
    rst $10
    and c
    ret c

    and e
    ret c

    and l
    ret c

    and a
    ret c

    xor c
    ret c

    xor e
    ret c

    xor l
    ret c

    xor a
    ret c

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
    rst $38
    ld a, a
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $7fff
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $0000
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
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
    add b
    ret nz

    ldh [$fff0], a
    ld hl, sp-$04
    cp $ff
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
    add b
    ld b, b
    jr nz, jr_000_0614

    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_061c

    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_0624

jr_000_0614:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_062c

jr_000_061c:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_0634

jr_000_0624:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_063c

jr_000_062c:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_0644

jr_000_0634:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_064c

jr_000_063c:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_0654

jr_000_0644:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_065c

jr_000_064c:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_0664

jr_000_0654:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_066c

jr_000_065c:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_0674

jr_000_0664:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_067c

jr_000_066c:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_0684

jr_000_0674:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_068c

jr_000_067c:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_0694

jr_000_0684:
    ld [$0204], sp
    ld bc, $4080
    jr nz, jr_000_069c

jr_000_068c:
    ld [$0204], sp
    ld bc, $0000
    nop
    nop

jr_000_0694:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_069c:
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

jr_000_06a6:
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

jr_000_06be:
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

jr_000_06d6:
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
    add b
    ld b, b
    ret nz

    jr nz, jr_000_06a6

    ld h, b
    ldh [rNR10], a
    sub b
    ld d, b
    ret nc

    jr nc, jr_000_06be

    ld [hl], b
    ldh a, [$ff08]
    adc b
    ld c, b
    ret z

    jr z, jr_000_06be

    ld l, b
    add sp, $18
    sbc b
    ld e, b
    ret c

    jr c, jr_000_06d6

    ld a, b
    ld hl, sp+$04
    add h
    ld b, h
    call nz, $a424
    ld h, h
    db $e4
    inc d
    sub h
    ld d, h
    call nc, $b434
    ld [hl], h
    db $f4
    inc c
    adc h
    ld c, h
    call z, $ac2c
    ld l, h
    db $ec
    inc e
    sbc h
    ld e, h
    call c, $bc3c
    ld a, h
    db $fc
    ld [bc], a
    add d
    ld b, d
    jp nz, $a222

    ld h, d
    ld [c], a
    ld [de], a
    sub d
    ld d, d
    jp nc, $b232

    ld [hl], d
    ld a, [c]
    ld a, [bc]
    adc d
    ld c, d
    jp z, $aa2a

    ld l, d
    ld [$9a1a], a
    ld e, d
    jp c, $ba3a

    ld a, d
    ld a, [$8606]
    ld b, [hl]
    add $26
    and [hl]
    ld h, [hl]
    and $16
    sub [hl]
    ld d, [hl]
    sub $36
    or [hl]
    db $76
    or $0e
    adc [hl]
    ld c, [hl]
    adc $2e
    xor [hl]
    ld l, [hl]
    xor $1e
    sbc [hl]
    ld e, [hl]
    sbc $3e
    cp [hl]
    ld a, [hl]
    cp $01
    add c
    ld b, c
    pop bc
    ld hl, $61a1
    pop hl
    ld de, $5191
    pop de
    ld sp, $71b1
    pop af
    add hl, bc
    adc c
    ld c, c
    ret


    add hl, hl
    xor c
    ld l, c
    jp hl


    add hl, de
    sbc c
    ld e, c
    reti


    add hl, sp
    cp c
    ld a, c
    ld sp, hl
    dec b
    add l
    ld b, l
    push bc
    dec h
    and l
    ld h, l
    push hl
    dec d
    sub l
    ld d, l
    push de
    dec [hl]
    or l
    ld [hl], l
    push af
    dec c
    adc l
    ld c, l
    call $ad2d
    ld l, l
    db $ed
    dec e
    sbc l
    ld e, l
    db $dd
    dec a
    cp l
    ld a, l
    db $fd
    inc bc
    add e
    ld b, e
    jp $a323


    ld h, e
    db $e3
    inc de
    sub e
    ld d, e
    db $d3
    inc sp
    or e
    ld [hl], e
    di
    dec bc
    adc e
    ld c, e
    sra e
    xor e
    ld l, e
    db $eb
    dec de
    sbc e
    ld e, e
    db $db
    dec sp
    cp e
    ld a, e
    ei
    rlca
    add a
    ld b, a
    rst $00
    daa
    and a
    ld h, a
    rst $20
    rla
    sub a
    ld d, a
    rst $10
    scf
    or a
    ld [hl], a
    rst $30
    rrca
    adc a
    ld c, a
    rst $08
    cpl
    xor a
    ld l, a
    rst $28
    rra
    sbc a
    ld e, a
    rst $18
    ccf
    cp a
    ld a, a
    rst $38

UpdateGameplayStuff::
    push af
    ld a, [$c9a2]
    cp $01
    jr nz, jr_000_080e

    ldh a, [rLCDC]
    res 4, a
    ldh [rLCDC], a

jr_000_080e:
    ei
    push bc
    push de
    push hl
    ld a, [$c9a2]
    cp $01
    jr nz, jr_000_0820

    ld a, [$c900]
    res 4, a
    jr jr_000_0825

jr_000_0820:
    ld a, [$c900]
    set 4, a

jr_000_0825:
    ld [$c900], a
    ld a, [$c906]
    ld b, a
    ld a, [$c95b]
    and a
    jr z, jr_000_083a

    rr b
    jr c, jr_000_083a

    dec a
    ld [$c95b], a

jr_000_083a:
    sla a
    ld c, a
    ld b, $00
    ld hl, $12b2
    add hl, bc
    ld a, [hl+]
    ldh [rSCX], a
    ld a, [hl+]
    ldh [rSCY], a
    ld hl, $c906
    inc [hl]
    ld hl, $c903
    ld a, [hl]
    and a
    jr z, do_input_read_stuff

    dec [hl]
    xor a
    ld [$c902], a
    jr jr_000_0864

do_input_read_stuff:
    call ReadInput
    ld a, [$c901]
    ld [$c902], a

jr_000_0864:
    ld a, $02
    di

Jump_000_0867::
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    call $4003
    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld a, [$c906]
    and $03
    jr nz, jr_000_08ca

    ld a, [hFadeStatus]
    bit 0, a
    jr z, prepare_update_fade_out

    ld a, [$c905]
    and a
    jr nz, jr_000_089d

    ld a, [hFadeStatus]
    res 0, a
    ld [hFadeStatus], a
    jr jr_000_08b9

jr_000_089d:
    dec a
    jr jr_000_08b6

prepare_update_fade_out:
    bit 1, a
    jr z, jr_000_08ca

    ld a, [$c905]
    cp $03
    jr c, update_dmg_pal_fade_out

    ld a, [hFadeStatus]
    res 1, a
    ld [hFadeStatus], a
    jr jr_000_08b9

update_dmg_pal_fade_out:
    inc a

jr_000_08b6:
    ld [$c905], a

jr_000_08b9:
    ld a, [$c905]
    ld c, a
    ld b, $00
    ld hl, $14b6
    add hl, bc
    ld a, [hl]
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a

jr_000_08ca:
    ld a, [$c900]
    ldh [rLCDC], a
    pop hl
    pop de
    pop bc
    pop af
    reti


UpdateAudioStuff:
    push hl
    ld hl, Call_007_4391
    ldh [$ff83], a
    ld a, $07
    jr jr_000_095a

Call_000_08de::
    push hl
    ld hl, PrepareCopyrightScreen
    ldh [$ff83], a
    ld a, $07
    jr jr_000_095a

PrepareBPSLogoHiramJump::
    push hl
    ld hl, $401e
    ldh [$ff83], a
    ld a, $04
    jr jr_000_095a

PrepareCreditsHiramJump::
    push hl
    ld hl, $5a9b
    ldh [$ff83], a
    ld a, $04
    jr jr_000_095a

Call_000_08fc::
    push hl
    ld hl, $4839
    ldh [$ff83], a
    ld a, $04
    jr jr_000_095a

Jump_000_0906:
    push hl
    ld hl, $52ae
    jr jr_000_0928

Jump_000_090c:
    push hl
    ld hl, $44b8
    jr jr_000_0928

Jump_000_0912:
    push hl
    ld hl, $278c
    jr jr_000_0928

Jump_000_0918:
    push hl
    ld hl, $2ff3
    jr jr_000_0928

Jump_000_091e:
    push hl
    ld hl, $56a6
    jr jr_000_0928

Jump_000_0924:
    push hl
    ld hl, $59b8

jr_000_0928:
    ldh [$ff83], a
    ld a, $01
    jr jr_000_095a

PrepareHiramJumpDest::
    push hl
    ld hl, $4000
    jr load_mus_or_sfx_byte

    push hl
    ld hl, $4003
    jr load_mus_or_sfx_byte

Call_000_093a::
    push hl
    ld hl, $4006
    jr load_mus_or_sfx_byte

Call_000_0940:
    push hl
    ld hl, $4009
    jr load_mus_or_sfx_byte

sound_test_selection::
    push hl
    ld hl, $400c
    jr load_mus_or_sfx_byte

    push hl
    ld hl, $400f
    jr load_mus_or_sfx_byte

    push hl
    ld hl, $4012

load_mus_or_sfx_byte:
    ldh [$ff83], a
    ld a, $02

jr_000_095a:
    push af
    ld a, $c3
    ldh [$ff84], a
    ld a, l
    ldh [$ff85], a
    ld a, h
    ldh [$ff86], a
    pop af
    pop hl
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    push bc
    push de
    push hl
    di
    ld a, e
    ldh [$ff81], a
    ld a, d
    ldh [$ff82], a
    ld de, $098f
    push de
    ldh a, [$ff81]
    ld e, a
    ldh a, [$ff82]
    ld d, a
    ei
    ldh a, [$ff83]
    jp $ff84


    pop hl
    pop de
    pop bc
    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


LoadSoundForMainGameplay::
    push hl
    ld hl, $65bc
    jr jr_000_09ab

Call_000_09a1::
    push hl
    ld hl, $64f9
    jr jr_000_09ab

Call_000_09a7:
    push hl
    ld hl, $5eee

jr_000_09ab:
    ldh [$ff83], a
    ld a, $04
    jr jr_000_095a

Init:
    di
    xor a
    ldh [rIE], a
    ld sp, $df60
    ld hl, $c600

jr_000_09bb:
    xor a
    ld [hl+], a
    ld a, l
    and a
    jr nz, jr_000_09bb

    jr jr_000_09ca

Jump_000_09c3::
    di
    xor a
    ldh [rIE], a
    ld sp, $df60

jr_000_09ca:
    ld hl, $c000

jr_000_09cd:
    xor a
    ld [hl+], a

jr_000_09cf:
    ld a, h
    cp $c6
    jr nz, jr_000_09d7

    inc hl
    jr jr_000_09cf

jr_000_09d7:
    cp $e0
    jr nz, jr_000_09cd

; Clear HRAM
    ld hl, $ff80

jr_000_09de:
    xor a
    ld [hl+], a
    ld a, l
    and a
    jr nz, jr_000_09de

    ld a, $01
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    call Call_001_7e5a
    jp InitScreenForOpening


Call_000_09f1::
    push bc
    ld a, [$c906]
    ld b, a

jr_000_09f6:
    ld a, [$c906]
    cp b
    jr z, jr_000_09f6

    pop bc
    dec bc
    ld a, b
    or c
    jr nz, Call_000_09f1

    ret


UpdateTimeDisplay::
    ld de, $c9b1
    xor a
    ld [de], a
    dec de
    ld a, $30
    ld [de], a
    dec de
    ld [de], a
    dec de
    ld [de], a
    dec de
    ld [de], a
    dec de
    ld [de], a
    ld bc, $2710
    call Call_000_0a4d
    ld bc, $03e8
    call Call_000_0a4d
    ld bc, $0064
    call Call_000_0a4d
    ld bc, $000a
    call Call_000_0a4d
    ld bc, $0001
    call Call_000_0a4d
    ld b, $04

jr_000_0a34:
    ld hl, $c9ac
    ld a, [hl+]
    cp $30
    ret nz

    ld a, [hl-]
    ld [hl+], a
    inc hl
    ld a, [hl-]
    ld [hl+], a
    inc hl
    ld a, [hl-]
    ld [hl+], a
    inc hl
    ld a, [hl-]
    ld [hl+], a
    inc hl
    ld a, [hl-]
    ld [hl+], a
    dec b
    jr nz, jr_000_0a34

    ret


Call_000_0a4d:
jr_000_0a4d:
    ld a, h
    cp b
    jr z, jr_000_0a55

    jr nc, jr_000_0a5b

    inc de
    ret


Call_000_0a55::
jr_000_0a55:
    ld a, l
    cp c
    jr nc, jr_000_0a5b

    inc de
    ret


jr_000_0a5b:
    ld a, [de]
    inc a
    ld [de], a
    push bc
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    add hl, bc
    pop bc
    jr jr_000_0a4d

Call_000_0a6d::
    bit 7, b
    jr z, jr_000_0a7b

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_000_0a7b:
    bit 7, d
    jr z, Call_000_0a89

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

Call_000_0a89::
    ld a, b
    cp d
    jr c, jr_000_0a93

    jr nz, jr_000_0a99

    ld a, c
    cp e
    jr nc, jr_000_0a99

jr_000_0a93:
    ld a, b
    ld b, d
    ld d, a
    ld a, c
    ld c, e
    ld e, a

jr_000_0a99:
    ld h, d
    ld l, e
    sla l
    rl h
    ld a, b
    cp h
    jr c, jr_000_0ab5

    jr nz, jr_000_0aa9

    ld a, c
    cp l
    jr c, jr_000_0ab5

jr_000_0aa9:
    ld h, d
    ld l, e
    srl h
    rr l
    srl h
    rr l
    add hl, bc
    ret


jr_000_0ab5:
    sla l
    rl h
    sla l
    rl h
    push bc
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a
    add hl, bc
    add hl, de
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    pop bc
    add hl, bc
    ret


IncrementWeirdCountThing:
    ld a, [$c95a]
    inc a
    ld [$c95a], a
    ret


Call_000_0aef::
    xor a
    ld d, a
    ld l, a
    ld h, a
    ld e, c
    jr jr_000_0af9

Call_000_0af6:
    ld hl, $0000

jr_000_0af9:
    ld a, b
    or c
    ret z

    srl b
    rr c
    jr nc, jr_000_0b03

    add hl, de

jr_000_0b03:
    sla e
    rl d
    jr jr_000_0af9

Call_000_0b09::
    bit 7, d
    jr z, jr_000_0b25

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a
    call Call_000_0b25
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    ret


Call_000_0b25:
jr_000_0b25:
    xor a
    ldh [$ff88], a
    ldh [$ff89], a
    inc a
    bit 7, h
    jr nz, jr_000_0b39

jr_000_0b2f:
    inc a
    add hl, hl
    bit 7, h
    jr nz, jr_000_0b39

    cp $11
    jr nz, jr_000_0b2f

jr_000_0b39:
    ld b, a

jr_000_0b3a:
    ld a, e
    sub l
    ld c, a
    ld a, d
    sbc h
    jr c, jr_000_0b43

    ld d, a
    ld e, c

jr_000_0b43:
    rla
    xor $01
    rra
    ldh a, [$ff88]
    rla
    ldh [$ff88], a
    ldh a, [$ff89]
    rla
    ldh [$ff89], a
    srl h
    rr l
    dec b
    jr nz, jr_000_0b3a

    ldh a, [$ff88]
    ld c, a
    ldh a, [$ff89]
    ld b, a
    ret


Call_000_0b5f:
    ld a, $40
    sub d
    ld d, a

Call_000_0b63:
    bit 7, d
    jr z, jr_000_0b73

    res 7, d
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_000_0b73:
    ld a, d
    cp $40
    jr c, jr_000_0b7b

    ld a, $80
    sub d

jr_000_0b7b:
    ld e, a
    ld d, $00
    ld hl, $0bed
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, b
    xor d
    push af
    bit 7, b
    jr z, jr_000_0b97

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_000_0b97:
    bit 7, d
    jr z, jr_000_0ba5

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_000_0ba5:
    xor a
    ldh [$ff88], a
    ldh [$ff89], a
    ldh [$ff8a], a
    ldh [$ff8b], a
    ld l, a
    ld h, a

load_a_and_or_with_c:
    ld a, b
    or c
    jr z, jr_000_0bd8

    srl b
    rr c
    jr nc, jr_000_0bce

    ldh a, [$ff88]
    add e
    ldh [$ff88], a
    ldh a, [$ff89]
    adc d
    ldh [$ff89], a
    ldh a, [$ff8a]
    adc l
    ldh [$ff8a], a
    ldh a, [$ff8b]
    adc h
    ldh [$ff8b], a

jr_000_0bce:
    sla e
    rl d
    rl l
    rl h
    jr load_a_and_or_with_c

jr_000_0bd8:
    ldh a, [$ff89]
    ld c, a
    ldh a, [$ff8a]
    ld b, a
    pop af
    bit 7, a
    ret z

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    ret


    nop
    nop
    ld b, $00
    dec c
    nop
    inc de
    nop
    add hl, de
    nop
    rra
    nop
    ld h, $00
    inc l
    nop
    ld [hl-], a
    nop
    jr c, jr_000_0c01

jr_000_0c01:
    ld a, $00
    ld b, h
    nop
    ld c, d
    nop
    ld d, b
    nop
    ld d, [hl]
    nop
    ld e, h
    nop
    ld h, d
    nop
    ld l, b
    nop
    ld l, l
    nop
    ld [hl], e
    nop
    ld a, c
    nop
    ld a, [hl]
    nop
    add h
    nop
    adc c
    nop
    adc [hl]
    nop
    sub e
    nop
    sbc b
    nop
    sbc l
    nop
    and d
    nop
    and a
    nop
    xor h
    nop
    or c
    nop
    or l
    nop
    cp c
    nop
    cp [hl]
    nop
    jp nz, $c600

    nop
    jp z, $ce00

    nop
    pop de
    nop
    push de
    nop
    ret c

    nop
    call c, $df00
    nop
    ld [c], a
    nop
    push hl
    nop
    rst $20
    nop
    ld [$ed00], a
    nop
    rst $28
    nop
    pop af
    nop
    di
    nop
    push af
    nop
    rst $30
    nop
    ld hl, sp+$00
    ld a, [$fb00]
    nop
    db $fc
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    db $fc
    nop
    ei
    nop
    ld a, [$f800]
    nop
    rst $30
    nop
    push af
    nop
    di
    nop
    pop af
    nop
    rst $28
    nop
    db $ed
    nop
    ld [$e700], a
    nop
    push hl
    nop
    ld [c], a
    nop
    rst $18
    nop
    call c, $d800
    nop
    push de
    nop
    pop de
    nop
    adc $00
    jp z, $c600

    nop
    jp nz, $be00

    nop
    cp c
    nop
    or l
    nop
    or c
    nop
    xor h
    nop
    and a
    nop
    and d
    nop
    sbc l
    nop
    sbc b
    nop
    sub e
    nop
    adc [hl]
    nop
    adc c
    nop
    add h
    nop
    ld a, [hl]
    nop
    ld a, c
    nop
    ld [hl], e
    nop
    ld l, l
    nop
    ld l, b
    nop
    ld h, d
    nop
    ld e, h
    nop
    ld d, [hl]
    nop
    ld d, b
    nop
    ld c, d
    nop
    ld b, h
    nop
    ld a, $00
    jr c, jr_000_0cdf

jr_000_0cdf:
    ld [hl-], a
    nop
    inc l
    nop
    ld h, $00
    rra
    nop
    add hl, de
    nop
    inc de
    nop
    dec c
    nop
    ld b, $00
    nop
    nop

RefreshHIRAMPosStuff::
    ldh [$ff8c], a
    ld a, c
    ldh [$ff8d], a
    ld a, b
    ldh [$ff8e], a
    ld a, e
    ldh [$ff8f], a
    ld a, d
    ldh [$ff90], a
    ldh a, [$ff8c]
    ld d, a
    call Call_000_0b5f
    push bc
    ldh a, [$ff8f]
    ld c, a
    ldh a, [$ff90]
    ld b, a
    ldh a, [$ff8c]
    ld d, a
    call Call_000_0b63
    pop de
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    push de
    ldh a, [$ff8d]
    ld c, a
    ldh a, [$ff8e]
    ld b, a
    ldh a, [$ff8c]
    ld d, a
    call Call_000_0b63
    push bc
    ldh a, [$ff8f]
    ld c, a
    ldh a, [$ff90]
    ld b, a
    ldh a, [$ff8c]
    ld d, a
    call Call_000_0b5f
    pop de
    ld a, e
    add c
    ld e, a
    ld a, d
    adc b
    ld d, a
    pop bc
    ret


    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld b, $00
    ld bc, $0200
    ld [bc], a
    nop
    adc b
    adc b
    rst $38
    ld bc, $aaaa
    xor d
    xor d
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_0d58:
    ldh a, [rSB]
    ld b, a

Jump_000_0d5b:
    ld a, [$c912]
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ld hl, $c911
    inc [hl]
    ld hl, $c90d
    ld a, [hl-]
    ld [hl+], a
    inc hl
    ld a, [hl-]
    ld [hl+], a
    inc hl
    ld a, [hl-]
    ld [hl+], a
    ld [hl], b
    ld a, [$c910]
    cp $01
    jp z, Jump_000_0de7

    ld hl, $c90c
    ld a, [hl+]
    cp $fe
    jr nz, jr_000_0db7

    ld a, [hl+]
    cp [hl]
    jr nz, jr_000_0db7

    inc hl
    cp [hl]
    jr nz, jr_000_0db7

    ld d, a
    and $0f
    dec a
    ldh [$ff92], a
    and a
    jr nz, jr_000_0d97

    set 3, c

jr_000_0d97:
    ld a, d
    swap a
    and $0f
    ld [$c913], a
    xor a
    ld [$c911], a
    ld e, a
    sla d
    adc e
    sla d
    adc e
    sla d
    adc e
    sla d
    adc e
    ld [$c907], a
    res 5, c
    jr jr_000_0e00

jr_000_0db7:
    ld hl, $c90c
    ld a, [hl+]
    cp $cc
    jr nz, jr_000_0de7

    cp [hl]
    jr nz, jr_000_0de7

    inc hl
    cp [hl]
    jr nz, jr_000_0de7

    inc hl
    cp [hl]
    jr nz, jr_000_0de7

    res 0, c
    res 1, c
    ld a, $01
    ld [$c910], a
    xor a
    ld [$c956], a
    ld [$c957], a
    ld [$c958], a
    ld [$c959], a
    ld a, $05
    ld [$c914], a
    jr jr_000_0e00

Jump_000_0de7:
jr_000_0de7:
    ld a, [$c90c]
    cp $ff
    jr nz, jr_000_0e00

    ld hl, $c90d
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc a
    jr nz, jr_000_0e00

    res 2, c
    ld a, $00
    ld [$c910], a

jr_000_0e00:
    ld a, [$c914]
    and a
    jr z, jr_000_0e0c

    dec a
    ld [$c914], a
    jr jr_000_0e18

jr_000_0e0c:
    ld a, [$c957]
    ld l, a
    ld h, $c0
    ld a, b
    ld [hl+], a
    ld a, l
    ld [$c957], a

jr_000_0e18:
    ld hl, $0d54
    bit 2, c
    jr nz, jr_000_0e34

    ld a, [$c910]
    cp $01
    jr z, jr_000_0e4a

    ld hl, $0d50
    bit 1, c
    jr nz, jr_000_0e34

    ld hl, $0d4c
    bit 0, c
    jr z, jr_000_0e43

jr_000_0e34:
    ld a, [$c911]
    and $03
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld [$c912], a
    jr jr_000_0e74

jr_000_0e43:
    ld a, [$c910]
    cp $01
    jr nz, jr_000_0e57

jr_000_0e4a:
    ld a, [$c911]
    and $03
    jr z, jr_000_0e57

    xor a
    ld [$c912], a
    jr jr_000_0e74

jr_000_0e57:
    ld a, [$c958]
    ld l, a
    ld a, [$c959]
    cp l
    jr nz, jr_000_0e6a

    ldh a, [$ff92]
    or $00
    ld [$c912], a
    jr jr_000_0e74

jr_000_0e6a:
    ld h, $c1
    ld a, [hl+]
    ld [$c912], a
    ld a, l
    ld [$c958], a

jr_000_0e74:
    ld a, c
    res 6, a
    ldh [$ff91], a
    pop hl
    pop de
    pop bc
    pop af
    ei
    reti


Serial::
    push af
    ldh a, [$ff91]
    set 4, a
    ldh [$ff91], a
    push bc
    push de
    push hl
    ld c, a
    bit 7, a
    jp nz, Jump_000_0d58

    bit 5, c
    jr nz, jr_000_0eb1

    bit 0, c
    jr nz, jr_000_0eb1

    set 0, c
    ld a, [$c959]
    ld l, a
    ld h, $c1
    bit 3, c
    jr nz, jr_000_0eae

    ld a, $01
    ld [$c909], a
    ldh a, [$ff92]
    or $30
    ld [hl], a
    inc l

jr_000_0eae:
    call Call_000_0fc4

jr_000_0eb1:
    ldh a, [rSB]
    ld b, a
    bit 5, c
    jr z, jr_000_0ec7

    cp $fe
    jr nz, jr_000_0ec7

    set 0, c
    res 1, c
    res 2, c
    set 7, c
    jp Jump_000_0d5b


jr_000_0ec7:
    bit 1, c
    jp nz, Jump_000_0f28

    swap a
    and $0f
    ld e, a
    ld d, $00
    ld hl, $0d3c
    add hl, de
    ld a, [hl]
    ld [$c908], a
    ld a, b
    and $f0
    cp $10
    jr nz, jr_000_0efb

; recvd byte begins with 0x1X
    bit 3, c ; is primary?
    jr z, jr_000_0eef

; system is primary
    ld a, b
    and $0f
    ld [$c907], a ; store player count
    jp nz, Jump_000_0f4c

; system is secondary
jr_000_0eef:
    ld a, b
    and $0f
    ldh [$ff92], a ; store player number
    inc b
    ld a, b
    ldh [rSB], a ; send number to next
    jp Jump_000_0fb5


jr_000_0efb:
    cp $20
    jr nz, jr_000_0f10

; recvd byte begins with 0x2X
    bit 3, c ; is primary?
    jp nz, Jump_000_0f4c

; system is secondary
    ld a, b
    and $0f
    ld [$c907], a ; store player count
    ld a, b
    ldh [rSB], a ; send cmd to next
    jp Jump_000_0fb5


jr_000_0f10:
    cp $00
    jp z, Jump_000_0f79

; recvd byte does not begin with 0x0X
    bit 2, c
    jr nz, jr_000_0f28

; is this our own sent 0x3X byte?
    ldh a, [$ff92]
    or $30
    cp b
    jr nz, jr_000_0f28

; yes, this is ours. send next byte (?)
    set 2, c
    ld a, [$c909]
    ld [$c90a], a

Jump_000_0f28:
jr_000_0f28:
    set 1, c
    ld hl, $c908
    dec [hl]
    jr nz, jr_000_0f32

    res 1, c

jr_000_0f32:
    ld a, [$c957]
    ld l, a
    ld h, $c0
    ld a, b
    ld [hl+], a
    ld a, l
    ld [$c957], a
    bit 2, c
    jr z, jr_000_0f6d

    ld hl, $c90a
    dec [hl]
    jr nz, jr_000_0f79

    ld hl, $c90b
    inc [hl]

Jump_000_0f4c:
    res 0, c
    res 1, c
    res 2, c
    ldh a, [$ff92]
    or $00
    ldh [rSB], a
    bit 5, c
    jr nz, jr_000_0fb5

    ld a, [$c957]
    ld l, a
    ld h, $c0
    ldh a, [$ff92]
    or $40
    ld [hl+], a
    ld a, l
    ld [$c957], a
    jr jr_000_0fb5

jr_000_0f6d:
    ld a, [$c959]
    ld l, a
    ld h, $c1
    ld a, b
    ld [hl+], a
    ld a, l
    ld [$c959], a

Jump_000_0f79:
jr_000_0f79:
    ld a, [$c958]
    ld l, a
    ld a, [$c959]
    cp l
    jr nz, jr_000_0f8b

    ldh a, [$ff92]
    or $00
    ldh [rSB], a
    jr jr_000_0f94

jr_000_0f8b:
    ld h, $c1
    ld a, [hl+]
    ldh [rSB], a
    ld a, l
    ld [$c958], a

jr_000_0f94:
    bit 3, c
    jr z, jr_000_0fb5

    ld a, c
    res 6, a
    ldh [$ff91], a
    pop hl
    pop de
    pop bc
    ei
    ld a, $b4

jr_000_0fa3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    jr nz, jr_000_0fa3

    ld a, $81
    ldh [rSC], a
    pop af
    ei
    reti


Jump_000_0fb5:
jr_000_0fb5:
    ld a, $80
    ldh [rSC], a
    ld a, c
    res 6, a
    ldh [$ff91], a
    pop hl
    pop de
    pop bc
    pop af
    ei
    reti


Call_000_0fc4:
    ld a, [$c902]
    ld e, a
    ld a, [$c915]
    cp e
    jr z, jr_000_0fe4

    ld a, [$c909]
    add $02
    ld [$c909], a
    ldh a, [$ff92]
    or $d0
    ld [hl], a
    inc l
    ld a, [$c902]
    ld [$c915], a
    ld [hl], a
    inc l

jr_000_0fe4:
    ld a, l
    ld [$c959], a
    ret


Call_000_0fe9::
    ldh a, [$ff91]
    bit 5, a
    jr z, jr_000_0ff1

    xor a
    ret


jr_000_0ff1:
    ld a, [$c907]
    ret


jr_000_0ff5:
    ld a, [$c910]
    cp $01
    jr z, jr_000_1019

    ldh a, [$ff91]
    bit 3, a
    jr z, jr_000_1012

jr_000_1002:
    ld a, [$c911]
    and $03
    cpl
    jr nz, jr_000_1002

    di
    ldh a, [$ff91]
    set 1, a
    ldh [$ff91], a
    ei

jr_000_1012:
    ld a, [$c910]
    cp $01
    jr nz, jr_000_1012

jr_000_1019:
    ret


PrepareInterFaceLoad:
    ldh a, [$ff91]
    bit 7, a
    jr nz, jr_000_0ff5

    bit 4, a
    jr z, jr_000_104f

Jump_000_1024:
jr_000_1024:
    ldh a, [$ff91]
    bit 3, a
    jr z, jr_000_1032

    ld bc, $0014
    call Call_000_09f1
    jr jr_000_1037

jr_000_1032:
    ldh a, [$ff92]
    and a
    jr z, jr_000_1032

jr_000_1037:
    ld a, [$c907]
    and a
    jr z, jr_000_1037

    call Call_000_11eb
    di
    ldh a, [$ff91]
    res 5, a
    ldh [$ff91], a
    ei
    ldh a, [$ff92]
    or $00
    ldh [rSB], a
    ret


jr_000_104f:
    di
    ldh a, [$ff91]
    set 3, a
    ldh [$ff91], a
    ei
    xor a
    ldh [$ff92], a
    ld a, $10 ; start with 0th player (this device)
    or $01
    ldh [rSB], a ; send to next device in chain
    di
    ldh a, [$ff91]
    set 0, a
    ldh [$ff91], a
    ei
    ld a, $81
    ldh [rSC], a
    ld b, $14

jr_000_106e:
    push bc
    ld bc, $0001
    call Call_000_09f1
    pop bc
    ldh a, [$ff91]
    bit 0, a
    jr z, jr_000_1092

    dec b
    jr nz, jr_000_106e

    ld a, $00
    ldh [rSC], a
    ld a, $01
    ld [$c907], a
    ldh a, [$ff91]
    res 0, a
    res 4, a
    ldh [$ff91], a
    jr jr_000_1024

jr_000_1092:
    ld a, [$c907]
    and $0f
    or $20
    ldh [rSB], a
    di
    ldh a, [$ff91]
    set 0, a
    ldh [$ff91], a
    ei
    ld a, $81
    ldh [rSC], a
    call Call_000_11eb
    jp Jump_000_1024


Call_000_10ad::
    ld a, [$c936]
    cp $88
    jr z, jr_000_10bc

    cp $aa
    jr z, jr_000_10bc

    cp $ff
    jr nz, jr_000_10c0

jr_000_10bc:
    ld a, $04
    jr jr_000_10cc

jr_000_10c0:
    swap a
    and $0f
    ld c, a
    ld b, $00
    ld hl, $0d3c
    add hl, bc
    ld a, [hl]

jr_000_10cc:
    ld b, a
    ld a, [$c909]
    add b
    ld [$c909], a
    ld a, [$c959]
    ld l, a
    ld h, $c1
    ld de, $c936

jr_000_10dd:
    ld a, [de]
    ld [hl], a
    inc de
    inc l
    dec b
    jr nz, jr_000_10dd

    ld a, l
    ld [$c959], a
    ret


Jump_000_10e9:
    di
    xor a
    ldh [rIE], a
    jp Jump_000_10e9


Jump_000_10f0:
    ld a, b
    ld [$c90a], a
    ld h, $c0
    ld a, [$c956]
    ld l, a
    and $03
    cp $00
    jr z, jr_000_1123

    cp $01
    jr z, jr_000_111a

    cp $02
    jr z, jr_000_1111

    ld a, [$c913]
    bit 3, a
    jr z, jr_000_1181

    jr jr_000_112a

jr_000_1111:
    ld a, [$c913]
    bit 2, a
    jr z, jr_000_1181

    jr jr_000_112a

jr_000_111a:
    ld a, [$c913]
    bit 1, a
    jr z, jr_000_1181

    jr jr_000_112a

jr_000_1123:
    ld a, [$c913]
    bit 0, a
    jr z, jr_000_1181

jr_000_112a:
    ld a, [hl]
    and $f0
    cp $00
    jr z, jr_000_1181

    cp $90
    jr z, jr_000_1140

    ld a, [hl]
    and $03
    ld c, a
    ld a, l
    and $03
    cp c
    jp nz, Jump_000_10e9

jr_000_1140:
    nop
    ld de, $c916

jr_000_1144:
    ld a, [$c910]
    cp $01
    jr nz, jr_000_1188

    ld a, [hl]
    ld [de], a
    inc de
    dec b
    jr z, jr_000_1166

    ld a, [$c957]
    inc l
    cp l
    jr z, jr_000_1188

    inc l
    cp l
    jr z, jr_000_1188

    inc l
    cp l
    jr z, jr_000_1188

    inc l
    cp l
    jr z, jr_000_1188

    jr jr_000_1144

jr_000_1166:
    ld a, [$c956]
    ld l, a
    ld a, [$c90a]
    ld b, a
    ld a, $0f

jr_000_1170:
    ld [hl], a
    inc l
    inc l
    inc l
    inc l
    dec b
    jr nz, jr_000_1170

    ld a, [$c956]
    inc a
    ld [$c956], a
    and a
    ret


jr_000_1181:
    ld a, [$c956]
    inc a
    ld [$c956], a

jr_000_1188:
    scf
    ret


Call_000_118a::
    ld a, [$c956]
    ld b, a
    ld a, [$c957]
    cp b
    jr nz, jr_000_1196

jr_000_1194:
    scf
    ret


jr_000_1196:
    ld a, [$c956]
    ld l, a
    ld h, $c0
    ld a, [hl]
    cp $fe
    jr z, jr_000_11a9

    cp $cc
    jr z, jr_000_11a9

    cp $fd
    jr nz, jr_000_11ad

jr_000_11a9:
    ld a, $04
    jr jr_000_11b9

jr_000_11ad:
    swap a
    and $0f
    ld c, a
    ld b, $00
    ld hl, $0d3c
    add hl, bc
    ld a, [hl]

jr_000_11b9:
    ld b, a
    ldh a, [$ff91]
    bit 7, a
    jp nz, Jump_000_10f0

    ld de, $c916
    ld a, [$c956]
    ld l, a
    ld h, $c0

jr_000_11ca:
    ld a, [$c957]
    cp l
    jr z, jr_000_1194

    ld a, [hl]
    ld [de], a
    inc l
    inc de
    dec b
    jr nz, jr_000_11ca

    ld a, l
    ld [$c956], a
    and a
    ret


Call_000_11dd::
    ldh a, [$ff91]
    bit 4, a
    ret z

    ld hl, $c90b

jr_000_11e5:
    ld a, [hl]
    and a
    jr z, jr_000_11e5

    dec [hl]
    ret


Call_000_11eb:
jr_000_11eb:
    ldh a, [$ff91]
    bit 0, a
    jr nz, jr_000_11eb

    ret


Call_000_11f2::
    ldh a, [$ff91]
    bit 7, a
    jr nz, jr_000_120a

    bit 3, a
    ret z

    xor a
    ld [$c909], a
    ldh a, [$ff92]
    or $30
    ld [$c936], a
    call Call_000_10ad
    ret


jr_000_120a:
    ld a, [$c959]
    ld l, a
    ld h, $c1
    call Call_000_0fc4
    ret


Call_000_1214::
    ldh a, [$ff91]
    bit 7, a
    jr z, jr_000_1249

jr_000_121a:
    ld a, [$c911]
    and $03
    cpl
    jr nz, jr_000_121a

    di
    ldh a, [$ff91]
    set 2, a
    ldh [$ff91], a
    ei

jr_000_122a:
    ldh a, [$ff91]
    bit 2, a
    jr nz, jr_000_122a

jr_000_1230:
    ld a, [$c910]
    cp $00
    jr nz, jr_000_1230

    di
    ldh a, [$ff91]
    set 5, a
    ldh [$ff91], a
    ei
    ldh a, [rIE]
    res 3, a
    ldh [rIE], a
    xor a
    ldh [rSC], a
    ret


jr_000_1249:
    call Call_000_11eb
    xor a
    ld [$c956], a
    ld [$c957], a
    ld [$c958], a
    ld [$c959], a
    ld [$c90b], a
    ret


Call_000_125d::
    ldh a, [$ff91]
    bit 7, a
    jr z, jr_000_126c

    ld a, [$c910]
    cp $00
    jr z, jr_000_1275

    scf
    ret


jr_000_126c:
    bit 5, a
    jr z, jr_000_1277

    ldh a, [$ff92]
    and a
    jr nz, jr_000_1281

jr_000_1275:
    and a
    ret


jr_000_1277:
    ld a, [$c956]
    ld b, a
    ld a, [$c957]
    cp b
    jr z, jr_000_1275

jr_000_1281:
    scf
    ret


Call_000_1283::
    ldh a, [$ff91]
    bit 7, a
    jr z, JoypadOrSerial

    ldh a, [$ff92]
    or $50
    ld [$c936], a
    call Call_000_10ad
    ret


JoypadOrSerial:
    ld a, [$c907]
    cp $02
    jr nc, serial_not_joypad

    ld a, [$c902]
    ld [$c790], a
    ret


serial_not_joypad:
    ldh a, [$ff91]
    bit 3, a
    ret z

    ldh a, [$ff92]
    or $00
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a
    ret


    nop
    nop
    dec b
    inc bc
    nop
    ld [$0101], sp
    rlca
    ld [bc], a
    inc bc
    ld [$0302], sp
    nop
    ld [bc], a
    inc b
    inc bc
    rlca
    ld bc, $0303
    ld [bc], a
    ld bc, $0601
    inc b
    inc bc
    ld bc, $0802
    db $08

UpdateVRAMGFX::
    ld hl, $8000
    ld de, $5634
    ld bc, $0800
    ld a, $02
    call LoadPixelsIntoVRAM4
    ld hl, $8800
    ld de, $5c24
    ld bc, $0040
    ld a, $02
    call LoadPixelsIntoVRAM4
    ret


PrepareForClearBufferStack::
    ldh [$ff93], a
    call ClearBufferStack
    ret


HandleHUDGraphicsThings:
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld a, $90

jr_000_1305:
    push af

hud_stat_check:
    ldh a, [rSTAT]
    and $02
    jr nz, hud_stat_check

    ld a, [de]
    or [hl]
    ld [bc], a
    ldh a, [rSTAT]
    and $02
    jr nz, hud_stat_check

    inc de
    inc hl
    inc bc
    pop af
    dec a
    jr nz, jr_000_1305

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


FillBufferThingD0C1::
    ld hl, $d0c1
    ld bc, $0012

jr_000_132b:
    ldh a, [rLY]
    ld e, a
    xor a
    ld d, a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_132b

    ld bc, $0012

jr_000_1350:
    ldh a, [rLY]
    ld e, a
    xor a
    ld d, a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1350

    ret


FillBufferStackHalf2::
    ld hl, $d1e1
    ld bc, $007e
    ld e, $55

jr_000_137b:
    ld a, e
    ld [hl+], a
    ld [hl+], a
    cpl
    ld [hl+], a
    ld [hl+], a
    cpl
    ld [hl+], a
    ld [hl+], a
    cpl
    ld [hl+], a
    ld [hl+], a
    cpl
    ld [hl+], a
    ld [hl+], a
    cpl
    ld [hl+], a
    ld [hl+], a
    cpl
    ld [hl+], a
    ld [hl+], a
    cpl
    ld [hl+], a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_137b

    ret


    ld hl, $ca01
    ld bc, $007e
    ld e, $00

jr_000_13a1:
    ld a, e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_13a1

    ret


ClearBufferStack:
    ld hl, $ca01
    ld bc, $00fc

jr_000_13be:
    ldh a, [$ff93]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_13be

    ret


PrepareCopyrightTilemapUpdate::
    ld hl, $9800
    ld bc, $0400

jr_000_13dc:
    xor a
    call UpdateTilemap
    dec bc
    ld a, b
    or c
    jr nz, jr_000_13dc

    ret


CheckIfCopyrightTilemapUpdate::
    ld a, [$c9a2]
    cp $02
    ret nz

    call PrepareCopyrightTilemapUpdate
    ret


UpdateFrameBuffer::
    ld a, [$c9a2]
    cp $02
    ret z

    ld [$c95d], sp
    ld hl, $8840
    di
    ld sp, $ca01
    ld de, $01f8

fill_framebuffer_row:
    pop bc

buffer_stat_check_1:
    ldh a, [rSTAT]
    and $02
    jr z, buffer_stat_check_1

buffer_stat_check_2:
    ldh a, [rSTAT]
    and $02
    jr nz, buffer_stat_check_2

    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld c, l
    ld b, h
    ld hl, sp+$00
    ld sp, $c9a1
    ei

jr_000_142b:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_142b

    di
    ld sp, hl
    ld l, c
    ld h, b
    ldh a, [$ff93]
    ld c, a
    ld b, a
    push bc
    push bc
    push bc
    push bc
    add sp, $08
    dec de
    ld a, d
    or e
    jr nz, fill_framebuffer_row

    ld a, [$c95d]
    ld l, a
    ld a, [$c95e]
    ld h, a
    ld sp, hl
    ei
    ret


UpdateTilemap:
    ld [$c95c], a

jr_000_1452:
    ei
    di
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1452

    ld a, [$c95c]
    ld [hl], a
    ldh a, [rSTAT]
    ei
    and $02
    jr nz, jr_000_1452

    inc hl
    ret


Call_000_1467:
jr_000_1467:
    ei
    di
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1467

    xor a
    ld [hl], a
    ldh a, [rSTAT]
    ei
    and $02
    jr nz, jr_000_1467

    inc hl
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1467

    ret


LoadPixelsIntoVRAM4:
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei

jr_000_148e:
    ei
    di
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_148e

    ld a, [de]
    ld [hl], a
    ldh a, [rSTAT]
    ei
    and $02
    jr nz, jr_000_148e

    inc hl
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_148e

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


Timer::
    reti


ZeroOutTimerCtrl::
    ld a, $00
    ldh [rTAC], a
    ret


zero_timer_return::
    ret


    db $e4
    sub b
    ld b, b
    nop

Joypad::
    reti


ReadInput:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld b, a
    ld [$c901], a
    ld a, $30
    ldh [rP1], a
    ret


Call_000_14e6::
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld a, b
    ldh [$ff9b], a
    ld a, d
    ldh [$ff99], a
    ld a, [hl+]
    ld a, [hl+]
    ldh [$ff9a], a
    ld e, a
    sla e
    ld d, $00
    rl d
    ld a, [hl+]
    ld b, a
    ld a, $01
    ldh [$ff9c], a
    ldh a, [$ff99]
    bit 0, a
    jr z, jr_000_151b

    ld a, $ff
    ldh [$ff9c], a
    ld a, b
    dec a
    jr z, jr_000_151b

    add c
    ld c, a

jr_000_151b:
    ldh a, [$ff99]
    bit 0, a
    jr nz, jr_000_1534

jr_000_1521:
    ld a, c
    cp $70
    jr c, jr_000_1547

    inc c
    add hl, de
    dec b
    jr nz, jr_000_1521

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


jr_000_1534:
    ld a, c
    cp $70
    jr c, jr_000_1553

    dec c
    add hl, de
    dec b
    jr nz, jr_000_1534

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


jr_000_1547:
    ld a, c
    add b
    cp $70
    jr c, jr_000_155a

    ld a, $70
    sub c
    ld b, a
    jr jr_000_155a

jr_000_1553:
    ld a, c
    sub b
    jr nc, jr_000_155a

    ld a, c
    inc a
    ld b, a

jr_000_155a:
    ld d, c
    ld e, b
    ldh a, [$ff99]
    bit 1, a
    jr z, jr_000_157a

    ldh a, [$ff9b]
    and $06
    cp $00
    jp z, Jump_000_1592

    cp $02
    jp z, Jump_000_16ae

    cp $04
    jp z, Jump_000_1867

    cp $06
    jp z, Jump_000_1a20

jr_000_157a:
    ldh a, [$ff9b]
    and $06
    cp $00
    jp z, LoadDataToBufferStack

    cp $02
    jp z, Jump_000_17a1

    cp $04
    jp z, Jump_000_195a

    cp $06
    jp z, Jump_000_1b13

Jump_000_1592:
    push de
    ldh a, [$ff9a]
    sla a
    ld c, a
    ld b, $00
    rl b
    dec bc
    dec bc
    add hl, bc
    ld c, l
    ld b, h
    sla d
    ld l, d
    ld h, $03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff9b]
    cp $90
    jr c, jr_000_15b0

    xor a

jr_000_15b0:
    ld d, $00
    rla
    rl d
    and $f0
    ld e, a
    add hl, de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    xor a
    ldh [$ff94], a
    ldh [$ff95], a
    ldh a, [$ff9b]
    rra
    rra
    rra
    and $1f
    ld b, a
    ldh a, [$ff9a]
    ld c, a

jr_000_15cd:
    push bc
    ld a, b
    cp $12
    jr c, jr_000_15d7

    inc hl
    inc hl
    jr jr_000_1601

jr_000_15d7:
    ld b, $07
    ld a, [hl+]
    ld c, a
    ld a, [bc]
    ldh [$ff96], a
    ld a, [hl+]
    ld c, a
    ld a, [bc]
    ldh [$ff97], a
    ldh a, [$ff96]
    ld c, a
    ldh a, [$ff97]
    or c
    jr z, jr_000_15fa

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff97]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a
    dec de

jr_000_15fa:
    ld a, e
    add $10
    ld e, a
    jr nc, jr_000_1601

    inc d

jr_000_1601:
    ld bc, $fffc
    add hl, bc
    pop bc
    ld a, b
    inc a
    and $1f
    ld b, a
    dec c
    jr nz, jr_000_15cd

    ldh a, [$ff9a]
    sla a
    ld e, a
    ld d, $00
    rl d
    inc de
    inc de
    add hl, de
    pop de
    inc d
    ldh a, [$ff99]
    bit 0, a
    jr z, jr_000_1624

    dec d
    dec d

jr_000_1624:
    dec e
    jp nz, Jump_000_1592

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


LoadDataToBufferStack:
    push de
    ld c, l
    ld b, h
    sla d
    ld l, d
    ld h, $03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff9b]
    cp $90
    jr c, jr_000_1643

    xor a

jr_000_1643:
    ld d, $00
    rla
    rl d
    and $f0
    ld e, a
    add hl, de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    xor a
    ldh [$ff94], a
    ldh [$ff95], a
    ldh a, [$ff9b]
    rra
    rra
    rra
    and $1f
    ld b, a
    ldh a, [$ff9a]
    ld c, a

jr_000_1660:
    push bc
    ld a, b
    cp $12
    jr c, jr_000_166a

    inc hl
    inc hl
    jr jr_000_168e

jr_000_166a:
    ld a, [hl+]
    ldh [$ff96], a
    ld a, [hl+]
    ldh [$ff97], a
    ldh a, [$ff96]
    ld c, a
    ldh a, [$ff97]
    or c
    jr z, jr_000_1687

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff97]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a
    dec de

jr_000_1687:
    ld a, e
    add $10
    ld e, a
    jr nc, jr_000_168e

    inc d

jr_000_168e:
    pop bc
    ld a, b
    inc a
    and $1f
    ld b, a
    dec c
    jr nz, jr_000_1660

    pop de
    inc d
    ldh a, [$ff99]
    bit 0, a
    jr z, jr_000_16a1

    dec d
    dec d

jr_000_16a1:
    dec e
    jp nz, LoadDataToBufferStack

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


Jump_000_16ae:
    push de
    ldh a, [$ff9a]
    sla a
    ld c, a
    ld b, $00
    rl b
    dec bc
    dec bc
    add hl, bc
    ld c, l
    ld b, h
    sla d
    ld l, d
    ld h, $03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff9b]
    cp $90
    jr c, jr_000_16cc

    xor a

jr_000_16cc:
    ld d, $00
    rla
    rl d
    and $f0
    ld e, a
    add hl, de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    xor a
    ldh [$ff94], a
    ldh [$ff95], a
    ldh a, [$ff9b]
    rra
    rra
    rra
    and $1f
    ld b, a
    ldh a, [$ff9a]
    ld c, a

Jump_000_16e9:
    push bc
    ld a, b
    cp $12
    jr c, jr_000_170d

    push de
    ld d, $07
    ldh a, [$ff94]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [de]
    rrca
    rrca
    and $c0
    ldh [$ff94], a
    ldh a, [$ff95]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [de]
    rrca
    rrca
    and $c0
    ldh [$ff95], a
    pop de
    jr jr_000_1755

jr_000_170d:
    push de
    ld d, $07
    ldh a, [$ff94]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [de]
    rrca
    rrca
    ld b, a
    and $3f
    or c
    ldh [$ff96], a
    ld a, b
    and $c0
    ldh [$ff94], a
    ldh a, [$ff95]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [de]
    rrca
    rrca
    ld b, a
    and $3f
    or c
    ldh [$ff97], a
    ld a, b
    and $c0
    ldh [$ff95], a
    pop de
    ldh a, [$ff96]
    ld c, a
    ldh a, [$ff97]
    or c
    jr z, jr_000_174e

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff97]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a
    dec de

jr_000_174e:
    ld a, e
    add $10
    ld e, a
    jr nc, jr_000_1755

    inc d

jr_000_1755:
    ld bc, $fffc
    add hl, bc
    pop bc
    ld a, b
    inc a
    and $1f
    ld b, a
    dec c
    jp nz, Jump_000_16e9

    ld a, b
    cp $12
    jr nc, jr_000_177e

    ldh a, [$ff94]
    ld c, a
    ldh a, [$ff95]
    or c
    jr z, jr_000_177e

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff95]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a

jr_000_177e:
    ldh a, [$ff9a]
    sla a
    ld e, a
    ld d, $00
    rl d
    inc de
    inc de
    add hl, de
    pop de
    inc d
    ldh a, [$ff99]
    bit 0, a
    jr z, jr_000_1794

    dec d
    dec d

jr_000_1794:
    dec e
    jp nz, Jump_000_16ae

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


Jump_000_17a1:
    push de
    ld c, l
    ld b, h
    sla d
    ld l, d
    ld h, $03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff9b]
    cp $90
    jr c, jr_000_17b3

    xor a

jr_000_17b3:
    ld d, $00
    rla
    rl d
    and $f0
    ld e, a
    add hl, de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    xor a
    ldh [$ff94], a
    ldh [$ff95], a
    ldh a, [$ff9b]
    rra
    rra
    rra
    and $1f
    ld b, a
    ldh a, [$ff9a]
    ld c, a

jr_000_17d0:
    push bc
    ld a, b
    cp $12
    jr c, jr_000_17ec

    ldh a, [$ff94]
    ld c, a
    ld a, [hl+]
    rrca
    rrca
    and $c0
    ldh [$ff94], a
    ldh a, [$ff95]
    ld c, a
    ld a, [hl+]
    rrca
    rrca
    and $c0
    ldh [$ff95], a
    jr jr_000_182c

jr_000_17ec:
    ldh a, [$ff94]
    ld c, a
    ld a, [hl+]
    rrca
    rrca
    ld b, a
    and $3f
    or c
    ldh [$ff96], a
    ld a, b
    and $c0
    ldh [$ff94], a
    ldh a, [$ff95]
    ld c, a
    ld a, [hl+]
    rrca
    rrca
    ld b, a
    and $3f
    or c
    ldh [$ff97], a
    ld a, b
    and $c0
    ldh [$ff95], a
    ldh a, [$ff96]
    ld c, a
    ldh a, [$ff97]
    or c
    jr z, jr_000_1825

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff97]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a
    dec de

jr_000_1825:
    ld a, e
    add $10
    ld e, a
    jr nc, jr_000_182c

    inc d

jr_000_182c:
    pop bc
    ld a, b
    inc a
    and $1f
    ld b, a
    dec c
    jr nz, jr_000_17d0

    ld a, b
    cp $12
    jr nc, jr_000_1850

    ldh a, [$ff94]
    ld c, a
    ldh a, [$ff95]
    or c
    jr z, jr_000_1850

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff95]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a

jr_000_1850:
    pop de
    inc d
    ldh a, [$ff99]
    bit 0, a
    jr z, jr_000_185a

    dec d
    dec d

jr_000_185a:
    dec e
    jp nz, Jump_000_17a1

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


Jump_000_1867:
    push de
    ldh a, [$ff9a]
    sla a
    ld c, a
    ld b, $00
    rl b
    dec bc
    dec bc
    add hl, bc
    ld c, l
    ld b, h
    sla d
    ld l, d
    ld h, $03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff9b]
    cp $90
    jr c, jr_000_1885

    xor a

jr_000_1885:
    ld d, $00
    rla
    rl d
    and $f0
    ld e, a
    add hl, de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    xor a
    ldh [$ff94], a
    ldh [$ff95], a
    ldh a, [$ff9b]
    rra
    rra
    rra
    and $1f
    ld b, a
    ldh a, [$ff9a]
    ld c, a

Jump_000_18a2:
    push bc
    ld a, b
    cp $12
    jr c, jr_000_18c6

    push de
    ld d, $07
    ldh a, [$ff94]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [de]
    swap a
    and $f0
    ldh [$ff94], a
    ldh a, [$ff95]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [de]
    swap a
    and $f0
    ldh [$ff95], a
    pop de
    jr jr_000_190e

jr_000_18c6:
    push de
    ld d, $07
    ldh a, [$ff94]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [de]
    swap a
    ld b, a
    and $0f
    or c
    ldh [$ff96], a
    ld a, b
    and $f0
    ldh [$ff94], a
    ldh a, [$ff95]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [de]
    swap a
    ld b, a
    and $0f
    or c
    ldh [$ff97], a
    ld a, b
    and $f0
    ldh [$ff95], a
    pop de
    ldh a, [$ff96]
    ld c, a
    ldh a, [$ff97]
    or c
    jr z, jr_000_1907

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff97]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a
    dec de

jr_000_1907:
    ld a, e
    add $10
    ld e, a
    jr nc, jr_000_190e

    inc d

jr_000_190e:
    ld bc, $fffc
    add hl, bc
    pop bc
    ld a, b
    inc a
    and $1f
    ld b, a
    dec c
    jp nz, Jump_000_18a2

    ld a, b
    cp $12
    jr nc, jr_000_1937

    ldh a, [$ff94]
    ld c, a
    ldh a, [$ff95]
    or c
    jr z, jr_000_1937

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff95]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a

jr_000_1937:
    ldh a, [$ff9a]
    sla a
    ld e, a
    ld d, $00
    rl d
    inc de
    inc de
    add hl, de
    pop de
    inc d
    ldh a, [$ff99]
    bit 0, a
    jr z, jr_000_194d

    dec d
    dec d

jr_000_194d:
    dec e
    jp nz, Jump_000_1867

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


Jump_000_195a:
    push de
    ld c, l
    ld b, h
    sla d
    ld l, d
    ld h, $03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff9b]
    cp $90
    jr c, jr_000_196c

    xor a

jr_000_196c:
    ld d, $00
    rla
    rl d
    and $f0
    ld e, a
    add hl, de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    xor a
    ldh [$ff94], a
    ldh [$ff95], a
    ldh a, [$ff9b]
    rra
    rra
    rra
    and $1f
    ld b, a
    ldh a, [$ff9a]
    ld c, a

jr_000_1989:
    push bc
    ld a, b
    cp $12
    jr c, jr_000_19a5

    ldh a, [$ff94]
    ld c, a
    ld a, [hl+]
    swap a
    and $f0
    ldh [$ff94], a
    ldh a, [$ff95]
    ld c, a
    ld a, [hl+]
    swap a
    and $f0
    ldh [$ff95], a
    jr jr_000_19e5

jr_000_19a5:
    ldh a, [$ff94]
    ld c, a
    ld a, [hl+]
    swap a
    ld b, a
    and $0f
    or c
    ldh [$ff96], a
    ld a, b
    and $f0
    ldh [$ff94], a
    ldh a, [$ff95]
    ld c, a
    ld a, [hl+]
    swap a
    ld b, a
    and $0f
    or c
    ldh [$ff97], a
    ld a, b
    and $f0
    ldh [$ff95], a
    ldh a, [$ff96]
    ld c, a
    ldh a, [$ff97]
    or c
    jr z, jr_000_19de

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff97]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a
    dec de

jr_000_19de:
    ld a, e
    add $10
    ld e, a
    jr nc, jr_000_19e5

    inc d

jr_000_19e5:
    pop bc
    ld a, b
    inc a
    and $1f
    ld b, a
    dec c
    jr nz, jr_000_1989

    ld a, b
    cp $12
    jr nc, jr_000_1a09

    ldh a, [$ff94]
    ld c, a
    ldh a, [$ff95]
    or c
    jr z, jr_000_1a09

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff95]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a

jr_000_1a09:
    pop de
    inc d
    ldh a, [$ff99]
    bit 0, a
    jr z, jr_000_1a13

    dec d
    dec d

jr_000_1a13:
    dec e
    jp nz, Jump_000_195a

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


Jump_000_1a20:
    push de
    ldh a, [$ff9a]
    sla a
    ld c, a
    ld b, $00
    rl b
    dec bc
    dec bc
    add hl, bc
    ld c, l
    ld b, h
    sla d
    ld l, d
    ld h, $03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff9b]
    cp $90
    jr c, jr_000_1a3e

    xor a

jr_000_1a3e:
    ld d, $00
    rla
    rl d
    and $f0
    ld e, a
    add hl, de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    xor a
    ldh [$ff94], a
    ldh [$ff95], a
    ldh a, [$ff9b]
    rra
    rra
    rra
    and $1f
    ld b, a
    ldh a, [$ff9a]
    ld c, a

Jump_000_1a5b:
    push bc
    ld a, b
    cp $12
    jr c, jr_000_1a7f

    push de
    ld d, $07
    ldh a, [$ff94]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [de]
    rlca
    rlca
    and $fc
    ldh [$ff94], a
    ldh a, [$ff95]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [de]
    rlca
    rlca
    and $fc
    ldh [$ff95], a
    pop de
    jr jr_000_1ac7

jr_000_1a7f:
    push de
    ld d, $07
    ldh a, [$ff94]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [de]
    rlca
    rlca
    ld b, a
    and $03
    or c
    ldh [$ff96], a
    ld a, b
    and $fc
    ldh [$ff94], a
    ldh a, [$ff95]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [de]
    rlca
    rlca
    ld b, a
    and $03
    or c
    ldh [$ff97], a
    ld a, b
    and $fc
    ldh [$ff95], a
    pop de
    ldh a, [$ff96]
    ld c, a
    ldh a, [$ff97]
    or c
    jr z, jr_000_1ac0

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff97]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a
    dec de

jr_000_1ac0:
    ld a, e
    add $10
    ld e, a
    jr nc, jr_000_1ac7

    inc d

jr_000_1ac7:
    ld bc, $fffc
    add hl, bc
    pop bc
    ld a, b
    inc a
    and $1f
    ld b, a
    dec c
    jp nz, Jump_000_1a5b

    ld a, b
    cp $12
    jr nc, jr_000_1af0

    ldh a, [$ff94]
    ld c, a
    ldh a, [$ff95]
    or c
    jr z, jr_000_1af0

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff95]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a

jr_000_1af0:
    ldh a, [$ff9a]
    sla a
    ld e, a
    ld d, $00
    rl d
    inc de
    inc de
    add hl, de
    pop de
    inc d
    ldh a, [$ff99]
    bit 0, a
    jr z, jr_000_1b06

    dec d
    dec d

jr_000_1b06:
    dec e
    jp nz, Jump_000_1a20

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


Jump_000_1b13:
    push de
    ld c, l
    ld b, h
    sla d
    ld l, d
    ld h, $03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ff9b]
    cp $90
    jr c, jr_000_1b25

    xor a

jr_000_1b25:
    ld d, $00
    rla
    rl d
    and $f0
    ld e, a
    add hl, de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    xor a
    ldh [$ff94], a
    ldh [$ff95], a
    ldh a, [$ff9b]
    rra
    rra
    rra
    and $1f
    ld b, a
    ldh a, [$ff9a]
    ld c, a

jr_000_1b42:
    push bc
    ld a, b
    cp $12
    jr c, jr_000_1b5e

    ldh a, [$ff94]
    ld c, a
    ld a, [hl+]
    rlca
    rlca
    and $fc
    ldh [$ff94], a
    ldh a, [$ff95]
    ld c, a
    ld a, [hl+]
    rlca
    rlca
    and $fc
    ldh [$ff95], a
    jr jr_000_1b9e

jr_000_1b5e:
    ldh a, [$ff94]
    ld c, a
    ld a, [hl+]
    rlca
    rlca
    ld b, a
    and $03
    or c
    ldh [$ff96], a
    ld a, b
    and $fc
    ldh [$ff94], a
    ldh a, [$ff95]
    ld c, a
    ld a, [hl+]
    rlca
    rlca
    ld b, a
    and $03
    or c
    ldh [$ff97], a
    ld a, b
    and $fc
    ldh [$ff95], a
    ldh a, [$ff96]
    ld c, a
    ldh a, [$ff97]
    or c
    jr z, jr_000_1b97

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff97]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a
    dec de

jr_000_1b97:
    ld a, e
    add $10
    ld e, a
    jr nc, jr_000_1b9e

    inc d

jr_000_1b9e:
    pop bc
    ld a, b
    inc a
    and $1f
    ld b, a
    dec c
    jr nz, jr_000_1b42

    ld a, b
    cp $12
    jr nc, jr_000_1bc2

    ldh a, [$ff94]
    ld c, a
    ldh a, [$ff95]
    or c
    jr z, jr_000_1bc2

    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a
    inc de
    ldh a, [$ff95]
    ld c, a
    ld a, [de]
    and b
    or c
    ld [de], a

jr_000_1bc2:
    pop de
    inc d
    ldh a, [$ff99]
    bit 0, a
    jr z, jr_000_1bcc

    dec d
    dec d

jr_000_1bcc:
    dec e
    jp nz, Jump_000_1b13

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


Call_000_1bd9::
    xor a
    ld [$c9a5], a
    ld [$c9a6], a
    ld a, l
    ld [$c9a7], a
    ld a, h
    ld [$c9a8], a
    ld a, d
    ld [$c9a9], a
    ld a, b
    ld [$c9aa], a
    ld a, c
    ld [$c9ab], a
    ld hl, $c9a5
    jp DrawText


Call_000_1bfa::
    xor a
    ld [$c9a5], a
    ld [$c9a6], a
    ld a, l
    ld [$c9a7], a
    ld a, h
    ld [$c9a8], a
    ld a, d
    ld [$c9a9], a
    ld a, b
    ld [$c9aa], a
    ld a, c
    ld [$c9ab], a
    ld hl, $c9a5
    jp UpdateTilemapBeyond9A00


DrawText::
    ld a, h
    or l
    ret z

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ldh [$ff97], a
    ld a, [hl+]
    ld c, a
    xor a
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld b, a
    push bc
    ld a, [$c9a4]
    ld c, a
    xor a
    ldh [$ff96], a
    ld a, [hl]
    sla a
    sla a
    sla a
    add c
    ldh [$ff94], a
    pop bc
    cp $f9
    jr c, jr_000_1c5a

    cpl
    inc a
    ldh [$ff96], a
    xor a
    ldh [$ff94], a
    jr jr_000_1c5f

jr_000_1c5a:
    cp $70
    jp nc, Jump_000_1cd7

jr_000_1c5f:
    ld h, $03
    sla a
    ld l, a
    ld a, [hl+]
    ldh [$ff95], a
    ld a, [hl+]
    ld h, a
    ldh a, [$ff95]
    ld l, a
    add hl, bc

Jump_000_1c6d:
    ld a, [de]
    and a
    jp z, Jump_000_1cd7

    sub $20
    ld c, a
    xor a
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld b, a
    ldh a, [$ff96]
    sla a
    add c
    ld c, a
    jr nc, jr_000_1c8c

    inc b

jr_000_1c8c:
    push de
    push hl
    ld hl, $5634
    add hl, bc
    pop de
    ldh a, [$ff94]
    cpl
    and $07
    inc a
    ld c, a
    push de
    ldh a, [$ff96]
    cpl
    inc a
    add $08
    ld b, a
    ld a, $55
    ldh [$ff9d], a
    ld a, $02
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei

jr_000_1cb6:
    call Call_000_1cdb
    ldh a, [$ff97]
    bit 0, a
    call nz, Call_000_1cdb
    inc hl
    inc hl
    dec b
    jr nz, jr_000_1cb6

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    pop hl
    ld de, $0010
    add hl, de
    pop de
    inc de
    jp Jump_000_1c6d


Jump_000_1cd7:
    pop hl
    jp DrawText


Call_000_1cdb:
    ld a, d
    cp $ca
    jr c, jr_000_1d18

    jr nz, jr_000_1ce7

    ld a, e
    cp $01
    jr c, jr_000_1d18

jr_000_1ce7:
    ld a, d
    cp $d9
    jr c, jr_000_1cf5

    jr nz, jr_000_1d18

    ld a, e
    cp $c0
    jr z, jr_000_1cf5

    jr nc, jr_000_1d18

jr_000_1cf5:
    push bc
    ld a, [hl+]
    or [hl]
    dec hl
    cpl
    ld c, a
    ld b, $ff
    ldh a, [$ff97]
    bit 1, a
    jr z, jr_000_1d09

    ldh a, [$ff9d]
    cpl
    ldh [$ff9d], a
    ld b, a

jr_000_1d09:
    ld a, [de]
    and c
    or [hl]
    and b
    ld [de], a
    inc de
    inc hl
    ld a, [de]
    and c
    or [hl]
    and b
    ld [de], a
    dec de
    dec hl
    pop bc

jr_000_1d18:
    inc de
    inc de
    dec c
    ret nz

    ld c, $08
    push hl
    ld l, e
    ld h, d
    ld de, $0110
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ret


UpdateTilemapBeyond9A00::
    ld a, h
    or l
    ret z

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ldh [$ff97], a
    ld a, [hl+]
    push af
    ld a, [hl+]
    ld c, a
    xor a
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld b, a
    ld hl, $9800
    add hl, bc
    pop af
    ld c, a
    ld b, $00
    add hl, bc

jr_000_1d56:
    ld a, [de]
    cp $00
    jr z, jr_000_1d63

    sub $20
    call UpdateTilemap
    inc de
    jr jr_000_1d56

jr_000_1d63:
    pop hl
    jp UpdateTilemapBeyond9A00


    adc h
    dec e
    sub a
    dec e
    and d
    dec e
    xor l
    dec e
    cp b
    dec e
    adc e
    dec e
    jp $ce1d


    dec e
    reti


    dec e
    db $e4
    dec e
    db $e4
    dec e
    db $e4
    dec e
    rst $28
    dec e
    ld a, [$051d]
    ld e, $10
    ld e, $1b
    ld e, $8b
    dec e
    nop
    jr nz, @+$22

    ld b, l
    ld l, l
    ld [hl], b
    ld [hl], h
    ld a, c
    ld hl, $2020
    nop
    jr nz, @+$22

    ld b, [hl]
    ld [hl], d
    ld h, l
    ld h, l
    ld a, d
    ld h, l
    jr nz, jr_000_1dc1

    nop
    jr nz, @+$22

    ld b, c
    ld [hl], d
    ld l, l
    ld l, a
    ld [hl], d
    jr nz, jr_000_1dcb

    jr nz, jr_000_1dad

jr_000_1dad:
    jr nz, jr_000_1e02

    ld h, l
    ld h, l
    dec l
    ld d, h
    ld l, b
    ld [hl], d
    ld [hl], l
    jr nz, jr_000_1db8

jr_000_1db8:
    jr nz, jr_000_1dfc

    ld h, c
    ld l, [hl]
    ld h, h
    dec l
    ld b, c
    ld l, c
    ld h, h

jr_000_1dc1:
    jr nz, jr_000_1dc3

jr_000_1dc3:
    jr nz, @+$22

    ld d, e
    ld l, b
    ld l, c
    ld h, l
    ld l, h
    ld h, h

jr_000_1dcb:
    jr nz, @+$22

    nop
    jr nz, jr_000_1df0

    jr nz, jr_000_1e15

    ld h, c
    ld l, l
    ld l, a
    jr nz, jr_000_1df7

    jr nz, jr_000_1dd9

jr_000_1dd9:
    jr nz, @+$43

    ld [hl], l
    ld [hl], h
    ld l, a
    dec l
    ld c, l
    ld h, c
    ld h, a
    jr nz, jr_000_1de4

jr_000_1de4:
    jr nz, @+$22

    jr nz, jr_000_1e33

    ld h, l
    ld a, c
    jr nz, jr_000_1e0c

    jr nz, jr_000_1e0e

    nop
    ld b, l

jr_000_1df0:
    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    jr nz, jr_000_1e42

    ld l, c

jr_000_1df7:
    ld h, [hl]
    ld h, l
    nop
    jr nz, @+$22

jr_000_1dfc:
    jr nz, jr_000_1e4b

    ld h, c
    ld [hl], b
    jr nz, jr_000_1e22

jr_000_1e02:
    jr nz, jr_000_1e24

    nop
    jr nz, jr_000_1e27

    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, l

jr_000_1e0c:
    jr nz, jr_000_1e2e

jr_000_1e0e:
    jr nz, jr_000_1e10

jr_000_1e10:
    jr nz, jr_000_1e65

    ld [hl], b
    ld h, l
    ld h, l

jr_000_1e15:
    ld h, h
    dec l
    ld d, l
    ld [hl], b
    jr nz, jr_000_1e1b

jr_000_1e1b:
    jr nz, jr_000_1e3d

    jr nz, jr_000_1e62

jr_000_1e1f:
    ld l, a
    ld l, c
    ld l, [hl]

jr_000_1e22:
    jr nz, jr_000_1e44

jr_000_1e24:
    jr nz, jr_000_1e26

jr_000_1e26:
    nop

jr_000_1e27:
    nop
    dec l
    ld e, $01
    ld b, $05
    ld d, b

jr_000_1e2e:
    ld b, c
    ld d, l
    ld d, e
    ld b, l
    ld b, h

jr_000_1e33:
    ld hl, $0000
    nop
    inc a
    ld e, $00
    inc bc
    rlca
    ld d, e

jr_000_1e3d:
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, [hl-]

jr_000_1e42:
    jr nz, @+$54

jr_000_1e44:
    ld h, l
    ld [hl], e
    ld [hl], l
    ld l, l
    ld h, l
    nop
    ld h, [hl]

jr_000_1e4b:
    ld e, $51
    ld e, $00
    nop
    rrca
    and b
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and b
    add [hl]

jr_000_1e62:
    add a
    adc b
    and b

jr_000_1e65:
    nop
    add d
    ld e, $6d
    ld e, $00
    nop
    db $10
    jr nz, jr_000_1e8f

    jr nz, jr_000_1e91

    jr nz, jr_000_1e93

    jr nz, jr_000_1e95

    jr nz, jr_000_1e97

    jr nz, jr_000_1e99

    jr nz, jr_000_1e9b

    jr nz, jr_000_1e1f

    adc c
    adc d
    adc e
    and d
    nop
    nop
    nop
    adc c
    ld e, $00
    nop
    ld de, $2020
    jr nz, jr_000_1ead

    jr nz, @+$22

jr_000_1e8f:
    jr nz, jr_000_1eb1

jr_000_1e91:
    jr nz, @+$22

jr_000_1e93:
    jr nz, jr_000_1eb5

jr_000_1e95:
    jr nz, jr_000_1eb7

jr_000_1e97:
    jr nz, @-$5e

jr_000_1e99:
    adc h
    adc l

jr_000_1e9b:
    adc [hl]
    and b
    nop
    nop
    nop
    and l
    ld e, $00
    nop
    ld de, $4154
    ld b, a
    ld d, e
    dec a
    nop
    nop
    nop

jr_000_1ead:
    or d
    ld e, $00
    nop

jr_000_1eb1:
    ld de, $8320
    dec a

jr_000_1eb5:
    jr nz, jr_000_1ed7

jr_000_1eb7:
    jr nz, jr_000_1edd

    dec a
    jr nz, jr_000_1edc

    jr nz, jr_000_1ede

    jr nz, @+$22

    jr nz, jr_000_1ec2

jr_000_1ec2:
    nop
    nop
    ret


    ld e, $00
    nop
    db $10
    jr nz, jr_000_1eeb

    jr nz, jr_000_1eed

    jr nz, jr_000_1ecf

jr_000_1ecf:
    nop
    nop
    sub $1e
    ld bc, $000c
    ld d, e

jr_000_1ed7:
    ld b, c
    ld e, c
    ld d, e
    ld a, [hl-]
    nop

jr_000_1edc:
    nop

jr_000_1edd:
    nop

jr_000_1ede:
    db $e3
    ld e, $01
    ld bc, $480b
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_000_1f2a

    jr nz, jr_000_1f39

jr_000_1eeb:
    ld c, c
    ld b, e

jr_000_1eed:
    ld b, l
    jr nz, jr_000_1f34

    ld b, c
    ld e, c
    ld hl, $0000
    nop
    ei
    ld e, $01
    inc c
    dec bc
    ld d, a
    ld c, c
    ld c, [hl]
    ld d, e
    ld hl, $0000
    nop
    ld [$011f], sp
    dec b
    dec bc
    ld e, c
    ld c, a
    ld d, l
    jr nz, jr_000_1f64

    ld c, c
    ld c, [hl]
    ld hl, $0000
    nop
    jr jr_000_1f34

    ld bc, $0b02
    ld e, c
    ld c, a
    ld d, l
    ld d, d
    jr nz, @+$56

    ld b, l
    ld b, c
    ld c, l
    jr nz, jr_000_1f7a

    ld c, c
    ld c, [hl]
    ld d, e
    ld hl, $0000
    nop

jr_000_1f2a:
    cpl
    rra
    ld bc, $0b02
    ld d, e
    ld c, l
    ld c, c
    ld c, h
    ld c, a

jr_000_1f34:
    ld c, c
    ld b, h
    ld d, e
    jr nz, jr_000_1f59

jr_000_1f39:
    ld d, a
    ld c, c
    ld c, [hl]
    ld hl, $0000
    nop
    ld b, l
    rra
    ld bc, $0b05
    ld e, c
    ld c, a
    ld d, l
    jr nz, jr_000_1f96

    ld c, a
    ld d, e
    ld b, l
    nop
    nop
    nop
    ld d, l
    rra
    ld bc, $0b01
    ld e, c
    ld c, a
    ld d, l
    ld d, d

jr_000_1f59:
    jr nz, jr_000_1faf

    ld b, l
    ld b, c
    ld c, l
    jr nz, jr_000_1fac

    ld c, a
    ld d, e
    ld b, l
    ld d, e

jr_000_1f64:
    ld hl, $0000
    nop
    ld l, l
    rra
    nop
    dec b
    db $10
    jr nz, @+$22

    jr nz, jr_000_1f91

    jr nz, jr_000_1f93

    jr nz, @+$22

    jr nz, @+$22

    nop
    add b
    rra

jr_000_1f7a:
    add d
    rra
    add h
    rra
    add [hl]
    rra
    add e
    nop
    ld a, [hl]
    nop
    ld e, [hl]
    nop
    add l
    nop

Call_000_1f88:
    xor a
    ldh [$ff98], a

Jump_000_1f8b:
    swap a
    ld l, a
    ld h, $c2
    ld a, [hl]

jr_000_1f91:
    bit 0, a

jr_000_1f93:
    jp z, Jump_000_218e

jr_000_1f96:
    bit 1, a
    jp z, Jump_000_20fa

    res 1, a
    ld [hl], a
    push hl
    ld a, l
    swap a
    ld e, a
    ld d, $00
    ld hl, $d9d3
    add hl, de
    ld a, [hl]
    and a
    pop hl

jr_000_1fac:
    jp nz, Jump_000_20fa

jr_000_1faf:
    ld a, l
    swap a
    or $00
    ld e, a
    ld d, $c7
    ld a, [de]
    and a
    jp nz, Jump_000_20fa

    ldh a, [$ffef]
    bit 3, a
    jr z, jr_000_1fff

    bit 4, a
    jr z, jr_000_1fff

    ld a, l
    swap a
    or $c0
    ld c, a
    ld b, $c7
    ld a, [bc]
    ld c, a
    ldh a, [$ffef]
    bit 5, a
    jr z, jr_000_1fe3

    ld a, l
    swap a
    ld b, a
    ldh a, [$ffa1]
    dec a
    cp b
    jr c, jr_000_1fff

    cp c
    jr c, jr_000_1fff

jr_000_1fe3:
    ld a, c
    cp $ff
    jr z, jr_000_1fff

    ld d, l
    swap a
    or $0f
    ld l, a
    ld a, [hl]
    and $03
    ld e, a
    ld l, d
    ld a, l
    or $0f
    ld l, a
    ld a, [hl]
    and $03
    ld l, d
    cp e
    jp z, Jump_000_20fa

jr_000_1fff:
    ld a, [hl]
    bit 2, a
    jr z, jr_000_200a

    ldh a, [$ffee]
    set 3, a
    ldh [$ffee], a

jr_000_200a:
    ld a, l
    add $0b
    ld l, a
    swap a
    and $0f
    or $f0
    ld c, a
    ld b, $c7
    ld a, [bc]
    ld [hl+], a
    dec [hl]
    jr z, jr_000_2024

    ld a, $07
    call sound_test_selection
    jp Jump_000_20fa


jr_000_2024:
    ld a, $06
    call sound_test_selection
    ld a, l
    and $f0
    ld l, a
    res 4, [hl]
    set 6, [hl]
    push hl
    ldh a, [$ffef]
    bit 5, a
    jr z, jr_000_2049

    ldh a, [$ff98]
    or $70
    ld l, a
    ld h, $c7
    dec [hl]
    call z, Call_000_26a9
    ldh a, [$ffee]
    set 5, a
    ldh [$ffee], a

jr_000_2049:
    ldh a, [$ff98]
    or $c0
    ld l, a
    ld h, $c7
    ld a, [hl]
    ld e, a
    cp $ff
    jp z, Jump_000_20ef

    ldh a, [$ff92]
    cp e
    jr nz, jr_000_2062

    ldh a, [$ffee]
    set 0, a
    ldh [$ffee], a

jr_000_2062:
    ldh a, [$ffef]
    bit 3, a
    jr z, jr_000_209c

    push de
    ld a, e
    swap a
    or $0f
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $03
    ld c, a
    ldh a, [$ffa1]
    ld b, a
    ldh a, [$ffa2]
    add b
    ld b, a
    ld hl, $c20f
    ld de, $c7b0

jr_000_2082:
    ld a, [hl]
    and $03
    cp c
    jr nz, jr_000_208b

    ld a, [de]
    inc a
    ld [de], a

jr_000_208b:
    inc de
    ld a, l
    add $10
    ld l, a
    dec b
    jr nz, jr_000_2082

    ldh a, [$ffee]
    set 0, a
    ldh [$ffee], a
    pop de
    jr jr_000_20a1

jr_000_209c:
    ld a, e
    or $b0
    ld l, a
    inc [hl]

jr_000_20a1:
    ldh a, [$ffef]
    bit 5, a
    jr z, jr_000_20c2

    pop hl
    push hl
    bit 5, [hl]
    jr z, jr_000_20c2

    inc l
    inc l
    ld h, $c8
    ld a, [hl]
    srl a
    ld c, a
    ld b, $00
    ld hl, $2199
    add hl, bc
    ld c, [hl]
    push de
    ld a, e
    call $57e5
    pop de

jr_000_20c2:
    ld l, $b0
    ld h, $c7
    ld b, $00
    ld c, b
    ldh a, [$ffa1]
    ld d, a
    ldh a, [$ffa2]
    add d
    ld d, a

jr_000_20d0:
    ld a, [hl]
    cp b
    jr c, jr_000_20d9

    ld b, a
    ld a, l
    and $0f
    ld c, a

jr_000_20d9:
    inc l
    dec d
    jr nz, jr_000_20d0

    ld a, c
    ld [$dab5], a
    ld a, b
    ld [$dab6], a
    ld a, e
    cp c
    jr nz, jr_000_20ef

    ldh a, [$ffee]
    set 0, a
    ldh [$ffee], a

Jump_000_20ef:
jr_000_20ef:
    pop hl
    ld a, l
    add $0d
    ld l, a
    ld a, $1e
    ld [hl], a
    jp Jump_000_218e


Jump_000_20fa:
    ld a, l
    and $f0
    ld l, a
    bit 6, [hl]
    jr z, jr_000_213f

    ld a, l
    and $f0
    or $0d
    ld l, a
    ld a, [hl]
    and a
    jp z, Jump_000_218e

    dec [hl]
    jr nz, jr_000_218e

    ldh a, [$ffef]
    bit 5, a
    jr z, jr_000_2126

    ldh a, [$ffa1]
    swap a
    ld b, a
    ld a, l
    and $f0
    cp b
    jr c, jr_000_2126

    ld l, a
    res 0, [hl]
    jr jr_000_218e

jr_000_2126:
    ld a, [$da2a]
    bit 4, a
    jr nz, jr_000_2133

    ldh a, [$ff91]
    bit 3, a
    jr z, jr_000_218e

jr_000_2133:
    push hl
    ld a, l
    swap a
    and $0f
    call $55d0
    pop hl
    jr jr_000_218e

jr_000_213f:
    ld a, l
    and $f0
    ld l, a
    bit 4, [hl]
    jr z, jr_000_215e

    bit 2, [hl]
    jr z, jr_000_2151

    ldh a, [$ffee]
    set 2, a
    ldh [$ffee], a

jr_000_2151:
    ld b, $0d
    call Call_000_21aa
    jr nz, jr_000_215e

    ld a, l
    and $f0
    ld l, a
    res 4, [hl]

jr_000_215e:
    ld a, l
    and $f0
    ld l, a
    bit 5, [hl]
    jr nz, jr_000_218e

    ld b, $0b
    call Call_000_21aa
    jr nz, jr_000_218e

    ld a, l
    swap a
    and $0f
    or $f0
    ld c, a
    ld b, $c7
    ld a, [bc]
    ld [hl+], a
    ld a, [hl]
    cp $03
    jr nc, jr_000_218e
    inc a
    ld [hl], a
    ld a, l
    and $f0
    ld l, a
    bit 2, [hl]
    jr z, jr_000_218e

    ldh a, [$ffee]
    set 3, a
    ldh [$ffee], a

Jump_000_218e:
jr_000_218e:
    ldh a, [$ff98]
    inc a
    ldh [$ff98], a
    cp $10
    jp c, Jump_000_1f8b

    ret


    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc d
    inc d
    inc d
    dec b
    dec b
    dec b
    ld a, [bc]
    inc d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, de

Call_000_21aa:
    ld a, l
    and $f0
    or b
    ld l, a
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret


InitGameplayScene:
    ld hl, $1e4a
    call UpdateTilemapBeyond9A00
    ld a, [$da2a]
    bit 4, a
    jr nz, jr_000_21d0

    ld hl, $1e9e
    ldh a, [$ffef]
    bit 5, a
    jr z, jr_000_21cd

    ld hl, $1eab

jr_000_21cd:
    call UpdateTilemapBeyond9A00

jr_000_21d0:
    ld a, $ff
    ldh [$ffee], a
    ld a, $ff
    ld [$da65], a
    ld [$da66], a
    ld hl, $c7b0

zero_out_gameplay_ram_byte:
    xor a
    ld [hl+], a
    ld a, l
    and $0f
    jr nz, zero_out_gameplay_ram_byte

    ret


Call_000_21e7::
    ld a, $ff
    ld [$da65], a
    ret


Call_000_21ed::
    ldh a, [$ff92]
    or $50
    ld c, a
    ld b, $c7
    ld a, [bc]
    cp $ff
    ret nz

    ld a, [$da65]
    cp $ff
    jr nz, jr_000_220c

jr_000_21ff:
    ld hl, $da63
    ldh a, [$ffe7]
    ld [hl+], a
    ldh a, [$fff9]
    ld [hl+], a
    ldh a, [$ffa8]
    ld [hl+], a
    ret


jr_000_220c:
    ld a, [$da63]
    bit 7, a
    jr z, jr_000_2215

    cpl
    inc a

jr_000_2215:
    ld b, a
    ldh a, [$ffe7]
    bit 7, a
    jr z, jr_000_221e

    cpl
    inc a

jr_000_221e:
    cp b
    ret nc

    ld a, [$da63]
    ld b, a
    bit 7, a
    jr z, jr_000_223b

    ld a, [$da64]
    add b
    add $48
    ld c, a
    ldh a, [$ffe7]
    ld b, a
    ldh a, [$fff9]
    add b
    add $48
    cp c
    jr nc, jr_000_21ff

    ret


jr_000_223b:
    ld a, [$da64]
    sub b
    add $48
    ld c, a
    ldh a, [$ffe7]
    ld b, a
    ldh a, [$fff9]
    sub b
    add $48
    cp c
    jr c, jr_000_21ff

    ret


Call_000_224e::
    ld a, [$da65]
    ld b, a
    ld a, [$da66]
    cp b
    ret z

    ldh a, [$ffee]
    set 4, a
    ldh [$ffee], a
    ld a, [$da65]
    ld [$da66], a
    ret


Call_000_2264:
    ldh a, [$ffef]
    bit 5, a
    jr z, jr_000_22e1

    ldh a, [$ffee]
    bit 5, a
    jr z, jr_000_22a8

    res 5, a
    ldh [$ffee], a
    ldh a, [$ff92]
    or $70
    ld c, a
    ld b, $c7
    ld a, [bc]
    and a
    jr z, jr_000_227f

jr_000_227f:
    ld l, a
    ld h, $00
    call UpdateTimeDisplay
    ld hl, $c9ac
    ld b, $03

jr_000_228a:
    ld a, [hl]
    and a
    jr nz, jr_000_2296

jr_000_228e:
    ld a, $20
    ld [hl+], a
    dec b
    jr nz, jr_000_228e

    jr jr_000_229a

jr_000_2296:
    inc l
    dec b
    jr nz, jr_000_228a

jr_000_229a:
    xor a
    ld [hl], a
    ld b, $03
    ld c, $11
    ld d, $00
    ld hl, $c9ac
    call Call_000_1bfa

jr_000_22a8:
    ldh a, [$ffee]
    bit 6, a
    jp z, Jump_000_233c

    res 6, a
    ldh [$ffee], a
    ldh a, [$ff92]
    sla a
    ld c, a
    ld b, $00
    ld hl, $da94
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call UpdateTimeDisplay
    ld hl, $c9ac

jr_000_22c7:
    ld a, [hl]
    and a
    jr z, jr_000_22ce

    inc hl
    jr jr_000_22c7

jr_000_22ce:
    ld a, $30
    ld [hl+], a
    xor a
    ld [hl+], a
    ld b, $08
    ld c, $11
    ld d, $00
    ld hl, $c9ac
    call Call_000_1bfa
    jr jr_000_233c

jr_000_22e1:
    ldh a, [$ffee]
    bit 0, a
    jr z, jr_000_233c

    res 0, a
    ldh [$ffee], a
    ld a, [$da2a]
    bit 4, a
    jr nz, jr_000_233c

    ld hl, $da58
    ld b, $0a

jr_000_22f7:
    ld a, $20
    ld [hl+], a
    dec b
    jr nz, jr_000_22f7

    xor a
    ld [hl+], a
    ld c, $00
    ld b, $10
    ld hl, $c7b0

jr_000_2306:
    ld a, [hl+]
    cp c
    jr c, jr_000_230b

    ld c, a

jr_000_230b:
    dec b
    jr nz, jr_000_2306

    ld a, c
    and a
    jr z, jr_000_231b

    ld hl, $da58

jr_000_2315:
    ld a, $2d
    ld [hl+], a
    dec c
    jr nz, jr_000_2315

jr_000_231b:
    ldh a, [$ff92]
    or $b0
    ld c, a
    ld b, $c7
    ld a, [bc]
    and a
    jr z, jr_000_2330

    ld b, a
    ld hl, $da58
    ld a, $8f

jr_000_232c:
    ld [hl+], a
    dec b
    jr nz, jr_000_232c

jr_000_2330:
    ld b, $05
    ld c, $11
    ld d, $00
    ld hl, $da58
    call Call_000_1bfa

Jump_000_233c:
jr_000_233c:
    ldh a, [$ff92]
    or $50
    ld c, a
    ld b, $c7
    ld a, [bc]
    cp $ff
    jr z, jr_000_2369

    sla a
    ld c, a
    ld b, $00
    ld hl, $1d67
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $05
    ld c, $10
    ld d, $00
    ld a, [$da2a]
    bit 4, a
    call z, Call_000_1bfa
    ld a, $01
    ld [$da67], a
    jr jr_000_23a6

jr_000_2369:
    ld a, [$da67]
    and a
    jr z, jr_000_2376

    ld a, $00
    ld [$da67], a
    jr jr_000_2380

jr_000_2376:
    ldh a, [$ffee]
    bit 4, a
    jr z, jr_000_23a6

    res 4, a
    ldh [$ffee], a

jr_000_2380:
    ld a, [$da65]
    cp $ff
    jr nz, jr_000_238f

    ld hl, $1f66
    call UpdateTilemapBeyond9A00
    jr jr_000_23a6

jr_000_238f:
    ld c, a
    ld b, $00
    ld hl, $c600
    add hl, bc
    ld a, [$da2a]
    bit 4, a
    jr nz, jr_000_23a6

    ld b, $05
    ld c, $10
    ld d, $00
    call Call_000_1bfa

jr_000_23a6:
    ldh a, [$ffee]
    bit 3, a
    jr z, jr_000_2403

    res 3, a
    ldh [$ffee], a
    ldh a, [$ff92]
    ld c, a
    ld b, $00
    ld hl, $d9d3
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_000_23ce

    rra
    jr nc, jr_000_2403

    rra
    jr nc, jr_000_23ce

    ld bc, $0090
    ld hl, $8660
    call Call_000_1467
    jr jr_000_2403

jr_000_23ce:
    ldh a, [$ff92]
    swap a
    add $0c
    ld l, a
    ld h, $c2
    ld a, [hl+]
    cp $03
    jr c, jr_000_23de

    ld a, $03

jr_000_23de:
    sla a
    ld c, a
    ld b, $00
    inc l
    ld a, [hl]
    swap a
    rra
    and $06
    ld e, a
    ld d, $00
    ld hl, $240c
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $2404
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $8660
    ld a, $02
    call HandleHUDGraphicsThings

jr_000_2403:
    ret


    call c, $4c7d
    ld a, l
    cp h
    ld a, h
    inc l
    ld a, h
    db $ec
    ld a, c
    inc c
    ld a, e
    ld a, h
    ld a, d
    sbc h
    ld a, e

Call_000_2414:
    ldh a, [$ffef]
    bit 5, a
    ret nz

    ldh a, [$ffef]
    bit 6, a
    ret nz

    bit 7, a
    ret nz

    ld hl, $c7b0

jr_000_2424:
    ld a, [hl]
    cp $0a
    jr nc, jr_000_2430

    inc l
    ld a, l
    and $0f
    jr nz, jr_000_2424

    ret


jr_000_2430:
    xor a
    ld [$da6f], a
    ld a, l
    and $0f
    ld [$da70], a
    ld a, $08
    ld [$d9c2], a
    ldh a, [$ffef]
    bit 3, a
    jr nz, jr_000_2461

    ld a, l
    and $0f
    ld b, a
    ld hl, $ffef
    ldh a, [$ff92]
    cp b
    jr z, jr_000_2458

jr_000_2451:
    set 7, [hl]
    ret


Call_000_2454::
    call Call_000_093a
    ret


jr_000_2458:
    set 6, [hl]
    ret


Call_000_245b::
    ld a, $02
    call PrepareHiramJumpDest
    ret


jr_000_2461:
    ld a, l
    and $0f
    swap a
    or $0f
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $03
    ld b, a
    ld hl, $ffef
    ld a, [$d9fb]
    cp b
    jr nz, jr_000_2451

    jr jr_000_2458

Call_000_247a::
    call Call_000_24bf
    ld c, $0f
    ld a, [$da6f]
    sub $08
    jr c, jr_000_2496

    cp $21
    jr nc, jr_000_2496

    cp $20
    jr c, jr_000_2492

    set 1, b
    jr jr_000_2496

jr_000_2492:
    add c
    and $1f
    ld c, a

jr_000_2496:
    call Call_000_25eb
    ld a, $06
    ld [$c9a4], a
    ld hl, $1f01
    ldh a, [$ffef]
    bit 3, a
    jr z, jr_000_24b0

    ldh a, [$ffa1]
    cp $02
    jr c, jr_000_24b0

    ld hl, $1f11

jr_000_24b0:
    call DrawText
    xor a
    ld [$c9a4], a
    ld a, [$da6f]
    inc a
    ld [$da6f], a
    ret


Call_000_24bf:
    ld a, [$da70]
    swap a
    or $0e
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $c0
    ld b, a
    ret


Call_000_24ce::
    call Call_000_24bf
    ld c, $0f
    ld a, [$da6f]
    sub $20
    jr c, jr_000_24de

    set 0, b
    jr jr_000_24ee

jr_000_24de:
    ld a, [$da6f]
    add $02
    bit 2, a
    jr z, jr_000_24e8

    cpl

jr_000_24e8:
    and $03
    sub $01
    add c
    ld c, a

jr_000_24ee:
    call Call_000_25eb
    ld a, $06
    ld [$c9a4], a
    ldh a, [$ffef]
    bit 3, a
    jr z, jr_000_253c

    ld a, [$da70]
    swap a
    or $0f
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $03
    cp $03
    jr nz, jr_000_2534

    ld hl, $c200

jr_000_2510:
    ld a, [hl]
    bit 0, a
    jr z, jr_000_2524

    bit 5, a
    jr nz, jr_000_2524

    ld a, l
    or $0f
    ld l, a
    ld a, [hl]
    and $03
    cp $03
    jr z, jr_000_2534

jr_000_2524:
    ld a, l
    and $f0
    add $10
    ld l, a
    jr nz, jr_000_2510

jr_000_252c:
    ld hl, $1f28
    call DrawText
    jr jr_000_255f

jr_000_2534:
    ld hl, $1f4e
    call DrawText
    jr jr_000_255f

jr_000_253c:
    ld a, [$da70]
    swap a
    ld l, a
    ld h, $c2
    bit 5, [hl]
    jr nz, jr_000_252c

    ld hl, $1ef4
    call DrawText
    ld a, [$da70]
    swap a
    ld l, a
    ld h, $c6
    ld b, $01
    ld c, $0b
    ld d, $01
    call Call_000_1bd9

jr_000_255f:
    xor a
    ld [$c9a4], a
    ld a, [$da6f]
    inc a
    ld [$da6f], a
    ret


    nop
    nop
    ld [hl], d
    dec h
    ld bc, $0605
    ld d, h
    ld c, c
    ld c, l
    ld b, l
    jr nz, @+$57

    ld d, b
    ld hl, rROMB0 + $100
    jp nz, $cd1e

    add hl, hl
    dec e
    ldh a, [$ffef]
    bit 5, a
    jr z, jr_000_2598

    ld a, [$d9f3]
    ld b, a
    ld a, [$d9f4]
    or b
    jr nz, jr_000_2598

    ld hl, $256b
    call DrawText
    ret


jr_000_2598:
    ldh a, [$ff92]
    or $c0
    ld c, a
    ld b, $c7
    ld a, [bc]
    ld b, $00
    cp $ff
    jr z, jr_000_25b1

    swap a
    or $0e
    ld c, a
    ld b, $c2
    ld a, [bc]
    and $f0
    ld b, a

jr_000_25b1:
    ld c, $0f
    call Call_000_25f8
    ld a, $03
    ld [$c9a4], a
    ldh a, [$ff92]
    or $c0
    ld c, a
    ld b, $c7
    ld a, [bc]
    cp $ff
    jr z, jr_000_25db

    swap a
    ld l, a
    ld h, $c6
    ld b, $01
    ld c, $00
    ld d, $01
    call Call_000_1bd9
    ld hl, $1ecf
    call DrawText

jr_000_25db:
    ld a, $06
    ld [$c9a4], a
    ld hl, $1edc
    call DrawText
    xor a
    ld [$c9a4], a
    ret


Call_000_25eb:
    push bc
    ld b, $02
    ld c, $14
    ld d, $8c
    ld e, $48
    call Call_000_3b72
    pop bc

Call_000_25f8::
    push bc
    ld a, b
    and $f0
    ld d, a
    ld b, $00
    ld hl, $5003
    add hl, bc
    ld a, [hl]
    ld b, a
    ld hl, $da68
    ld a, $44
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $89
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $28
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, b
    ld [hl], a
    ld hl, $da68
    call $4e37
    pop bc
    push bc
    bit 0, b
    jr z, jr_000_263b

    ld hl, $7966
    bit 7, b
    jr z, jr_000_2630

    ld hl, $79a9

jr_000_2630:
    ld a, $02
    ld b, $40
    ld c, $44
    ld d, $00
    call Call_000_14e6

jr_000_263b:
    pop bc
    bit 1, b
    ret z

    ld a, $02
    ld b, $37
    ld c, $1a
    ld d, $00
    ld hl, $78e3
    call Call_000_14e6
    ret


Call_000_264e::
    ldh a, [$ff92]
    ld c, a
    ld b, $00
    or $00
    ld l, a
    ld h, $c7
    ld a, [hl]
    and a
    jr nz, jr_000_269d

    ld hl, $d9d3
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_000_269d

    ldh a, [$ffef]
    bit 3, a
    jr z, jr_000_268c

    ld a, c
    or $c0
    ld l, a
    ld h, $c7
    ld a, [hl]
    cp $ff
    jr z, jr_000_268c

    swap a
    or $0f
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $03
    ld e, a
    ld a, c
    swap a
    or $0f
    ld l, a
    ld a, [hl]
    and $03
    cp e
    jr z, jr_000_269d

jr_000_268c:
    ld b, $00
    ld c, $00
    ld d, $90
    ld e, $70
    call Call_000_3b31
    ld a, $0f
    ld [$c95b], a
    ret


jr_000_269d:
    ld b, $00
    ld c, $00
    ld d, $90
    ld e, $70
    call Call_000_3b22
    ret


Call_000_26a9:
    ld a, l
    and $0f
    ld c, a
    ld b, $00
    ld d, $c7
    ld a, c
    or $10
    ld e, a
    xor a
    ld [de], a
    ld a, c
    or $80
    ld e, a
    ld a, $03
    ld [de], a
    ld a, c
    or $60
    ld e, a
    xor a
    ld [de], a
    ld a, c
    swap a
    or $0f
    ld e, a
    ld d, $c2
    ld a, [de]
    and $03
    or $24
    ld [de], a
    ld hl, $d9fe
    add hl, bc
    ld a, $20
    ld [hl], a
    ldh a, [$ff92]
    cp c
    ret nz

    ld a, $03
    call PrepareHiramJumpDest
    ld bc, $7a83
    ld de, $7ab2
    call $74b6
    ld a, $08
    call $7657
    ret


Call_000_26f1::
    ld c, a
    ld b, $00
    sla c
    rl b
    ld hl, $4000
    add hl, bc
    ld a, $03
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    add $02
    ldh [$fff5], a
    ld a, [hl+]
    add $02
    ldh [$fff6], a
    ldh a, [$ffef]
    ld d, a
    ld bc, $da2d

jr_000_271f:
    ld a, [hl+]
    bit 5, d
    jr nz, jr_000_2726

    ld [bc], a
    inc bc

jr_000_2726:
    and a
    jr nz, jr_000_271f

    xor a
    ld c, a
    ld b, $c4

jr_000_272d:
    ld [bc], a
    inc c
    jr nz, jr_000_272d

    inc c
    ldh a, [$fff5]
    sub $02
    ld d, a
    ld a, $04

jr_000_2739:
    ld [bc], a
    inc c
    dec d
    jr nz, jr_000_2739

    ld a, c
    swap a
    and $0f
    inc a
    swap a
    ld c, a
    ldh a, [$fff6]
    sub $02
    ld d, a

jr_000_274c:
    ldh a, [$fff5]
    sub $02
    ld e, a
    ld a, $02
    ld [bc], a
    inc c

jr_000_2755:
    ld a, [hl+]
    and $0f
    ld [bc], a
    inc c
    dec e
    jr nz, jr_000_2755

    ld a, $08
    ld [bc], a
    ld a, c
    swap a
    and $0f
    inc a
    swap a
    ld c, a
    dec d
    jr nz, jr_000_274c

    inc c
    ldh a, [$fff5]
    sub $02
    ld d, a
    ld a, $01

jr_000_2774:
    ld [bc], a
    inc c
    dec d
    jr nz, jr_000_2774

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld hl, $c500

jr_000_2784:
    ld a, $aa
    ld [hl+], a
    ld a, l
    and a
    jr nz, jr_000_2784

    ret


    ld a, $03
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld a, [hl+]
    ld [$dab7], a
    ld a, [hl+]
    ld [$dab8], a
    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


Call_000_27ad::
    sla a
    ld c, a
    ld b, $00
    ld hl, $40f6
    add hl, bc
    ld a, $03
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a

jr_000_27c2:
    ld [rROMB0 + $100], a
    ei
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld a, [$d9f8]
    ld c, a
    inc a
    ld [$d9f8], a
    ld d, c
    bit 7, c
    jr nz, jr_000_27f2

    ld a, c
    and a
    jr z, jr_000_27f2

jr_000_27dd:
    ld a, [hl+]
    and a
    jr nz, jr_000_27ef

    dec b
    jr nz, jr_000_27ef

    ld a, [$d9f6]
    ld [$d9f7], a
    ld a, $ff
    ld [$d9f6], a

jr_000_27ef:
    dec c
    jr nz, jr_000_27dd

jr_000_27f2:
    ld c, d
    ld de, $c9ac
    ld a, $10

jr_000_27f8:
    push af
    bit 7, c
    jr nz, jr_000_2808

jr_000_27fd:
    ld a, b
    and a
    jr z, jr_000_2808
    ld a, [hl+]
    and a
    jr nz, jr_000_280a

    dec b
    jr jr_000_27fd

jr_000_2808:
    ld a, $20

jr_000_280a:
    ld [de], a
    inc de
    inc c
    pop af
    dec a
    jr nz, jr_000_27f8

    xor a
    ld [de], a
    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld b, $02
    ld c, $59
    ld d, $8c
    ld e, $17
    call DrawBox
    ld a, $05
    ld [$c9a4], a
    ld b, $01
    ld c, $0b
    ld d, $01
    ld hl, $c9ac
    call Call_000_1bd9
    xor a
    ld [$c9a4], a
    ret


    jr nz, jr_000_27c2

    dec a
    jr nz, @+$22

    jr nz, jr_000_2863

    jr nz, @+$22

    jr nz, jr_000_2867

    jr nz, @+$22

    jr nz, jr_000_286b

    jr nz, jr_000_286d

    jr nz, jr_000_286f

    jr nz, Call_000_2851

Call_000_2851::
    ld hl, $283c
    ld de, $dacf
    ld b, $15

jr_000_2859:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_2859

    ld a, [$d9f3]
    ld l, a

jr_000_2863:
    ld a, [$d9f4]
    ld h, a

jr_000_2867:
    and a
    jr nz, jr_000_287e

    ld a, l

jr_000_286b:
    cp $15

jr_000_286d:
    jr nc, jr_000_287e

jr_000_286f:
    ldh a, [$ff87]
    rra
    jr c, jr_000_287e

    ld a, $20
    ld [$dad0], a
    ld [$dad1], a
    jr jr_000_2895

jr_000_287e:
    call UpdateTimeDisplay
    ld hl, $c9ac
    ld de, $dad2
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    and a
    jr z, jr_000_2895

    ld [de], a
    inc de
    ld a, [hl]
    and a
    jr z, jr_000_2895

    ld [de], a

jr_000_2895:
    ld de, $dad6
    ldh a, [$ff92]
    ld b, a
    ld h, $c7
    ld a, b
    or $00
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_000_28af

    cp $0c
    jr nc, jr_000_28ac

    rra
    jr nc, jr_000_28af

jr_000_28ac:
    ld a, $90
    ld [de], a

jr_000_28af:
    inc de
    ld a, b
    or $10
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_000_28c1

    cp $0a
    jr c, jr_000_28be

    ld a, $09

jr_000_28be:
    or $30
    ld [de], a

jr_000_28c1:
    inc de
    ld a, b
    or $20
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_000_28d4

    cp $0c
    jr nc, jr_000_28d1

    rra
    jr nc, jr_000_28d4

jr_000_28d1:
    ld a, $92
    ld [de], a

jr_000_28d4:
    inc de
    ld a, b
    or $30
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_000_28e7

    cp $0c
    jr nc, jr_000_28e4

    rra
    jr nc, jr_000_28e7

jr_000_28e4:
    ld a, $93
    ld [de], a

jr_000_28e7:
    inc de
    ld a, b
    or $40
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_000_28fa

    cp $0c
    jr nc, jr_000_28f7

    rra
    jr nc, jr_000_28fa

jr_000_28f7:
    ld a, $94
    ld [de], a

jr_000_28fa:
    inc de
    ld a, b
    or $60
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_000_2906

    ld a, $96
    ld [de], a

jr_000_2906:
    inc de
    ld a, b
    swap a
    or $0f
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $1c
    ld c, a
    ld a, $24
    and $1c
    cp c
    jr z, jr_000_291d

    ld a, $97
    ld [de], a

jr_000_291d:
    ld b, $01
    ld c, $01
    ld d, $8e
    ld e, $0e
    call Call_000_3b68
    ld a, $04
    ld [$c9a4], a
    ld b, $00
    ld c, $00
    ld d, $00
    ld hl, $dacf
    call Call_000_1bd9
    xor a
    ld [$c9a4], a
    ret


Call_000_293e:
    ld a, d
    cp $00
    ret z

    ld a, c
    or $05
    ld l, a
    ld a, [hl]
    and $0f
    ld e, a
    swap a
    ld l, a
    ld h, $c2
    ld a, [hl]
    bit 0, a
    ret z

    bit 6, a
    ret nz

    ld a, e
    or $90
    ld l, a
    ld h, $c7
    ld a, [hl]
    bit 1, a
    ret z

    push bc
    push de
    ld a, $01
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld a, e
    ld bc, $0000
    call $57e5
    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld a, $02
    call sound_test_selection
    pop de
    pop bc
    ld a, c
    or $02
    ld l, a
    ld h, $c3
    ld a, [bc]
    bit 5, a
    jr nz, jr_000_2996

    res 0, a
    ld [bc], a

jr_000_2996:
    ld a, [hl]
    ld b, a
    ld a, $00
    ld [hl], a
    ld a, c
    and $f8
    or $07
    ld l, a
    ld a, [hl]
    ld d, a
    ld a, b
    cp $0e
    jr z, jr_000_29ae

    ld a, d
    and a
    jr nz, jr_000_29ae

    ld d, $01

jr_000_29ae:
    ld a, b
    sla a
    ld c, a
    ld b, $00
    ld hl, $2c8c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    ret z

    ld a, e
    ld b, $c7
    jp hl


    or $20

jr_000_29c3:
    ld c, a
    ld a, d
    ld [bc], a
    ret


    or $00
    jr jr_000_29c3

    ld a, e
    or $10
    ld c, a
    ld a, [bc]
    add d
    cp $0a
    ret nc

    ld [bc], a
    ld a, e
    or $80
    ld c, a
    ld a, [bc]
    add d
    ld [bc], a
    ld a, e
    swap a
    or $0c
    ld l, a
    ld h, $c2
    ld a, $03
    add d
    ld [hl], a
    ldh a, [$ff92]
    cp e
    ret nz

    ldh a, [$ffee]
    set 3, a
    ldh [$ffee], a
    ret


jr_000_29f3:
    ld c, a
    ld a, [bc]
    add d
    ld [bc], a
    ret


    or $30
    jr jr_000_29c3

    or $40
    jr jr_000_29c3

    ld a, e
    or $e0
    ld l, a
    ld h, b
    ld a, [hl]
    sub d
    jr nc, jr_000_2a0a

    xor a

jr_000_2a0a:
    ld [hl], a
    ld a, e
    or $60
    ld d, $01
    jr jr_000_29c3

    ldh a, [$ff92]
    cp e
    jr nz, jr_000_2a22

    ld a, $0e
    call sound_test_selection
    ldh a, [$ffee]
    set 5, a
    ldh [$ffee], a

jr_000_2a22:
    ld a, e
    or $70
    jr jr_000_29f3

    ldh a, [$ff92]
    cp e
    ret nz

    ld a, $01
    ld [$d9f5], a
    ld hl, $c400

jr_000_2a33:
    set 4, [hl]
    inc l
    ld a, l
    jr nz, jr_000_2a33

    ret


    ldh a, [$ff92]
    cp e
    ret nz

    ld a, d
    ld [$d9f6], a
    ld [$d9f7], a
    ld a, $ee
    ld [$d9f8], a
    ret


    ld a, $01
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld a, e
    ld bc, $000a
    call $57e5
    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


    swap a
    or $0f
    ld c, a
    ld b, $c2
    ld a, [bc]
    ld e, a
    srl a
    srl a
    and $07
    add $02
    cp $07
    ret nc

    sla a
    sla a
    ld d, a
    ld a, e
    and $e3
    or d
    ld [bc], a
    ret


    swap a
    or $0c
    ld c, a
    ld b, $c2
    ld a, [bc]
    add d
    cp $03
    jr c, jr_000_2a99

    ld a, $03

jr_000_2a99:
    ld [bc], a
    ldh a, [$ff92]
    cp e
    ret nz

    ldh a, [$ffee]
    set 3, a
    ldh [$ffee], a
    ret


Call_000_2aa5::
    ld a, $03
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    xor a
    ldh [$ffec], a

Jump_000_2ab8:
    ld l, a
    ld h, $c3
    bit 0, [hl]
    jp z, Jump_000_2b66

    ld b, h
    ld c, l
    inc l
    inc l
    ld a, [hl]
    ld d, a
    cp $14
    jr nc, jr_000_2ad4

    ld a, [bc]
    bit 4, a
    jr z, jr_000_2ad4

    push bc
    call Call_000_293e
    pop bc

jr_000_2ad4:
    inc c
    inc c
    ld a, [bc]
    dec c
    dec c
    cp $14
    jr c, jr_000_2b0a

    cp $20
    jr c, jr_000_2ae8

    push bc
    call Call_000_32e7
    pop bc
    jr jr_000_2b30

jr_000_2ae8:
    ld a, c
    or $05
    ld l, a
    ld h, b
    ld a, [hl]
    ld e, a
    swap a
    and $0f
    ld d, a
    ldh a, [$ffa1]
    ld h, a
    ld a, e
    and $0f
    cp h
    jr nc, jr_000_2b00

    cp d
    jr nz, jr_000_2b30

jr_000_2b00:
    ld h, b
    ld l, c
    ld a, [hl]
    res 3, a
    res 4, a
    ld [hl], a
    jr jr_000_2b66

jr_000_2b0a:
    ld a, [bc]
    bit 4, a
    jr z, jr_000_2b13

    set 7, a
    jr jr_000_2b15

jr_000_2b13:
    res 7, a

jr_000_2b15:
    ld [bc], a
    bit 4, a
    jr z, jr_000_2b30

    ld a, c
    or $05
    ld l, a
    ld h, b
    ld a, [hl]
    ld e, a
    and $0f
    ld d, a
    ld a, e
    swap a
    and $0f
    cp e
    jr nz, jr_000_2b30

    ld a, [bc]
    res 4, a
    ld [bc], a

jr_000_2b30:
    ld l, c
    ld h, b
    ld a, [hl]
    bit 3, a
    jr nz, jr_000_2b3b

    bit 4, a
    jr z, jr_000_2b66

jr_000_2b3b:
    push bc
    ld a, c
    or $02
    ld l, a
    ld a, [hl]
    sla a
    ld e, a
    ld d, $00
    ld hl, $2d14
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_000_2b55

    ld de, $2b55
    push de
    jp hl


jr_000_2b55:
    pop de
    ld a, [de]
    bit 5, a
    jr z, jr_000_2b66

    ld l, e
    ld h, d
    inc l
    inc l
    inc l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2b78

Jump_000_2b66:
jr_000_2b66:
    ldh a, [$ffec]
    add $08
    ldh [$ffec], a
    jp nz, Jump_000_2ab8

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


Call_000_2b78:
    ld a, l
    add $02
    ld c, a
    ld b, h
    ld a, [de]
    bit 3, a
    jr z, jr_000_2b85

    call Call_000_2b8e

jr_000_2b85:
    ld a, [de]
    bit 4, a
    ret z

    inc hl
    call Call_000_2b8e
    ret


Call_000_2b8e:
    bit 2, [hl]
    jr z, jr_000_2ba5

    ld a, [de]
    bit 1, a
    jr z, jr_000_2ba0

    push bc
    push de
    push hl
    call Call_000_3395
    pop hl
    pop de
    pop bc

jr_000_2ba0:
    inc e
    ld a, [bc]
    ld [de], a
    inc bc
    dec e

jr_000_2ba5:
    bit 3, [hl]
    jr z, jr_000_2bca

    ld a, [bc]
    inc bc
    push bc
    push de
    push hl
    ld b, a
    swap a
    and $0f
    ld c, a
    ld a, b
    and $0f
    ld b, a
    ld a, e
    or $05
    ld e, a
    ld a, [de]
    and $0f
    ld d, c
    ld c, $80
    ld e, $80
    call Call_000_2e38
    pop hl
    pop de
    pop bc

jr_000_2bca:
    bit 4, [hl]
    jr z, jr_000_2bd2

    ld a, [de]
    res 0, a
    ld [de], a

jr_000_2bd2:
    bit 5, [hl]
    jr z, jr_000_2bf3

    push de
    push hl
    ld a, e
    or $05
    ld e, a
    ld a, [de]
    and $0f
    swap a
    ld l, a
    ld h, $c2
    set 1, [hl]
    ld a, l
    swap a
    or $c0
    ld l, a
    ld h, $c7
    ld a, $ff
    ld [hl], a
    pop hl
    pop de

jr_000_2bf3:
    bit 6, [hl]
    jr z, jr_000_2bfe

    inc e
    inc e
    ld a, [bc]
    ld [de], a
    inc bc
    dec e
    dec e

jr_000_2bfe:
    bit 7, [hl]
    ret z

    push de
    inc e
    inc e
    inc e
    ld a, [bc]
    ld [de], a
    inc bc
    inc e
    ld a, [bc]
    ld [de], a
    inc bc
    pop de
    ret


Call_000_2c0e:
    ldh a, [$ffef]
    bit 0, a
    jr nz, jr_000_2c2a

    ld h, $c7
    ld l, $00
    call Call_000_2c70
    ld l, $20
    call Call_000_2c70
    ld l, $30
    call Call_000_2c70
    ld l, $40
    call Call_000_2c70

jr_000_2c2a:
    xor a
    ldh [$ffec], a

jr_000_2c2d:
    ld l, a
    ld h, $c3
    bit 0, [hl]
    jr z, jr_000_2c67

    ld b, h
    ld c, l
    ld a, [hl]
    res 4, a
    res 3, a
    ld [hl+], a
    bit 6, a
    jr z, jr_000_2c47

    push bc
    push hl
    call Call_000_32d3
    pop hl
    pop bc

jr_000_2c47:
    inc l
    ld a, [hl+]
    sla a
    ld e, a
    ld d, $00
    inc l
    inc l
    ld a, [hl]
    swap a
    and $f0
    or $0f
    ld [hl], a
    ld hl, $2cb4
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_000_2c67

    ld de, $2c67
    push de
    jp hl


jr_000_2c67:
    ldh a, [$ffec]
    add $08
    ldh [$ffec], a
    jr nz, jr_000_2c2d

    ret


Call_000_2c70:
jr_000_2c70:
    ld a, [hl]
    and a
    jr z, jr_000_2c75

    dec [hl]

jr_000_2c75:
    inc l
    ld a, l
    and $0f
    jr nz, jr_000_2c70

    ret


    add hl, bc
    ld [de], a
    dec de
    inc h
    dec l
    ld [hl], $3f
    ld c, b
    ld c, h
    ld d, c
    ld d, l
    ld e, d
    ld e, [hl]
    ld h, e
    ld h, a
    ld l, h
    nop
    nop
    pop bc
    add hl, hl
    sra c
    db $fc
    add hl, hl
    adc d
    ld a, [hl+]
    nop
    nop
    rst $00
    add hl, hl
    ld hl, sp+$29
    nop
    ld a, [hl+]
    and [hl]
    dec l
    xor d
    dec l
    xor [hl]
    dec l
    ld [de], a
    ld a, [hl+]
    daa
    ld a, [hl+]
    ld a, [hl-]
    ld a, [hl+]
    ld l, e
    ld a, [hl+]
    ld c, e
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc h
    dec l
    sbc h
    dec l
    sbc h
    dec l
    sbc h
    dec l
    nop
    nop
    sbc h
    dec l
    sbc h
    dec l
    sbc h
    dec l
    sbc h
    dec l
    sbc h
    dec l
    sbc h
    dec l
    sbc h
    dec l
    sbc h
    dec l
    sbc h
    dec l
    sbc h
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc h
    dec l
    sbc h
    dec l
    sbc h
    dec l
    sbc l
    dec l
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
    di
    inc sp
    db $f4
    inc sp
    push af
    inc sp
    or $33
    rst $30
    inc sp
    ld hl, sp+$33
    ld sp, hl
    inc sp
    ld a, [de]
    inc [hl]
    dec de
    inc [hl]
    inc e
    inc [hl]
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
    and l
    dec l
    and l
    dec l
    and l
    dec l
    and l
    dec l
    nop
    nop
    and l
    dec l
    and l
    dec l
    and l
    dec l
    and l
    dec l
    and l
    dec l
    and l
    dec l
    and l
    dec l
    and l
    dec l
    and l
    dec l
    and l
    dec l
    and l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    or d
    dec l
    or [hl]
    dec l
    cp d
    dec l
    ld de, $002e
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
    dec e
    inc [hl]
    ld e, $34
    rra
    inc [hl]
    jr nz, jr_000_2d90

    ld hl, $2234
    inc [hl]
    inc hl
    inc [hl]
    ret c

    inc [hl]
    reti


    inc [hl]
    jp c, $0034

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
    ld b, [hl]
    ld [hl], b
    reti


    ld [hl], b
    cp l
    ld [hl], a
    dec h
    ld [hl], e
    nop
    nop
    cp b
    ld [hl], e
    rst $38
    ld [hl], c
    sbc $74
    ld l, h
    ld [hl], c
    sub d
    ld [hl], d
    ld c, e
    ld [hl], h
    ld [hl], c
    ld [hl], l
    inc b
    db $76

jr_000_2d90:
    sub a
    db $76
    ld a, [hl+]
    ld [hl], a
    ld d, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld a, c
    or $06
    ld l, a
    ld h, b
    inc [hl]
    inc [hl]
    ret


    ret


    ld a, $23
    jr jr_000_2dc6

    ld a, $24
    jr jr_000_2dc6

    ld a, $25
    jr jr_000_2dc6

    ld d, $20
    jr jr_000_2dbc

    ld d, $21
    jr jr_000_2dbc

    ld d, $22

jr_000_2dbc:
    ld a, [bc]
    bit 4, a
    ret z

    ld a, $12
    call sound_test_selection
    ld a, d

jr_000_2dc6:
    ldh [$ffe0], a
    ld l, $00

jr_000_2dca:
    ld h, $c3
    ld a, [hl+]
    bit 0, a
    jr z, jr_000_2e08

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ldh a, [$ffe0]
    cp d
    jr nz, jr_000_2e08

    inc l
    inc l
    inc l
    ld a, [hl]
    ld d, a
    ld c, l
    ld a, l
    and $f8
    ld l, a
    ld a, [hl]
    bit 7, a
    jr nz, jr_000_2dee

    set 7, a
    ld [hl], a
    jr jr_000_2df5

jr_000_2dee:
    res 7, a
    ld [hl], a
    ld a, d
    swap a
    ld d, a

jr_000_2df5:
    ld a, d
    and $0f
    ld b, a
    ld l, e
    call Call_000_35ee
    ld a, d
    swap a
    and $0f
    ld b, a
    ld l, e
    call Call_000_35bf
    ld l, c

jr_000_2e08:
    ld a, l
    and $f8
    add $08
    ld l, a
    jr nz, jr_000_2dca

    ret


    ld a, [bc]
    bit 4, a
    ret z

    ld a, c
    or $05
    ld l, a
    ld h, b
    ld a, [hl+]
    and $0f
    push af
    inc l
    ld a, [hl]
    ld c, a
    and $0f
    ld b, a
    ld a, c
    swap a
    and $0f
    ld d, a
    ld c, $80
    ld e, $80
    pop af
    call Call_000_2e38
    ld a, $15
    call sound_test_selection
    ret


Call_000_2e38:
    swap a
    ld l, a
    ld h, $c2
    ld a, [hl+]
    bit 2, a
    jr z, jr_000_2e53

    ld a, c
    ldh [$fff0], a
    ld a, b
    ldh [$fff1], a
    ld a, e
    ldh [$fff2], a
    ld a, d
    ldh [$fff3], a
    ld a, $15
    call sound_test_selection

jr_000_2e53:
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ret


Call_000_2e5c::
    ld hl, $c300

jr_000_2e5f:
    xor a
    ld [hl], a
    ld a, l
    add $08
    ld l, a
    jr nz, jr_000_2e5f

    ret


Jump_000_2e68:
    ld e, l
    ld d, h
    ld hl, $c300

jr_000_2e6d:
    bit 0, [hl]
    jr z, jr_000_2e77

    ld a, l
    add $08
    ld l, a
    jr jr_000_2e6d

jr_000_2e77:
    ld c, $00
    set 0, c
    ld a, l
    or $05
    ld l, a
    ld a, $ff
    ld [hl], a
    ld a, l
    and $f8
    ld l, a
    ld a, [de]
    inc de
    ld b, a
    bit 6, a
    jr nz, jr_000_2e91

    bit 7, a
    jr z, jr_000_2e93

jr_000_2e91:
    set 5, c

jr_000_2e93:
    ld a, c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, b
    and $3f
    ld [hl+], a
    cp $14
    jr c, jr_000_2eaa

    cp $20
    jr c, jr_000_2ebf

    call Call_000_3554
    jp Jump_000_2ee4


jr_000_2eaa:
    ld a, l
    and $f8
    or $07
    ld l, a
    ld a, [de]
    inc de
    ld [hl], a
    ld b, $05

jr_000_2eb5:
    ld a, l
    and $f8
    or $06
    ld l, a
    ld a, b
    ld [hl], a
    jr jr_000_2ee4

jr_000_2ebf:
    ld b, a
    ld a, l
    and $f8
    ld l, a
    set 2, [hl]
    ld a, l
    or $07
    ld l, a
    ld a, [de]
    inc de
    ld [hl], a
    ld a, b
    ld b, $0a
    cp $14
    jr z, jr_000_2eb5

    ld b, $0a
    cp $15
    jr z, jr_000_2eb5

    ld b, $0a
    cp $16
    jr z, jr_000_2eb5

    ld b, $00
    jr jr_000_2eb5

Jump_000_2ee4:
jr_000_2ee4:
    ld a, l
    and $f8
    or $03
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


Jump_000_2ef0::
    inc l
    ld a, [hl+]
    ldh [$ffe5], a
    ld d, a
    ld a, [hl+]
    ldh [$ffe9], a
    ld a, [hl+]
    cp $80
    jr c, jr_000_2eff

    ld a, $80

jr_000_2eff:
    ldh [$fff9], a
    ld a, [hl+]
    ldh [$ffec], a
    and $7f
    cp $14
    jp nc, Jump_000_2faf

    ld a, d
    add $48
    ld b, a
    ldh a, [$fff9]
    add $38
    ld c, a
    push bc
    ldh a, [$ffe9]
    call Call_000_3c38
    pop bc
    ldh a, [$ffec]
    bit 7, a
    jr z, jr_000_2f84

    ldh a, [$fff9]
    srl a
    srl a
    ld c, a
    srl a
    add c
    ld d, a
    ld a, $38
    sub d
    ld c, a
    push bc
    ldh a, [$ffe9]
    call Call_000_3c0e
    pop bc
    ldh a, [$ffe9]
    call Call_000_3c34
    ldh a, [$ffe5]
    add $48
    ld b, a
    ldh a, [$fff9]
    srl a
    srl a
    ld c, a
    srl a
    add c
    add $38
    ld c, a
    push bc
    ldh a, [$ffe9]
    call Call_000_3c12
    pop bc
    ldh a, [$ffe9]
    call Call_000_3c34
    ldh a, [$ffe9]
    cp $0a
    ret c

    ldh a, [$ff87]
    rra
    ret nc

    ldh a, [$ffec]
    and $7f
    sla a
    ld c, a
    ld b, $00
    ld hl, $2d74
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    ret z

    ldh a, [$ffe5]
    add $3c
    ld b, a
    ld c, $2b
    ld a, $02
    ld d, $00
    call Call_000_14e6
    ret


jr_000_2f84:
    ld c, $38
    ldh a, [$ff87]
    bit 2, a
    jr z, jr_000_2f8d

    cpl

jr_000_2f8d:
    and $03
    cp $00
    jr z, jr_000_2faa

    cp $01
    jr z, jr_000_2fa5

    cp $02
    jr z, jr_000_2fa0

    ldh a, [$ffe9]
    jp Call_000_3c40


jr_000_2fa0:
    ldh a, [$ffe9]
    jp Call_000_3c25


jr_000_2fa5:
    ldh a, [$ffe9]
    jp Call_000_3c0a


jr_000_2faa:
    ldh a, [$ffe9]
    jp Jump_000_3bef


Jump_000_2faf:
    ld a, d
    add $48
    ld b, a
    ldh a, [$fff9]
    add $38
    ld c, a
    ldh a, [$ffec]
    cp $17
    jr nz, jr_000_2fc3

    ldh a, [$ffe9]
    jp Jump_000_3be7


jr_000_2fc3:
    push bc
    ldh a, [$ff87]
    rra
    jr c, jr_000_2fd4

    ldh a, [$ffe9]
    ld e, a
    srl a
    srl a
    add e
    call Call_000_3c38

jr_000_2fd4:
    pop bc
    ldh a, [$ffe9]
    ld e, a
    ldh a, [$ffec]
    cp $14
    jr z, jr_000_2fe7

    cp $15
    jr z, jr_000_2feb

    cp $16
    jr z, jr_000_2fef

    ret


jr_000_2fe7:
    ld a, e
    jp z, Call_000_3c02

jr_000_2feb:
    ld a, e
    jp z, Jump_000_3c1d

jr_000_2fef:
    ld a, e
    jp z, Call_000_3c38

    ld a, [hl]
    cp $20
    ret nc

    ldh [$ffec], a
    dec l
    dec l
    bit 7, [hl]
    jr z, jr_000_3005

    ldh a, [$ffec]
    set 7, a
    ldh [$ffec], a

jr_000_3005:
    ld a, l
    or $06
    ld l, a
    ld a, [hl]
    ldh [$ffe9], a
    call $48f6
    ret c

    cp $41
    jr c, jr_000_3016

    ld a, $40

jr_000_3016:
    sla a
    ld c, a
    ld b, $00
    ld hl, $7d56
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    ld b, a
    srl a
    add b
    ld b, a
    xor a
    srl b
    rra
    srl b
    rra
    srl b
    rra
    srl b
    rra
    ld c, a
    ldh a, [$ffe9]
    cpl
    and $0f
    sla a
    ld e, a
    ld d, $00
    ld hl, $3048
    add hl, de
    push hl
    ld l, c
    ld h, b
    ret


    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    ld a, h
    ldh [$ffe9], a
    ld d, a
    ldh a, [$ffe7]
    add $48
    ld e, a
    sub d
    jr nc, jr_000_3075

    xor a

jr_000_3075:
    ld b, a
    ld a, e
    add d
    cp $90
    jr c, jr_000_307e

    ld a, $8f

jr_000_307e:
    ld c, a
    call Call_000_36d0
    ret nc

    ldh a, [$fff7]
    ld c, a
    ld b, $00
    ld hl, $dacf
    add hl, bc
    ld a, $08
    ld [hl+], a
    ldh a, [$ffe7]
    ld [hl+], a
    ldh a, [$ffe9]
    ld [hl+], a
    ldh a, [$fff9]
    ld [hl+], a
    ldh a, [$ffec]
    ld [hl+], a
    ldh a, [$fff8]
    ld c, a
    ld b, $00
    add $03
    ldh [$fff8], a
    ld hl, $dbcb
    add hl, bc
    ldh a, [$fff7]
    ld [hl+], a
    add $07
    ldh [$fff7], a
    ldh a, [$fffa]
    ld [hl+], a
    ldh a, [$fffb]
    ld [hl+], a
    ret


Call_000_30b6::
    push af
    ldh a, [$ffcb]
    and $07
    sla a
    sla a
    ld c, a
    ld b, $00
    ldh a, [$ffe9]
    cp $21
    jr c, jr_000_30ca

    ld a, $20

jr_000_30ca:
    and $fe
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_000_3117

    add hl, bc
    pop af
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld a, b
    cp $80
    ret z

    ldh a, [$ffcb]
    and $08
    jr z, jr_000_3105

    ld a, b
    cpl
    inc a
    sub d
    ld b, a

jr_000_3105:
    ldh a, [$ffe5]
    add b
    cp $90
    ret nc

    ld b, a
    ldh a, [$ffe7]
    add c
    cp $70
    ret nc

    ld c, a
    call Call_000_3b31
    ret


jr_000_3117:
    pop af
    ret


    ld c, h
    ld b, l
    ld d, [hl]
    ld b, l
    ld c, h
    nop
    ld sp, $2631
    ld sp, $0401
    ld [bc], a
    ld b, l
    ld e, b
    ld b, e
    ld b, l
    ld c, h
    ld c, h
    ld b, l
    ld c, [hl]
    ld d, h
    ld hl, $0000
    nop
    jr c, jr_000_3166

    ld bc, $0400
    ld c, h
    ld b, l
    ld d, [hl]
    ld b, l
    ld c, h
    jr nz, jr_000_315f

    jr nz, jr_000_3161

    ld b, e
    ld c, a
    ld c, l
    ld d, b
    ld c, h
    ld b, l
    ld d, h
    ld b, l
    ld hl, $5900
    ld sp, $3152
    nop
    inc bc
    add hl, bc
    ld d, e
    ld b, e
    ld c, a
    ld d, d
    ld b, l
    ld a, [hl-]
    nop
    nop
    nop
    ld h, b
    ld sp, $0100

jr_000_315f:
    ld a, [bc]
    ld d, h

jr_000_3161:
    ld c, c
    ld c, l
    ld b, l
    jr nz, jr_000_31a8

jr_000_3166:
    ld c, a
    ld c, [hl]
    ld d, l
    ld d, e
    ld a, [hl-]
    nop
    nop
    nop
    ld [hl], e
    ld sp, $0401
    inc b
    ld b, a
    ld b, c
    ld c, l
    ld b, l
    jr nz, jr_000_3199

    ld c, a
    ld d, [hl]
    ld b, l
    ld d, d
    nop
    sub l
    ld sp, $3185
    nop
    ld [bc], a
    add hl, bc
    ld d, b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_000_3204

    ld h, c
    ld l, c
    ld [hl], h
    jr nz, jr_000_31f8

    ld l, a
    ld [hl], d
    nop
    xor a
    ld sp, $319c

jr_000_3199:
    nop
    nop
    ld a, [bc]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_000_3213

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d

jr_000_31a8:
    jr z, @+$75

    add hl, hl
    jr nz, @+$76

    ld l, a
    nop
    nop
    nop
    or [hl]
    ld sp, $0000
    dec bc
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$6e

    ld h, l
    db $76
    ld h, l
    ld l, h
    ld l, $00

Jump_000_31c9:
    ldh a, [$ffa2]
    ld e, a
    inc a
    ldh [$ffa2], a
    ldh a, [$ffa1]
    add e
    ld e, a
    ld a, [hl+]
    ld d, a
    and $e0
    ld b, a
    ld a, [hl+]
    ld c, a
    push bc
    push de
    call Call_000_3205
    pop de
    pop bc
    ld a, d
    and $1f
    ld h, a
    ld b, e
    ld a, c
    and $0f
    ld d, a
    ld a, c
    swap a
    and $0f
    ld e, a
    ld c, h
    call Call_000_09a1
    ret


Jump_000_31f5:
    ldh a, [$ffa1]
    ld e, a

jr_000_31f8:
    ld a, [hl+]
    ld b, a
    and $0f
    cp e
    ret nc

    ld e, a
    ld a, b
    and $e0
    ld b, a
    ld a, [hl+]

jr_000_3204:
    ld c, a

Call_000_3205:
    ld a, e
    and $0f
    rla
    ld e, a
    ld d, $00
    ld hl, $da72
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b

jr_000_3213:
    ld [hl+], a
    ret


LoadCyberscapeLevelName:
    ld bc, $da2d

load_cscape_level_char:
    ld a, [hl+]
    ld [bc], a
    inc bc
    and a
    jr nz, load_cscape_level_char

    ld a, [hl+]
    ld [$d9f3], a
    ld a, [hl+]
    ld [$d9f4], a
    ld a, [hl+]
    call Call_000_26f1
    ld a, [$da45]
    and a
    jr nz, jr_000_323a

    ld hl, $d9fe
    ld b, $10

jr_000_3235:
    xor a
    ld [hl+], a
    dec b
    jr nz, jr_000_3235

jr_000_323a:
    ret


Call_000_323b::
    ld c, a
    ld b, $00
    sla c
    rl b
    ld a, $03
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld hl, $4060
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_3259:
    ld a, [hl+]
    ld c, a
    and $1f
    ld b, a
    ld a, c
    and $e0
    cp $a0
    jr nz, InitCscapeLevelData

    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


InitCscapeLevelData:
    push bc
    push hl
    ld de, $328e
    push de
    cp $00
    jp z, LoadCyberscapeLevelName

    cp $20
    jp z, Jump_000_2e68

    cp $80
    jp z, Jump_000_2e68

    cp $40
    jp z, Jump_000_31c9

    cp $60
    jp z, Jump_000_31f5

    pop de
    pop hl
    pop bc
    ld c, b
    ld b, $00
    add hl, bc
    jr jr_000_3259

Call_000_3296::
    ld c, a
    ld b, $00
    sla c
    rl b
    ld a, $03
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    xor a
    ld [$c9ac], a
    ld hl, $4060
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
    ld a, c
    and $e0
    cp $00
    jr nz, jr_000_32ca

    ld bc, $c9ac

jr_000_32c4:
    ld a, [hl+]
    ld [bc], a
    inc bc
    and a
    jr nz, jr_000_32c4

jr_000_32ca:
    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


Call_000_32d3:
    ld l, c
    ld h, b
    ld e, c
    ld d, b
    inc l
    ld a, [hl+]
    ld b, a
    inc l
    inc l
    inc l
    inc l
    ld a, [hl-]
    ld c, a
    ld a, [de]
    res 6, a
    ld [de], a
    jp Jump_000_3357


Call_000_32e7:
    ld a, [bc]
    bit 5, a
    ret z

    ld l, c
    ld h, b
    ld e, c
    ld d, b
    inc l
    ld a, [hl+]
    ld b, a
    inc l
    inc l
    inc l
    inc l
    ld a, [hl-]
    ld c, a
    dec l
    dec l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [de]
    bit 3, a
    jr z, jr_000_3306

    bit 4, [hl]
    jr nz, jr_000_3310

jr_000_3306:
    bit 4, a
    jr z, jr_000_331b

    inc hl
    bit 4, [hl]
    dec hl
    jr z, jr_000_331b

jr_000_3310:
    ld a, $0d
    call sound_test_selection
    ld a, [de]
    res 0, a
    ld [de], a
    jr jr_000_3376

jr_000_331b:
    bit 0, [hl]
    jr z, jr_000_3330

    ld a, [de]
    bit 3, a
    jr nz, jr_000_3341

    inc hl
    bit 0, [hl]
    dec hl
    jr z, jr_000_333b

    bit 4, a
    jr nz, jr_000_3341

    jr z, jr_000_333b

jr_000_3330:
    inc hl
    bit 0, [hl]
    dec hl
    jr z, jr_000_3341

    ld a, [de]
    bit 4, a
    jr nz, jr_000_3341

jr_000_333b:
    set 6, a
    ld [de], a
    call Call_000_3376

jr_000_3341:
    bit 1, [hl]
    jr z, jr_000_334a

    ld a, [de]
    bit 3, a
    jr nz, jr_000_3352

jr_000_334a:
    inc hl
    bit 1, [hl]
    dec hl
    ret z

    bit 4, a
    ret z

jr_000_3352:
    set 6, a
    ld [de], a
    jr jr_000_3376

Jump_000_3357:
    push hl
    bit 7, a
    jr nz, jr_000_3368

    push bc
    ld l, b
    ld a, c
    and $0f
    ld b, a
    call Call_000_35bf
    pop bc
    pop hl
    ret


jr_000_3368:
    push bc
    ld l, b
    ld a, c
    swap a
    and $0f
    ld b, a
    call Call_000_35bf
    pop bc
    pop hl
    ret


Call_000_3376:
jr_000_3376:
    push hl
    bit 7, a
    jr nz, jr_000_3387

    push bc
    ld l, b
    ld a, c
    and $0f
    ld b, a
    call Call_000_35ee
    pop bc
    pop hl
    ret


jr_000_3387:
    push bc
    ld l, b
    ld a, c
    swap a
    and $0f
    ld b, a
    call Call_000_35ee
    pop bc
    pop hl
    ret


Call_000_3395:
    push bc
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld l, a
    ld a, e
    add $05
    ld e, a
    ld a, [de]
    bit 7, c
    jr z, jr_000_33a6

    swap a

jr_000_33a6:
    and $0f
    ld b, a
    call Call_000_35ee
    pop hl
    ld l, [hl]
    push hl
    call Call_000_35bf
    pop bc
    ld a, e
    and $f8
    ld e, a
    inc e
    inc e
    ld a, [de]
    ld b, $01
    cp $20
    jr z, jr_000_33e6

    cp $23
    jr z, jr_000_33e6

    cp $27
    jr z, jr_000_33e6

    ld b, $02
    cp $21
    jr z, jr_000_33e6

    cp $24
    jr z, jr_000_33e6

    cp $28
    jr z, jr_000_33e6

    ld b, $03
    cp $22
    jr z, jr_000_33e6

    cp $25
    jr z, jr_000_33e6

    cp $29
    jr z, jr_000_33e6

    ld b, $ff

jr_000_33e6:
    ld a, b
    cp $ff
    ret z

    inc e
    inc e
    inc e
    inc e
    ld a, [de]
    call Call_000_34db
    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ldh a, [$ff87]
    rra
    ret nc

    ld l, c
    ld h, b
    ldh a, [$ff87]
    srl a
    and $03
    ld b, a
    inc l
    ld a, [hl+]
    ld e, a
    inc l
    inc l
    inc l
    inc l
    ld c, [hl]
    ld d, $c5
    call Call_000_3523
    call Call_000_34fe
    call Call_000_3523
    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ld a, [bc]
    bit 4, a
    ret z

    ld a, [$d9f3]
    ld e, a
    ld a, [$d9f4]
    or e
    ret z

    ld a, $01
    di
    ldh [$ff81], a
    ldh a, [$ff80]
    push af
    ldh a, [$ff81]
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ld a, c
    or $05
    ld c, a
    ld a, [bc]
    ld e, a
    push bc
    ld d, $00
    ld hl, $d9fe

jr_000_344c:
    ld a, [hl]
    and a
    jr nz, jr_000_3469

    ld a, $20
    ld [hl], a
    ldh a, [$ff92]
    cp d
    jr nz, jr_000_3469

    push de
    push hl
    ld bc, $7a83
    ld de, $7ab2
    call $74b6
    xor a
    call $7657
    pop hl
    pop de

jr_000_3469:
    inc hl
    inc d
    ldh a, [$ffa1]
    cp d
    jr nc, jr_000_344c

    pop bc
    ld a, c
    and $f8
    or $07
    ld c, a
    ld a, [bc]
    ld h, a
    ld a, [$da2b]
    add h
    ld [$da2c], a
    ld a, h
    cp $02
    jr c, jr_000_348e

    push de
    ld a, e
    ld bc, $0064
    call $57e5
    pop de

jr_000_348e:
    ldh a, [$ffa1]
    ld b, a
    ld hl, $c200

jr_000_3494:
    res 0, [hl]
    ld a, l
    add $10
    ld l, a
    dec b
    jr nz, jr_000_3494

    push de
    ld a, [$d9f3]
    ld e, a
    ld a, [$d9f4]
    ld d, a
    ld hl, $000a
    call Call_000_0b25
    push bc
    ld de, $000a
    call Call_000_0af6
    ld a, l
    ld [$da42], a
    ld a, h
    ld [$da43], a
    pop bc
    pop de
    push de
    ld a, e
    call $57e5
    pop de
    ld a, e
    ld bc, $000a
    call $57e5
    ld a, $02
    call PrepareHiramJumpDest
    di
    pop af
    ldh [$ff80], a
    ld [rROMB0 + $100], a
    ei
    ret


    ret


    ret


    ret


Call_000_34db:
    ld e, c
    ld d, $c5
    ld c, a
    call Call_000_3523
    push bc
    push de
    call Call_000_34fe
    call Call_000_3523
    pop de
    pop bc
    ld a, c
    swap a
    ld c, a
    call Call_000_3523
    push bc
    push de
    call Call_000_34fe
    call Call_000_3523
    pop de
    pop bc
    ret


Call_000_34fe:
    bit 2, c
    jr z, jr_000_3509

    ld a, e
    add $10
    ld e, a
    ld c, $01
    ret


jr_000_3509:
    bit 0, c
    jr z, jr_000_3514

    ld a, e
    sub $10
    ld e, a
    ld c, $04
    ret


jr_000_3514:
    bit 1, c
    jr z, jr_000_351c

    inc e
    ld c, $08
    ret


jr_000_351c:
    bit 3, c
    ret z

    dec e
    ld c, $02
    ret


Call_000_3523:
    push bc
    ld a, b
    ld b, $03
    bit 2, c
    jr nz, jr_000_3549

    rla
    rla
    sla b
    sla b
    bit 0, c
    jr nz, jr_000_3549

    rla
    rla
    sla b
    sla b
    bit 1, c
    jr nz, jr_000_3549

    rla
    rla
    sla b
    sla b
    bit 3, c
    jr z, jr_000_3552

jr_000_3549:
    and b
    ld c, a
    ld a, b
    cpl
    ld b, a
    ld a, [de]
    and b
    or c
    ld [de], a

jr_000_3552:
    pop bc
    ret


Call_000_3554:
    push de
    push hl
    ld b, $01
    cp $20
    jr z, jr_000_3582

    cp $23
    jr z, jr_000_3582

    cp $27
    jr z, jr_000_3582

    ld b, $02
    cp $21
    jr z, jr_000_3582

    cp $24
    jr z, jr_000_3582

    cp $28
    jr z, jr_000_3582

    ld b, $03
    cp $22
    jr z, jr_000_3582

    cp $25
    jr z, jr_000_3582

    cp $29
    jr z, jr_000_3582

    ld b, $ff

jr_000_3582:
    ld a, b
    cp $ff
    jr z, jr_000_3593

    ld a, l
    and $f8
    or $01
    ld l, a
    ld a, [hl]
    ld c, a
    ld a, [de]
    call Call_000_34db

jr_000_3593:
    pop hl
    pop de
    ld a, l
    and $f8
    ld b, a
    ld l, a
    set 1, [hl]
    or $06
    ld l, a
    ld a, [de]
    inc de
    ld [hl], a
    ld l, b
    push de
    push hl
    and $0f
    ld b, a
    inc l
    ld l, [hl]
    call Call_000_35bf
    pop hl
    pop de
    inc l
    inc l
    ld a, [hl]
    cp $26
    ret nz

    ld a, l
    and $f8
    or $07
    ld l, a
    ld a, [de]
    inc de
    ld [hl], a
    ret


Call_000_35bf:
    ld h, $c4
    bit 2, b
    jr z, jr_000_35ce

    set 2, [hl]
    ld a, l
    add $10
    ld l, a
    set 0, [hl]
    ret


jr_000_35ce:
    bit 0, b
    jr z, jr_000_35db

    set 0, [hl]
    ld a, l
    sub $10
    ld l, a
    set 2, [hl]
    ret


jr_000_35db:
    bit 1, b
    jr z, jr_000_35e5

    set 1, [hl]
    inc l
    set 3, [hl]
    ret


jr_000_35e5:
    bit 3, b
    ret z

    set 3, [hl]
    dec l
    set 1, [hl]
    ret


Call_000_35ee:
    ld h, $c4
    bit 2, b
    jr z, jr_000_35fd

    res 2, [hl]
    ld a, l
    add $10
    ld l, a
    res 0, [hl]
    ret


jr_000_35fd:
    bit 0, b
    jr z, jr_000_360a

    res 0, [hl]
    ld a, l
    sub $10
    ld l, a
    res 2, [hl]
    ret


jr_000_360a:
    bit 1, b
    jr z, jr_000_3614

    res 1, [hl]
    inc l
    res 3, [hl]
    ret


jr_000_3614:
    bit 3, b
    ret z

    res 3, [hl]
    dec l
    res 1, [hl]
    ret


Jump_000_361d:
    ld d, a
    ld a, [$c907]
    cp $02
    jr nc, jr_000_362e

    ld a, b
    or $90
    ld c, a
    ld b, $c7
    ld a, d
    ld [bc], a
    ret


jr_000_362e:
    ld a, b
    and $0f
    or $d0
    ld [$c936], a
    ld a, d
    ld [$c937], a
    call Call_000_10ad
    ret


Jump_000_363e:
    ld a, b
    cp c
    jr c, jr_000_3645

    ld a, c
    ld c, b
    ld b, a

jr_000_3645:
    and $f8
    ld e, a
    ld a, c
    and $f8
    sub e
    jr nz, jr_000_366c

    ld h, $04
    ld l, b
    ld a, [hl]
    ld b, a
    ld h, $05
    ld l, c
    and [hl]
    ld b, a
    srl e
    srl e
    srl e
    ld d, $00
    ld hl, $dabd
    add hl, de
    and [hl]
    xor b
    ret z

    ld b, a
    or [hl]
    ld [hl], a
    scf
    ret


jr_000_366c:
    srl a
    srl a
    srl a
    ldh [$ffe4], a
    ld h, $04
    ld l, b
    ld a, [hl]
    ldh [$ffe5], a
    ld b, a
    srl e
    srl e
    srl e
    ld d, $00
    ld hl, $dabd
    add hl, de
    ld a, l
    ldh [$ffe6], a
    ld a, h
    ldh [$ffe7], a
    ld a, b
    and [hl]
    inc hl
    xor b
    jr z, jr_000_36b5

jr_000_3693:
    ldh a, [$ffe6]
    ld l, a
    ldh a, [$ffe7]
    ld h, a
    ldh a, [$ffe5]
    or [hl]
    ld [hl+], a
    ldh a, [$ffe4]
    ld b, a
    dec b
    jr z, jr_000_36a9

    ld a, $ff

jr_000_36a5:
    ld [hl+], a
    dec b
    jr nz, jr_000_36a5

jr_000_36a9:
    ld d, h
    ld e, l
    ld h, $05
    ld l, c
    ld a, [hl]
    ld l, e
    ld h, d
    or [hl]
    ld [hl], a
    scf
    ret


jr_000_36b5:
    ldh a, [$ffe4]
    ld b, a
    dec b
    jr z, jr_000_36c2

jr_000_36bb:
    ld a, [hl+]
    inc a
    jr nz, jr_000_3693

    dec b
    jr nz, jr_000_36bb

jr_000_36c2:
    ld e, l
    ld d, h
    ld h, $05
    ld l, c
    ld a, [hl]
    ld b, a
    ld h, d
    ld l, e
    and [hl]
    xor b
    jr nz, jr_000_3693

    ret


Call_000_36d0::
    ld a, b
    cp c
    jr c, jr_000_36d7

    ld a, c
    ld c, b
    ld b, a

jr_000_36d7:
    and $f8
    ld e, a
    ld a, c
    and $f8
    sub e
    jr nz, jr_000_36fb

    ld h, $04
    ld l, b
    ld a, [hl]
    ld b, a
    ld h, $05
    ld l, c
    and [hl]
    ld b, a
    srl e
    srl e
    srl e
    ld d, $00
    ld hl, $dabd
    add hl, de
    and [hl]
    xor b
    ret z

    scf
    ret


jr_000_36fb:
    srl a
    srl a
    srl a
    ldh [$ffe4], a
    ld h, $04
    ld l, b
    ld a, [hl]
    ld b, a
    srl e
    srl e
    srl e
    ld d, $00
    ld hl, $dabd
    add hl, de
    ld a, b
    and [hl]
    inc hl
    xor b
    jr z, jr_000_371c

jr_000_371a:
    scf
    ret


jr_000_371c:
    ldh a, [$ffe4]
    ld b, a
    dec b
    jr z, jr_000_3729

jr_000_3722:
    ld a, [hl+]
    inc a
    jr nz, jr_000_371a

    dec b
    jr nz, jr_000_3722

jr_000_3729:
    ld e, l
    ld d, h
    ld h, $05
    ld l, c
    ld a, [hl]
    ld b, a
    ld h, d
    ld l, e
    and [hl]
    xor b
    jr nz, jr_000_371a

    ret


Call_000_3737::
    push bc
    push de
    bit 7, b
    jr z, jr_000_3747

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_000_3747:
    sla e
    rl d
    xor a
    ld l, a
    ld h, a
    ldh [$ffe4], a
    ld a, $8e
    ldh [$ffe5], a
    call Call_000_3784
    pop de
    pop bc
    ldh a, [$ffe7]
    bit 7, b
    jr z, jr_000_3760

    cpl

jr_000_3760:
    ld b, a
    push bc
    ld a, $60
    ld c, a
    ld b, $00
    sla e
    rl d
    sla e
    rl d
    xor a
    ld l, a
    ld h, a
    ldh [$ffe4], a
    ld a, $dc
    ldh [$ffe5], a
    call Call_000_3784
    pop bc
    ldh a, [$ffe7]
    ld c, a
    ld a, b
    ldh [$ffe7], a
    ld a, c
    ret


Call_000_3784:
    ld a, b
    cp d
    jr nz, jr_000_378a

    ld a, c
    cp e

jr_000_378a:
    jr c, jr_000_3791

    ldh a, [$ffe5]
    ldh [$ffe7], a
    ret


jr_000_3791:
    push bc
    ldh a, [$ffe4]
    ld b, a
    ldh a, [$ffe5]
    add b
    rra
    ldh [$ffe7], a
    pop bc
    push hl
    add hl, de
    rr h
    rr l
    ld a, h
    cp b
    jr nz, jr_000_37a8

    ld a, l
    cp c

jr_000_37a8:
    jr z, jr_000_37bd

    jr nc, jr_000_37b4

    add sp, $02
    ldh a, [$ffe7]
    ldh [$ffe4], a
    jr jr_000_3791

jr_000_37b4:
    ld e, l
    ld d, h
    pop hl
    ldh a, [$ffe7]
    ldh [$ffe5], a
    jr jr_000_3791

jr_000_37bd:
    pop hl
    ret


PrepareTitleOrMenuTransition::
    ld a, $01
    ld [$c9a2], a
    ld hl, $9800
    ld a, $80
    call UpdateTilemap
    ld b, $12

load_tile_to_top_border:
    ld a, $81
    call UpdateTilemap
    dec b
    jr nz, load_tile_to_top_border

    ld a, $80
    call UpdateTilemap
    ld d, $84
    ld b, $0e

jr_000_37df:
    ld c, $12
    push bc
    ld bc, $000c
    add hl, bc
    pop bc
    ld a, $82
    call UpdateTilemap

jr_000_37ec:
    ld a, d
    call UpdateTilemap
    inc d
    dec c
    jr nz, jr_000_37ec

    ld a, $82
    call UpdateTilemap
    dec b
    jr nz, jr_000_37df

    ld bc, $000c
    add hl, bc
    ld a, $80
    call UpdateTilemap
    ld b, $12

jr_000_3807:
    ld a, $81
    call UpdateTilemap
    dec b
    jr nz, jr_000_3807

    ld a, $80
    call UpdateTilemap
    ld a, [$c906]
    ld b, a

jr_000_3818:
    ld a, [$c906]
    cp b
    jr z, jr_000_3818

    ld hl, $ff41
    set 6, [hl]
    ld a, $78
    ldh [rLYC], a
    ldh a, [rIE]
    set 1, a
    ldh [rIE], a
    ret


Call_000_382e::
    ld a, [$c9a2]
    cp $02
    ret z

    ld a, $02
    ld [$c9a2], a
    ld a, [$c906]
    ld b, a

jr_000_383d:
    ld a, [$c906]
    cp b
    jr z, jr_000_383d

    ldh a, [rIE]
    res 1, a
    ldh [rIE], a
    ret


Call_000_384a:
    cp $70
    ret nc

    ld h, $03
    sla a
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    cp c
    jr c, jr_000_385c

    ld a, c
    ld c, b
    ld b, a

jr_000_385c:
    and $f8
    ld d, a
    ld a, c
    and $f8
    sub d
    jr nz, jr_000_387f

    ld e, d
    sla e
    rla
    ld d, a
    add hl, de
    ld e, l
    ld d, h
    ld h, $04
    ld l, b
    ld a, [hl]
    ld h, $05
    ld l, c
    and [hl]
    cpl
    ld b, a
    ld h, d
    ld l, e
    and [hl]
    ld [hl+], a
    ld a, b
    and [hl]
    ld [hl+], a
    ret


jr_000_387f:
    ldh [$ff96], a
    ld e, d
    sla e
    ld d, $00
    rl d
    add hl, de
    ld e, l
    ld d, h
    ld h, $04
    ld l, b
    ld a, [hl]
    cpl
    ld b, a
    ld h, d
    ld l, e
    and [hl]
    ld [hl+], a
    ld a, b
    and [hl]
    ld [hl+], a
    ld de, $000e
    add hl, de
    ldh a, [$ff96]
    srl a
    srl a
    srl a
    ld b, a
    dec b
    jr z, jr_000_38af

    xor a

jr_000_38a9:
    ld [hl+], a
    ld [hl+], a
    add hl, de
    dec b
    jr nz, jr_000_38a9

jr_000_38af:
    ld e, l
    ld d, h
    ld h, $05
    ld l, c
    ld a, [hl]
    cpl
    ld b, a
    ld h, d
    ld l, e
    and [hl]
    ld [hl+], a
    ld a, b
    and [hl]
    ld [hl+], a
    ret


Call_000_38bf::
    cp $70
    ret nc

    ld h, $03
    sla a
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    cp c
    jr c, jr_000_38d1

    ld a, c
    ld c, b
    ld b, a

jr_000_38d1:
    and $f8
    ld d, a
    ld a, c
    and $f8
    sub d
    jr nz, jr_000_38f4

    ld e, d
    sla e
    rla
    ld d, a
    add hl, de
    ld e, l
    ld d, h
    ld h, $04
    ld l, b
    ld a, [hl]
    ld h, $05
    ld l, c
    and [hl]
    ld b, a
    ld h, d
    ld l, e
    or [hl]
    ld [hl+], a
    ld a, b
    cpl
    and [hl]
    ld [hl+], a
    ret


jr_000_38f4:
    ldh [$ff96], a
    ld e, d
    sla e
    ld d, $00
    rl d
    add hl, de
    ld e, l
    ld d, h
    ld h, $04
    ld l, b
    ld a, [hl]
    ld b, a
    ld h, d
    ld l, e
    or [hl]
    ld [hl+], a
    ld a, b
    cpl
    and [hl]
    ld [hl+], a
    ld de, $000e
    add hl, de
    ldh a, [$ff96]
    srl a
    srl a
    srl a
    ld b, a
    dec b
    jr z, jr_000_3926

    xor a

jr_000_391e:
    cpl
    ld [hl+], a
    cpl
    ld [hl+], a
    add hl, de
    dec b
    jr nz, jr_000_391e

jr_000_3926:
    ld e, l
    ld d, h
    ld h, $05
    ld l, c
    ld a, [hl]
    ld b, a
    ld h, d
    ld l, e
    or [hl]
    ld [hl+], a
    ld a, b
    cpl
    and [hl]
    ld [hl+], a
    ret


    cp $70
    ret nc

    ld h, $03
    sla a
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    cp c
    jr c, jr_000_3948

    ld a, c
    ld c, b
    ld b, a

jr_000_3948:
    and $f8
    ld d, a
    ld a, c
    and $f8
    sub d
    jr nz, UpdateBufferStack

    ld e, d
    sla e
    rla
    ld d, a
    add hl, de
    ld e, l
    ld d, h
    ld h, $04
    ld l, b
    ld a, [hl]
    ld h, $05
    ld l, c
    and [hl]
    ld b, a
    ld h, d
    ld l, e
    cpl
    and [hl]
    ld [hl+], a
    ld a, b
    or [hl]
    ld [hl+], a
    ret


UpdateBufferStack:
    ldh [$ff96], a
    ld e, d
    sla e
    ld d, $00
    rl d
    add hl, de
    ld e, l
    ld d, h
    ld h, $04
    ld l, b
    ld a, [hl]
    ld b, a
    ld h, d
    ld l, e
    cpl
    and [hl]
    ld [hl+], a
    ld a, b
    or [hl]
    ld [hl+], a
    ld de, $000e
    add hl, de
    ldh a, [$ff96]
    srl a
    srl a
    srl a
    ld b, a
    dec b
    jr z, jr_000_399c

jr_000_3994:
    xor a
    ld [hl+], a
    cpl
    ld [hl+], a
    add hl, de
    dec b
    jr nz, jr_000_3994

jr_000_399c:
    ld e, l
    ld d, h
    ld h, $05
    ld l, c
    ld a, [hl]
    ld b, a
    ld h, d
    ld l, e
    cpl
    and [hl]
    ld [hl+], a
    ld a, b
    or [hl]
    ld [hl+], a
    ret


Call_000_39ac::
    cp $70
    ret nc

    ld h, $03
    sla a
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    cp c
    jr c, jr_000_39be

    ld a, c
    ld c, b
    ld b, a

jr_000_39be:
    and $f8
    ld d, a
    ld a, c
    and $f8
    sub d
    jr nz, jr_000_39e0

    ld e, d
    sla e
    rla
    ld d, a
    add hl, de
    ld e, l
    ld d, h
    ld h, $04
    ld l, b
    ld a, [hl]
    ld h, $05
    ld l, c
    and [hl]
    ld b, a
    ld h, d
    ld l, e
    or [hl]
    ld [hl+], a
    ld a, b
    or [hl]
    ld [hl+], a
    ret


jr_000_39e0:
    ldh [$ff96], a
    ld e, d
    sla e
    ld d, $00
    rl d
    add hl, de
    ld e, l
    ld d, h
    ld h, $04
    ld l, b
    ld a, [hl]
    ld b, a
    ld h, d
    ld l, e
    or [hl]
    ld [hl+], a
    ld a, b
    or [hl]
    ld [hl+], a
    ld de, $000e
    add hl, de
    ldh a, [$ff96]
    srl a
    srl a
    srl a
    ld b, a
    dec b
    jr z, jr_000_3a10

    xor a
    cpl

jr_000_3a0a:
    ld [hl+], a
    ld [hl+], a
    add hl, de
    dec b
    jr nz, jr_000_3a0a

jr_000_3a10:
    ld e, l
    ld d, h
    ld h, $05
    ld l, c
    ld a, [hl]
    ld b, a
    ld h, d
    ld l, e
    or [hl]
    ld [hl+], a
    ld a, b
    or [hl]
    ld [hl+], a
    ret


Call_000_3a1f::
    cp $90
    ret nc

    ld l, a
    and $f8
    ld e, a
    ld a, c
    sub b
    inc a
    ldh [$ff98], a
    ld h, $06
    ld a, [hl]
    cpl
    ld c, a
    ld h, $03
    ld l, b
    sla l
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ld h, a
    ld l, d
    ld d, $00
    sla e
    rl d
    add hl, de
    ld a, b
    cpl
    and $07
    inc a
    ld d, a
    ldh a, [$ff98]
    ld b, a

jr_000_3a4a:
    ld a, c
    and [hl]
    ld [hl+], a
    ld a, c
    and [hl]
    ld [hl+], a
    dec d
    jr nz, jr_000_3a5b

    ld a, e
    ld de, $0110
    add hl, de
    ld d, $08
    ld e, a

jr_000_3a5b:
    dec b
    jr nz, jr_000_3a4a

    ret


Call_000_3a5f::
    cp $90
    ret nc

    ld l, a
    and $f8
    ld e, a
    ld a, c
    sub b
    inc a
    ldh [$ff98], a
    ld h, $06
    ld a, [hl]
    ld c, a
    ld h, $03
    ld l, b
    sla l
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ld h, a
    ld l, d
    ld d, $00
    sla e
    rl d
    add hl, de
    ld a, b
    cpl
    and $07
    inc a
    ld d, a
    ld a, c
    cpl
    ld e, a
    ldh a, [$ff98]
    ld b, a

jr_000_3a8c:
    ld a, c
    or [hl]
    ld [hl+], a
    ld a, e
    and [hl]
    ld [hl+], a
    dec d
    jr nz, jr_000_3a9d

    ld a, e
    ld de, $0110
    add hl, de
    ld d, $08
    ld e, a

jr_000_3a9d:
    dec b
    jr nz, jr_000_3a8c

    ret


    cp $90
    ret nc

    ld l, a
    and $f8
    ld e, a
    ld a, c
    sub b
    inc a
    ldh [$ff98], a
    ld h, $06
    ld a, [hl]
    ld c, a
    ld h, $03
    ld l, b
    sla l
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ld h, a
    ld l, d
    ld d, $00
    sla e
    rl d
    add hl, de
    ld a, b
    cpl
    and $07
    inc a
    ld d, a
    ld a, c
    cpl
    ld e, a
    ldh a, [$ff98]
    ld b, a

jr_000_3ace:
    ld a, e
    and [hl]
    ld [hl+], a
    ld a, c
    or [hl]
    ld [hl+], a
    dec d
    jr nz, jr_000_3adf

    ld a, e
    ld de, $0110
    add hl, de
    ld d, $08
    ld e, a

jr_000_3adf:
    dec b
    jr nz, jr_000_3ace

    ret


Call_000_3ae3::
    cp $90
    ret nc

    ld l, a
    and $f8
    ld e, a
    ld a, c
    sub b
    inc a
    ldh [$ff98], a
    ld h, $06
    ld a, [hl]
    ld c, a
    ld h, $03
    ld l, b
    sla l
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ld h, a
    ld l, d
    ld d, $00
    sla e
    rl d
    add hl, de
    ld a, b
    cpl
    and $07
    inc a
    ld d, a
    ldh a, [$ff98]
    ld b, a

jr_000_3b0d:
    ld a, c
    or [hl]
    ld [hl+], a
    ld a, c
    or [hl]
    ld [hl+], a
    dec d
    jr nz, jr_000_3b1e

    ld a, e
    ld de, $0110
    add hl, de
    ld d, $08
    ld e, a

jr_000_3b1e:
    dec b
    jr nz, jr_000_3b0d

    ret


Call_000_3b22::
    ld hl, $384a
    jr jr_000_3b34

Call_000_3b27::
    ld hl, $38bf
    jr jr_000_3b34

Call_000_3b2c:
    ld hl, $3936
    jr jr_000_3b34

Call_000_3b31::
    ld hl, $39ac

jr_000_3b34:
    ld a, $c3
    ldh [$ff9e], a
    ld a, l
    ldh [$ff9f], a
    ld a, h
    ldh [$ffa0], a
    ld a, b
    ldh [$ff9b], a
    add d
    dec a
    cp $90
    jr c, jr_000_3b4d

    ld a, $8f
    sub b
    ld d, a
    ld a, $8f

jr_000_3b4d:
    ldh [$ff9c], a
    ld a, c
    ldh [$ff99], a
    add e
    dec a
    ldh [$ff9a], a
    ld d, c

jr_000_3b57:
    ldh a, [$ff9b]
    ld b, a
    ldh a, [$ff9c]
    ld c, a
    ld a, d
    push de
    call $ff9e
    pop de
    inc d
    dec e
    jr nz, jr_000_3b57

    ret


Call_000_3b68::
    call Call_000_3b22
    jr jr_000_3b7a

DrawBox::
    call Call_000_3b27
    jr jr_000_3b7a

Call_000_3b72:
    call Call_000_3b2c
    jr jr_000_3b7a

    call Call_000_3b31

jr_000_3b7a:
    ld e, $00

jr_000_3b7c:
    ldh a, [$ff9b]
    add e
    ld b, a
    ldh a, [$ff9c]
    sub e
    ld c, a
    push de
    ld a, e
    and a
    jr z, jr_000_3b91

    ldh a, [$ff99]
    add e
    call Call_000_384a
    jr jr_000_3b97

jr_000_3b91:
    ldh a, [$ff99]
    add e
    call Call_000_38bf

jr_000_3b97:
    pop de
    ldh a, [$ff99]
    add e
    ld b, a
    ldh a, [$ff9a]
    sub e
    ld c, a
    push de
    ld a, e
    and a
    jr z, jr_000_3bad

    ldh a, [$ff9b]
    add e
    call Call_000_3a1f
    jr jr_000_3bb3

jr_000_3bad:
    ldh a, [$ff9b]
    add e
    call Call_000_3a5f

jr_000_3bb3:
    pop de
    inc e
    ld a, e
    cp $02
    jr c, jr_000_3b7c

    ld e, $00

jr_000_3bbc:
    ldh a, [$ff9b]
    add e
    ld b, a
    ldh a, [$ff9c]
    sub e
    ld c, a
    ldh a, [$ff9a]
    sub e
    push de
    call Call_000_39ac
    pop de
    ldh a, [$ff99]
    add e
    ld b, a
    ldh a, [$ff9a]
    sub e
    ld c, a
    ldh a, [$ff9c]
    sub e
    push de
    call Call_000_3ae3
    pop de
    inc e
    ld a, e
    cp $02
    jr c, jr_000_3bbc

    ret


    ld e, $c8
    jr jr_000_3bf9

Jump_000_3be7:
    ld e, $c4
    jr jr_000_3bf9

    ld e, $c2
    jr jr_000_3bf9

Jump_000_3bef:
    ld e, $c1
    jr jr_000_3bf9

Call_000_3bf3::
    ld e, $81
    jr jr_000_3bf9

    ld e, $41

jr_000_3bf9:
    ld hl, $384a
    jr jr_000_3c4d

    ld e, $c8
    jr jr_000_3c14

Call_000_3c02::
    ld e, $c4
    jr jr_000_3c14

    ld e, $c2
    jr jr_000_3c14

Call_000_3c0a::
    ld e, $c1
    jr jr_000_3c14

Call_000_3c0e::
    ld e, $81
    jr jr_000_3c14

Call_000_3c12::
    ld e, $41

jr_000_3c14:
    ld hl, $38bf
    jr jr_000_3c4d

    ld e, $c8
    jr jr_000_3c2f

Jump_000_3c1d:
    ld e, $c4
    jr jr_000_3c2f

    ld e, $c2
    jr jr_000_3c2f

Call_000_3c25::
    ld e, $c1
    jr jr_000_3c2f

Call_000_3c29::
    ld e, $81
    jr jr_000_3c2f

    ld e, $41

jr_000_3c2f:
    ld hl, $3936
    jr jr_000_3c4d

Call_000_3c34:
    ld e, $c8
    jr jr_000_3c4a

Call_000_3c38::
    ld e, $c4
    jr jr_000_3c4a

    ld e, $c2
    jr jr_000_3c4a

Call_000_3c40::
    ld e, $c1
    jr jr_000_3c4a

Call_000_3c44::
    ld e, $81
    jr jr_000_3c4a

Call_000_3c48::
    ld e, $41

jr_000_3c4a:
    ld hl, $39ac

jr_000_3c4d:
    ld d, a
    and a
    ret z

    cpl
    inc a
    sra a
    ldh [$ff94], a
    ld a, e
    ldh [$ff9d], a
    ld a, $c3
    ldh [$ff9e], a
    ld a, l
    ldh [$ff9f], a
    ld a, h
    ldh [$ffa0], a
    ld e, $00
    ld h, b
    ld l, c

Jump_000_3c67:
    ld a, h
    sub d
    jr nc, jr_000_3c6c

    xor a

jr_000_3c6c:
    cp $90
    jp nc, Jump_000_3d3e

    ld b, a
    ld a, h
    add d
    jr c, jr_000_3c7b

    dec a
    cp $90
    jr c, jr_000_3c7d

jr_000_3c7b:
    ld a, $8f

jr_000_3c7d:
    ld c, a
    ldh a, [$ff9d]
    and $3f
    cp $01
    jr z, jr_000_3c92

    cp $02
    jr z, jr_000_3cb9

    cp $04
    jr z, jr_000_3ce2

    cp $08
    jr z, jr_000_3d0f

jr_000_3c92:
    ldh a, [$ff9d]
    bit 7, a
    jr z, jr_000_3ca3

    push bc
    push de
    push hl
    ld a, l
    sub e
    call nc, $ff9e
    pop hl
    pop de
    pop bc

jr_000_3ca3:
    ldh a, [$ff9d]
    bit 6, a
    jp z, Jump_000_3d3e

    push de
    push hl
    ld a, l
    add e
    dec a
    cp $70
    call c, $ff9e
    pop hl
    pop de
    jp Jump_000_3d3e


jr_000_3cb9:
    ldh a, [$ff9d]
    bit 7, a
    jr z, jr_000_3ccc

    push bc
    push de
    push hl
    ld a, l
    srl e
    sub e
    call nc, $ff9e
    pop hl
    pop de
    pop bc

jr_000_3ccc:
    ldh a, [$ff9d]
    bit 6, a
    jr z, jr_000_3d3e

    push de
    push hl
    ld a, l
    srl e
    add e
    dec a
    cp $70
    call c, $ff9e
    pop hl
    pop de
    jr jr_000_3d3e

jr_000_3ce2:
    ldh a, [$ff9d]
    bit 7, a
    jr z, jr_000_3cf7

    push bc
    push de
    push hl
    ld a, l
    srl e
    srl e
    sub e
    call nc, $ff9e
    pop hl
    pop de
    pop bc

jr_000_3cf7:
    ldh a, [$ff9d]
    bit 6, a
    jr z, jr_000_3d3e

    push de
    push hl
    ld a, l
    srl e
    srl e
    add e
    dec a
    cp $70
    call c, $ff9e
    pop hl
    pop de
    jr jr_000_3d3e

jr_000_3d0f:
    ldh a, [$ff9d]
    bit 7, a
    jr z, jr_000_3d26

    push bc
    push de
    push hl
    ld a, l
    srl e
    srl e
    srl e
    sub e
    call nc, $ff9e
    pop hl
    pop de
    pop bc

jr_000_3d26:
    ldh a, [$ff9d]
    bit 6, a
    jr z, jr_000_3d3e

    push de
    push hl
    ld a, l
    srl e
    srl e
    srl e
    add e
    dec a
    cp $70
    call c, $ff9e
    pop hl
    pop de

Jump_000_3d3e:
jr_000_3d3e:
    ldh a, [$ff9d]
    and $3f
    ld b, a

jr_000_3d43:
    ldh a, [$ff94]
    cp $80
    jr nc, CheckForTransitions

    dec d
    sub d
    ldh [$ff94], a
    ld a, d
    cp $80
    jr c, jr_000_3d43

    ret


CheckForTransitions:
    inc e
    ldh a, [$ff94]
    add e
    ldh [$ff94], a
    dec b
    jr nz, jr_000_3d43

    jp Jump_000_3c67


InitScreenForOpening:
    nop

InitScreenForOpening2::
    call TransitionToLogoOrTitleFromDemo

Jump_000_3d63::
    call TransitionExitingTitle
    ld a, [$da2a]
    bit 4, a
    call z, PrepareInterFaceLoad
    ld a, [$da2a]
    bit 4, a
    jr nz, PrepareDemoTransition

    call $45c2
    jr jr_000_3d7d

PrepareDemoTransition:
    call $4626

jr_000_3d7d:
    ld l, $e0
    ld a, $06
    call TitleExitThing
    ld l, $f0
    ld a, $50
    call TitleExitThing
    call TransitionFromTitle
    call InitGameplayScene
    ld a, [$da2a]
    bit 4, a
    call z, $456e
    ld a, $07
    ld [$c903], a
    xor a
    ldh [$ff87], a
    xor a
    call PrepareForClearBufferStack

Jump_000_3da5::
    ld a, [$da2a]
    bit 4, a
    jr nz, jr_000_3dba

    ldh a, [$ff91]
    bit 7, a
    jr z, jr_000_3dba

    ld a, [$c910]
    cp $01
    jp nz, $4227

jr_000_3dba:
    ld hl, $ff87
    inc [hl]
    ldh a, [$ffef]
    bit 5, a
    jp z, Jump_000_3e74

    bit 0, a
    jp nz, Jump_000_3e74

    ldh a, [$ffa1]
    ld b, a
    ld hl, $d9fe

jr_000_3dd0:
    ld a, [hl+]
    and a
    jr z, jr_000_3dda

    dec b
    jr nz, jr_000_3dd0

    jp Jump_000_3e74


jr_000_3dda:
    ld a, [$d9f3]
    ld c, a
    ld a, [$d9f4]
    ld b, a
    or c
    jr nz, jr_000_3dfe

    ldh a, [$ff92]
    swap a
    or $0d
    ld l, a
    ld h, $c2
    ld a, [hl]
    cp $01
    jp nz, Jump_000_3e74

    ld a, $01
    ld [$da45], a
    call $6f71
    jr jr_000_3e74

jr_000_3dfe:
    ldh a, [$ff87]
    and $07
    jr nz, jr_000_3e74

    dec bc
    ld a, c
    ld [$d9f3], a
    ld a, b
    ld [$d9f4], a
    or c
    jr nz, jr_000_3e74

    ldh a, [$ff92]
    swap a
    ld l, a
    ld h, $c2
    ld a, [hl]
    res 4, a
    set 6, a
    ld [hl], a
    ld a, l
    or $0d
    ld l, a
    ld a, $1e
    ld [hl], a
    call Call_000_093a
    ld e, $00
    ldh a, [$ffa1]
    ld b, a

jr_000_3e2c:
    ld d, $00
    ld hl, $d9fe
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_000_3e70

    ld a, e
    or $70
    ld l, a
    ld h, $c7
    ldh a, [$ff92]
    cp e
    jr nz, jr_000_3e47

    ldh a, [$ffee]
    set 5, a
    ldh [$ffee], a

jr_000_3e47:
    dec [hl]
    push bc
    push de
    call z, Call_000_26a9
    pop de
    pop bc
    ld a, e
    or $10
    ld l, a
    xor a
    ld [hl], a
    ld a, e
    or $80
    ld l, a
    ld a, $03
    ld [hl], a
    ld a, e
    or $60
    ld l, a
    xor a
    ld [hl], a
    ld a, e
    swap a
    or $0f
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $03
    or $24
    ld [hl], a

jr_000_3e70:
    inc e
    dec b
    jr nz, jr_000_3e2c

Jump_000_3e74:
jr_000_3e74:
    ldh a, [$ff92]
    swap a
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc l
    ld a, [hl+]
    swap a
    or b
    ld l, a
    ld h, $c4
    set 4, [hl]
    ld a, [$da2a]
    bit 4, a
    call z, Call_000_11f2
    ldh a, [$ffef]
    bit 5, a
    call nz, Call_000_2c0e
    ldh a, [$ffef]
    bit 0, a
    jr nz, jr_000_3ed7

    bit 6, a
    jr nz, jr_000_3ed7

    bit 7, a
    jr nz, jr_000_3ed7

    ld a, [$da46]
    bit 0, a
    jr nz, jr_000_3ed1

    ld hl, $d9d3
    ld b, $00

jr_000_3eb2:
    ld a, [hl]
    and a
    jr z, jr_000_3ec2

    dec [hl]
    ldh a, [$ff92]
    cp b
    jr nz, jr_000_3ec2

    ldh a, [$ffee]
    set 3, a
    ldh [$ffee], a

jr_000_3ec2:
    inc hl
    inc b
    ldh a, [$ffa1]
    cp b
    jr nz, jr_000_3eb2

jr_000_3ec9:
    xor a
    ld [hl+], a
    inc b
    ld a, b
    cp $10
    jr c, jr_000_3ec9

jr_000_3ed1:
    call Call_000_1f88
    call Call_000_2264

jr_000_3ed7:
    ld a, [$da2a]
    bit 4, a
    call z, Call_000_1283
    call $46f3
    call $47a9
    ld a, [$da46]
    bit 0, a
    jr nz, jr_000_3f13

    bit 2, a
    jr nz, jr_000_3f13

    call Call_000_09a7
    ldh a, [$ffa1]
    ld b, a
    ld hl, $c720

jr_000_3ef9:
    ld a, [hl+]
    and a
    jr nz, jr_000_3f02

    dec b
    jr nz, jr_000_3ef9

    jr jr_000_3f13

jr_000_3f02:
    ldh a, [$ffa1]
    or $90
    ld l, a
    ldh a, [$ffa1]
    cpl
    inc a
    add $10
    ld b, a

jr_000_3f0e:
    xor a
    ld [hl+], a
    dec b
    jr nz, jr_000_3f0e

jr_000_3f13:
    ld a, [$da2a]
    bit 4, a
    call z, $7122
    call Call_000_2414
    ld a, [$da46]
    bit 0, a
    jr nz, jr_000_3f2d

    bit 1, a
    jr nz, jr_000_3f2d

    bit 2, a
    jr z, jr_000_3f40

jr_000_3f2d:
    ldh a, [$ffa1]
    ld b, a
    ld hl, $c790

jr_000_3f33:
    ld a, [hl+]
    bit 0, a
    jr z, jr_000_3f3d

    call $7491
    jr jr_000_3f40

jr_000_3f3d:
    dec b
    jr nz, jr_000_3f33

jr_000_3f40:
    ld a, [$da2a]
    bit 4, a
    jp nz, SelectPressed

    ld a, [$c790]
    bit 3, a
    jr z, CheckForSoftReset

    ld a, [$c7a0]
    bit 3, a
    jr nz, CheckForSoftReset

    ldh a, [$ffef]
    bit 6, a
    jp nz, $4227

    bit 7, a
    jp nz, $4227

    bit 0, a
    jr nz, jr_000_3f7a

    ld a, $ee
    ld [$d9f8], a
    ld a, [$d9f7]
    ld [$d9f6], a
    call Call_000_093a
    ldh a, [$ffef]
    set 0, a
    jr jr_000_3f8b

jr_000_3f7a:
    ld a, [$da2a]
    bit 1, a
    call nz, Call_000_0940
    ld a, $ff
    ld [$d9f6], a
    ldh a, [$ffef]
    res 0, a

jr_000_3f8b:
    ldh [$ffef], a
    ld a, $1b
    call sound_test_selection

CheckForSoftReset:
    ld a, [$c790]
    bit 2, a
    jr z, NotSoftReset

    bit 3, a
    jr z, NotSoftReset

    bit 0, a
    jr z, NotSoftReset

    bit 1, a
    jp nz, $4227

NotSoftReset:
    ldh a, [$ff92]
    or $90
    ld c, a
    ld b, $c7
    ld a, [bc]
    bit 2, a
    jr z, SelectPressed

    ld a, c
    and $0f
    or $a0
    ld c, a
    ld a, [bc]
    bit 2, a
    jr nz, SelectPressed

    ldh a, [$ffef]
    bit 1, a
    jr nz, DisableMap

    set 1, a
    ldh [$ffef], a
    jr HandleMapTransition

DisableMap:
    res 1, a
    ldh [$ffef], a

HandleMapTransition:
    ld a, $1b
    call sound_test_selection

SelectPressed:
    ldh a, [$ffef]
    bit 5, a
    jr z, jr_000_3ff2

    ldh a, [$ffa1]
    ld b, a
    ld hl, $c770

jr_000_3fde:
    ld a, [hl]
    and a
    jr nz, jr_000_3fee

    ld a, l
    swap a
    and $f0
    ld e, a
    ld d, $c2
    ld a, [de]
    set 6, a
    ld [de], a

jr_000_3fee:
    inc l
    dec b
    jr nz, jr_000_3fde

jr_000_3ff2:
    ld a, [$da46]
    bit 0, a
    jr nz, @+$71

    bit 2, a
    jr nz, @+$6d

    ldh a, [$ffef]
    db $cb
