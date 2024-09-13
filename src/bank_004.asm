; Disassembly of "Faceball 2000 (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

Call_004_4000:
    jp Jump_000_0092


RefreshHIRAMPosJump:
    jp Jump_000_0095


Call_004_4006:
    jp Jump_000_0098


    jp Jump_000_008f


Call_004_400c:
    jp Jump_000_0080


Call_004_400f:
    jp Jump_000_009b


Call_004_4012:
    jp Jump_000_0083


Call_004_4015:
    jp Jump_000_008c


Call_004_4018:
    jp Jump_000_0086


Call_004_401b:
    jp Jump_000_0089


    jp PrepareForBPSLogo


PrepareForBPSLogo:
    ld bc, $2000
    ld hl, $8000

jr_004_4027:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_004_4027

    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_004_4027

    ld hl, $40f3
    call StartLoadingBPSLogo
    ld hl, $478f
    call Call_004_409c
    ld a, $9c
    ldh [rBGP], a
    ld hl, rLCDC
    set 0, [hl]
    set 4, [hl]
    set 7, [hl]
    ret


StartLoadingBPSLogo:
    ld de, $8000
    ld bc, $17ff

jr_004_4054:
    ld a, [hl+]
    cp $99
    jr z, jr_004_4070

    cp $9a
    jr z, LoadBPSLogoGFX

    cp $9b
    jr z, jr_004_4090

    cp $a9
    jr z, jr_004_4098

    cp $aa
    jr nz, jr_004_4074

    xor a
    call Call_004_4079
    call Call_004_4079

jr_004_4070:
    xor a

jr_004_4071:
    call Call_004_4079

jr_004_4074:
    call Call_004_4079
    jr jr_004_4054

Call_004_4079:
    push af

jr_004_407a:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_004_407a

    pop af
    ld [de], a
    inc de
    dec bc
    bit 7, b
    ret z

    pop af
    ret


LoadBPSLogoGFX:
    xor a
    call Call_004_4079
    dec a
    jr jr_004_4074

jr_004_4090:
    ld a, $c6
    call Call_004_4079
    xor a
    jr jr_004_4074

jr_004_4098:
    ld a, $ff
    jr jr_004_4071

Call_004_409c:
jr_004_409c:
    ld a, [hl+]
    cp $ff
    jr z, jr_004_40a6

    call load_logo_byte_to_tilemap
    jr jr_004_409c

jr_004_40a6:
    ld a, [hl+]
    cp $02
    jr z, jr_004_40bc

    cp $03
    jr z, jr_004_40c7

    cp $04
    jr z, jr_004_40d4

    and a
    ret z

    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    jr jr_004_409c

jr_004_40bc:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]

jr_004_40bf:
    call load_logo_byte_to_tilemap
    dec b
    jr nz, jr_004_40bf

    jr jr_004_409c

jr_004_40c7:
    ld a, [hl+]
    inc a
    ld b, a
    ld a, [hl+]

jr_004_40cb:
    call load_logo_byte_to_tilemap
    inc a
    cp b
    jr nz, jr_004_40cb

    jr jr_004_409c

jr_004_40d4:
    ld a, [hl+]
    dec a
    ld b, a
    ld a, [hl+]

jr_004_40d8:
    call load_logo_byte_to_tilemap
    dec a
    cp b
    jr nz, jr_004_40d8

    jr jr_004_409c

load_logo_byte_to_tilemap:
    push af

jr_004_40e2:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_004_40e2

    pop af
    ld [de], a
    push af
    ld a, e
    add c
    ld e, a
    jr nc, jr_004_40f1

    inc d

jr_004_40f1:
    pop af
    ret


    xor d
    xor d
    xor d
    xor d
    xor d
    ld bc, $0001
    ld b, $09
    add hl, bc
    db $10
    rlca
    dec d
    dec b
    rla
    nop
    sbc c
    ld bc, $fe00
    ret nz

    rrca
    nop
    ld hl, sp-$80
    ldh a, [$ff80]
    ldh [rP1], a
    ret nc

    ld e, a
    xor d
    sbc c
    add b

jr_004_4116:
    xor d
    sbc c
    nop
    add b
    add b
    db $fc
    jr c, jr_004_4116

    jr nc, @-$0e

    nop
    ldh [rP1], a
    pop bc
    xor d
    sbc c
    nop
    xor d
    inc bc
    ld [bc], a
    inc b
    inc c
    ld de, $2210
    ld h, $46
    inc b
    ld c, h
    ld [$6099], sp
    nop
    pop bc
    ld bc, $0682
    ld [$1108], sp
    ld de, $0223
    ld [hl+], a
    ld b, $99
    ld [hl], b
    nop
    ldh [rP1], a
    ld h, b
    nop
    ret nz

    nop
    add b
    xor d
    nop
    xor d
    xor d
    xor d
    sbc c
    rrca
    nop
    xor d
    xor d
    xor d
    sbc c
    ret nz

    nop
    xor d
    xor d
    xor d
    nop
    ld [bc], a
    rlca
    ld b, $aa
    inc bc
    ld [bc], a
    inc bc
    ld c, $07
    inc d
    ld c, $28
    db $fc
    ld [hl], b
    ld hl, sp+$40
    sbc c
    add b
    nop
    add b
    nop
    ld e, b
    ld a, b
    db $fc
    ldh a, [$ff7c]
    nop
    inc a
    nop
    ld a, b
    nop
    ret nz

    add b
    inc bc
    xor d
    sbc c
    nop
    ld bc, $0600
    nop
    ld [$9900], sp
    rlca
    rlca
    jr @+$1a

    ldh [$ffe0], a
    xor d
    xor d
    xor d
    xor d
    xor d
    sbc c
    inc bc
    nop
    xor d
    sbc c
    nop
    ld [bc], a
    ld [bc], a

jr_004_419e:
    ld [bc], a
    ld bc, $0101
    ld bc, $1799
    rla
    ld bc, $c157
    rst $18
    ld [bc], a
    ld c, $04
    inc b
    ld [$90c8], sp
    ret nc

    ld h, b
    ld h, b
    jp $87cb


    add h
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    ld bc, $0100
    ld bc, $e003
    add b
    ldh a, [rP1]
    cp $01
    ld sp, hl
    pop hl
    dec de
    ld a, [c]
    inc sp
    pop hl
    ld h, d
    db $e3
    pop bc
    pop bc
    ld b, $04
    ld h, [hl]
    ld c, h
    call $8e88
    nop
    sbc [hl]
    ld e, $a4
    xor h
    ld l, b
    add sp, -$78
    adc b
    ld e, b
    db $10
    cp b
    jr nc, jr_004_4221

    jr nz, jr_004_4263

    ld h, b
    cp c
    ldh [rNR30], a
    ld [hl], b
    inc c
    ld a, h
    ld [hl], b
    ld [hl], b
    ld h, $04
    ld l, h
    inc c
    ld d, [hl]
    inc e
    adc h
    jr c, jr_004_4209

    jr c, jr_004_420b

    jr c, @+$09

    ld a, $08
    jr c, jr_004_419e

    inc e
    db $10
    ld [hl], $20

jr_004_4209:
    jr z, jr_004_426b

jr_004_420b:
    ld [hl], b
    ld h, b
    ldh [$fff0], a
    ld h, b
    ld a, b
    rra
    ld e, $11
    db $10
    inc hl
    ld h, d
    ld b, d
    ld b, [hl]
    add [hl]
    adc h
    adc [hl]
    inc c
    sub [hl]
    inc e
    add e
    rrca

jr_004_4221:
    rrca
    rrca
    ldh [rP1], a
    add l
    rlca
    ld b, $06
    sbc c
    inc c
    inc c
    db $10
    db $10
    ldh [$ffe0], a
    sbc c
    sbc c
    pop af
    xor d
    xor d
    sbc c
    nop
    ld bc, $f801
    db $10
    ldh a, [$ffe0]
    db $e3
    jp nz, $cccc

    pop bc
    ret nz

    add [hl]
    add b
    sbc b
    sbc b
    jr nz, @+$22

    ld [hl], b
    nop
    db $e4
    add b
    sbc l
    inc c
    ld l, e
    ld c, $8f
    ld [$181a], sp
    ld [$1038], sp
    ld [hl], b
    sbc c
    add c
    nop
    sub [hl]
    inc e
    inc l
    ld [$18dc], sp
    inc e

jr_004_4263:
    jr jr_004_4284

    ld e, $0f
    ld [$bf99], sp
    nop

jr_004_426b:
    ld [hl], e
    jp nz, $0672

    ld l, [hl]
    inc c
    xor $0c
    rst $08
    rrca
    rlca
    inc b
    inc b
    nop
    ret c

    nop
    ld e, b
    ld h, b
    add hl, sp
    ld hl, $2232
    ld [hl], d
    ld b, d
    db $e4

jr_004_4284:
    add h
    add h
    inc b
    inc a
    nop
    ld l, b
    ld b, b
    ret nz

    add b
    xor d
    xor d
    sbc c
    ld e, $1e
    ld bc, $aa01
    xor d
    xor d
    ld e, $1e
    ldh [$ffe0], a
    xor d
    xor d
    xor d
    db $10
    ld h, b
    ld b, b
    sbc b
    jr nc, jr_004_4318

    ld b, b
    or b
    add b
    ld c, b
    add b
    inc h
    ret nz

    jr nz, @-$3e

    db $10
    xor d
    sbc c
    inc a
    jr nz, @+$29

    inc e
    rrca
    jr z, @+$60

    ld [hl], b
    ld a, [hl]
    ld h, b
    xor d
    xor d
    add b
    nop
    add b
    nop
    add b
    sbc c
    nop
    xor d
    xor d
    ld bc, $0601
    inc bc
    dec de
    ld [bc], a
    daa
    nop
    xor d
    inc b
    nop
    jr c, jr_004_42d2

jr_004_42d2:
    ld [hl], b
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ld c, a
    ld [$aaaa], sp
    xor d
    sbc c
    add b
    nop
    add c
    ldh [$ff8a], a
    ldh [$ffc0], a
    cp $fa
    ld [hl], l
    rst $38
    sbc d
    sbc d
    sbc d
    nop
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [$1808], sp
    jr jr_004_432c

    jr nc, jr_004_433e

jr_004_42fe:
    ld b, b
    add b
    add b
    xor d
    xor d
    sbc c
    inc c
    ld [$61ff], sp
    rst $38
    add c
    rrca
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $ffaa
    cp $fe
    db $fd
    rst $38

jr_004_4318:
    db $fc
    rst $38
    db $fd
    rst $38
    ld sp, hl
    db $fd
    ld a, [$f7fb]
    ld [hl], l
    ld l, a
    add b
    ld [hl], c
    ld h, b
    ld [bc], a
    add b
    dec a
    cp b
    ld b, d
    and b

jr_004_432c:
    ld c, h
    and $18
    add sp, $13
    cp c
    ld b, [hl]
    ld [$0808], sp
    ld [$1010], sp
    db $10
    db $10
    db $10
    db $10
    db $10

jr_004_433e:
    jr nc, jr_004_4350

    jr nc, jr_004_4362

    jr nz, @-$54

    xor d
    xor d
    sbc c
    inc bc
    nop
    xor d
    xor d
    rlca
    ld b, $37
    inc e
    rst $18

jr_004_4350:
    jr jr_004_4390

    jr nz, jr_004_42fe

    xor d
    xor d
    sbc c
    nop
    ld bc, $99aa
    inc bc
    nop
    inc e
    jr jr_004_4380

    nop
    ret nz

jr_004_4362:
    add b
    pop hl
    add b
    ld a, [hl]
    nop
    ld a, e
    rlca
    ld b, $38
    cp h
    nop
    add hl, sp
    ld sp, $2121
    ld b, c
    ld b, c
    add b
    add b
    sbc c
    ld sp, hl
    add b
    ld l, e
    ld c, [hl]
    ld b, a
    call nz, $80c7
    adc $88

jr_004_4380:
    ld a, h
    ldh a, [$ff71]
    pop af
    adc $00
    ld [de], a
    nop
    ld hl, $4200
    ld [bc], a
    ld c, h
    inc c
    sub b
    sub b

jr_004_4390:
    ldh [$ffe0], a
    add b
    add b
    ld [hl], e
    nop
    add a
    inc b
    add h
    ld [$180c], sp
    inc a
    jr c, jr_004_441b

    ld a, b
    rra
    ld e, $1f
    inc e
    ret nz

    sbc c
    nop
    inc bc
    ld [bc], a
    dec bc
    ld c, $17
    ld [$002e], sp
    db $dd
    rra
    ld [de], a
    ld e, $99
    adc h
    ld [$38af], sp
    reti


    ld sp, $2039
    ld a, e
    jr @+$01

    db $fc
    ld a, [hl]
    ld [hl], b
    ld sp, $f430
    ret nz

    ld [hl], c
    sub b
    push hl
    ld h, $a6
    inc h
    adc [hl]
    nop
    ld c, $0f
    inc bc
    rrca
    db $ec

jr_004_43d3:
    jr nc, jr_004_43f1

    jr nz, jr_004_43d3

jr_004_43d7:
    jr nz, @+$1f

    inc c
    ld e, $1c
    inc e
    jr jr_004_43d7

    ldh a, [$ff91]
    ld bc, $0005
    cpl
    jr @+$61

    db $10
    cp [hl]
    nop
    jr nc, @+$22

    ldh [$ffc0], a
    ldh [$ffc0], a
    add b

jr_004_43f1:
    add b
    add e
    inc bc
    ld [bc], a
    ld b, $cf
    inc c
    ld e, h
    jr jr_004_4477

    ld e, b
    inc c
    inc e
    inc b
    rra
    ld bc, $c00f
    nop
    ret nz

jr_004_4405:
    xor d
    nop
    ld bc, $0601
    add [hl]
    jr c, jr_004_4405

    ret nz

    ret nz

    jr nz, jr_004_4431

    xor d
    add b
    add b
    xor d
    xor d
    xor d
    sbc c
    ret nz

    nop
    add b

jr_004_441b:
    xor d
    sbc c
    nop
    rst $38
    sbc d
    sbc d
    sbc d
    sbc d
    ld [bc], a
    rst $38
    ld b, $ff
    db $e4
    rst $38
    db $e4
    nop
    ld bc, $0101
    xor d
    xor d
    xor d

jr_004_4431:
    ld a, [hl]
    ld hl, sp-$08
    ldh [$ffaa], a
    xor d
    ld bc, $0501
    ld b, $aa
    xor d
    sbc c
    nop
    rlca
    ldh a, [$fff8]
    add b
    nop
    ld bc, $0201
    ld [bc], a
    ld b, $06
    inc b
    inc b
    inc c
    inc c
    sbc d
    xor c
    jr jr_004_4462

    xor d
    xor d
    sbc c
    nop
    ret nz

    ret nz

    rst $38
    ccf
    ccf
    xor d
    xor d
    xor d
    sbc d
    rst $38
    nop
    xor d

jr_004_4462:
    xor d
    xor d
    sbc d
    rst $38
    rlca
    xor d
    xor d
    sbc c
    ld a, [hl]
    ld a, [hl]
    inc bc
    xor c
    rst $38
    xor d
    xor d
    xor d
    sbc c
    ret nz

    ret nz

    rrca
    and e

jr_004_4477:
    ld c, $57
    dec e
    xor a
    inc sp
    ld c, a
    ld [hl], a
    sbc h
    ld a, a
    cp b
    rst $38
    ret nz

    rst $38
    nop
    ld hl, sp-$18
    ld hl, sp-$38

jr_004_4489:
    ldh a, [$ff90]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$ff30]
    ldh a, [$ff30]
    ldh a, [$ff30]
    rra
    db $10
    rrca
    db $10
    ld c, $10
    inc a
    xor d
    xor d
    nop
    add b
    ld [$0600], sp
    nop
    ld bc, $aaaa
    sbc c
    xor d
    nop
    add b
    xor d
    xor d
    sbc c
    ld b, b
    nop
    add b
    xor d
    xor d
    xor d
    inc b
    xor d
    sbc c
    inc bc
    ld bc, $000c
    stop
    jr nz, jr_004_44bf

jr_004_44bf:
    ld b, b
    nop
    rra
    jr jr_004_44f4

    ld h, b
    ret nz

    ret nz

    sbc c
    ld bc, $0200
    inc b
    inc c
    sbc c
    nop
    ld b, $00
    inc b
    xor d
    xor d
    xor d
    nop
    xor d
    xor d
    xor d
    sbc c
    ld bc, $3801
    jr nc, jr_004_450f

    jr nz, jr_004_4551

    ld b, b
    ld h, b
    ld b, c
    ld h, c
    rlca
    nop
    jr c, jr_004_4489

    ret nz

    ld bc, $0700
    nop
    ld c, $01
    ld bc, $3f3e
    pop af

jr_004_44f4:
    rst $38
    rst $08
    cp $1f
    pop af
    ld c, $cf
    ld sp, $99ff
    rst $38
    add b
    sbc d
    cp $a9
    ld bc, $9aa9
    rst $38
    rst $38
    rrca
    sbc d

jr_004_450a:
    rst $38
    nop
    inc bc
    inc bc
    nop

jr_004_450f:
    ld a, h
    sbc a
    cp [hl]
    rst $08
    jr @-$0f

    ret c

    ldh a, [rIE]
    nop
    rst $20
    ld hl, sp+$79
    add $fe
    ld bc, $807f
    rra
    ldh [$ff63], a

jr_004_4524:
    add c
    ld sp, hl
    ldh [$ffe0], a
    jr nz, jr_004_450a

    jr jr_004_4524

    inc b
    db $fc
    inc bc
    rst $38
    sbc d
    sbc d
    ldh [$ff7f], a
    xor d
    xor d
    sbc c
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$ff0e]
    nop
    jr jr_004_4541

jr_004_4541:
    jr nc, jr_004_4543

jr_004_4543:
    inc bc
    nop
    ld e, $00
    inc a
    nop
    ld [hl], b
    sbc c
    nop
    ei
    or h
    rst $38
    or [hl]
    di

jr_004_4551:
    cp [hl]
    or e
    cp $b3
    cp $a3
    cp $27
    cp $25
    db $fc
    rst $38
    sbc d
    ld [$18ff], sp
    rst $38
    jr @+$01

    jr c, @+$01

    jr nc, @+$01

    ld sp, $31ff
    ldh [$ff60], a
    ldh [$ff60], a
    ldh [$ff60], a
    ldh [$ffe0], a
    ldh [$ffe0], a
    ldh [$ffe0], a
    ldh [$ffe0], a
    ldh [$ff60], a
    inc b
    inc b
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $99aa
    nop
    xor d
    xor d
    sbc c
    add b
    nop
    ld b, b
    nop
    jr c, jr_004_45a8

    inc bc
    ld bc, $0307
    ld bc, $0101
    ld bc, $0103
    ld c, $0c
    inc a
    jr nc, @-$0e

    ret nz

    ld [hl+], a
    rst $38
    ld h, h
    rst $38
    call nz, $98ff
    rst $38

jr_004_45a8:
    ld sp, hl
    rst $38
    db $e3
    ld a, a
    rst $00
    ld a, [hl]
    call z, $067f
    ld b, $08
    jr jr_004_45ed

    jr nc, jr_004_45c7

jr_004_45b7:
    nop
    db $10
    xor d
    sbc c
    ld bc, $9901
    inc bc
    inc bc
    ld b, $07
    inc c
    rla
    db $10
    ld h, a
    ld h, b

jr_004_45c7:
    rst $08
    add b
    adc a
    nop
    ccf
    rst $00
    rst $38
    rra
    cp $3f
    ld sp, hl
    ld a, $f3
    ld a, h
    rst $20
    jr c, jr_004_45b7

    inc hl
    ccf
    rst $20
    xor c
    ret nz

    rst $38
    ld a, $c0
    db $fd
    sbc d
    ld d, b
    rst $38
    cp $a9
    xor c
    nop
    ret nz

    nop
    dec sp
    add b
    ld c, h

jr_004_45ed:
    ld bc, $e738
    nop
    rst $08
    nop
    cp a
    sbc d
    nop
    jp $007f


    ld bc, $f300
    ccf
    inc bc
    rst $38
    ld bc, $00ff
    ldh a, [rP1]
    add b
    rrca
    ld hl, sp-$61
    rst $38
    di
    ccf
    db $fc
    rlca
    rst $38
    add c
    rst $38

jr_004_4610:
    ret nz

    rst $38
    nop
    rra
    nop
    ld c, a
    jr jr_004_4610

    ld hl, sp-$08
    cp h
    adc h
    and d
    ld e, [hl]
    pop hl
    sub e
    ld [hl], b
    reti


    jr c, jr_004_4610

    inc e
    or $aa
    xor d
    sbc c
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ld [hl], b
    ld c, h
    ld hl, sp+$4c
    ld hl, sp-$68
    ld hl, sp-$48
    ldh a, [$ff78]
    ldh [$fff0], a
    ret nz

    ldh a, [rP1]
    ldh [rP1], a
    rst $38
    ld [hl], d
    rst $38
    ld h, d
    ld a, a
    ld h, [hl]
    ld a, a
    ld b, l
    ccf
    dec c
    ccf
    ld a, [de]
    ccf
    dec [hl]
    rst $38
    dec l
    ldh [$ffe0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    sbc c
    rst $38
    inc bc
    ei
    rlca
    di
    rlca
    jp $870e


    ld c, $07
    inc e
    rlca
    inc l
    rlca
    ld e, c
    rlca
    rlca
    xor d
    xor d
    xor d
    sbc c
    xor c
    db $fc
    db $fc
    xor d
    xor d
    xor d
    xor d
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    nop
    ld bc, $aaaa
    nop
    adc [hl]
    ld bc, $030d
    dec de
    ld b, $17
    inc c
    rra
    inc e
    ccf
    jr c, jr_004_46bd

    jr nc, jr_004_46df

    jr nc, @+$01

    add c
    rst $38
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    ccf
    xor c
    rst $38
    cp $ff
    sbc d
    sbc d
    sbc d
    sbc d
    ld b, $ff
    inc e
    cp a
    ld hl, sp-$02
    nop
    ld sp, hl
    nop
    di
    inc b

jr_004_46bd:
    rst $38
    sbc d
    sbc d
    sbc d
    sbc d
    nop
    nop
    inc sp
    ret nz

    inc c
    jr jr_004_46ea

    or $9a
    sbc d
    sbc d
    sbc d
    nop
    nop
    daa
    nop
    rlc [hl]
    scf
    rrca
    ld h, e
    xor a
    ld bc, $9aff
    sbc d
    nop
    ld c, $3f

jr_004_46df:
    inc bc
    adc a
    ld bc, $00c2
    ldh [$ffc0], a
    ldh a, [$ffe0]
    ld [hl], b
    ret nz

jr_004_46ea:
    ld a, b
    add h
    ldh a, [$ff08]
    jr jr_004_46f4

    call z, $fec6
    rst $38

jr_004_46f4:
    sbc [hl]
    ccf
    nop
    ld e, $00
    ld c, $00
    inc c
    nop
    db $e3
    nop
    adc $00
    sbc b
    nop
    sub e
    nop
    ld c, $00
    inc e
    nop
    stop
    rlca
    nop
    cp a
    ld a, [de]
    ld e, [hl]
    ld d, $9e
    inc d
    inc a
    jr z, jr_004_4752

    jr jr_004_4770

    db $10
    sbc b
    db $10
    jr nc, jr_004_471d

jr_004_471d:
    ld h, b
    nop
    ret nz

    nop
    add b
    xor d
    xor d
    sbc c
    nop
    xor d
    xor d
    nop
    inc bc
    inc e
    rra
    ld b, $07
    inc bc
    ld [bc], a
    ld h, l
    ld e, $0b
    ld a, $16
    ld a, a
    ld [de], a
    rst $38
    inc h
    rst $38
    ld c, b
    rst $38
    adc b
    rst $38
    db $10
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    cp $81
    db $fc
    ld [bc], a
    ldh a, [$ff0c]
    ld [bc], a
    nop

jr_004_4752:
    inc bc
    ld bc, $0103
    ld [bc], a
    xor d
    xor d
    nop
    xor d
    xor d
    xor d
    ld bc, $0701
    rlca
    ccf
    inc sp
    ccf
    inc hl
    rrca
    inc bc
    rrca
    ld bc, $0700
    scf
    ld a, $ff
    ld hl, sp-$20

jr_004_4770:
    nop
    xor c
    ld hl, sp-$01
    rst $20
    rst $38
    rra
    ld hl, sp-$01
    pop hl
    cp $03
    db $fd
    ld b, $ff
    jr @+$81

    pop af
    rst $38
    add a
    rst $38
    rra
    rst $38
    ld a, a
    cp a
    rst $38
    ld a, a
    cp a
    rst $38
    ld a, a
    xor c
    rst $38
    ld bc, $9842
    ld bc, $0302
    nop
    rst $38
    inc bc
    inc c
    dec b
    nop
    nop
    rrca
    ld sp, $ff40
    ld bc, $9861
    rst $38
    inc bc
    jr nz, jr_004_47b8

    rst $38
    ld bc, $9882
    ld hl, $0022
    rst $38
    inc bc
    jr z, jr_004_47d7

    nop
    ld a, [hl+]
    dec hl
    nop
    nop

jr_004_47b8:
    nop
    cpl
    rst $38
    ld bc, $98a3
    rst $38
    inc bc
    ccf
    ld [hl-], a
    rst $38
    ld bc, $98c3
    rst $38
    inc bc
    ld c, d
    ld b, d
    rst $38
    ld bc, $98e4
    rst $38
    inc bc
    ld e, e
    ld d, e
    rst $38
    ld bc, $9905
    rst $38

jr_004_47d7:
    inc bc
    ld l, h
    ld h, h
    rst $38
    ld bc, $9925
    rst $38
    inc bc
    ld a, h
    ld [hl], h
    rst $38
    ld bc, $9945
    add h
    add l
    add [hl]
    add a
    add d
    ld [hl], b
    ld b, c
    add hl, hl
    inc hl
    rst $38
    ld bc, $9964
    ld d, c
    ld d, d
    ld c, $2c
    dec l
    ld l, $ff
    inc bc
    ld c, a
    ld c, e
    rst $38
    ld bc, $9983
    ld [hl], e
    ld d, b
    nop
    nop
    add b
    add c
    ld e, l
    ld e, [hl]
    ld e, a
    rst $38
    ld bc, $99a3
    add e
    ld h, b
    ld h, c
    nop
    ld h, d
    ld h, e
    ld l, l
    ld l, [hl]
    ld l, a
    rst $38
    ld bc, $99c5
    ld [hl], c
    ld [hl], d
    dec c
    inc b
    ld a, l
    ld a, [hl]
    rst $38
    ld bc, $99e9
    ld e, h
    ld a, a
    rst $38
    nop
    ld [hl], d
    ld c, b
    ld d, e
    ld c, c
    inc [hl]
    ld c, d
    add hl, bc
    ld c, e
    xor $4b
    call z, $ab4c
    ld c, l
    sub b
    ld c, [hl]
    ld hl, $dabd
    xor a
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
    ld [hl+], a
    ld [hl+], a
    ldh a, [$fff1]
    ld b, a
    ldh a, [$fff3]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ld a, l
    ldh [$ffde], a
    ld a, h
    ldh [$ffdf], a
    ldh a, [$fff4]
    swap a
    and $0e
    ld e, a
    ld d, $00
    ld hl, $4829
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, $00
    ldh [$ffa8], a
    ld a, $10
    ldh [$ffbe], a
    cpl
    inc a
    ldh [$ffbf], a
    xor a
    ldh [$ffad], a
    ldh [$ffb1], a
    inc a
    ldh [$ffc0], a
    ldh [$ffae], a
    ldh [$ffb0], a
    ld a, $04
    ldh [$ffe0], a
    ld a, $02
    ldh [$ffe2], a
    ld a, $01
    ldh [$ffe1], a
    ld a, $08
    ldh [$ffe3], a
    ldh a, [$fff1]
    ld b, a
    ldh a, [$fff5]
    dec a
    sub b
    cp $02
    jr c, jr_004_48a7

    ld a, $02

jr_004_48a7:
    ldh [$ffab], a
    ldh a, [$fff3]
    ld b, a
    ldh a, [$fff6]
    dec a
    sub b
    cp $02
    jr c, jr_004_48b6

    ld a, $02

jr_004_48b6:
    ldh [$ffa9], a
    ldh a, [$fff3]
    inc a
    cp $02
    jr c, jr_004_48c1

    ld a, $02

jr_004_48c1:
    ldh [$ffaa], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_48cd

    cpl
    inc a
    dec b

jr_004_48cd:
    ld c, a
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_48d8

    cpl
    inc a
    dec d

jr_004_48d8:
    ld e, a
    ld hl, $0100
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $40
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffc1], a
    ld a, b
    ldh [$ffc2], a
    ld a, e
    ldh [$ffc5], a
    ld a, d
    ldh [$ffc6], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4900

    cpl
    inc a
    dec b

jr_004_4900:
    ld c, a
    ld hl, $0100
    add hl, bc
    ld c, l
    ld b, h
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4911

    cpl
    inc a
    dec d

jr_004_4911:
    ld e, a
    ld hl, $0100
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $40
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffba], a
    ld a, b
    ldh [$ffbb], a
    ld a, e
    ldh [$ffbc], a
    ld a, d
    ldh [$ffbd], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4939

    cpl
    inc a
    dec b

jr_004_4939:
    ld c, a
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4944

    cpl
    inc a
    dec d

jr_004_4944:
    ld e, a
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $40
    call RefreshHIRAMPosJump
    jp Jump_004_4f6a


    ld a, $01
    ldh [$ffa8], a
    ld a, $10
    ldh [$ffc0], a
    xor a
    ldh [$ffae], a
    ldh [$ffb0], a
    inc a
    ldh [$ffbe], a
    ldh [$ffad], a
    ldh [$ffb1], a
    cpl
    inc a
    ldh [$ffbf], a
    ld a, $02
    ldh [$ffe0], a
    ld a, $04
    ldh [$ffe2], a
    ld a, $08
    ldh [$ffe1], a
    ld a, $01
    ldh [$ffe3], a
    ldh a, [$fff3]
    ld b, a
    ldh a, [$fff6]
    dec a
    sub b
    cp $02
    jr c, jr_004_4988

    ld a, $02

jr_004_4988:
    ldh [$ffab], a
    ldh a, [$fff1]
    ld b, a
    ldh a, [$fff5]
    dec a
    sub b
    cp $02
    jr c, jr_004_4997

    ld a, $02

jr_004_4997:
    ldh [$ffa9], a
    ldh a, [$fff1]
    inc a
    cp $02
    jr c, jr_004_49a2

    ld a, $02

jr_004_49a2:
    ldh [$ffaa], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_49ae

    cpl
    inc a
    dec b

jr_004_49ae:
    ld c, a
    ld hl, $0100
    add hl, bc
    ld c, l
    ld b, h
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_49bf

    cpl
    inc a
    dec d

jr_004_49bf:
    ld e, a
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $20
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffc1], a
    ld a, b
    ldh [$ffc2], a
    ld a, e
    ldh [$ffc5], a
    ld a, d
    ldh [$ffc6], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_49e1

    cpl
    inc a
    dec b

jr_004_49e1:
    ld c, a
    ld hl, $0100
    add hl, bc
    ld c, l
    ld b, h
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_49f2

    cpl
    inc a
    dec d

jr_004_49f2:
    ld e, a
    ld hl, $0100
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $20
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffba], a
    ld a, b
    ldh [$ffbb], a
    ld a, e
    ldh [$ffbc], a
    ld a, d
    ldh [$ffbd], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4a1a

    cpl
    inc a
    dec b

jr_004_4a1a:
    ld c, a
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4a25

    cpl
    inc a
    dec d

jr_004_4a25:
    ld e, a
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $20
    call RefreshHIRAMPosJump
    jp Jump_004_4f6a


    ld a, $02
    ldh [$ffa8], a
    ld a, $10
    ldh [$ffc0], a
    xor a
    ldh [$ffb0], a
    ldh [$ffae], a
    inc a
    ldh [$ffbf], a
    ldh [$ffb1], a
    cpl
    inc a
    ldh [$ffbe], a
    ldh [$ffad], a
    ld a, $08
    ldh [$ffe0], a
    ld a, $04
    ldh [$ffe2], a
    ld a, $02
    ldh [$ffe1], a
    ld a, $01
    ldh [$ffe3], a
    ldh a, [$fff3]
    ld b, a
    ldh a, [$fff6]
    dec a
    sub b
    cp $02
    jr c, jr_004_4a69

    ld a, $02

jr_004_4a69:
    ldh [$ffab], a
    ldh a, [$fff1]
    inc a
    cp $02
    jr c, jr_004_4a74

    ld a, $02

jr_004_4a74:
    ldh [$ffa9], a
    ldh a, [$fff1]
    ld b, a
    ldh a, [$fff5]
    dec a
    sub b
    cp $02
    jr c, jr_004_4a83

    ld a, $02

jr_004_4a83:
    ldh [$ffaa], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4a8f

    cpl
    inc a
    dec b

jr_004_4a8f:
    ld c, a
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4a9a

    cpl
    inc a
    dec d

jr_004_4a9a:
    ld e, a
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffc1], a
    ld a, b
    ldh [$ffc2], a
    ld a, e
    ldh [$ffc5], a
    ld a, d
    ldh [$ffc6], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4aba

    cpl
    inc a
    dec b

jr_004_4aba:
    ld c, a
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4ac5

    cpl
    inc a
    dec d

jr_004_4ac5:
    ld e, a
    ld hl, $0100
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffba], a
    ld a, b
    ldh [$ffbb], a
    ld a, e
    ldh [$ffbc], a
    ld a, d
    ldh [$ffbd], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4aeb

    cpl
    inc a
    dec b

jr_004_4aeb:
    ld c, a
    ld hl, $0100
    add hl, bc
    ld c, l
    ld b, h
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4afc

    cpl
    inc a
    dec d

jr_004_4afc:
    ld e, a
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    call RefreshHIRAMPosJump
    jp Jump_004_4f6a


    ld a, $03
    ldh [$ffa8], a
    ld a, $10
    ldh [$ffbe], a
    cpl
    inc a
    ldh [$ffbf], a
    xor a
    ldh [$ffad], a
    ldh [$ffb1], a
    inc a
    ldh [$ffb0], a
    cpl
    inc a
    ldh [$ffc0], a
    ldh [$ffae], a
    ld a, $04
    ldh [$ffe0], a
    ld a, $08
    ldh [$ffe2], a
    ld a, $01
    ldh [$ffe1], a
    ld a, $02
    ldh [$ffe3], a
    ldh a, [$fff1]
    inc a
    cp $02
    jr c, jr_004_4b3c

    ld a, $02

jr_004_4b3c:
    ldh [$ffab], a
    ldh a, [$fff3]
    ld b, a
    ldh a, [$fff6]
    dec a
    sub b
    cp $02
    jr c, jr_004_4b4b

    ld a, $02

jr_004_4b4b:
    ldh [$ffa9], a
    ldh a, [$fff3]
    inc a
    cp $02
    jr c, jr_004_4b56

    ld a, $02

jr_004_4b56:
    ldh [$ffaa], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4b62

    cpl
    inc a
    dec b

jr_004_4b62:
    ld c, a
    ld hl, $0100
    add hl, bc
    ld c, l
    ld b, h
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4b73

    cpl
    inc a
    dec d

jr_004_4b73:
    ld e, a
    ld hl, $0100
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fff4]
    and $1f
    add $20
    cpl
    inc a
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffc1], a
    ld a, b
    ldh [$ffc2], a
    ld a, e
    ldh [$ffc5], a
    ld a, d
    ldh [$ffc6], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4b9b

    cpl
    inc a
    dec b

jr_004_4b9b:
    ld c, a
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4ba6

    cpl
    inc a
    dec d

jr_004_4ba6:
    ld e, a
    ld hl, $0100
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fff4]
    and $1f
    add $20
    cpl
    inc a
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffba], a
    ld a, b
    ldh [$ffbb], a
    ld a, e
    ldh [$ffbc], a
    ld a, d
    ldh [$ffbd], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4bce

    cpl
    inc a
    dec b

jr_004_4bce:
    ld c, a
    ld hl, $0100
    add hl, bc
    ld c, l
    ld b, h
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4bdf

    cpl
    inc a
    dec d

jr_004_4bdf:
    ld e, a
    ldh a, [$fff4]
    and $1f
    add $20
    cpl
    inc a
    call RefreshHIRAMPosJump
    jp Jump_004_4f6a


    ld a, $04
    ldh [$ffa8], a
    ld a, $10
    ldh [$ffbf], a
    cpl
    inc a
    ldh [$ffbe], a
    xor a
    ldh [$ffad], a
    ldh [$ffb1], a
    ld a, $ff
    ldh [$ffc0], a
    ldh [$ffae], a
    ldh [$ffb0], a
    ld a, $01
    ldh [$ffe0], a
    ld a, $08
    ldh [$ffe2], a
    ld a, $04
    ldh [$ffe1], a
    ld a, $02
    ldh [$ffe3], a
    ldh a, [$fff1]
    inc a
    cp $02
    jr c, jr_004_4c20

    ld a, $02

jr_004_4c20:
    ldh [$ffab], a
    ldh a, [$fff3]
    inc a
    cp $02
    jr c, jr_004_4c2b

    ld a, $02

jr_004_4c2b:
    ldh [$ffa9], a
    ldh a, [$fff3]
    ld b, a
    ldh a, [$fff6]
    dec a
    sub b
    cp $02
    jr c, jr_004_4c3a

    ld a, $02

jr_004_4c3a:
    ldh [$ffaa], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4c46

    cpl
    inc a
    dec b

jr_004_4c46:
    ld c, a
    ld hl, $0100
    add hl, bc
    ld c, l
    ld b, h
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4c57

    cpl
    inc a
    dec d

jr_004_4c57:
    ld e, a
    ldh a, [$fff4]
    and $1f
    add $40
    cpl
    inc a
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffc1], a
    ld a, b
    ldh [$ffc2], a
    ld a, e
    ldh [$ffc5], a
    ld a, d
    ldh [$ffc6], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4c79

    cpl
    inc a
    dec b

jr_004_4c79:
    ld c, a
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4c84

    cpl
    inc a
    dec d

jr_004_4c84:
    ld e, a
    ldh a, [$fff4]
    and $1f
    add $40
    cpl
    inc a
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffba], a
    ld a, b
    ldh [$ffbb], a
    ld a, e
    ldh [$ffbc], a
    ld a, d
    ldh [$ffbd], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4ca6

    cpl
    inc a
    dec b

jr_004_4ca6:
    ld c, a
    ld hl, $0100
    add hl, bc
    ld c, l
    ld b, h
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4cb7

    cpl
    inc a
    dec d

jr_004_4cb7:
    ld e, a
    ld hl, $0100
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fff4]
    and $1f
    add $40
    cpl
    inc a
    call RefreshHIRAMPosJump
    jp Jump_004_4f6a


    ld a, $05
    ldh [$ffa8], a
    ld a, $10
    cpl
    inc a
    ldh [$ffc0], a
    xor a
    ldh [$ffae], a
    ldh [$ffb0], a
    inc a
    ldh [$ffbf], a
    cpl
    inc a
    ldh [$ffbe], a
    ldh [$ffad], a
    ldh [$ffb1], a
    ld a, $08
    ldh [$ffe0], a
    ld a, $01
    ldh [$ffe2], a
    ld a, $02
    ldh [$ffe1], a
    ld a, $04
    ldh [$ffe3], a
    ldh a, [$fff3]
    inc a
    cp $02
    jr c, jr_004_4cff

    ld a, $02

jr_004_4cff:
    ldh [$ffab], a
    ldh a, [$fff1]
    inc a
    cp $02
    jr c, jr_004_4d0a

    ld a, $02

jr_004_4d0a:
    ldh [$ffa9], a
    ldh a, [$fff1]
    ld b, a
    ldh a, [$fff5]
    dec a
    sub b
    cp $02
    jr c, jr_004_4d19

    ld a, $02

jr_004_4d19:
    ldh [$ffaa], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4d25

    cpl
    inc a
    dec b

jr_004_4d25:
    ld c, a
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4d30

    cpl
    inc a
    dec d

jr_004_4d30:
    ld e, a
    ld hl, $0100
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $a0
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffc1], a
    ld a, b
    ldh [$ffc2], a
    ld a, e
    ldh [$ffc5], a
    ld a, d
    ldh [$ffc6], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4d58

    cpl
    inc a
    dec b

jr_004_4d58:
    ld c, a
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4d63

    cpl
    inc a
    dec d

jr_004_4d63:
    ld e, a
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $a0
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffba], a
    ld a, b
    ldh [$ffbb], a
    ld a, e
    ldh [$ffbc], a
    ld a, d
    ldh [$ffbd], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4d85

    cpl
    inc a
    dec b

jr_004_4d85:
    ld c, a
    ld hl, $0100
    add hl, bc
    ld c, l
    ld b, h
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4d96

    cpl
    inc a
    dec d

jr_004_4d96:
    ld e, a
    ld hl, $0100
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $a0
    call RefreshHIRAMPosJump
    jp Jump_004_4f6a


    ld a, $06
    ldh [$ffa8], a
    ld a, $10
    cpl
    inc a
    ldh [$ffc0], a
    xor a
    ldh [$ffae], a
    ldh [$ffb0], a
    inc a
    ldh [$ffad], a
    ldh [$ffbe], a
    cpl
    inc a
    ldh [$ffbf], a
    ldh [$ffb1], a
    ld a, $02
    ldh [$ffe0], a
    ld a, $01
    ldh [$ffe2], a
    ld a, $08
    ldh [$ffe1], a
    ld a, $04
    ldh [$ffe3], a
    ldh a, [$fff3]
    inc a
    cp $02
    jr c, jr_004_4dde

    ld a, $02

jr_004_4dde:
    ldh [$ffab], a
    ldh a, [$fff1]
    ld b, a
    ldh a, [$fff5]
    dec a
    sub b
    cp $02
    jr c, jr_004_4ded

    ld a, $02

jr_004_4ded:
    ldh [$ffa9], a
    ldh a, [$fff1]
    inc a
    cp $02
    jr c, jr_004_4df8

    ld a, $02

jr_004_4df8:
    ldh [$ffaa], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4e04

    cpl
    inc a
    dec b

jr_004_4e04:
    ld c, a
    ld hl, $0100
    add hl, bc
    ld c, l
    ld b, h
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4e15

    cpl
    inc a
    dec d

jr_004_4e15:
    ld e, a
    ld hl, $0100
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $80
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffc1], a
    ld a, b
    ldh [$ffc2], a
    ld a, e
    ldh [$ffc5], a
    ld a, d
    ldh [$ffc6], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4e3d

    cpl
    inc a
    dec b

jr_004_4e3d:
    ld c, a
    ld hl, $0100
    add hl, bc
    ld c, l
    ld b, h
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4e4e

    cpl
    inc a
    dec d

jr_004_4e4e:
    ld e, a
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $80
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffba], a
    ld a, b
    ldh [$ffbb], a
    ld a, e
    ldh [$ffbc], a
    ld a, d
    ldh [$ffbd], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4e70

    cpl
    inc a
    dec b

jr_004_4e70:
    ld c, a
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4e7b

    cpl
    inc a
    dec d

jr_004_4e7b:
    ld e, a
    ld hl, $0100
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $80
    call RefreshHIRAMPosJump
    jp Jump_004_4f6a


    ld a, $07
    ldh [$ffa8], a
    ld a, $10
    ldh [$ffbf], a
    cpl
    inc a
    ldh [$ffbe], a
    xor a
    ldh [$ffad], a
    ldh [$ffb1], a
    inc a
    ldh [$ffc0], a
    ldh [$ffae], a
    cpl
    inc a
    ldh [$ffb0], a
    ld a, $01
    ldh [$ffe0], a
    ld a, $02
    ldh [$ffe2], a
    ld a, $04
    ldh [$ffe1], a
    ld a, $08
    ldh [$ffe3], a
    ldh a, [$fff1]
    ld b, a
    ldh a, [$fff5]
    dec a
    sub b
    cp $02
    jr c, jr_004_4ec7

    ld a, $02

jr_004_4ec7:
    ldh [$ffab], a
    ldh a, [$fff3]
    inc a
    cp $02
    jr c, jr_004_4ed2

    ld a, $02

jr_004_4ed2:
    ldh [$ffa9], a
    ldh a, [$fff3]
    ld b, a
    ldh a, [$fff6]
    dec a
    sub b
    cp $02
    jr c, jr_004_4ee1

    ld a, $02

jr_004_4ee1:
    ldh [$ffaa], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4eed

    cpl
    inc a
    dec b

jr_004_4eed:
    ld c, a
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4ef8

    cpl
    inc a
    dec d

jr_004_4ef8:
    ld e, a
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $60
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffc1], a
    ld a, b
    ldh [$ffc2], a
    ld a, e
    ldh [$ffc5], a
    ld a, d
    ldh [$ffc6], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4f1a

    cpl
    inc a
    dec b

jr_004_4f1a:
    ld c, a
    ld hl, $0100
    add hl, bc
    ld c, l
    ld b, h
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4f2b

    cpl
    inc a
    dec d

jr_004_4f2b:
    ld e, a
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $60
    call RefreshHIRAMPosJump
    ld a, c
    ldh [$ffba], a
    ld a, b
    ldh [$ffbb], a
    ld a, e
    ldh [$ffbc], a
    ld a, d
    ldh [$ffbd], a
    ld b, $00
    ldh a, [$fff0]
    or a
    jr z, jr_004_4f4d

    cpl
    inc a
    dec b

jr_004_4f4d:
    ld c, a
    ld d, $00
    ldh a, [$fff2]
    or a
    jr z, jr_004_4f58

    cpl
    inc a
    dec d

jr_004_4f58:
    ld e, a
    ld hl, $0100
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fff4]
    and $1f
    cpl
    inc a
    add $60
    call RefreshHIRAMPosJump

Jump_004_4f6a:
    ldh a, [$ffc1]
    ldh [$ffc3], a
    ld l, a
    ldh a, [$ffc2]
    ldh [$ffc4], a
    ld h, a
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    add hl, bc
    ld a, l
    ldh [$ffb2], a
    ld a, h
    ldh [$ffb3], a
    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a
    ld a, l
    ldh [$ffb6], a
    ld a, h
    ldh [$ffb7], a
    ldh a, [$ffc5]
    ldh [$ffc7], a
    ld l, a
    ldh a, [$ffc6]
    ldh [$ffc8], a
    ld h, a
    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a
    add hl, de
    ld a, l
    ldh [$ffb4], a
    ld a, h
    ldh [$ffb5], a
    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a
    ld a, l
    ldh [$ffb8], a
    ld a, h
    ldh [$ffb9], a
    ldh a, [$ffba]
    ld l, a
    ldh a, [$ffbb]
    ld h, a
    ldh a, [$ffc1]
    ld c, a
    ldh a, [$ffc2]
    ld b, a
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    add hl, bc
    ld a, l
    ldh [$ffba], a
    ld a, h
    ldh [$ffbb], a
    ldh a, [$ffbc]
    ld l, a
    ldh a, [$ffbd]
    ld h, a
    ldh a, [$ffc5]
    ld c, a
    ldh a, [$ffc6]
    ld b, a
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    add hl, bc
    ld a, l
    ldh [$ffbc], a
    ld a, h
    ldh [$ffbd], a
    ldh a, [$ffa9]
    ld b, a
    ldh a, [$ffaa]
    ld c, a
    cp b
    jr c, jr_004_500b

    ldh a, [$ffab]
    cp c
    jr nc, jr_004_5011

    ld a, c
    jr jr_004_5011

jr_004_500b:
    ldh a, [$ffab]
    cp b
    jr nc, jr_004_5011

    ld a, b

jr_004_5011:
    ldh [$ffa6], a
    ld hl, $c400
    ldh a, [$fff6]
    ld b, a
    ldh a, [$fff5]
    ld e, a
    ld d, $1f

jr_004_501e:
    ld c, e

jr_004_501f:
    ld a, [hl]
    and d
    ld [hl+], a
    dec c
    jr nz, jr_004_501f

    ld a, l
    dec a
    and $f0
    add $10
    ld l, a
    dec b
    jr nz, jr_004_501e

    ld de, $d9e3
    xor a
    ldh [$ff98], a

Jump_004_5035:
    ld l, a
    ld h, $c2
    xor a
    ld [de], a
    res 7, [hl]
    bit 3, [hl]
    jr z, jr_004_5052

    ld a, l
    or $07
    ld l, a
    ld a, [hl+]
    ld c, a
    inc l
    ld a, [hl]
    swap a
    or c
    ld c, a
    ld b, $c4
    ld a, [bc]
    set 6, a
    ld [bc], a

jr_004_5052:
    ld a, l
    and $f0
    ld l, a
    ld a, [hl+]
    bit 0, a
    jp z, Jump_004_50c0

    bit 6, a
    jp nz, Jump_004_50c0

    ld a, [hl+]
    ld c, a
    inc l
    ld a, [hl+]
    ld b, a
    ld a, [hl-]
    dec l
    ld h, [hl]
    swap a
    or h
    ld l, a
    ld h, $c4
    ld a, c
    cp $2e
    jp nc, Jump_004_507f

    dec l
    set 5, [hl]
    call Call_004_594a
    inc l
    ld a, [de]
    inc a
    ld [de], a

Jump_004_507f:
    ld a, c
    cp $d2
    jp c, Jump_004_508f

    inc l
    set 5, [hl]
    call Call_004_594a
    dec l
    ld a, [de]
    inc a
    ld [de], a

Jump_004_508f:
    ld a, b
    cp $2e
    jp nc, Jump_004_50a5

    ld a, l
    sub $10
    ld l, a
    set 5, [hl]
    call Call_004_594a
    ld a, l
    add $10
    ld l, a
    ld a, [de]
    inc a
    ld [de], a

Jump_004_50a5:
    ld a, b
    cp $d2
    jp c, Jump_004_50bb

    ld a, l
    add $10
    ld l, a
    set 5, [hl]
    call Call_004_594a
    ld a, l
    sub $10
    ld l, a
    ld a, [de]
    inc a
    ld [de], a

Jump_004_50bb:
    set 5, [hl]
    ld a, [de]
    inc a
    ld [de], a

Jump_004_50c0:
    inc de
    ldh a, [$ff98]
    add $10
    ldh [$ff98], a
    jp nz, Jump_004_5035

    ld hl, $c300

jr_004_50cd:
    ld a, [hl]
    bit 0, a
    jr z, jr_004_5119

    bit 1, a
    jr nz, jr_004_5119

    push hl
    inc l
    ld a, [hl+]
    ld c, a
    ld b, $c4
    inc l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_004_400c
    pop hl
    bit 5, [hl]
    jr z, jr_004_5115

    ld a, [$dab7]
    ld d, a
    ld a, [$dab8]
    ld e, a
    ld a, [hl]
    bit 0, d
    jr z, jr_004_50fb

    bit 3, a
    jr nz, jr_004_5115

    jr jr_004_5119

jr_004_50fb:
    bit 1, d
    jr z, jr_004_5103

    bit 3, a
    jr nz, jr_004_5119

jr_004_5103:
    bit 0, e
    jr z, jr_004_510d

    bit 4, a
    jr nz, jr_004_5115

    jr jr_004_5119

jr_004_510d:
    bit 1, e
    jr z, jr_004_5115

    bit 4, a
    jr nz, jr_004_5119

jr_004_5115:
    ld a, [bc]
    set 7, a
    ld [bc], a

jr_004_5119:
    ld a, l
    add $08
    ld l, a
    jr nz, jr_004_50cd

    ldh a, [$ffde]
    ld c, a
    ldh a, [$ffdf]
    ld b, a
    ldh a, [$fff1]
    ldh [$ffac], a
    ldh a, [$fff3]
    ldh [$ffaf], a
    xor a
    ldh [$fff8], a
    ld a, [bc]
    bit 7, a
    jr z, jr_004_513a

    push bc
    call Call_004_5a3b
    pop bc

jr_004_513a:
    ld a, [bc]
    bit 6, a
    jr z, jr_004_5144

    push bc
    call Call_004_591d
    pop bc

jr_004_5144:
    ld a, [bc]
    bit 5, a
    jr z, jr_004_514e

    push bc
    call Call_004_5872
    pop bc

jr_004_514e:
    push bc
    ldh a, [$fff8]
    cp $04
    call nc, Call_004_400f
    pop bc
    ld a, $01
    ldh [$ffa7], a

Jump_004_515b:
    ldh a, [$ffa7]
    ldh [$ffa5], a
    ld e, a
    ldh a, [$ffa9]
    cp e
    jp c, Jump_004_531f

    ldh a, [$ffa5]
    ldh [$ffa8], a
    ldh a, [$ffb2]
    ld e, a
    ldh a, [$ffb3]
    ld d, a
    ldh a, [$ffc1]
    ld l, a
    ldh a, [$ffc2]
    ld h, a

jr_004_5176:
    add hl, de
    ldh a, [$ffa5]
    dec a
    ldh [$ffa5], a
    jr nz, jr_004_5176

    ld a, l
    ldh [$ffc1], a
    ld a, h
    ldh [$ffc2], a
    ldh a, [$ffa8]
    ldh [$ffa5], a
    ldh a, [$ffb4]
    ld e, a
    ldh a, [$ffb5]
    ld d, a
    ldh a, [$ffc5]
    ld l, a
    ldh a, [$ffc6]
    ld h, a

jr_004_5194:
    add hl, de
    ldh a, [$ffa5]
    dec a
    ldh [$ffa5], a
    jr nz, jr_004_5194

    ld a, l
    ldh [$ffc5], a
    ld a, h
    ldh [$ffc6], a
    ld l, c
    ld h, b
    ldh a, [$ffad]
    ld b, a
    ldh a, [$ffb0]
    ld c, a
    ld d, $00
    ldh a, [$ffbe]
    ld e, a
    rlca
    jr nc, jr_004_51b3

    dec d

jr_004_51b3:
    add hl, de
    ldh a, [$ffac]
    add b
    ldh [$ffac], a
    ldh a, [$ffaf]
    add c
    ldh [$ffaf], a
    ldh a, [$ffa8]
    dec a
    ldh [$ffa8], a
    jr nz, jr_004_51b3

    ld c, l
    ld b, h
    ldh a, [$ffa7]
    ldh [$ffa5], a
    ld e, a
    ldh a, [$ffab]
    cp e
    jr nc, jr_004_51d4

    inc a
    ldh [$ffa5], a

Jump_004_51d4:
jr_004_51d4:
    ldh a, [$ffe3]
    ld d, a
    ld a, [bc]
    and d
    jr z, jr_004_5226

    ld a, d
    ldh [$ffec], a
    ld a, c
    ldh [$ffed], a
    ldh a, [$fff7]
    ldh [$ffa8], a
    push bc
    ldh a, [$ffc1]
    ldh [$ffc9], a
    ld c, a
    ldh a, [$ffc2]
    ldh [$ffca], a
    ld b, a
    ldh a, [$ffb6]
    ld l, a
    ldh a, [$ffb7]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcd], a
    ld a, h
    ldh [$ffce], a
    ldh a, [$ffc5]
    ldh [$ffcb], a
    ld c, a
    ldh a, [$ffc6]
    ldh [$ffcc], a
    ld b, a
    ldh a, [$ffb8]
    ld l, a
    ldh a, [$ffb9]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcf], a
    ld a, h
    ldh [$ffd0], a
    call Call_004_4015
    pop bc
    ldh a, [$fff7]
    ld d, a
    ldh a, [$ffa8]
    cp d
    jr z, jr_004_5226

    call Call_004_5a6f
    jp z, Jump_004_5871

jr_004_5226:
    ldh a, [$ffe1]
    ld d, a
    ld a, [bc]
    and d
    jr z, jr_004_528a

    ld a, d
    ldh [$ffec], a
    ld a, c
    ldh [$ffed], a
    ldh a, [$fff7]
    ldh [$ffa8], a
    push bc
    ldh a, [$ffc1]
    ld c, a
    ldh a, [$ffc2]
    ld b, a
    ldh a, [$ffb6]
    ld l, a
    ldh a, [$ffb7]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffc9], a
    ld a, h
    ldh [$ffca], a
    ldh a, [$ffba]
    ld c, a
    ldh a, [$ffbb]
    ld b, a
    add hl, bc
    ld a, l
    ldh [$ffcd], a
    ld a, h
    ldh [$ffce], a
    ldh a, [$ffc5]
    ld c, a
    ldh a, [$ffc6]
    ld b, a
    ldh a, [$ffb8]
    ld l, a
    ldh a, [$ffb9]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcb], a
    ld a, h
    ldh [$ffcc], a
    ldh a, [$ffbc]
    ld c, a
    ldh a, [$ffbd]
    ld b, a
    add hl, bc
    ld a, l
    ldh [$ffcf], a
    ld a, h
    ldh [$ffd0], a
    call Call_004_4015
    pop bc
    ldh a, [$fff7]
    ld d, a
    ldh a, [$ffa8]
    cp d
    jr z, jr_004_528a

    call Call_004_5a6f
    jp z, Jump_004_5871

jr_004_528a:
    xor a
    ldh [$fff8], a
    ld a, [bc]
    bit 7, a
    jr z, jr_004_5297

    push bc
    call Call_004_5a3b
    pop bc

jr_004_5297:
    ld a, [bc]
    bit 6, a
    jr z, jr_004_52a1

    push bc
    call Call_004_591d
    pop bc

jr_004_52a1:
    ld a, [bc]
    bit 5, a
    jr z, jr_004_52ab

    push bc
    call Call_004_5872
    pop bc

jr_004_52ab:
    push bc
    ldh a, [$fff8]
    cp $04
    call nc, Call_004_400f
    pop bc
    ld hl, $ffa5
    dec [hl]
    jr z, jr_004_5301

    ldh a, [$ffba]
    ld e, a
    ldh a, [$ffbb]
    ld d, a
    ldh a, [$ffc1]
    ld l, a
    ldh a, [$ffc2]
    ld h, a
    add hl, de
    ld a, l
    ldh [$ffc1], a
    ld a, h
    ldh [$ffc2], a
    ldh a, [$ffbc]
    ld e, a
    ldh a, [$ffbd]
    ld d, a
    ldh a, [$ffc5]
    ld l, a
    ldh a, [$ffc6]
    ld h, a
    add hl, de
    ld a, l
    ldh [$ffc5], a
    ld a, h
    ldh [$ffc6], a
    ld h, b
    ld l, c
    ld d, $00
    ldh a, [$ffc0]
    ld e, a
    rlca
    jr nc, jr_004_52eb

    dec d

jr_004_52eb:
    add hl, de
    ldh a, [$ffae]
    ld b, a
    ldh a, [$ffac]
    add b
    ldh [$ffac], a
    ldh a, [$ffb1]
    ld b, a
    ldh a, [$ffaf]
    add b
    ldh [$ffaf], a
    ld c, l
    ld b, h
    jp Jump_004_51d4


jr_004_5301:
    ldh a, [$ffc3]
    ldh [$ffc1], a
    ldh a, [$ffc4]
    ldh [$ffc2], a
    ldh a, [$ffc7]
    ldh [$ffc5], a
    ldh a, [$ffc8]
    ldh [$ffc6], a
    ldh a, [$ffde]
    ld c, a
    ldh a, [$ffdf]
    ld b, a
    ldh a, [$fff1]
    ldh [$ffac], a
    ldh a, [$fff3]
    ldh [$ffaf], a

Jump_004_531f:
    ldh a, [$ffa7]
    ldh [$ffa5], a
    ld e, a
    ldh a, [$ffaa]
    cp e
    jp c, Jump_004_54d1

    ldh a, [$ffa5]
    ldh [$ffa8], a
    ldh a, [$ffb6]
    ld e, a
    ldh a, [$ffb7]
    ld d, a
    ldh a, [$ffc1]
    ld l, a
    ldh a, [$ffc2]
    ld h, a

jr_004_533a:
    add hl, de
    ldh a, [$ffa5]
    dec a
    ldh [$ffa5], a
    jr nz, jr_004_533a

    ld a, l
    ldh [$ffc1], a
    ld a, h
    ldh [$ffc2], a
    ldh a, [$ffa8]
    ldh [$ffa5], a
    ldh a, [$ffb8]
    ld e, a
    ldh a, [$ffb9]
    ld d, a
    ldh a, [$ffc5]
    ld l, a
    ldh a, [$ffc6]
    ld h, a

jr_004_5358:
    add hl, de
    ldh a, [$ffa5]
    dec a
    ldh [$ffa5], a
    jr nz, jr_004_5358

    ld a, l
    ldh [$ffc5], a
    ld a, h
    ldh [$ffc6], a
    ld l, c
    ld h, b
    ldh a, [$ffad]
    ld b, a
    ldh a, [$ffb0]
    ld c, a
    ld d, $00
    ldh a, [$ffbf]
    ld e, a
    rlca
    jr nc, jr_004_5377

    dec d

jr_004_5377:
    add hl, de
    ldh a, [$ffac]
    sub b
    ldh [$ffac], a
    ldh a, [$ffaf]
    sub c
    ldh [$ffaf], a
    ldh a, [$ffa8]
    dec a
    ldh [$ffa8], a
    jr nz, jr_004_5377

    ld c, l
    ld b, h
    ldh a, [$ffa7]
    ldh [$ffa5], a
    ld e, a
    ldh a, [$ffab]
    cp e
    jr nc, jr_004_5398

    inc a
    ldh [$ffa5], a

Jump_004_5398:
jr_004_5398:
    ldh a, [$ffe3]
    ld d, a
    ld a, [bc]
    and d
    jr z, jr_004_53ea

    ld a, d
    ldh [$ffec], a
    ld a, c
    ldh [$ffed], a
    ldh a, [$fff7]
    ldh [$ffa8], a
    push bc
    ldh a, [$ffc1]
    ldh [$ffc9], a
    ld c, a
    ldh a, [$ffc2]
    ldh [$ffca], a
    ld b, a
    ldh a, [$ffb6]
    ld l, a
    ldh a, [$ffb7]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcd], a
    ld a, h
    ldh [$ffce], a
    ldh a, [$ffc5]
    ldh [$ffcb], a
    ld c, a
    ldh a, [$ffc6]
    ldh [$ffcc], a
    ld b, a
    ldh a, [$ffb8]
    ld l, a
    ldh a, [$ffb9]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcf], a
    ld a, h
    ldh [$ffd0], a
    call Call_004_4015
    pop bc
    ldh a, [$fff7]
    ld d, a
    ldh a, [$ffa8]
    cp d
    jr z, jr_004_53ea

    call Call_004_5a6f
    jp z, Jump_004_5871

jr_004_53ea:
    ldh a, [$ffe0]
    ld d, a
    ld a, [bc]
    and d
    jr z, jr_004_543c

    ld a, d
    ldh [$ffec], a
    ld a, c
    ldh [$ffed], a
    ldh a, [$fff7]
    ldh [$ffa8], a
    push bc
    ldh a, [$ffc1]
    ldh [$ffc9], a
    ld c, a
    ldh a, [$ffc2]
    ldh [$ffca], a
    ld b, a
    ldh a, [$ffba]
    ld l, a
    ldh a, [$ffbb]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcd], a
    ld a, h
    ldh [$ffce], a
    ldh a, [$ffc5]
    ldh [$ffcb], a
    ld c, a
    ldh a, [$ffc6]
    ldh [$ffcc], a
    ld b, a
    ldh a, [$ffbc]
    ld l, a
    ldh a, [$ffbd]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcf], a
    ld a, h
    ldh [$ffd0], a
    call Call_004_4015
    pop bc
    ldh a, [$fff7]
    ld d, a
    ldh a, [$ffa8]
    cp d
    jr z, jr_004_543c

    call Call_004_5a6f
    jp z, Jump_004_5871

jr_004_543c:
    xor a
    ldh [$fff8], a
    ld a, [bc]
    bit 7, a
    jr z, jr_004_5449

    push bc
    call Call_004_5a3b
    pop bc

jr_004_5449:
    ld a, [bc]
    bit 6, a
    jr z, jr_004_5453

    push bc
    call Call_004_591d
    pop bc

jr_004_5453:
    ld a, [bc]
    bit 5, a
    jr z, jr_004_545d

    push bc
    call Call_004_5872
    pop bc

jr_004_545d:
    push bc
    ldh a, [$fff8]
    cp $04
    call nc, Call_004_400f
    pop bc
    ld hl, $ffa5
    dec [hl]
    jr z, jr_004_54b3

    ldh a, [$ffba]
    ld e, a
    ldh a, [$ffbb]
    ld d, a
    ldh a, [$ffc1]
    ld l, a
    ldh a, [$ffc2]
    ld h, a
    add hl, de
    ld a, l
    ldh [$ffc1], a
    ld a, h
    ldh [$ffc2], a
    ldh a, [$ffbc]
    ld e, a
    ldh a, [$ffbd]
    ld d, a
    ldh a, [$ffc5]
    ld l, a
    ldh a, [$ffc6]
    ld h, a
    add hl, de
    ld a, l
    ldh [$ffc5], a
    ld a, h
    ldh [$ffc6], a
    ld h, b
    ld l, c
    ld d, $00
    ldh a, [$ffc0]
    ld e, a
    rlca
    jr nc, jr_004_549d

    dec d

jr_004_549d:
    add hl, de
    ldh a, [$ffae]
    ld b, a
    ldh a, [$ffac]
    add b
    ldh [$ffac], a
    ldh a, [$ffb1]
    ld b, a
    ldh a, [$ffaf]
    add b
    ldh [$ffaf], a
    ld c, l
    ld b, h
    jp Jump_004_5398


jr_004_54b3:
    ldh a, [$ffc3]
    ldh [$ffc1], a
    ldh a, [$ffc4]
    ldh [$ffc2], a
    ldh a, [$ffc7]
    ldh [$ffc5], a
    ldh a, [$ffc8]
    ldh [$ffc6], a
    ldh a, [$ffde]
    ld c, a
    ldh a, [$ffdf]
    ld b, a
    ldh a, [$fff1]
    ldh [$ffac], a
    ldh a, [$fff3]
    ldh [$ffaf], a

Jump_004_54d1:
    ldh a, [$ffa7]
    ldh [$ffa5], a
    ld e, a
    ldh a, [$ffab]
    cp e
    jp c, Jump_004_56a4

    ldh a, [$ffa5]
    ldh [$ffa8], a
    ldh a, [$ffba]
    ld e, a
    ldh a, [$ffbb]
    ld d, a
    ldh a, [$ffc1]
    ld l, a
    ldh a, [$ffc2]
    ld h, a

jr_004_54ec:
    add hl, de
    ldh a, [$ffa5]
    dec a
    ldh [$ffa5], a
    jr nz, jr_004_54ec

    ld a, l
    ldh [$ffc1], a
    ld a, h
    ldh [$ffc2], a
    ldh a, [$ffa8]
    ldh [$ffa5], a
    ldh a, [$ffbc]
    ld e, a
    ldh a, [$ffbd]
    ld d, a
    ldh a, [$ffc5]
    ld l, a
    ldh a, [$ffc6]
    ld h, a

jr_004_550a:
    add hl, de
    ldh a, [$ffa5]
    dec a
    ldh [$ffa5], a
    jr nz, jr_004_550a

    ld a, l
    ldh [$ffc5], a
    ld a, h
    ldh [$ffc6], a
    ld l, c
    ld h, b
    ldh a, [$ffae]
    ld b, a
    ldh a, [$ffb1]
    ld c, a
    ld d, $00
    ldh a, [$ffc0]
    ld e, a
    rlca
    jr nc, jr_004_5529

    dec d

jr_004_5529:
    add hl, de
    ldh a, [$ffac]
    add b
    ldh [$ffac], a
    ldh a, [$ffaf]
    add c
    ldh [$ffaf], a
    ldh a, [$ffa8]
    dec a
    ldh [$ffa8], a
    jr nz, jr_004_5529

    ld c, l
    ld b, h
    ld a, $01
    ldh [$ffa3], a
    ldh a, [$ffa7]
    inc a
    ldh [$ffa5], a
    ld e, a
    ldh a, [$ffa9]
    cp e
    jr nc, jr_004_554f

    inc a
    ldh [$ffa5], a

Jump_004_554f:
jr_004_554f:
    ldh a, [$ffe3]
    ld d, a
    ld a, [bc]
    and d
    jr z, jr_004_55a1

    ld a, d
    ldh [$ffec], a
    ld a, c
    ldh [$ffed], a
    ldh a, [$fff7]
    ldh [$ffa8], a
    push bc
    ldh a, [$ffc1]
    ldh [$ffc9], a
    ld c, a
    ldh a, [$ffc2]
    ldh [$ffca], a
    ld b, a
    ldh a, [$ffb6]
    ld l, a
    ldh a, [$ffb7]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcd], a
    ld a, h
    ldh [$ffce], a
    ldh a, [$ffc5]
    ldh [$ffcb], a
    ld c, a
    ldh a, [$ffc6]
    ldh [$ffcc], a
    ld b, a
    ldh a, [$ffb8]
    ld l, a
    ldh a, [$ffb9]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcf], a
    ld a, h
    ldh [$ffd0], a
    call Call_004_4015
    pop bc
    ldh a, [$fff7]
    ld d, a
    ldh a, [$ffa8]
    cp d
    jr z, jr_004_55a1

    call Call_004_5a6f
    jp z, Jump_004_5871

jr_004_55a1:
    ldh a, [$ffa3]
    cp $01
    jr z, jr_004_560b

    ldh a, [$ffe1]
    ld d, a
    ld a, [bc]
    and d
    jr z, jr_004_560b

    ld a, d
    ldh [$ffec], a
    ld a, c
    ldh [$ffed], a
    ldh a, [$fff7]
    ldh [$ffa8], a
    push bc
    ldh a, [$ffc1]
    ld c, a
    ldh a, [$ffc2]
    ld b, a
    ldh a, [$ffb6]
    ld l, a
    ldh a, [$ffb7]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffc9], a
    ld a, h
    ldh [$ffca], a
    ldh a, [$ffba]
    ld c, a
    ldh a, [$ffbb]
    ld b, a
    add hl, bc
    ld a, l
    ldh [$ffcd], a
    ld a, h
    ldh [$ffce], a
    ldh a, [$ffc5]
    ld c, a
    ldh a, [$ffc6]
    ld b, a
    ldh a, [$ffb8]
    ld l, a
    ldh a, [$ffb9]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcb], a
    ld a, h
    ldh [$ffcc], a
    ldh a, [$ffbc]
    ld c, a
    ldh a, [$ffbd]
    ld b, a
    add hl, bc
    ld a, l
    ldh [$ffcf], a
    ld a, h
    ldh [$ffd0], a
    call Call_004_4015
    pop bc
    ldh a, [$fff7]
    ld d, a
    ldh a, [$ffa8]
    cp d
    jr z, jr_004_560b

    call Call_004_5a6f
    jp z, Jump_004_5871

jr_004_560b:
    xor a
    ldh [$fff8], a
    ld a, [bc]
    bit 7, a
    jr z, jr_004_5618

    push bc
    call Call_004_5a3b
    pop bc

jr_004_5618:
    ld a, [bc]
    bit 6, a
    jr z, jr_004_5622

    push bc
    call Call_004_591d
    pop bc

jr_004_5622:
    ld a, [bc]
    bit 5, a
    jr z, jr_004_562c

    push bc
    call Call_004_5872
    pop bc

jr_004_562c:
    push bc
    ldh a, [$fff8]
    cp $04
    call nc, Call_004_400f
    pop bc
    ld a, $00
    ldh [$ffa3], a
    ld hl, $ffa5
    dec [hl]
    jr z, jr_004_5686

    ldh a, [$ffb2]
    ld e, a
    ldh a, [$ffb3]
    ld d, a
    ldh a, [$ffc1]
    ld l, a
    ldh a, [$ffc2]
    ld h, a
    add hl, de
    ld a, l
    ldh [$ffc1], a
    ld a, h
    ldh [$ffc2], a
    ldh a, [$ffb4]
    ld e, a
    ldh a, [$ffb5]
    ld d, a
    ldh a, [$ffc5]
    ld l, a
    ldh a, [$ffc6]
    ld h, a
    add hl, de
    ld a, l
    ldh [$ffc5], a
    ld a, h
    ldh [$ffc6], a
    ld h, b
    ld l, c
    ld d, $00
    ldh a, [$ffbe]
    ld e, a
    rlca
    jr nc, jr_004_5670

    dec d

jr_004_5670:
    add hl, de
    ldh a, [$ffad]
    ld b, a
    ldh a, [$ffac]
    add b
    ldh [$ffac], a
    ldh a, [$ffb0]
    ld b, a
    ldh a, [$ffaf]
    add b
    ldh [$ffaf], a
    ld c, l
    ld b, h
    jp Jump_004_554f


jr_004_5686:
    ldh a, [$ffc3]
    ldh [$ffc1], a
    ldh a, [$ffc4]
    ldh [$ffc2], a
    ldh a, [$ffc7]
    ldh [$ffc5], a
    ldh a, [$ffc8]
    ldh [$ffc6], a
    ldh a, [$ffde]
    ld c, a
    ldh a, [$ffdf]
    ld b, a
    ldh a, [$fff1]
    ldh [$ffac], a
    ldh a, [$fff3]
    ldh [$ffaf], a

Jump_004_56a4:
    ldh a, [$ffa7]
    ldh [$ffa5], a
    ld e, a
    ldh a, [$ffab]
    cp e
    jp c, Jump_004_5866

    ldh a, [$ffa5]
    ldh [$ffa8], a
    ldh a, [$ffba]
    ld e, a
    ldh a, [$ffbb]
    ld d, a
    ldh a, [$ffc1]
    ld l, a
    ldh a, [$ffc2]
    ld h, a

jr_004_56bf:
    add hl, de
    ldh a, [$ffa5]
    dec a
    ldh [$ffa5], a
    jr nz, jr_004_56bf

    ld a, l
    ldh [$ffc1], a
    ld a, h
    ldh [$ffc2], a
    ldh a, [$ffa8]
    ldh [$ffa5], a
    ldh a, [$ffbc]
    ld e, a
    ldh a, [$ffbd]
    ld d, a
    ldh a, [$ffc5]
    ld l, a
    ldh a, [$ffc6]
    ld h, a

jr_004_56dd:
    add hl, de
    ldh a, [$ffa5]
    dec a
    ldh [$ffa5], a
    jr nz, jr_004_56dd

    ld a, l
    ldh [$ffc5], a
    ld a, h
    ldh [$ffc6], a
    ld l, c
    ld h, b
    ldh a, [$ffae]
    ld b, a
    ldh a, [$ffb1]
    ld c, a
    ld d, $00
    ldh a, [$ffc0]
    ld e, a
    rlca
    jr nc, jr_004_56fc

    dec d

jr_004_56fc:
    add hl, de
    ldh a, [$ffac]
    add b
    ldh [$ffac], a
    ldh a, [$ffaf]
    add c
    ldh [$ffaf], a
    ldh a, [$ffa8]
    dec a
    ldh [$ffa8], a
    jr nz, jr_004_56fc

    ld c, l
    ld b, h
    ld a, $01
    ldh [$ffa3], a
    ldh a, [$ffa7]
    inc a
    ldh [$ffa5], a
    ld e, a
    ldh a, [$ffaa]
    cp e
    jr nc, jr_004_5722

    inc a
    ldh [$ffa5], a

Jump_004_5722:
jr_004_5722:
    ldh a, [$ffa3]
    cp $01
    jp z, Jump_004_57f7

    ldh a, [$ffe3]
    ld d, a
    ld a, [bc]
    and d
    jr z, jr_004_577b

    ld a, d
    ldh [$ffec], a
    ld a, c
    ldh [$ffed], a
    ldh a, [$fff7]
    ldh [$ffa8], a
    push bc
    ldh a, [$ffc1]
    ldh [$ffc9], a
    ld c, a
    ldh a, [$ffc2]
    ldh [$ffca], a
    ld b, a
    ldh a, [$ffb6]
    ld l, a
    ldh a, [$ffb7]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcd], a
    ld a, h
    ldh [$ffce], a
    ldh a, [$ffc5]
    ldh [$ffcb], a
    ld c, a
    ldh a, [$ffc6]
    ldh [$ffcc], a
    ld b, a
    ldh a, [$ffb8]
    ld l, a
    ldh a, [$ffb9]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcf], a
    ld a, h
    ldh [$ffd0], a
    call Call_004_4015
    pop bc
    ldh a, [$fff7]
    ld d, a
    ldh a, [$ffa8]
    cp d
    jr z, jr_004_577b

    call Call_004_5a6f
    jp z, Jump_004_5871

jr_004_577b:
    ldh a, [$ffe0]
    ld d, a
    ld a, [bc]
    and d
    jr z, jr_004_57cd

    ld a, d
    ldh [$ffec], a
    ld a, c
    ldh [$ffed], a
    ldh a, [$fff7]
    ldh [$ffa8], a
    push bc
    ldh a, [$ffc1]
    ldh [$ffc9], a
    ld c, a
    ldh a, [$ffc2]
    ldh [$ffca], a
    ld b, a
    ldh a, [$ffba]
    ld l, a
    ldh a, [$ffbb]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcd], a
    ld a, h
    ldh [$ffce], a
    ldh a, [$ffc5]
    ldh [$ffcb], a
    ld c, a
    ldh a, [$ffc6]
    ldh [$ffcc], a
    ld b, a
    ldh a, [$ffbc]
    ld l, a
    ldh a, [$ffbd]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffcf], a
    ld a, h
    ldh [$ffd0], a
    call Call_004_4015
    pop bc
    ldh a, [$fff7]
    ld d, a
    ldh a, [$ffa8]
    cp d
    jr z, jr_004_57cd

    call Call_004_5a6f
    jp z, Jump_004_5871

jr_004_57cd:
    xor a
    ldh [$fff8], a
    ld a, [bc]
    bit 7, a
    jr z, jr_004_57da

    push bc
    call Call_004_5a3b
    pop bc

jr_004_57da:
    ld a, [bc]
    bit 6, a
    jr z, jr_004_57e4

    push bc
    call Call_004_591d
    pop bc

jr_004_57e4:
    ld a, [bc]
    bit 5, a
    jr z, jr_004_57ee

    push bc
    call Call_004_5872
    pop bc

jr_004_57ee:
    push bc
    ldh a, [$fff8]
    cp $04
    call nc, Call_004_400f
    pop bc

Jump_004_57f7:
    ld a, $00
    ldh [$ffa3], a
    ld hl, $ffa5
    dec [hl]
    jr z, jr_004_5848

    ldh a, [$ffb6]
    ld e, a
    ldh a, [$ffb7]
    ld d, a
    ldh a, [$ffc1]
    ld l, a
    ldh a, [$ffc2]
    ld h, a
    add hl, de
    ld a, l
    ldh [$ffc1], a
    ld a, h
    ldh [$ffc2], a
    ldh a, [$ffb8]
    ld e, a
    ldh a, [$ffb9]
    ld d, a
    ldh a, [$ffc5]
    ld l, a
    ldh a, [$ffc6]
    ld h, a
    add hl, de
    ld a, l
    ldh [$ffc5], a
    ld a, h
    ldh [$ffc6], a
    ld h, b
    ld l, c
    ld d, $00
    ldh a, [$ffbf]
    ld e, a
    rlca
    jr nc, jr_004_5832

    dec d

jr_004_5832:
    add hl, de
    ldh a, [$ffad]
    ld b, a
    ldh a, [$ffac]
    sub b
    ldh [$ffac], a
    ldh a, [$ffb0]
    ld b, a
    ldh a, [$ffaf]
    sub b
    ldh [$ffaf], a
    ld c, l
    ld b, h
    jp Jump_004_5722


jr_004_5848:
    ldh a, [$ffc3]
    ldh [$ffc1], a
    ldh a, [$ffc4]
    ldh [$ffc2], a
    ldh a, [$ffc7]
    ldh [$ffc5], a
    ldh a, [$ffc8]
    ldh [$ffc6], a
    ldh a, [$ffde]
    ld c, a
    ldh a, [$ffdf]
    ld b, a
    ldh a, [$fff1]
    ldh [$ffac], a
    ldh a, [$fff3]
    ldh [$ffaf], a

Jump_004_5866:
    ld hl, $ffa7
    inc [hl]
    ld hl, $ffa6
    dec [hl]
    jp nz, Jump_004_515b

Jump_004_5871:
    ret


Call_004_5872:
    xor a
    ldh [$ffa8], a

Jump_004_5875:
    ld l, a
    ld h, $c2
    ld a, l
    swap a
    or $40
    ld c, a
    ld b, $c7
    ld a, [hl+]
    ldh [$ff97], a
    bit 0, a
    jp z, Jump_004_5913

    bit 6, a
    jp nz, Jump_004_5913

    bit 2, a
    jp nz, Jump_004_5913

    bit 7, a
    jr nz, jr_004_5913

    ld a, [bc]
    and $02
    jr nz, jr_004_5913

    push hl
    ld a, c
    and $0f
    ld c, a
    ld b, $00
    ld hl, $d9d3
    add hl, bc
    ld a, [hl]
    rra
    pop hl
    jr c, jr_004_5913

    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ldh a, [$ffaf]
    cp d
    jr nz, jr_004_58ce

    ld a, c
    cp $2e
    jr nc, jr_004_58c3

    ldh a, [$ffac]
    inc a
    cp b
    jr z, jr_004_58f3

jr_004_58c3:
    ld a, c
    cp $d2
    jr c, jr_004_58ce

    ldh a, [$ffac]
    dec a
    cp b
    jr z, jr_004_58f3

jr_004_58ce:
    ldh a, [$ffac]
    cp b
    jr nz, jr_004_58e9

    ld a, e
    cp $2e
    jr nc, jr_004_58de

    ldh a, [$ffaf]
    inc a
    cp d
    jr z, jr_004_58f3

jr_004_58de:
    ld a, e
    cp $d2
    jr c, jr_004_58e9

    ldh a, [$ffaf]
    dec a
    cp d
    jr z, jr_004_58f3

jr_004_58e9:
    ldh a, [$ffac]
    cp b
    jr nz, jr_004_5913

    ldh a, [$ffaf]
    cp d
    jr nz, jr_004_5913

jr_004_58f3:
    push bc
    push hl
    ld a, l
    swap a
    and $0f
    ld c, a
    ld b, $00
    ld hl, $d9e3
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr z, jr_004_590e

    and $7f
    jr z, jr_004_590e

    dec [hl]
    ld a, [hl]
    and $7f

jr_004_590e:
    pop hl
    pop bc
    call z, Call_004_401b

Jump_004_5913:
jr_004_5913:
    ldh a, [$ffa8]
    add $10
    ldh [$ffa8], a
    jp nz, Jump_004_5875

    ret


Call_004_591d:
    xor a
    ldh [$ffa8], a

jr_004_5920:
    ld l, a
    ld h, $c2
    ld a, [hl]
    bit 3, a
    jr z, jr_004_5941

    ld a, l
    or $06
    ld l, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ldh a, [$ffac]
    cp b
    jr nz, jr_004_5941

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ldh a, [$ffaf]
    cp d
    jr nz, jr_004_5941

    call Call_004_4018

jr_004_5941:
    ldh a, [$ffa8]
    add $10
    ldh [$ffa8], a
    jr nz, jr_004_5920

    ret


Call_004_594a:
    push bc
    ldh a, [$ffe3]
    and [hl]
    jp nz, Jump_004_5a35

    ldh a, [$ff98]
    or $02
    ld c, a
    ld b, $c2
    ld a, [bc]
    push af
    inc c
    inc c
    ld a, [bc]
    ld c, a
    pop af
    ld b, a
    ldh a, [$ffa8]
    cp $00
    jr nz, jr_004_5980

    ldh a, [$fff3]
    cp c
    jp z, Jump_004_5a39

    jr c, jr_004_5977

    ldh a, [$ffe0]
    and [hl]
    jp nz, Jump_004_5a35

    jp Jump_004_5a39


jr_004_5977:
    ldh a, [$ffe1]
    and [hl]
    jp nz, Jump_004_5a35

    jp Jump_004_5a39


jr_004_5980:
    cp $01
    jr nz, jr_004_599e

    ldh a, [$fff1]
    cp b
    jp z, Jump_004_5a39

    jr c, jr_004_5995

    ldh a, [$ffe0]
    and [hl]
    jp nz, Jump_004_5a35

    jp Jump_004_5a39


jr_004_5995:
    ldh a, [$ffe1]
    and [hl]
    jp nz, Jump_004_5a35

    jp Jump_004_5a39


jr_004_599e:
    cp $02
    jr nz, jr_004_59bc

    ldh a, [$fff1]
    cp b
    jp z, Jump_004_5a39

    jr c, jr_004_59b3

    ldh a, [$ffe1]
    and [hl]
    jp nz, Jump_004_5a35

    jp Jump_004_5a39


jr_004_59b3:
    ldh a, [$ffe0]
    and [hl]
    jp nz, Jump_004_5a35

    jp Jump_004_5a39


jr_004_59bc:
    cp $03
    jr nz, jr_004_59d5

    ldh a, [$fff3]
    cp c
    jr z, jr_004_5a39

    jr c, jr_004_59ce

    ldh a, [$ffe0]
    and [hl]
    jr nz, jr_004_5a35

    jr jr_004_5a39

jr_004_59ce:
    ldh a, [$ffe1]
    and [hl]
    jr nz, jr_004_5a35

    jr jr_004_5a39

jr_004_59d5:
    cp $04
    jr nz, jr_004_59ee

    ldh a, [$fff3]
    cp c
    jr z, jr_004_5a39

    jr c, jr_004_59e7

    ldh a, [$ffe1]
    and [hl]
    jr nz, jr_004_5a35

    jr jr_004_5a39

jr_004_59e7:
    ldh a, [$ffe0]
    and [hl]
    jr nz, jr_004_5a35

    jr jr_004_5a39

jr_004_59ee:
    cp $05
    jr nz, jr_004_5a07

    ldh a, [$fff1]
    cp b
    jr z, jr_004_5a39

    jr c, jr_004_5a00

    ldh a, [$ffe1]
    and [hl]
    jr nz, jr_004_5a35

    jr jr_004_5a39

jr_004_5a00:
    ldh a, [$ffe0]
    and [hl]
    jr nz, jr_004_5a35

    jr jr_004_5a39

jr_004_5a07:
    cp $06
    jr nz, jr_004_5a20

    ldh a, [$fff1]
    cp b
    jr z, jr_004_5a39

    jr c, jr_004_5a19

    ldh a, [$ffe0]
    and [hl]
    jr nz, jr_004_5a35

    jr jr_004_5a39

jr_004_5a19:
    ldh a, [$ffe1]
    and [hl]
    jr nz, jr_004_5a35

    jr jr_004_5a39

jr_004_5a20:
    ldh a, [$fff3]
    cp c
    jr z, jr_004_5a39

    jr c, jr_004_5a2e

    ldh a, [$ffe1]
    and [hl]
    jr nz, jr_004_5a35

    jr jr_004_5a39

jr_004_5a2e:
    ldh a, [$ffe0]
    and [hl]
    jr nz, jr_004_5a35

    jr jr_004_5a39

Jump_004_5a35:
jr_004_5a35:
    ld a, [de]
    set 7, a
    ld [de], a

Jump_004_5a39:
jr_004_5a39:
    pop bc
    ret


Call_004_5a3b:
    xor a
    ldh [$ffa8], a

jr_004_5a3e:
    ld l, a
    ld h, $c3
    ld a, [hl+]
    bit 0, a
    jr z, jr_004_5a66

    bit 1, a
    jr nz, jr_004_5a66

    ld a, [hl+]
    ld b, a
    swap a
    and $0f
    ld d, a
    ldh a, [$ffaf]
    cp d
    jr nz, jr_004_5a66

    ld a, b
    and $0f
    ld b, a
    ldh a, [$ffac]
    cp b
    jr nz, jr_004_5a66

    ld c, $80
    ld e, $80
    call Call_004_4012

jr_004_5a66:
    ldh a, [$ffa8]
    add $08
    ldh [$ffa8], a
    jr nz, jr_004_5a3e

    ret


Call_004_5a6f:
    ld hl, $dabd
    ld a, $ff
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    and [hl]
    inc hl
    cpl
    or a
    ret

RunCredits:
    call Call_000_009e
    call Call_000_00a1
    di
    ld a, [hFadeStatus]
    set 0, a
    res 1, a
    ld [hFadeStatus], a
    ei

jr_004_5aad:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_004_5aad

    ld hl, $5b2f

jr_004_5ab6:
    ld a, [hl]
    and a
    ret z

    push hl
    call Call_000_009e
    pop hl
    push hl
    ld d, $03
    call Call_004_5b17
    call Call_000_00a1
    ld bc, $0004
    call Call_000_00aa
    ld a, [$c905]
    cp $03
    jr nz, jr_004_5ae0

    di
    ld a, [hFadeStatus]
    set 0, a
    res 1, a
    ld [hFadeStatus], a
    ei

jr_004_5ae0:
    call Call_000_009e
    pop hl
    push hl
    ld d, $01
    call Call_004_5b17
    call Call_000_00a1
    ld bc, $00f0
    call Call_000_00aa
    call Call_000_009e
    pop hl
    push hl
    ld d, $03
    call Call_004_5b17
    pop bc
    push hl
    call Call_000_00a1
    ld bc, $0010
    call Call_000_00aa
    call Call_000_009e
    call Call_000_00a1
    ld bc, $003c
    call Call_000_00aa
    pop hl
    jr jr_004_5ab6

Call_004_5b17:
    ld a, [hl+]
    ld b, a

jr_004_5b19:
    push bc
    push de
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
    ld b, $00
    call Call_000_00a4
    pop hl
    pop de
    pop bc
    inc hl
    inc hl
    dec b
    jr nz, jr_004_5b19

    ret


    inc b
    sub d
    ld e, e
    and [hl]
    ld e, e
    cp d
    ld e, e
    adc $5b
    ld [bc], a
    ld [c], a
    ld e, e
    or $5b
    inc b
    ld a, [bc]
    ld e, h
    ld e, $5c
    ld [hl-], a
    ld e, h
    ld b, [hl]
    ld e, h
    inc bc
    ld e, d
    ld e, h
    ld l, [hl]
    ld e, h
    add d
    ld e, h
    inc bc
    sub [hl]
    ld e, h
    xor d
    ld e, h
    cp [hl]
    ld e, h
    inc bc
    jp nc, $e65c

    ld e, h
    ld a, [$035c]
    ld c, $5d
    ld [hl+], a
    ld e, l
    ld [hl], $5d
    inc b
    ld c, d
    ld e, l
    ld e, [hl]
    ld e, l
    ld [hl], d
    ld e, l
    add [hl]
    ld e, l
    inc bc
    sbc d
    ld e, l
    xor [hl]
    ld e, l
    jp nz, $045d

    sub $5d
    ld [$fe5d], a
    ld e, l
    ld [de], a
    ld e, [hl]
    inc b
    ld h, $5e
    ld a, [hl-]
    ld e, [hl]
    ld c, [hl]
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld b, $76
    ld e, [hl]
    adc d
    ld e, [hl]
    sbc [hl]
    ld e, [hl]
    or d
    ld e, [hl]
    add $5e
    jp c, $005e

    ld bc, $2020
    ld b, [hl]
    ld b, c
    ld b, e
    ld b, l
    ld b, d
    ld b, c
    ld c, h
    ld c, h
    jr nz, @+$22

    ld [hl-], a
    jr nc, jr_004_5bd2

    jr nc, jr_004_5bc4

    jr nz, jr_004_5ba6

jr_004_5ba6:
    inc bc
    jr nz, jr_004_5bc9

    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    jr nz, jr_004_5bd9

    nop
    ld b, $20
    jr nz, @+$22

    jr nz, jr_004_5be0

    jr nz, jr_004_5be2

    jr nz, jr_004_5c06

jr_004_5bc4:
    ld e, c
    jr nz, jr_004_5be7

    jr nz, jr_004_5be9

jr_004_5bc9:
    jr nz, @+$22

    jr nz, jr_004_5bed

    nop
    ld [$6158], sp
    ld l, [hl]

jr_004_5bd2:
    ld [hl], h
    ld l, b
    jr nz, jr_004_5c29

    ld l, a
    ld h, [hl]
    ld [hl], h

jr_004_5bd9:
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_004_5c25

    cpl

jr_004_5be0:
    ld e, b
    nop

jr_004_5be2:
    inc b
    jr nz, jr_004_5c05

    jr nz, jr_004_5c2e

jr_004_5be7:
    ld b, c
    ld c, l

jr_004_5be9:
    ld b, l
    jr nz, @+$22

    ld b, h

jr_004_5bed:
    ld b, l
    ld d, e
    ld c, c
    ld b, a
    ld c, [hl]
    jr nz, jr_004_5c14

    jr nz, jr_004_5bf6

jr_004_5bf6:
    rlca
    jr nz, jr_004_5c43

    ld h, c
    ld l, l
    ld h, l
    ld [hl], e
    jr nz, jr_004_5c26

    ld c, l
    ld b, e
    ld d, b
    daa
    jr nz, @+$5b

jr_004_5c05:
    ld h, l

jr_004_5c06:
    ld h, l
    jr nz, jr_004_5c29

    nop
    ld [bc], a
    jr nz, jr_004_5c2d

    jr nz, @+$22

    jr nz, @+$22

    ld d, e
    ld e, c
    ld d, e

jr_004_5c14:
    ld d, h
    ld b, l
    ld c, l
    jr nz, jr_004_5c39

    jr nz, @+$22

    jr nz, jr_004_5c3d

    nop
    inc b
    jr nz, jr_004_5c41

    jr nz, jr_004_5c43

    ld d, b
    ld d, d

jr_004_5c25:
    ld c, a

jr_004_5c26:
    ld b, a
    ld d, d
    ld b, c

jr_004_5c29:
    ld c, l
    ld c, l
    ld c, c
    ld c, [hl]

jr_004_5c2d:
    ld b, a

jr_004_5c2e:
    jr nz, jr_004_5c50

    jr nz, jr_004_5c32

jr_004_5c32:
    rlca
    jr nz, jr_004_5c87

    ld l, a
    ld h, d
    ld h, l
    ld [hl], d

jr_004_5c39:
    ld [hl], h
    jr nz, jr_004_5c63

    ld b, d

jr_004_5c3d:
    ld [hl], l
    ld h, d
    ld h, d
    ld l, h

jr_004_5c41:
    ld h, l
    ld [hl], e

jr_004_5c43:
    daa
    jr nz, jr_004_5c46

jr_004_5c46:
    add hl, bc
    jr nz, jr_004_5c69

    jr nz, jr_004_5c6b

    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l

jr_004_5c50:
    ld [hl], b
    ld h, c
    ld h, a
    ld l, [hl]
    ld h, l
    jr nz, jr_004_5c77

    jr nz, jr_004_5c79

    nop
    inc bc
    jr nz, jr_004_5c7d

    jr nz, jr_004_5ca4

    ld c, [hl]
    ld b, l
    ld c, l
    ld e, c

jr_004_5c63:
    jr nz, jr_004_5cb1

    ld c, a
    ld b, a
    ld c, c
    ld b, e

jr_004_5c69:
    jr nz, jr_004_5c8b

jr_004_5c6b:
    jr nz, jr_004_5c8d

    nop
    ld b, $20
    jr nz, jr_004_5cb9

    ld h, l
    ld l, a
    ld [hl], d
    ld h, a
    ld h, l

jr_004_5c77:
    jr nz, jr_004_5ca0

jr_004_5c79:
    ld d, e
    ld h, l
    ld l, [hl]
    ld [hl], e

jr_004_5c7d:
    ld h, l
    ld l, c
    daa
    jr nz, jr_004_5c82

jr_004_5c82:
    ld [$2020], sp
    jr nz, jr_004_5ca7

jr_004_5c87:
    jr nz, jr_004_5ca9

    ld c, l
    ld l, c

jr_004_5c8b:
    ld l, h
    ld l, h

jr_004_5c8d:
    ld h, l
    ld [hl], d
    jr nz, jr_004_5cb1

    jr nz, jr_004_5cb3

    jr nz, jr_004_5cb5

    nop
    inc bc
    jr nz, jr_004_5cb9

    jr nz, jr_004_5cbb

    ld b, c
    ld b, h
    ld b, h
    ld c, c
    ld d, h

jr_004_5ca0:
    ld c, c
    ld c, a
    ld c, [hl]
    ld b, c

jr_004_5ca4:
    ld c, h
    jr nz, @+$22

jr_004_5ca7:
    jr nz, jr_004_5cc9

jr_004_5ca9:
    nop
    dec b
    jr nz, jr_004_5ccd

    jr nz, jr_004_5ccf

    jr nz, jr_004_5cd1

jr_004_5cb1:
    ld c, h
    ld b, l

jr_004_5cb3:
    ld d, [hl]
    ld b, l

jr_004_5cb5:
    ld c, h
    ld d, e
    jr nz, jr_004_5cd9

jr_004_5cb9:
    jr nz, jr_004_5cdb

jr_004_5cbb:
    jr nz, jr_004_5cdd

    nop
    ld [$2020], sp
    jr nz, @+$22

    ld b, d
    ld d, b
    ld d, e
    jr nz, @+$4a

    ld h, c

jr_004_5cc9:
    ld [hl], a
    ld h, c
    ld l, c
    ld l, c

jr_004_5ccd:
    jr nz, jr_004_5cef

jr_004_5ccf:
    jr nz, jr_004_5cf1

jr_004_5cd1:
    nop
    inc bc
    jr nz, jr_004_5cf5

    jr nz, @+$4e

    ld b, l
    ld d, [hl]

jr_004_5cd9:
    ld b, l
    ld c, h

jr_004_5cdb:
    jr nz, jr_004_5d22

jr_004_5cdd:
    ld b, h
    ld c, c
    ld d, h
    ld c, a
    ld d, d
    jr nz, jr_004_5d04

    jr nz, jr_004_5ce6

jr_004_5ce6:
    ld b, $20
    jr nz, jr_004_5d2c

    ld l, a
    ld h, d
    jr nz, jr_004_5d15

    ld d, h

jr_004_5cef:
    ld l, b
    ld h, l

jr_004_5cf1:
    jr nz, jr_004_5d35

    ld l, h
    ld l, a

jr_004_5cf5:
    ld h, d
    daa
    jr nz, jr_004_5d19

    nop
    ld [$2020], sp
    jr nz, @+$22

    ld d, d
    ld [hl], l
    ld [hl], h
    ld l, b
    ld h, l

jr_004_5d04:
    ld [hl], d
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, h
    jr nz, @+$22

    jr nz, jr_004_5d2d

    nop
    inc bc
    jr nz, jr_004_5d31

    jr nz, jr_004_5d33

    jr nz, jr_004_5d35

jr_004_5d15:
    ld d, e
    ld c, a
    ld d, l
    ld c, [hl]

jr_004_5d19:
    ld b, h
    jr nz, @+$22

    jr nz, jr_004_5d3e

    jr nz, jr_004_5d40

    jr nz, jr_004_5d22

jr_004_5d22:
    ld b, $20
    jr nz, @+$22

    ld b, h
    ld h, c
    db $76
    ld h, l
    jr nz, jr_004_5d53

jr_004_5d2c:
    ld c, a

jr_004_5d2d:
    ld l, $54
    ld l, $4c

jr_004_5d31:
    ld l, $27

jr_004_5d33:
    jr nz, jr_004_5d55

jr_004_5d35:
    nop
    ld [$2020], sp
    jr nz, @+$22

    jr nz, jr_004_5d94

    ld l, b

jr_004_5d3e:
    ld l, c
    ld [hl], h

jr_004_5d40:
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, jr_004_5d67

    jr nz, jr_004_5d69

    nop
    ld [bc], a
    jr nz, jr_004_5d6d

    jr nz, jr_004_5d6f

    ld b, c
    ld d, e
    ld d, e
    ld c, c

jr_004_5d53:
    ld d, e
    ld d, h

jr_004_5d55:
    ld b, c
    ld c, [hl]
    ld d, h
    jr nz, jr_004_5d7a

    jr nz, jr_004_5d7c

    jr nz, jr_004_5d5e

jr_004_5d5e:
    inc b
    jr nz, jr_004_5d81

    jr nz, jr_004_5d83

    ld d, b
    ld d, d
    ld c, a
    ld b, h

jr_004_5d67:
    ld d, l
    ld b, e

jr_004_5d69:
    ld b, l
    ld d, d
    jr nz, jr_004_5d8d

jr_004_5d6d:
    jr nz, jr_004_5d8f

jr_004_5d6f:
    jr nz, jr_004_5d91

    nop
    rlca
    ld c, d
    ld l, a
    ld l, b
    ld l, [hl]
    jr nz, @+$29

    ld d, h

jr_004_5d7a:
    ld h, l
    ld [hl], d

jr_004_5d7c:
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, c
    ld [hl], h

jr_004_5d81:
    ld l, a
    ld [hl], d

jr_004_5d83:
    daa
    jr nz, jr_004_5d86

jr_004_5d86:
    add hl, bc
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

jr_004_5d8d:
    ld c, e
    ld l, [hl]

jr_004_5d8f:
    ld l, a
    ld l, h

jr_004_5d91:
    ld l, h
    jr nz, jr_004_5db4

jr_004_5d94:
    jr nz, jr_004_5db6

    jr nz, jr_004_5db8

    jr nz, jr_004_5d9a

jr_004_5d9a:
    inc bc
    jr nz, jr_004_5dbd

    jr nz, @+$22

    jr nz, jr_004_5df1

    ld d, d
    ld c, a
    ld b, h
    ld d, l
    ld b, e
    ld b, l
    ld d, d
    jr nz, jr_004_5dca

    jr nz, jr_004_5dcc

    jr nz, jr_004_5dae

jr_004_5dae:
    ld b, $20
    jr nz, jr_004_5dd2

    jr nz, @+$46

jr_004_5db4:
    ld h, c
    db $76

jr_004_5db6:
    ld l, c
    ld h, h

jr_004_5db8:
    jr nz, jr_004_5de1

    ld b, h
    ld l, a
    ld h, e

jr_004_5dbd:
    daa
    jr nz, jr_004_5de0

    jr nz, jr_004_5dc2

jr_004_5dc2:
    ld [$2020], sp
    jr nz, @+$22

    jr nz, @+$22

    ld c, [hl]

jr_004_5dca:
    ld l, a
    ld l, h

jr_004_5dcc:
    ld [hl], h
    ld h, l
    jr nz, jr_004_5df0

    jr nz, jr_004_5df2

jr_004_5dd2:
    jr nz, jr_004_5df4

    jr nz, jr_004_5dd6

jr_004_5dd6:
    ld [bc], a
    jr nz, jr_004_5df9

    jr nz, jr_004_5dfb

    ld b, l
    ld e, b
    ld b, l
    ld b, e
    ld d, l

jr_004_5de0:
    ld d, h

jr_004_5de1:
    ld c, c
    ld d, [hl]
    ld b, l
    jr nz, jr_004_5e06

    jr nz, jr_004_5e08

    jr nz, jr_004_5dea

jr_004_5dea:
    inc b
    jr nz, jr_004_5e0d

    jr nz, @+$22

    ld d, b

jr_004_5df0:
    ld d, d

jr_004_5df1:
    ld c, a

jr_004_5df2:
    ld b, h
    ld d, l

jr_004_5df4:
    ld b, e
    ld b, l
    ld d, d
    jr nz, jr_004_5e19

jr_004_5df9:
    jr nz, jr_004_5e1b

jr_004_5dfb:
    jr nz, jr_004_5e1d

    nop
    rlca
    jr nz, @+$22

    jr nz, @+$4a

    ld h, l
    ld l, [hl]
    ld l, e

jr_004_5e06:
    jr nz, jr_004_5e2f

jr_004_5e08:
    ld d, e
    ld [hl], l
    ld [hl], e
    ld l, b
    ld l, c

jr_004_5e0d:
    daa
    jr nz, jr_004_5e30

    jr nz, jr_004_5e12

jr_004_5e12:
    add hl, bc
    jr nz, jr_004_5e35

    jr nz, jr_004_5e37

    jr nz, @+$54

jr_004_5e19:
    ld l, a
    ld h, a

jr_004_5e1b:
    ld h, l
    ld [hl], d

jr_004_5e1d:
    ld [hl], e
    jr nz, jr_004_5e40

    jr nz, jr_004_5e42

    jr nz, jr_004_5e44

    jr nz, jr_004_5e26

jr_004_5e26:
    ld [bc], a
    jr nz, @+$22

    jr nz, jr_004_5e7b

    ld c, h
    ld b, c
    ld e, c
    ld d, h

jr_004_5e2f:
    ld b, l

jr_004_5e30:
    ld d, e
    ld d, h
    ld c, c
    ld c, [hl]
    ld b, a

jr_004_5e35:
    jr nz, jr_004_5e57

jr_004_5e37:
    jr nz, @+$22

    nop
    dec b
    jr nz, jr_004_5e5d

    jr nz, @+$22

    ld b, d

jr_004_5e40:
    ld d, b
    ld d, e

jr_004_5e42:
    jr nz, @+$4c

jr_004_5e44:
    ld h, c
    ld [hl], b
    ld h, c
    ld l, [hl]
    jr nz, jr_004_5e6a

    jr nz, jr_004_5e6c

    jr nz, jr_004_5e4e

jr_004_5e4e:
    rlca
    jr nz, jr_004_5e71

    ld d, h
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_004_5e57:
    ld h, a
    jr nz, jr_004_5e8b

    inc l
    ld [hl-], a
    inc l

jr_004_5e5d:
    inc sp
    jr nz, jr_004_5e80

    jr nz, jr_004_5e62

jr_004_5e62:
    add hl, bc
    jr nz, jr_004_5e85

    ld d, e
    ld l, l
    ld l, c
    ld l, h
    ld l, a

jr_004_5e6a:
    jr nz, jr_004_5ecd

jr_004_5e6c:
    ld l, [hl]
    ld h, h
    jr nz, jr_004_5eb3

    ld l, a

jr_004_5e71:
    ld l, $20
    jr nz, jr_004_5e95

    nop
    ld bc, $4158
    ld c, [hl]
    ld d, h

jr_004_5e7b:
    ld c, b
    jr nz, jr_004_5ed1

    ld c, a
    ld b, [hl]

jr_004_5e80:
    ld d, h
    ld d, a
    ld b, c
    ld d, d
    ld b, l

jr_004_5e85:
    jr nz, jr_004_5ecd

    cpl
    ld e, b
    nop
    inc bc

jr_004_5e8b:
    jr nz, jr_004_5ead

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$63

    ld l, [hl]
    ld h, h

jr_004_5e95:
    jr nz, jr_004_5eb7

    jr nz, jr_004_5eb9

    jr nz, jr_004_5ebb

    jr nz, jr_004_5ebd

    nop
    dec b
    jr nz, @+$22

    jr nz, jr_004_5ee5

    ld d, l
    ld c, h
    ld c, h
    ld b, l
    ld d, h
    dec l
    ld d, b
    ld d, d
    ld c, a
    ld c, a

jr_004_5ead:
    ld b, [hl]
    jr nz, jr_004_5ed0

    jr nz, jr_004_5eb2

jr_004_5eb2:
    rlca

jr_004_5eb3:
    jr nz, @+$22

    jr nz, @+$22

jr_004_5eb7:
    jr nz, jr_004_5f0c

jr_004_5eb9:
    ld c, a
    ld b, [hl]

jr_004_5ebb:
    ld d, h
    ld d, a

jr_004_5ebd:
    ld b, c
    ld d, d
    ld b, l
    jr nz, jr_004_5ee2

    jr nz, jr_004_5ee4

    jr nz, jr_004_5ec6

jr_004_5ec6:
    add hl, bc
    jr nz, jr_004_5ee9

    jr nz, jr_004_5eeb

    jr nz, @+$22

jr_004_5ecd:
    jr nz, jr_004_5f42

    ld h, c

jr_004_5ed0:
    ld a, c

jr_004_5ed1:
    ld a, [hl-]
    jr nz, @+$22

    jr nz, jr_004_5ef6

    jr nz, @+$22

    jr nz, jr_004_5eda

jr_004_5eda:
    inc c
    jr nz, jr_004_5f25

    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, @+$43

jr_004_5ee2:
    jr nz, @+$50

jr_004_5ee4:
    ld c, c

jr_004_5ee5:
    ld b, e
    ld b, l
    jr nz, @+$46

jr_004_5ee9:
    ld b, c
    ld e, c

jr_004_5eeb:
    ld hl, $0020
    xor a
    ld b, a
    ldh [$ffac], a
    ld l, a
    ld h, $c2

jr_004_5ef5:
    push hl

jr_004_5ef6:
    push bc
    bit 5, [hl]
    jr z, jr_004_5f19

    bit 0, [hl]
    jr z, jr_004_5f19

    bit 6, [hl]
    jr z, jr_004_5f13

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl

jr_004_5f0c:
    ld [hl], a
    xor a
    ldh [$ffad], a
    jp Jump_004_5f19


jr_004_5f13:
    call Call_004_65a4
    call Call_004_5f2a

Jump_004_5f19:
jr_004_5f19:
    pop bc
    pop hl
    ld a, b
    inc a
    cp $10
    jr z, jr_004_5f29

    ld b, a
    swap a
    ld l, a

jr_004_5f25:
    ldh [$ffac], a
    jr jr_004_5ef5

jr_004_5f29:
    ret


Call_004_5f2a:
    ldh a, [$ffac]
    swap a
    or $90
    ld c, a
    ld b, $c7
    ldh a, [$ffad]
    ld [bc], a
    ret


Call_004_5f37:
    ld c, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld b, [hl]
    ld a, c
    cp b

jr_004_5f42:
    jr z, jr_004_5faa

    sub b
    jr nc, jr_004_5f5d

    cpl
    inc a
    cp $14
    jr z, jr_004_5f9f

    jr c, jr_004_5f9f

    cp $ec
    jr z, jr_004_5f9f

    jr nc, jr_004_5f9f

    cp $b4
    jr z, jr_004_5f71

    jr c, jr_004_5f71

    jr jr_004_5f88

jr_004_5f5d:
    cp $14
    jr z, jr_004_5f9f

    jr c, jr_004_5f9f

    cp $ec
    jr z, jr_004_5f9f

    jr nc, jr_004_5f9f

    cp $b4
    jr z, jr_004_5f88

    jr c, jr_004_5f88

    jr jr_004_5f71

jr_004_5f71:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 4, [hl]
    set 6, [hl]
    res 0, [hl]
    res 3, [hl]
    ld a, l
    or $03
    ld l, a
    ld a, c
    ld [hl], a
    scf
    ret


jr_004_5f88:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]
    set 6, [hl]
    res 0, [hl]
    res 4, [hl]
    ld a, l
    or $03
    ld l, a
    ld a, c
    ld [hl], a
    scf
    ret


jr_004_5f9f:
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, c
    ld [hl], a
    and a
    ret


jr_004_5faa:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    res 0, [hl]
    res 1, [hl]
    res 3, [hl]
    res 4, [hl]
    and a
    ret


Call_004_5fb9:
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, [hl]
    ld c, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    sub c
    jr nc, jr_004_5fcf

    cpl
    inc a

jr_004_5fcf:
    cp $09
    jr nc, jr_004_5ff5

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    res 0, [hl]
    res 1, [hl]
    res 3, [hl]
    res 4, [hl]
    res 2, [hl]
    ld a, l
    or $0b
    ld l, a
    ld a, [hl]
    ld b, a
    ldh a, [$ffac]
    or $0f
    ld l, a
    ld h, $c2
    ld [hl], b
    xor a
    ldh [$ffad], a
    and a
    ret


jr_004_5ff5:
    xor a
    set 6, a
    ldh [$ffad], a
    ld a, $60
    call Call_004_631d
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    bit 3, a
    jr z, jr_004_6012

    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a
    jp Jump_004_6018


jr_004_6012:
    ldh a, [$ffad]
    set 4, a
    ldh [$ffad], a

Jump_004_6018:
    scf
    ret


Call_004_601a:
    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, [hl]
    ld c, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    sub c
    jr nc, jr_004_6033

    cpl
    inc a

jr_004_6033:
    cp $0f
    jr z, jr_004_6039

    jr nc, jr_004_6058

jr_004_6039:
    ld [hl], c
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    res 1, [hl]
    res 3, [hl]
    res 4, [hl]
    ld a, l
    or $0b
    ld l, a
    ld a, [hl]
    ld b, a
    ldh a, [$ffac]
    or $0f
    ld l, a
    ld h, $c2
    ld [hl], b
    xor a
    ldh [$ffad], a
    and a
    ret


jr_004_6058:
    ld a, $60
    call Call_004_631d
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 3, [hl]
    jr z, jr_004_606e

    xor a
    set 5, a
    ldh [$ffad], a
    jp Jump_004_6073


jr_004_606e:
    xor a
    set 4, a
    ldh [$ffad], a

Jump_004_6073:
    scf
    ret


Call_004_6075:
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    and a
    jr z, jr_004_6094

    cp $18
    jp c, Jump_004_6094

    cp $58
    jp c, Jump_004_612e

    cp $98
    jp c, Jump_004_61c8

    cp $d8
    jp c, Jump_004_6262

Jump_004_6094:
jr_004_6094:
    ldh a, [$ffa6]
    and a
    jr z, jr_004_60b1

    ld a, $00
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 2, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    set 2, [hl]
    jp Jump_004_62f6


jr_004_60b1:
    ldh a, [$ffa4]
    and a
    jr z, jr_004_60dc

    ld a, $40
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    jp Jump_004_62f6


jr_004_60dc:
    ldh a, [$ffa5]
    and a
    jr z, jr_004_6107

    ld a, $c0
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 4, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    jp Jump_004_62f6


jr_004_6107:
    ld a, $80
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    set 1, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    jp Jump_004_62f6


Jump_004_612e:
    ldh a, [$ffa4]
    and a
    jr z, jr_004_614b

    ld a, $40
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 2, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    set 0, [hl]
    jp Jump_004_62f6


jr_004_614b:
    ldh a, [$ffa7]
    and a
    jr z, jr_004_6176

    ld a, $80
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    jp Jump_004_62f6


jr_004_6176:
    ldh a, [$ffa6]
    and a
    jr z, jr_004_61a1

    ld a, $00
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 4, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    jp Jump_004_62f6


jr_004_61a1:
    ld a, $c0
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    set 1, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    jp Jump_004_62f6


Jump_004_61c8:
    ldh a, [$ffa7]
    and a
    jr z, jr_004_61e5

    ld a, $80
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 2, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    set 3, [hl]
    jp Jump_004_62f6


jr_004_61e5:
    ldh a, [$ffa5]
    and a
    jr z, jr_004_6210

    ld a, $c0
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    jp Jump_004_62f6


jr_004_6210:
    ldh a, [$ffa4]
    and a
    jr z, jr_004_623b

    ld a, $40
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 4, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    jp Jump_004_62f6


jr_004_623b:
    ld a, $00
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    set 1, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    jp Jump_004_62f6


Jump_004_6262:
    ldh a, [$ffa5]
    and a
    jr z, jr_004_627e

    ld a, $c0
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 2, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    set 1, [hl]
    jr jr_004_62f6

jr_004_627e:
    ldh a, [$ffa6]
    and a
    jr z, jr_004_62a8

    ld a, $00
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    jr jr_004_62f6

jr_004_62a8:
    ldh a, [$ffa7]
    and a
    jr z, jr_004_62d2

    ld a, $80
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 4, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a
    jr jr_004_62f6

jr_004_62d2:
    ld a, $40
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    set 1, [hl]
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    xor a
    ld [hl], a

Jump_004_62f6:
jr_004_62f6:
    ret


    call Call_004_4000
    rra
    jr nc, jr_004_630d

    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    set 1, [hl]
    ret


jr_004_630d:
    ldh a, [$ffad]
    set 4, a
    ldh [$ffad], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 4, [hl]
    set 1, [hl]
    ret


Call_004_631d:
    ld c, a
    ldh a, [$ffac]
    or $0f
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $03
    or c
    ld [hl], a
    ret


Call_004_632b:
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_6352

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_6352:
    bit 0, a
    jr nz, jr_004_635c

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_635c:
    bit 1, a
    jr nz, jr_004_6366

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_6366:
    bit 3, a
    jr nz, jr_004_636e

    ld a, $01
    ldh [$ffa7], a

jr_004_636e:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    and a
    jr z, jr_004_6398

    cp $18
    jr c, jr_004_6398

    cp $58
    jr c, jr_004_63f2

    cp $98
    jp c, Jump_004_644c

    cp $d8
    jp c, Jump_004_64a4

jr_004_6398:
    ldh a, [$ffa6]
    and a
    jr z, jr_004_63a0

    jp Jump_004_64f8


jr_004_63a0:
    ldh a, [$ffa4]
    and a
    jr z, jr_004_63bd

    ld a, $40
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]
    jp Jump_004_64f8


jr_004_63bd:
    ldh a, [$ffa5]
    and a
    jr z, jr_004_63da

    ld a, $c0
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]
    jp Jump_004_64f8


jr_004_63da:
    ld a, $80
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]
    jp Jump_004_64f8


jr_004_63f2:
    ldh a, [$ffa4]
    and a
    jr z, jr_004_63fa

    jp Jump_004_64f8


jr_004_63fa:
    ldh a, [$ffa7]
    and a
    jr z, jr_004_6417

    ld a, $80
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]
    jp Jump_004_64f8


jr_004_6417:
    ldh a, [$ffa6]
    and a
    jr z, jr_004_6434

    ld a, $00
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]
    jp Jump_004_64f8


jr_004_6434:
    ld a, $c0
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]
    jp Jump_004_64f8


Jump_004_644c:
    ldh a, [$ffa7]
    and a
    jr z, jr_004_6454

    jp Jump_004_64f8


jr_004_6454:
    ldh a, [$ffa5]
    and a
    jr z, jr_004_6471

    ld a, $c0
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]
    jp Jump_004_64f8


jr_004_6471:
    ldh a, [$ffa4]
    and a
    jr z, jr_004_648d

    ld a, $40
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]
    jr jr_004_64f8

jr_004_648d:
    ld a, $00
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]
    jr jr_004_64f8

Jump_004_64a4:
    ldh a, [$ffa5]
    and a
    jr z, jr_004_64ab

    jr jr_004_64f8

jr_004_64ab:
    ldh a, [$ffa6]
    and a
    jr z, jr_004_64c7

    ld a, $00
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]
    jr jr_004_64f8

jr_004_64c7:
    ldh a, [$ffa7]
    and a
    jr z, jr_004_64e3

    ld a, $80
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]
    jr jr_004_64f8

jr_004_64e3:
    ld a, $40
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    set 3, [hl]

Jump_004_64f8:
jr_004_64f8:
    ret


    ld a, b
    swap a
    push bc
    ldh [$ffac], a
    or $02
    ld l, a
    ld h, $c2
    ld a, d
    ld [hl+], a
    inc hl
    ld a, e
    ld [hl], a
    ldh a, [$ffac]
    or $0a
    ld l, a
    ld h, $c8
    ld a, d
    swap a
    and $f0
    ld b, a
    ld a, e
    and $0f
    or b
    ld [hl], a
    ld hl, $79c3
    ld a, c
    and a
    jr z, jr_004_6530

    ld b, a
    ld c, $06
    call Call_004_4006
    ld a, h
    ld c, a
    ld hl, $79c3
    xor a
    ld b, a
    add hl, bc

jr_004_6530:
    ldh a, [$ffac]
    swap a
    or $80
    ld e, a
    ld d, $c7
    ld a, [hl+]
    ld [de], a
    ldh a, [$ffac]
    or $0e
    ld e, a
    ld d, $c2
    ld a, [de]
    and $0f
    ld b, a
    ld a, [hl+]
    or b
    ld [de], a
    inc e
    ld a, [de]
    and $03
    ld b, a
    ld a, [hl+]
    or b
    ld [de], a
    ld b, a
    ldh a, [$ffac]
    or $0b
    ld e, a
    ld d, $c8
    ld a, b
    ld [de], a
    ldh a, [$ffac]
    or $02
    ld e, a
    pop bc
    ld a, c
    sla a
    ld [de], a
    ldh a, [$ffac]
    or $07
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ldh a, [$ffac]
    swap a
    or $e0
    ld e, a
    ld d, $c7
    ld a, [hl]
    ld [de], a
    ld a, [$da2a]
    bit 4, a
    ret nz

    ld a, c
    ld b, a
    ld c, $0b
    call Call_004_4006
    ld a, h
    ld c, a
    ld hl, $78e6
    xor a
    ld b, a
    add hl, bc
    ld d, h
    ld e, l
    ldh a, [$ffac]
    ld l, a
    ld h, $c6
    ldh a, [$ffac]
    swap a
    dec a
    ld b, a

jr_004_659d:
    ld a, [de]
    ld [hl+], a
    inc de
    and a
    jr nz, jr_004_659d

    ret


Call_004_65a4:
    ld bc, $65bb
    push bc
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c8
    ld a, [hl]
    ld c, a
    ld b, $00
    ld hl, $79a1
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ret


    ret


Call_004_65bd:
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    swap a
    ld d, a
    inc hl
    ld a, [hl]
    ld e, a
    or d
    ld d, a
    ldh a, [$ffac]
    or $0a
    ld l, a
    ld h, $c8
    ld a, d
    ld [hl], a
    ret


Call_004_65d7:
    ldh a, [$ffac]
    or $0a
    ld l, a
    ld h, $c8
    ld a, [hl]
    ld d, a
    and $0f
    ld e, a
    ld a, d
    and $f0
    swap a
    ld d, a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    sub d
    jr nc, jr_004_65f6

    cpl
    inc a

jr_004_65f6:
    ld b, a
    inc hl
    ld a, [hl]
    sub e
    jr nc, jr_004_65fe

    cpl
    inc a

jr_004_65fe:
    ld c, a
    ret


Call_004_6600:
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    and a
    jr z, jr_004_661e

    cp $18
    jr c, jr_004_661e

    cp $58
    jp c, Jump_004_6667

    cp $98
    jp c, Jump_004_66b0

    cp $d8
    jp c, Jump_004_66f8

jr_004_661e:
    xor a
    ld b, a
    ldh a, [$ffa4]
    and a
    jr z, jr_004_6626

    inc b

jr_004_6626:
    ldh a, [$ffa5]
    and a
    jr z, jr_004_662d

    inc b
    inc b

jr_004_662d:
    ld a, b
    and a
    jp z, Jump_004_6740

    cp $01
    jr z, jr_004_6659

    cp $02
    jr z, jr_004_6659

    call Call_004_4000
    bit 0, a
    jp nz, Jump_004_6740

    call Call_004_4000
    bit 0, a
    jr nz, jr_004_6651

    xor a
    ldh [$ffa5], a
    ldh [$ffa6], a
    jp Jump_004_6740


jr_004_6651:
    xor a
    ldh [$ffa4], a
    ldh [$ffa6], a
    jp Jump_004_6740


jr_004_6659:
    call Call_004_4000
    bit 0, a
    jp z, Jump_004_6740

    xor a
    ldh [$ffa6], a
    jp Jump_004_6740


Jump_004_6667:
    xor a
    ld b, a
    ldh a, [$ffa6]
    and a
    jr z, jr_004_666f

    inc b

jr_004_666f:
    ldh a, [$ffa7]
    and a
    jr z, jr_004_6676

    inc b
    inc b

jr_004_6676:
    ld a, b
    and a
    jp z, Jump_004_6740

    cp $01
    jr z, jr_004_66a2

    cp $02
    jr z, jr_004_66a2

    call Call_004_4000
    bit 0, a
    jp nz, Jump_004_6740

    call Call_004_4000
    bit 0, a
    jr nz, jr_004_669a

    xor a
    ldh [$ffa4], a
    ldh [$ffa7], a
    jp Jump_004_6740


jr_004_669a:
    xor a
    ldh [$ffa4], a
    ldh [$ffa6], a
    jp Jump_004_6740


jr_004_66a2:
    call Call_004_4000
    bit 0, a
    jp z, Jump_004_6740

    xor a
    ldh [$ffa4], a
    jp Jump_004_6740


Jump_004_66b0:
    xor a
    ld b, a
    ldh a, [$ffa4]
    and a
    jr z, jr_004_66b8

    inc b

jr_004_66b8:
    ldh a, [$ffa5]
    and a
    jr z, jr_004_66bf

    inc b
    inc b

jr_004_66bf:
    ld a, b
    and a
    jp z, Jump_004_6740

    cp $01
    jr z, jr_004_66ea

    cp $02
    jr z, jr_004_66ea

    call Call_004_4000
    bit 0, a
    jr nz, jr_004_6740

    call Call_004_4000
    bit 0, a
    jr nz, jr_004_66e2

    xor a
    ldh [$ffa5], a
    ldh [$ffa7], a
    jp Jump_004_6740


jr_004_66e2:
    xor a
    ldh [$ffa4], a
    ldh [$ffa7], a
    jp Jump_004_6740


jr_004_66ea:
    call Call_004_4000
    bit 0, a
    jp z, Jump_004_6740

    xor a
    ldh [$ffa7], a
    jp Jump_004_6740


Jump_004_66f8:
    xor a
    ld b, a
    ldh a, [$ffa6]
    and a
    jr z, jr_004_6700

    inc b

jr_004_6700:
    ldh a, [$ffa7]
    and a
    jr z, jr_004_6707

    inc b
    inc b

jr_004_6707:
    ld a, b
    and a
    jp z, Jump_004_6740

    cp $01
    jr z, jr_004_6732

    cp $02
    jr z, jr_004_6732

    call Call_004_4000
    bit 0, a
    jr nz, jr_004_6740

    call Call_004_4000
    bit 0, a
    jr nz, jr_004_672a

    xor a
    ldh [$ffa5], a
    ldh [$ffa6], a
    jp Jump_004_6740


jr_004_672a:
    xor a
    ldh [$ffa5], a
    ldh [$ffa7], a
    jp Jump_004_6740


jr_004_6732:
    call Call_004_4000
    bit 0, a
    jp z, Jump_004_6740

    xor a
    ldh [$ffa5], a
    jp Jump_004_6740


Jump_004_6740:
jr_004_6740:
    ret


    xor a
    set 3, a
    ldh [$ffad], a
    ret


    xor a
    ldh [$ffad], a
    call Call_004_7aa5
    cp $ff
    jp z, Jump_004_676a

    ld b, a
    ldh a, [$ffa1]
    cp b
    jr z, jr_004_676a

    jr nc, jr_004_675c

    jr jr_004_676a

jr_004_675c:
    ld a, b
    swap a
    call Call_004_7ab7
    ldh a, [$ffac]
    call Call_004_7ae4
    jp Jump_004_682c


Jump_004_676a:
jr_004_676a:
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    bit 1, [hl]
    jr z, jr_004_677f

    call Call_004_601a
    jp c, Jump_004_682c

    res 5, [hl]

jr_004_677f:
    push hl
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_67a7

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_67a7:
    bit 0, a
    jr nz, jr_004_67b1

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_67b1:
    bit 1, a
    jr nz, jr_004_67bb

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_67bb:
    bit 3, a
    jr nz, jr_004_67c3

    ld a, $01
    ldh [$ffa7], a

jr_004_67c3:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    call Call_004_6075
    pop hl
    bit 0, [hl]
    jr nz, jr_004_67df

jr_004_67d8:
    xor a
    set 6, a
    ldh [$ffad], a
    jr jr_004_682c

jr_004_67df:
    ldh a, [$ff87]
    and $07
    jr nz, jr_004_67d8

    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    cp $80
    jr z, jr_004_6828

    jr nc, jr_004_6828

    add $80

jr_004_67f5:
    ld c, a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    res 0, [hl]
    ld a, l
    or $03
    ld l, a
    ld a, c
    ld [hl], a
    call Call_004_4000
    bit 0, a
    jr z, jr_004_681a

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 4, [hl]
    xor a
    set 4, a
    ldh [$ffad], a
    jr jr_004_682c

jr_004_681a:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    xor a
    set 5, a
    ldh [$ffad], a
    jr jr_004_682c

jr_004_6828:
    sbc $80
    jr jr_004_67f5

Jump_004_682c:
jr_004_682c:
    ret


    xor a
    set 5, a
    ldh [$ffad], a
    call Call_004_4000
    bit 0, a
    jr nz, jr_004_683f

    ldh a, [$ffad]
    set 0, a
    ldh [$ffad], a

jr_004_683f:
    ret


    xor a
    ldh [$ffad], a
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 1, [hl]
    jr z, jr_004_6870

    call Call_004_601a
    jp c, Jump_004_691d

    call Call_004_4000
    bit 0, a
    jr nz, jr_004_6866

    xor a
    set 0, a
    set 6, a
    ldh [$ffad], a
    jp Jump_004_691d


jr_004_6866:
    xor a
    set 6, a
    ldh [$ffad], a
    jp Jump_004_691d


    res 5, [hl]

jr_004_6870:
    push hl
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_6898

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_6898:
    bit 0, a
    jr nz, jr_004_68a2

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_68a2:
    bit 1, a
    jr nz, jr_004_68ac

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_68ac:
    bit 3, a
    jr nz, jr_004_68b4

    ld a, $01
    ldh [$ffa7], a

jr_004_68b4:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    call Call_004_6075
    pop hl
    bit 0, [hl]
    jr nz, jr_004_68d0

jr_004_68c9:
    xor a
    set 6, a
    ldh [$ffad], a
    jr jr_004_691d

jr_004_68d0:
    ldh a, [$ff87]
    and $07
    jr nz, jr_004_68c9

    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    cp $80
    jr z, jr_004_6919

    jr nc, jr_004_6919

    add $80

jr_004_68e6:
    ld c, a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    res 0, [hl]
    ld a, l
    or $03
    ld l, a
    ld a, c
    ld [hl], a
    call Call_004_4000
    bit 0, a
    jr z, jr_004_690b

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 4, [hl]
    xor a
    set 4, a
    ldh [$ffad], a
    jr jr_004_691d

jr_004_690b:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    xor a
    set 5, a
    ldh [$ffad], a
    jr jr_004_691d

jr_004_6919:
    sbc $80
    jr jr_004_68e6

Jump_004_691d:
jr_004_691d:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jr z, jr_004_695e

    ld b, a
    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jr z, jr_004_6994

    ld c, $10
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_695e

    ld a, b
    call Call_004_5f37
    jr c, jr_004_6985

    jr jr_004_6994

jr_004_695e:
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_6975

    res 6, [hl]
    res 1, [hl]
    res 0, [hl]
    call Call_004_632b
    jr jr_004_6981

jr_004_6975:
    bit 0, [hl]
    jr z, jr_004_6981

Jump_004_6979:
    call Call_004_5fb9
    jr nc, jr_004_69b8

    jp Jump_004_6a1f


jr_004_6981:
    bit 1, [hl]
    jr z, jr_004_69b8

Jump_004_6985:
jr_004_6985:
    call Call_004_601a
    jp c, Jump_004_6a1f

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_69b6

jr_004_6994:
    ldh a, [$ffac]
    ld l, a
    ld h, $c2
    bit 3, [hl]
    jr z, jr_004_69a2

    xor a
    ldh [$ffad], a
    jr jr_004_69a7

jr_004_69a2:
    xor a
    set 0, a
    ldh [$ffad], a

jr_004_69a7:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    res 0, [hl]
    res 1, [hl]
    res 3, [hl]
    res 4, [hl]
    jr jr_004_6a1f

jr_004_69b6:
    res 5, [hl]

jr_004_69b8:
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_69df

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_69df:
    bit 0, a
    jr nz, jr_004_69e9

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_69e9:
    bit 1, a
    jr nz, jr_004_69f3

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_69f3:
    bit 3, a
    jr nz, jr_004_69fb

    ld a, $01
    ldh [$ffa7], a

jr_004_69fb:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    call Call_004_6075
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 0, [hl]
    jp nz, Jump_004_6979

    bit 1, [hl]
    jp nz, Jump_004_6985

    xor a
    set 6, a
    ldh [$ffad], a

Jump_004_6a1f:
jr_004_6a1f:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jr z, jr_004_6a60

    ld b, a
    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jr z, jr_004_6a7e

    ld c, $18
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_6a60

    ld a, b
    call Call_004_5f37
    jr c, jr_004_6a6f

    jr jr_004_6a7e

jr_004_6a60:
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 6, [hl]
    bit 1, [hl]
    jr z, jr_004_6a9b

jr_004_6a6f:
    call Call_004_601a
    jp c, Jump_004_6b56

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_6a9b

jr_004_6a7e:
    ldh a, [$ffac]
    ld l, a
    ld h, $c2
    bit 3, [hl]
    jr nz, jr_004_6a91

    xor a
    set 0, a
    set 6, a
    ldh [$ffad], a
    jp Jump_004_6b56


jr_004_6a91:
    xor a
    set 6, a
    ldh [$ffad], a
    jp Jump_004_6b56


    res 5, [hl]

jr_004_6a9b:
    push hl
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_6ac3

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_6ac3:
    bit 0, a
    jr nz, jr_004_6acd

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_6acd:
    bit 1, a
    jr nz, jr_004_6ad7

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_6ad7:
    bit 3, a
    jr nz, jr_004_6adf

    ld a, $01
    ldh [$ffa7], a

jr_004_6adf:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    call Call_004_6075
    pop hl
    bit 0, [hl]
    jr nz, jr_004_6b09

jr_004_6af4:
    ldh a, [$ffac]
    ld l, a
    ld h, $c2
    bit 3, [hl]
    jr z, jr_004_6b02

    xor a
    ldh [$ffad], a
    jr jr_004_6b56

jr_004_6b02:
    xor a
    set 6, a
    ldh [$ffad], a
    jr jr_004_6b56

jr_004_6b09:
    ldh a, [$ff87]
    and $03
    jr nz, jr_004_6af4

    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    cp $80
    jr z, jr_004_6b52

    jr nc, jr_004_6b52

    add $80

jr_004_6b1f:
    ld c, a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 1, [hl]
    res 0, [hl]
    ld a, l
    or $03
    ld l, a
    ld a, c
    ld [hl], a
    call Call_004_4000
    bit 0, a
    jr z, jr_004_6b44

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 4, [hl]
    xor a
    set 4, a
    ldh [$ffad], a
    jr jr_004_6b56

jr_004_6b44:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    xor a
    set 5, a
    ldh [$ffad], a
    jr jr_004_6b56

jr_004_6b52:
    sbc $80
    jr jr_004_6b1f

Jump_004_6b56:
jr_004_6b56:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jr z, jr_004_6b98

    ld b, a
    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jp z, Jump_004_6bdb

    ld c, $18
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_6b98

    ld a, b
    call Call_004_5f37
    jr c, jr_004_6bcd

    jr jr_004_6bdb

jr_004_6b98:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    res 6, [hl]
    set 1, [hl]
    bit 3, [hl]
    jr z, jr_004_6bb8

Jump_004_6ba5:
    ld a, $80
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    set 3, [hl]
    jr jr_004_6bcd

jr_004_6bb8:
    bit 4, [hl]
    jr z, jr_004_6bf0

jr_004_6bbc:
    ld a, $00
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    set 4, [hl]

jr_004_6bcd:
    call Call_004_601a
    jr c, jr_004_6bff

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_6bf0

Jump_004_6bdb:
jr_004_6bdb:
    ldh a, [$ffac]
    ld l, a
    ld h, $c2
    bit 3, [hl]
    jr z, jr_004_6be9

    xor a
    ldh [$ffad], a
    jr jr_004_6bff

jr_004_6be9:
    xor a
    set 0, a
    ldh [$ffad], a
    jr jr_004_6bff

jr_004_6bf0:
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    cp $80
    jr z, jr_004_6bbc

    jp Jump_004_6ba5


jr_004_6bff:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jp z, Jump_004_6c41

    ld b, a
    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jr z, jr_004_6c76

    ld c, $18
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_6c41

    ld a, b
    call Call_004_5f37
    jr c, jr_004_6c68

    jr jr_004_6c76

Jump_004_6c41:
jr_004_6c41:
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_6c58

    res 6, [hl]
    res 1, [hl]
    res 0, [hl]
    call Call_004_632b
    jr jr_004_6c91

jr_004_6c58:
    bit 0, [hl]
    jr z, jr_004_6c64

    call Call_004_5fb9
    jr nc, jr_004_6c91

    jp Jump_004_6cba


jr_004_6c64:
    bit 1, [hl]
    jr z, jr_004_6c91

jr_004_6c68:
    call Call_004_601a
    jr c, jr_004_6cba

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_6c8f

jr_004_6c76:
    ldh a, [$ffac]
    ld l, a
    ld h, $c2
    bit 3, [hl]
    jr z, jr_004_6c86

    xor a
    set 6, a
    ldh [$ffad], a
    jr jr_004_6cba

jr_004_6c86:
    xor a
    set 0, a
    set 6, a
    ldh [$ffad], a
    jr jr_004_6cba

jr_004_6c8f:
    res 5, [hl]

jr_004_6c91:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    push hl
    call Call_004_4000
    pop hl
    rr a
    jr z, jr_004_6cac

    set 3, [hl]
    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a
    jp Jump_004_6cb4


jr_004_6cac:
    set 4, [hl]
    ldh a, [$ffad]
    set 4, a
    ldh [$ffad], a

Jump_004_6cb4:
    ldh a, [$ffad]
    set 6, a
    ldh [$ffad], a

Jump_004_6cba:
jr_004_6cba:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jp z, Jump_004_6d05

    ld b, a
    or $90
    ld l, a
    ld h, $c7
    ld a, [hl]
    and a
    jr z, jr_004_6d05

    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jr z, jr_004_6d2e

    ld c, $18
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_6d05

    ld a, b
    call Call_004_5f37
    jr c, jr_004_6d1f

    jr jr_004_6d2e

Jump_004_6d05:
jr_004_6d05:
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    res 6, [hl]
    bit 0, [hl]
    jr z, jr_004_6d1b

Jump_004_6d13:
    call Call_004_5fb9
    jr nc, jr_004_6d4b

    jp Jump_004_6dd6


jr_004_6d1b:
    bit 1, [hl]
    jr z, jr_004_6d4b

jr_004_6d1f:
    call Call_004_601a
    jp c, Jump_004_6dd6

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_6d4b

jr_004_6d2e:
    ldh a, [$ffac]
    ld l, a
    ld h, $c2
    bit 3, [hl]
    jr z, jr_004_6d3f

    xor a
    set 6, a
    ldh [$ffad], a
    jp Jump_004_6dd6


jr_004_6d3f:
    xor a
    set 0, a
    set 6, a
    ldh [$ffad], a
    jp Jump_004_6dd6


    res 5, [hl]

jr_004_6d4b:
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_6d72

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_6d72:
    bit 0, a
    jr nz, jr_004_6d7c

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_6d7c:
    bit 1, a
    jr nz, jr_004_6d86

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_6d86:
    bit 3, a
    jr nz, jr_004_6d8e

    ld a, $01
    ldh [$ffa7], a

jr_004_6d8e:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    call Call_004_65d7
    ld a, b
    rr a
    jr c, jr_004_6daa

    ld a, c
    rr a
    jr c, jr_004_6daa

    jr jr_004_6db0

jr_004_6daa:
    call Call_004_65bd
    call Call_004_6600

jr_004_6db0:
    call Call_004_6075
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 0, [hl]
    jr z, jr_004_6dd1

    ldh a, [$ffac]
    or $0f
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld b, a
    ldh a, [$ffac]
    or $0b
    ld l, a
    ld h, $c8
    ld a, b
    ld [hl], a
    jp Jump_004_6d13


jr_004_6dd1:
    xor a
    set 6, a
    ldh [$ffad], a

Jump_004_6dd6:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jr z, jr_004_6e17

    ld b, a
    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jr z, jr_004_6e40

    ld c, $28
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_6e17

    ld a, b
    call Call_004_5f37
    jr c, jr_004_6e31

    jr jr_004_6e40

jr_004_6e17:
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    res 6, [hl]
    bit 0, [hl]
    jr z, jr_004_6e2d

Jump_004_6e25:
    call Call_004_5fb9
    jr nc, jr_004_6e5d

    jp Jump_004_6ed4


jr_004_6e2d:
    bit 1, [hl]
    jr z, jr_004_6e5d

jr_004_6e31:
    call Call_004_601a
    jp c, Jump_004_6ed4

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_6e5d

jr_004_6e40:
    ldh a, [$ffac]
    ld l, a
    ld h, $c2
    bit 3, [hl]
    jr z, jr_004_6e51

    xor a
    set 6, a
    ldh [$ffad], a
    jp Jump_004_6ed4


jr_004_6e51:
    xor a
    set 0, a
    set 6, a
    ldh [$ffad], a
    jp Jump_004_6ed4


    res 5, [hl]

jr_004_6e5d:
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_6e84

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_6e84:
    bit 0, a
    jr nz, jr_004_6e8e

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_6e8e:
    bit 1, a
    jr nz, jr_004_6e98

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_6e98:
    bit 3, a
    jr nz, jr_004_6ea0

    ld a, $01
    ldh [$ffa7], a

jr_004_6ea0:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    call Call_004_65d7
    ld a, b
    rr a
    jr c, jr_004_6ebc

    ld a, c
    rr a
    jr c, jr_004_6ebc

    jr jr_004_6ec2

jr_004_6ebc:
    call Call_004_65bd
    call Call_004_6600

jr_004_6ec2:
    call Call_004_6075
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 0, [hl]
    jp nz, Jump_004_6e25

    xor a
    set 6, a
    ldh [$ffad], a

Jump_004_6ed4:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jp z, Jump_004_6f22

    ld b, a
    swap a
    or $0c
    ld l, a
    ld h, $c2
    ld a, [hl]
    cp $03
    jr nc, jr_004_6f22

    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jr z, jr_004_6f67

    ld c, $20
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_6f22

    ld a, b
    call Call_004_5f37
    jr c, jr_004_6f58

    jr jr_004_6f67

Jump_004_6f22:
jr_004_6f22:
    call Call_004_7a29
    ldh a, [$ffac]
    or $0b
    ld l, a
    ld a, [hl]
    ld b, a
    ldh a, [$ffac]
    or $0f
    ld l, a
    ld h, $c2
    ld [hl], b
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_6f48

    res 6, [hl]
    res 1, [hl]
    res 0, [hl]
    call Call_004_632b
    jr jr_004_6f54

Jump_004_6f48:
jr_004_6f48:
    bit 0, [hl]
    jr z, jr_004_6f4c

jr_004_6f4c:
    call Call_004_5fb9
    jr nc, jr_004_6f94

    jp Jump_004_7010


jr_004_6f54:
    bit 1, [hl]
    jr z, jr_004_6f94

Jump_004_6f58:
jr_004_6f58:
    call Call_004_601a
    jp c, Jump_004_7010

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_6f94

jr_004_6f67:
    xor a
    set 6, a
    ldh [$ffad], a
    ld a, $34
    call Call_004_631d
    call Call_004_7aa5
    cp $ff
    jp z, Jump_004_7010

    ld b, a
    ldh a, [$ffa1]
    cp b
    jr z, jr_004_6f94

    jr nc, jr_004_6f83

    jr jr_004_6f94

jr_004_6f83:
    ldh a, [$ff87]
    and $03
    jp nz, Jump_004_7010

    ld a, b
    swap a
    call Call_004_7ab7
    jr jr_004_7010

    res 5, [hl]

jr_004_6f94:
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_6fbb

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_6fbb:
    bit 0, a
    jr nz, jr_004_6fc5

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_6fc5:
    bit 1, a
    jr nz, jr_004_6fcf

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_6fcf:
    bit 3, a
    jr nz, jr_004_6fd7

    ld a, $01
    ldh [$ffa7], a

jr_004_6fd7:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    call Call_004_65d7
    ld a, b
    rr a
    jr c, jr_004_6ff3

    ld a, c
    rr a
    jr c, jr_004_6ff3

    jr jr_004_6ff9

jr_004_6ff3:
    call Call_004_65bd
    call Call_004_6600

jr_004_6ff9:
    call Call_004_6075
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 0, [hl]
    jp nz, Jump_004_6f48

    bit 1, [hl]
    jp nz, Jump_004_6f58

    xor a
    set 6, a
    ldh [$ffad], a

Jump_004_7010:
jr_004_7010:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jr z, jr_004_7051

    ld b, a
    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jr z, jr_004_7087

    ld c, $10
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_7051

    ld a, b
    call Call_004_5f37
    jr c, jr_004_7078

    jr jr_004_7087

jr_004_7051:
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_7068

    res 6, [hl]
    res 1, [hl]
    res 0, [hl]
    call Call_004_632b
    jr jr_004_7074

jr_004_7068:
    bit 0, [hl]
    jr z, jr_004_7074

Jump_004_706c:
    call Call_004_5fb9
    jr nc, jr_004_709e

    jp Jump_004_7105


jr_004_7074:
    bit 1, [hl]
    jr z, jr_004_709e

Jump_004_7078:
jr_004_7078:
    call Call_004_601a
    jp c, Jump_004_7105

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_709e

jr_004_7087:
    ldh a, [$ffac]
    ld l, a
    ld h, $c2
    bit 3, [hl]
    jr z, jr_004_7095

    xor a
    ldh [$ffad], a
    jr jr_004_7105

jr_004_7095:
    xor a
    set 0, a
    ldh [$ffad], a
    jr jr_004_7105

    res 5, [hl]

jr_004_709e:
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_70c5

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_70c5:
    bit 0, a
    jr nz, jr_004_70cf

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_70cf:
    bit 1, a
    jr nz, jr_004_70d9

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_70d9:
    bit 3, a
    jr nz, jr_004_70e1

    ld a, $01
    ldh [$ffa7], a

jr_004_70e1:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    call Call_004_6075
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 0, [hl]
    jp nz, Jump_004_706c

    bit 1, [hl]
    jp nz, Jump_004_7078

    xor a
    set 6, a
    ldh [$ffad], a

Jump_004_7105:
jr_004_7105:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jr z, jr_004_7146

    ld b, a
    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jr z, jr_004_717c

    ld c, $10
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_7146

    ld a, b
    call Call_004_5f37
    jr c, jr_004_716d

    jr jr_004_717c

jr_004_7146:
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_715d

    res 6, [hl]
    res 0, [hl]
    res 1, [hl]
    call Call_004_632b
    jr jr_004_7169

jr_004_715d:
    bit 0, [hl]
    jr z, jr_004_7169

Jump_004_7161:
    call Call_004_5fb9
    jr nc, jr_004_7196

    jp Jump_004_73e5


jr_004_7169:
    bit 1, [hl]
    jr z, jr_004_7196

Jump_004_716d:
jr_004_716d:
    call Call_004_601a
    jp c, Jump_004_73e5

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_7194

jr_004_717c:
    ldh a, [$ffac]
    ld l, a
    ld h, $c2
    bit 3, [hl]
    jp z, Jump_004_718c

    xor a
    ldh [$ffad], a
    jp Jump_004_73e5


Jump_004_718c:
    xor a
    set 0, a
    ldh [$ffad], a
    jp Jump_004_73e5


jr_004_7194:
    res 5, [hl]

jr_004_7196:
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_71bd

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_71bd:
    bit 0, a
    jr nz, jr_004_71c7

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_71c7:
    bit 1, a
    jr nz, jr_004_71d1

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_71d1:
    bit 3, a
    jr nz, jr_004_71d9

    ld a, $01
    ldh [$ffa7], a

jr_004_71d9:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    and a
    jr z, jr_004_7205

    cp $18
    jp c, Jump_004_7205

    cp $58
    jp c, Jump_004_7279

    cp $98
    jp c, Jump_004_72ed

    cp $d8
    jp c, Jump_004_7361

Jump_004_7205:
jr_004_7205:
    ldh a, [$ffa4]
    and a
    jr z, jr_004_7227

    ld a, $40
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    jp Jump_004_73cf


jr_004_7227:
    ldh a, [$ffa6]
    and a
    jr z, jr_004_7239

    ld a, $00
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 2, [hl]
    jp Jump_004_73cf


jr_004_7239:
    ldh a, [$ffa5]
    and a
    jr z, jr_004_725b

    ld a, $c0
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 4, [hl]
    jp Jump_004_73cf


jr_004_725b:
    ld a, $80
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    set 1, [hl]
    jp Jump_004_73cf


Jump_004_7279:
    ldh a, [$ffa7]
    and a
    jr z, jr_004_729b

    ld a, $80
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    jp Jump_004_73cf


jr_004_729b:
    ldh a, [$ffa4]
    and a
    jr z, jr_004_72ad

    ld a, $40
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 2, [hl]
    jp Jump_004_73cf


jr_004_72ad:
    ldh a, [$ffa6]
    and a
    jr z, jr_004_72cf

    ld a, $00
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 4, [hl]
    jp Jump_004_73cf


jr_004_72cf:
    ld a, $c0
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    set 1, [hl]
    jp Jump_004_73cf


Jump_004_72ed:
    ldh a, [$ffa5]
    and a
    jr z, jr_004_730f

    ld a, $c0
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    jp Jump_004_73cf


jr_004_730f:
    ldh a, [$ffa7]
    and a
    jr z, jr_004_7321

    ld a, $80
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 2, [hl]
    jp Jump_004_73cf


jr_004_7321:
    ldh a, [$ffa4]
    and a
    jr z, jr_004_7343

    ld a, $40
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 4, [hl]
    jp Jump_004_73cf


jr_004_7343:
    ld a, $00
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    set 1, [hl]
    jp Jump_004_73cf


Jump_004_7361:
    ldh a, [$ffa6]
    and a
    jr z, jr_004_7382

    ld a, $00
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    jr jr_004_73cf

jr_004_7382:
    ldh a, [$ffa6]
    and a
    jr z, jr_004_7393

    ld a, $c0
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 2, [hl]
    jr jr_004_73cf

jr_004_7393:
    ldh a, [$ffa7]
    and a
    jr z, jr_004_73b4

    ld a, $80
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 0, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 4, [hl]
    jr jr_004_73cf

jr_004_73b4:
    ld a, $40
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    set 1, [hl]

Jump_004_73cf:
jr_004_73cf:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 1, [hl]
    jp nz, Jump_004_716d

    bit 0, [hl]
    jp nz, Jump_004_7161

    xor a
    ldh [$ffad], a
    set 6, a
    ldh [$ffad], a

Jump_004_73e5:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jr z, jr_004_7426

    ld b, a
    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jr z, jr_004_745c

    ld c, $20
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_7426

    ld a, b
    call Call_004_5f37
    jr c, jr_004_744d

    jr jr_004_745c

jr_004_7426:
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_743d

    res 6, [hl]
    res 1, [hl]
    res 0, [hl]
    call Call_004_632b
    jr jr_004_7449

Jump_004_743d:
jr_004_743d:
    bit 0, [hl]
    jr z, jr_004_7449

    call Call_004_5fb9
    jr nc, jr_004_748f

    jp Jump_004_7506


jr_004_7449:
    bit 1, [hl]
    jr z, jr_004_748f

jr_004_744d:
    call Call_004_601a
    jp c, Jump_004_7506

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_748f

jr_004_745c:
    xor a
    set 6, a
    ldh [$ffad], a
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    res 1, [hl]
    res 0, [hl]
    res 3, [hl]
    res 4, [hl]
    call Call_004_7aa5
    cp $ff
    jp z, Jump_004_7506

    ld b, a
    ldh a, [$ffa1]
    cp b
    jr z, jr_004_748f

    jr nc, jr_004_7480

    jr jr_004_748f

jr_004_7480:
    ld a, b
    swap a
    call Call_004_7ab7
    ldh a, [$ffac]
    call Call_004_7ae4
    jr jr_004_7506

    res 5, [hl]

jr_004_748f:
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_74b6

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_74b6:
    bit 0, a
    jr nz, jr_004_74c0

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_74c0:
    bit 1, a
    jr nz, jr_004_74ca

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_74ca:
    bit 3, a
    jr nz, jr_004_74d2

    ld a, $01
    ldh [$ffa7], a

jr_004_74d2:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    call Call_004_65d7
    ld a, b
    rr a
    jr c, jr_004_74ee

    ld a, c
    rr a
    jr c, jr_004_74ee

    jr jr_004_74f4

jr_004_74ee:
    call Call_004_65bd
    call Call_004_6600

jr_004_74f4:
    call Call_004_6075
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 0, [hl]
    jp nz, Jump_004_743d

    xor a
    set 6, a
    ldh [$ffad], a

Jump_004_7506:
jr_004_7506:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jr z, jr_004_7549

    ld b, a
    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jr z, jr_004_757f

    ld c, $18
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_7549

    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld [hl], b
    jr jr_004_757f

jr_004_7549:
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr jr_004_7560

    res 6, [hl]
    res 0, [hl]
    res 1, [hl]
    call Call_004_632b
    jr jr_004_756c

jr_004_7560:
    bit 0, [hl]
    jr z, jr_004_756c

Jump_004_7564:
    call Call_004_5fb9
    jr nc, jr_004_75a5

    jp Jump_004_7609


jr_004_756c:
    bit 1, [hl]
    jr z, jr_004_75a5

    call Call_004_601a
    jp c, Jump_004_7609

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_75a3

jr_004_757f:
    xor a
    set 6, a
    ldh [$ffad], a
    call Call_004_7aa5
    cp $ff
    jr z, jr_004_7609

    ld b, a
    ldh a, [$ffa1]
    cp b
    jr z, jr_004_75a5

    jr nc, jr_004_7595

    jr jr_004_75a5

jr_004_7595:
    ldh a, [$ff87]
    and $03
    jr nz, jr_004_7609

    ld a, b
    swap a
    call Call_004_7ab7
    jr jr_004_7609

jr_004_75a3:
    res 5, [hl]

jr_004_75a5:
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_75cc

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_75cc:
    bit 0, a
    jr nz, jr_004_75d6

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_75d6:
    bit 1, a
    jr nz, jr_004_75e0

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_75e0:
    bit 3, a
    jr nz, jr_004_75e8

    ld a, $01
    ldh [$ffa7], a

jr_004_75e8:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    call Call_004_6075
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 0, [hl]
    jp nz, Jump_004_7564

    xor a
    ldh [$ffad], a
    set 6, a
    ldh [$ffad], a

Jump_004_7609:
jr_004_7609:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jr z, jr_004_764a

    ld b, a
    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jr z, jr_004_7680

    ld c, $20
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_764a

    ld a, b
    call Call_004_5f37
    jr c, jr_004_7671

    jr jr_004_7680

jr_004_764a:
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_7661

    res 6, [hl]
    res 1, [hl]
    res 0, [hl]
    call Call_004_632b
    jr jr_004_766d

Jump_004_7661:
jr_004_7661:
    bit 0, [hl]
    jr z, jr_004_766d

    call Call_004_5fb9
    jr nc, jr_004_76c7

    jp Jump_004_773e


jr_004_766d:
    bit 1, [hl]
    jr z, jr_004_76c7

jr_004_7671:
    call Call_004_601a
    jp c, Jump_004_773e

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_76c7

jr_004_7680:
    ldh a, [$ffac]
    ld l, a
    ld h, $c2
    bit 3, [hl]
    jp z, Jump_004_7692

    xor a
    set 6, a
    ldh [$ffad], a
    jp Jump_004_7699


Jump_004_7692:
    xor a
    set 6, a
    set 0, a
    ldh [$ffad], a

Jump_004_7699:
    call Call_004_7aa5
    cp $ff
    jp z, Jump_004_773e

    ld b, a
    ldh a, [$ffa1]
    cp b
    jr z, jr_004_76c7

    jr nc, jr_004_76ab

    jr jr_004_76c7

jr_004_76ab:
    ldh a, [$ff87]
    and $03
    jp nz, Jump_004_773e

    ld a, b
    swap a
    call Call_004_7ab7
    ld a, b
    swap a
    call Call_004_7ab7
    ldh a, [$ffac]
    call Call_004_7ae4
    jr jr_004_773e

    res 5, [hl]

jr_004_76c7:
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_76ee

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_76ee:
    bit 0, a
    jr nz, jr_004_76f8

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_76f8:
    bit 1, a
    jr nz, jr_004_7702

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_7702:
    bit 3, a
    jr nz, jr_004_770a

    ld a, $01
    ldh [$ffa7], a

jr_004_770a:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    call Call_004_65d7
    ld a, b
    rr a
    jr c, jr_004_7726

    ld a, c
    rr a
    jr c, jr_004_7726

    jr jr_004_772c

jr_004_7726:
    call Call_004_65bd
    call Call_004_6600

jr_004_772c:
    call Call_004_6075
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 0, [hl]
    jp nz, Jump_004_7661

    xor a
    set 6, a
    ldh [$ffad], a

Jump_004_773e:
jr_004_773e:
    ret


    xor a
    ldh [$ffad], a
    ldh a, [$ffac]
    or $0c
    ld l, a
    ld h, $c2
    ld a, [hl+]
    cp $08
    jr nz, jr_004_7754

    ld a, $02
    inc hl
    ld [hl], a
    jr jr_004_775c

jr_004_7754:
    cp $04
    jr nz, jr_004_775c

    ld a, $06
    inc hl
    ld [hl], a

jr_004_775c:
    ldh a, [$ffac]
    or $07
    ld l, a
    ld h, $c8
    ld b, [hl]
    ldh a, [$ffac]
    swap a
    call Call_004_7afc
    cp $ff
    jr z, jr_004_7799

    ld b, a
    ldh a, [$ffac]
    swap a
    call Call_004_7b8c
    ld b, a
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    cp b
    jr z, jr_004_77c7

    ld c, $28
    ldh a, [$ffac]
    swap a
    push bc
    call Call_004_7c9a
    pop bc
    jr c, jr_004_7799

    ld a, b
    call Call_004_5f37
    jr c, jr_004_77b8

    jr jr_004_77c7

jr_004_7799:
    call Call_004_7a29
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    res 6, [hl]
    bit 7, [hl]
    jp nz, Jump_004_78bb

    bit 0, [hl]
    jr z, jr_004_77b4

Jump_004_77ac:
    call Call_004_5fb9
    jr nc, jr_004_77e4

    jp Jump_004_78e5


jr_004_77b4:
    bit 1, [hl]
    jr z, jr_004_77e4

Jump_004_77b8:
jr_004_77b8:
    call Call_004_601a
    jp c, Jump_004_78e5

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 6, [hl]
    jr z, jr_004_77e4

jr_004_77c7:
    ldh a, [$ffac]
    ld l, a
    ld h, $c2
    bit 3, [hl]
    jr z, jr_004_77d8

    xor a
    set 6, a
    ldh [$ffad], a
    jp Jump_004_78e5


jr_004_77d8:
    xor a
    set 0, a
    set 6, a
    ldh [$ffad], a
    jp Jump_004_78e5


    res 5, [hl]

jr_004_77e4:
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ldh a, [$ffac]
    or $02
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa3], a
    bit 2, a
    jr nz, jr_004_780b

    ld a, $01
    ldh [$ffa4], a
    ldh a, [$ffa3]

jr_004_780b:
    bit 0, a
    jr nz, jr_004_7815

    ld a, $01
    ldh [$ffa5], a
    ldh a, [$ffa3]

jr_004_7815:
    bit 1, a
    jr nz, jr_004_781f

    ld a, $01
    ldh [$ffa6], a
    ldh a, [$ffa3]

jr_004_781f:
    bit 3, a
    jr nz, jr_004_7827

    ld a, $01
    ldh [$ffa7], a

jr_004_7827:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    ld a, [hl]
    res 2, a
    res 3, a
    res 4, a
    ld [hl], a
    call Call_004_65d7
    ld a, b
    rr a
    jr c, jr_004_7843

    ld a, c
    rr a
    jr c, jr_004_7843

    jr jr_004_7849

jr_004_7843:
    call Call_004_65bd
    call Call_004_6600

jr_004_7849:
    call Call_004_6075
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    bit 0, [hl]
    jp nz, Jump_004_77ac

    bit 1, [hl]
    jp nz, Jump_004_77b8

    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c8
    bit 2, [hl]
    jr nz, jr_004_7875

    bit 3, [hl]
    jr nz, jr_004_7875

    bit 0, [hl]
    jr nz, jr_004_7885

    bit 1, [hl]
    jr nz, jr_004_7885

    jp Jump_004_78e0


jr_004_7875:
    ldh a, [$ffac]
    or $01
    ld l, a
    ld h, $c2
    ld a, [hl]
    cp $80
    jr z, jr_004_7895

    jr nc, jr_004_7895

    jr jr_004_78e0

jr_004_7885:
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c2
    ld a, [hl]
    cp $80
    jr z, jr_004_7895

    jr nc, jr_004_78a3

    jr jr_004_78e0

jr_004_7895:
    ldh a, [$ffa3]
    bit 2, a
    jr nz, jr_004_789d

    jr jr_004_78b1

jr_004_789d:
    bit 0, a
    jr nz, jr_004_78e0

    jr jr_004_78b1

jr_004_78a3:
    ldh a, [$ffa3]
    bit 1, a
    jr nz, jr_004_78ab

    jr jr_004_78b1

jr_004_78ab:
    ldh a, [$ffa3]
    bit 3, a
    jr nz, jr_004_78e0

jr_004_78b1:
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 7, [hl]
    jp Jump_004_78e0


Jump_004_78bb:
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld b, [hl]
    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    set 3, [hl]
    set 1, [hl]
    res 7, [hl]
    ld a, l
    or $03
    ld l, a
    ld [hl], b
    ld a, $60
    call Call_004_631d
    xor a
    set 5, a
    ldh [$ffad], a
    jp Jump_004_78e5


Jump_004_78e0:
jr_004_78e0:
    xor a
    set 6, a
    ldh [$ffad], a

Jump_004_78e5:
    ret


    jr nz, @+$22

    ld d, h
    ld [hl], l
    ld [hl], d
    ld l, e
    ld h, l
    ld a, c
    jr nz, @+$22

    nop
    jr nz, @+$22

    ld b, d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, e
    ld h, l
    ld [hl], d
    jr nz, jr_004_78fc

jr_004_78fc:
    jr nz, @+$22

    ld d, e
    ld h, e
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_004_7907

jr_004_7907:
    jr nz, @+$22

    jr nz, @+$49

    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, @+$22

    nop
    jr nz, jr_004_7957

    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    ld h, l
    ld a, c
    ld h, l
    jr nz, jr_004_791d

jr_004_791d:
    jr nz, @+$22

    jr nz, jr_004_796f

    ld l, c
    ld l, [hl]
    ld l, d
    ld h, c
    jr nz, @+$22

    nop
    jr nz, @+$22

    jr nz, @+$55

    ld l, b
    ld h, c
    ld [hl], d
    ld l, e
    jr nz, @+$22

    nop
    jr nz, @+$22

    jr nz, jr_004_7989

    ld l, a
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_004_795d

    nop
    jr nz, @+$22

    jr nz, jr_004_7999

    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_004_7968

    nop
    jr nz, jr_004_7992

    ld [hl], d
    ld h, l
    ld l, l
    ld l, h
    ld l, c
    ld l, [hl]
    jr nz, jr_004_7973

    nop
    jr nz, @+$22

    ld d, [hl]

jr_004_7957:
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld [hl], d
    ld h, l

jr_004_795d:
    jr nz, jr_004_795f

jr_004_795f:
    jr nz, jr_004_79ac

    ld h, c
    ld l, l
    ld l, c
    ld l, e
    ld h, c
    ld a, d
    ld h, l

jr_004_7968:
    jr nz, jr_004_796a

jr_004_796a:
    jr nz, @+$22

    ld d, e
    ld l, b
    ld l, a

jr_004_796f:
    ld l, a
    ld [hl], h
    ld c, l
    ld h, l

jr_004_7973:
    jr nz, jr_004_7975

jr_004_7975:
    jr nz, jr_004_79ca

    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld c, l
    ld h, l
    ld [hl-], a
    jr nz, jr_004_7980

jr_004_7980:
    jr nz, @+$22

    ld c, c
    ld d, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld d, l

jr_004_7989:
    jr nz, jr_004_798b

jr_004_798b:
    jr nz, jr_004_79d6

    ld d, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h

jr_004_7992:
    ld d, l
    ld [hl-], a
    jr nz, jr_004_7996

jr_004_7996:
    jr nz, jr_004_79b8

    ld c, l

jr_004_7999:
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_004_79c0

    nop
    ld e, $69
    jr nz, jr_004_7a0f

    ld d, a
    ld l, e
    nop
    ld l, h
    cp e
    ld l, h
    rst $10

jr_004_79ac:
    ld l, l
    push de
    ld l, [hl]
    ld de, $0670
    ld [hl], c
    and $73
    rlca
    ld [hl], l
    ld a, [bc]

jr_004_79b8:
    db $76
    ld b, c
    ld h, a
    ld b, a
    ld h, a
    dec l
    ld l, b
    ld b, b

jr_004_79c0:
    ld l, b
    ccf
    ld [hl], a
    ld bc, $2040
    ld [bc], a
    jr nz, jr_004_79d8

    inc bc

jr_004_79ca:
    ld h, b
    inc h
    inc bc
    jr nz, @+$07

    inc b
    ldh [rNR50], a
    inc bc
    jr nz, jr_004_79da

    inc bc

jr_004_79d6:
    jr nz, @+$26

jr_004_79d8:
    inc bc
    ld b, b

jr_004_79da:
    dec b
    inc b
    ret nc

    inc l
    inc bc
    jr nz, jr_004_79e4

    ld b, $10
    inc l

jr_004_79e4:
    dec b
    rst $38
    inc bc
    dec b
    sub b
    jr nz, jr_004_79ef

    jr nz, jr_004_79ed

jr_004_79ed:
    inc bc
    nop

jr_004_79ef:
    jr nz, jr_004_79f3

    ld b, b
    dec c

jr_004_79f3:
    inc bc
    ld b, b
    jr nz, jr_004_79f9

    jr nz, jr_004_7a03

jr_004_79f9:
    ld [bc], a
    add b
    jr nz, jr_004_79ff

    rst $38
    nop

jr_004_79ff:
    inc b
    and b
    inc h
    inc bc

jr_004_7a03:
    rst $38
    nop
    dec b
    ld d, b
    inc h
    inc b
    rst $38
    ld a, [bc]
    ld bc, $00c0
    nop

jr_004_7a0f:
    nop
    nop
    ld bc, $0080
    nop
    nop
    nop
    ld bc, $24c0
    ld bc, $1420
    ld bc, $2040
    ld bc, $1420
    inc d
    db $10
    jr c, jr_004_7a2c

    rst $38
    ld [bc], a

Call_004_7a29:
    ldh a, [$ffac]
    ld l, a

jr_004_7a2c:
    ld h, $c8
    bit 1, [hl]
    jr nz, jr_004_7aa4

    call Call_004_7aa5
    jp nc, Jump_004_7aa4

    ld b, a
    ldh a, [$ffa1]
    cp b
    jr nc, jr_004_7aa4

    ldh a, [$ffac]
    ld l, a
    ld h, $c8
    res 0, [hl]
    res 2, [hl]
    res 3, [hl]
    res 4, [hl]
    set 5, [hl]
    set 1, [hl]
    ldh a, [$ffac]
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    cp $80
    jr z, jr_004_7a82

    jr nc, jr_004_7a82

    add $80
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    call Call_004_4000
    bit 0, a
    jr z, jr_004_7a79

    ldh a, [$ffad]
    set 4, a
    ldh [$ffad], a
    jp Jump_004_7aa4


jr_004_7a79:
    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a
    jp Jump_004_7aa4


jr_004_7a82:
    sbc $80
    ld c, a
    ldh a, [$ffac]
    or $03
    ld l, a
    ld h, $c8
    ld a, c
    ld [hl], a
    call Call_004_4000
    bit 0, a
    jr z, jr_004_7a9e

    ldh a, [$ffad]
    set 4, a
    ldh [$ffad], a
    jp Jump_004_7aa4


jr_004_7a9e:
    ldh a, [$ffad]
    set 5, a
    ldh [$ffad], a

Jump_004_7aa4:
jr_004_7aa4:
    ret


Call_004_7aa5:
    ld h, $c7
    ldh a, [$ffac]
    swap a
    or $d0
    ld l, a
    ld a, [hl]
    cp $ff
    jr nc, jr_004_7ab5

    scf
    ret


jr_004_7ab5:
    and a
    ret


Call_004_7ab7:
    ld l, a
    ld h, $c2
    set 1, [hl]
    ld a, l
    swap a
    or $c0
    ld l, a
    ld h, $c7
    ldh a, [$ffac]
    swap a
    ld [hl], a
    ret


    ld c, a
    ld l, a
    ld h, $c2
    set 1, [hl]
    or $0c
    ld l, a
    ld a, $01
    ld [hl], a
    ld a, c
    swap a
    or $c0
    ld l, a
    ld h, $c7
    ldh a, [$ffac]
    swap a
    ld [hl], a
    ret


Call_004_7ae4:
    ld c, a
    ld l, a
    ld h, $c2
    set 1, [hl]
    or $0c
    ld l, a
    ld a, $01
    ld [hl], a
    ld a, c
    swap a
    or $c0
    ld l, a
    ld h, $c7
    ld a, $ff
    ld [hl], a
    ret


Call_004_7afc:
    ldh [$ff98], a
    swap a
    or $02
    ld l, a
    ld h, $c2
    ld a, b
    ldh [$ffe0], a
    ld a, [hl+]
    ld b, a
    inc l
    ld a, [hl]
    ld c, a
    ld l, $00
    ld a, $ff
    ld e, a
    ldh [$ffe3], a

jr_004_7b14:
    ldh a, [$ff98]
    swap a
    cp l
    jr z, jr_004_7b80

    ld a, [hl]
    bit 0, a
    jr z, jr_004_7b80

    bit 6, a
    jr nz, jr_004_7b80

    ld a, [$da2a]
    bit 4, a
    jr nz, jr_004_7b2f

    bit 5, [hl]
    jr nz, jr_004_7b80

jr_004_7b2f:
    push hl
    ld a, l
    swap a
    or $30
    ld l, a
    ld h, $c7
    ld a, [hl]
    and a
    pop hl
    jr nz, jr_004_7b80

    inc l
    inc l
    ld a, [hl+]
    sub b
    jr nc, jr_004_7b45

    cpl
    inc a

jr_004_7b45:
    ld d, a
    inc l
    ld a, [hl]
    sub c
    jr nc, jr_004_7b4d

    cpl
    inc a

jr_004_7b4d:
    push bc
    ld b, a
    cp d
    jr c, jr_004_7b55

    ld a, d
    ld d, b
    ld b, a

jr_004_7b55:
    sla a
    cp d
    jr nc, jr_004_7b62

    srl a
    srl a
    srl a
    jr jr_004_7b6c

jr_004_7b62:
    sla a
    sla a
    sub d
    sub b
    swap a
    and $0f

jr_004_7b6c:
    add d
    ld d, a
    pop bc
    ldh a, [$ffe0]
    cp d
    jr c, jr_004_7b80

    ld a, d
    cp e
    jr nc, jr_004_7b80

    ld e, d
    ld a, l
    swap a
    and $0f
    ldh [$ffe3], a

jr_004_7b80:
    ld a, l
    and $f0
    add $10
    ld l, a
    jr nz, jr_004_7b14

    ldh a, [$ffe3]
    ld b, e
    ret


Call_004_7b8c:
    swap a
    or $01
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ldh [$ffe4], a
    ld a, [hl+]
    ldh [$ffe5], a
    ld a, [hl+]
    ldh [$ffe6], a
    ld a, [hl+]
    ldh [$ffe7], a
    ld a, b
    swap a
    or $01
    ld l, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    xor a
    ldh [$ffe8], a
    ldh a, [$ffe4]
    cpl
    add $01
    ld l, a
    ldh a, [$ffe5]
    cpl
    adc $00
    ld h, a
    add hl, bc
    ld c, l
    ld b, h
    bit 7, h
    jr z, jr_004_7bc7

    ld a, $40
    ldh [$ffe8], a

jr_004_7bc7:
    ldh a, [$ffe6]
    cpl
    add $01
    ld l, a
    ldh a, [$ffe7]
    cpl
    adc $00
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    bit 7, h
    jr z, jr_004_7c35

    ldh a, [$ffe8]
    xor $c0
    ldh [$ffe8], a
    bit 6, a
    jr nz, jr_004_7bee

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_004_7bee:
    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a
    ld a, b
    cp d
    jr nz, jr_004_7bfe

    ld a, c
    cp e

jr_004_7bfe:
    jr c, jr_004_7c24

jr_004_7c00:
    ldh a, [$ffe8]
    bit 6, a
    jr z, jr_004_7c0a

    set 5, a
    ldh [$ffe8], a

jr_004_7c0a:
    ld l, e
    ld h, d
    ld e, c
    ld d, b

jr_004_7c0e:
    ld bc, $0000
    call Call_004_7c4f
    ld b, a
    ldh a, [$ffe8]
    bit 5, a
    jr z, jr_004_7c20

    ld a, b
    xor $1f
    inc a
    ld b, a

jr_004_7c20:
    ldh a, [$ffe8]
    add b
    ret


jr_004_7c24:
    ldh a, [$ffe8]
    bit 6, a
    jr nz, jr_004_7c2e

    set 5, a
    ldh [$ffe8], a

jr_004_7c2e:
    ld l, c
    ld h, b
    ld bc, $0000
    jr jr_004_7c0e

jr_004_7c35:
    ldh a, [$ffe8]
    bit 6, a
    jr z, jr_004_7c45

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_004_7c45:
    ld a, b
    cp d
    jr nz, jr_004_7c4b

    ld a, c
    cp e

jr_004_7c4b:
    jr c, jr_004_7c24

    jr jr_004_7c00

Call_004_7c4f:
    xor a
    ldh [$ffe1], a
    ld a, $20
    ldh [$ffe2], a
    ld a, l
    ldh [$ffde], a
    ld a, h
    ldh [$ffdf], a

jr_004_7c5c:
    ld l, c
    ld h, b
    add hl, de
    srl h
    rr l
    ldh a, [$ffdf]
    cp h
    jr nz, jr_004_7c76

    ldh a, [$ffde]
    cp l
    jr nz, jr_004_7c76

    ldh a, [$ffe1]
    ld h, a
    ldh a, [$ffe2]
    add h
    srl a
    ret


jr_004_7c76:
    jr nc, jr_004_7c87

    ld e, l
    ld d, h
    ldh a, [$ffe1]
    ld h, a
    ldh a, [$ffe2]
    ld l, a
    add h
    srl a
    ldh [$ffe2], a
    jr jr_004_7c94

jr_004_7c87:
    ld c, l
    ld b, h
    ldh a, [$ffe1]
    ld h, a
    ldh a, [$ffe2]
    ld l, a
    add h
    srl a
    ldh [$ffe1], a

jr_004_7c94:
    cp h
    ret z

    cp l
    ret z

    jr jr_004_7c5c

Call_004_7c9a:
    ldh [$ff98], a
    swap a
    or $01
    ld l, a
    ld h, $c2
    ld a, [hl+]
    ldh [$ffe4], a
    ld a, [hl+]
    ldh [$ffe5], a
    ld a, [hl+]
    ldh [$ffe6], a
    ld a, [hl+]
    ldh [$ffe7], a
    ld a, c
    ldh [$ffe0], a
    ld a, b
    and $fe
    ld l, a
    ld h, $02
    xor a
    ld b, a
    ld d, a
    ld a, [hl+]
    ld c, a
    rla
    jr nc, jr_004_7cc1

    dec b

jr_004_7cc1:
    ld a, [hl+]
    ld e, a
    rla
    jr nc, jr_004_7cc7

    dec d

jr_004_7cc7:
    push bc
    push de
    ldh a, [$ffe4]
    ld l, a
    ldh a, [$ffe5]
    ld h, a
    add hl, bc
    ld c, l
    ld b, h
    ldh a, [$ffe6]
    ld l, a
    ldh a, [$ffe7]
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    call Call_004_7d3a
    jr nc, jr_004_7ce4

    add sp, $04
    scf
    ret


jr_004_7ce4:
    xor a
    ldh [$ff97], a
    ld hl, $c200

jr_004_7cea:
    push hl
    ldh a, [$ff98]
    swap a
    cp l
    jr z, jr_004_7d14

    ld a, [hl+]
    bit 0, a
    jr z, jr_004_7d14

    bit 6, a
    jr nz, jr_004_7d14

    inc l
    ld a, [hl+]
    cp b
    jr nz, jr_004_7d14

    inc l
    ld a, [hl+]
    cp d
    jr nz, jr_004_7d14

    pop hl
    bit 5, [hl]
    jr nz, jr_004_7d0e

    add sp, $04
    and a
    ret


jr_004_7d0e:
    ld a, $01
    ldh [$ff97], a
    jr jr_004_7d15

jr_004_7d14:
    pop hl

jr_004_7d15:
    ld a, l
    add $10
    ld l, a
    jr nz, jr_004_7cea

    ldh a, [$ff97]
    and a
    jr z, jr_004_7d24

    add sp, $04
    scf
    ret


jr_004_7d24:
    ld a, c
    ldh [$ffe4], a
    ld a, b
    ldh [$ffe5], a
    ld a, e
    ldh [$ffe6], a
    ld a, d
    ldh [$ffe7], a
    pop de
    pop bc
    ld hl, $ffe0
    dec [hl]
    jr nz, jr_004_7cc7

    scf
    ret


Call_004_7d3a:
    push bc
    ld h, $c4
    ld a, d
    swap a
    or b
    ld l, a
    ld a, [hl]
    push af
    ldh a, [$ffe5]
    ld b, a
    ldh a, [$ffe7]
    swap a
    or b
    ld l, a
    ld a, [hl]
    ld h, a
    pop af
    ld l, a
    pop bc
    ldh a, [$ffe5]
    cp b
    jr c, jr_004_7d7c

    jr nz, jr_004_7d60

    ldh a, [$ffe4]
    cp c
    jr c, jr_004_7d7c

    jr z, jr_004_7d98

jr_004_7d60:
    ldh a, [$ffe4]
    sub $0c
    jr c, jr_004_7d6b

    ldh a, [$ffe5]
    cp b
    jr z, jr_004_7d98

jr_004_7d6b:
    ld a, h
    and $08
    jr nz, jr_004_7d7a

    ldh a, [$ffe5]
    cp b
    jr z, jr_004_7d98

    ld a, l
    and $02
    jr z, jr_004_7d98

jr_004_7d7a:
    scf
    ret


jr_004_7d7c:
    ldh a, [$ffe4]
    add $0c
    jr c, jr_004_7d87

    ldh a, [$ffe5]
    cp b
    jr z, jr_004_7d98

jr_004_7d87:
    ld a, h
    and $02
    jr nz, jr_004_7d96

    ldh a, [$ffe5]
    cp b
    jr z, jr_004_7d98

    ld a, l
    and $08
    jr z, jr_004_7d98

jr_004_7d96:
    scf
    ret


jr_004_7d98:
    ldh a, [$ffe7]
    cp d
    jr c, jr_004_7dc2

    jr nz, jr_004_7da6

    ldh a, [$ffe6]
    cp e
    jr c, jr_004_7dc2

    jr z, jr_004_7dde

jr_004_7da6:
    ldh a, [$ffe6]
    sub $0c
    jr c, jr_004_7db1

    ldh a, [$ffe7]
    cp d
    jr z, jr_004_7dde

jr_004_7db1:
    ld a, h
    and $01
    jr nz, jr_004_7dc0

    ldh a, [$ffe7]
    cp d
    jr z, jr_004_7dde

    ld a, l
    and $04
    jr z, jr_004_7dde

jr_004_7dc0:
    scf
    ret


jr_004_7dc2:
    ldh a, [$ffe6]
    add $0c
    jr c, jr_004_7dcd

    ldh a, [$ffe7]
    cp d
    jr z, jr_004_7dde

jr_004_7dcd:
    ld a, h
    and $04
    jr nz, jr_004_7ddc

    ldh a, [$ffe7]
    cp d
    jr z, jr_004_7dde

    ld a, l
    and $01
    jr z, jr_004_7dde

jr_004_7ddc:
    scf
    ret


jr_004_7dde:
    ld a, $0a
    cp c
    jr c, jr_004_7de8

    ld a, l
    and $08
    jr nz, jr_004_7ddc

jr_004_7de8:
    ld a, $0a
    add c
    jr nc, jr_004_7df2

    ld a, l
    and $02
    jr nz, jr_004_7ddc

jr_004_7df2:
    ld a, $0a
    cp e
    jr c, jr_004_7dfc

    ld a, l
    and $01
    jr nz, jr_004_7ddc

jr_004_7dfc:
    ld a, $0a
    add e
    jr nc, jr_004_7e06

    ld a, l
    and $04
    jr nz, jr_004_7ddc

jr_004_7e06:
    and a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
