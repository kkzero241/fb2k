; Disassembly of "Faceball 2000 (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    add h
    ld [hl], c
    sbc e
    ld [hl], c
    ret z

    ld [hl], c
    ld [$0e71], a
    ld [hl], d
    cpl
    ld [hl], d
    ld e, e
    ld [hl], d
    adc b
    ld [hl], d
    or l
    ld [hl], d
    db $e3
    ld [hl], d
    ld c, $73
    ld c, c
    ld [hl], e
    add [hl]
    ld [hl], e
    ret nc

    ld [hl], e
    ld hl, sp+$73
    ld l, c
    ld [hl], h
    or d
    ld [hl], h
    and $74
    ld a, [de]
    ld [hl], l
    ld l, [hl]
    ld [hl], l
    sbc c
    ld [hl], l
    or b
    ld [hl], l
    db $e3
    ld [hl], l
    rst $38
    ld [hl], l
    ld a, $76
    ld [hl], d
    db $76
    sbc l
    db $76
    pop af
    db $76
    dec h
    ld [hl], a
    ld a, h
    ld [hl], a
    or c
    ld [hl], a
    dec l
    ld a, b
    ld c, h
    ld a, b
    add b
    ld a, b
    jp nz, $f678

    ld a, b
    ccf
    ld a, c
    ld h, [hl]
    ld a, c
    xor a
    ld a, c
    bit 7, c
    cp $79
    ld b, c
    ld a, d
    ld [$517b], sp
    ld a, e
    and l
    ld a, e
    ld sp, hl
    ld a, e
    ld h, h
    ld a, h
    dec hl
    ld a, l
    ld d, d
    ld b, c
    sbc d
    ld b, d
    pop de
    ld b, d
    dec hl
    ld b, e
    and h
    ld b, e
    add $44
    ld e, b
    ld b, l
    db $fc
    ld b, l
    bit 0, [hl]
    cp a
    ld b, a
    and [hl]
    ld c, b
    jp nc, $2d48

    ld c, c
    add c
    ld c, c
    pop hl
    ld c, c
    dec a
    ld c, d
    cp b
    ld c, d
    dec b
    ld c, e
    add [hl]
    ld c, e
    ld a, [$944b]
    ld c, h
    sbc h
    ld c, l
    ldh [rKEY1], a
    ld a, [hl+]
    ld c, [hl]
    sbc l
    ld c, [hl]
    rst $10
    ld c, [hl]
    ld [$684f], sp
    ld c, a
    ld hl, sp+$4f
    adc d
    ld d, b
    ld [hl], $51
    sub [hl]
    ld d, c
    ld a, $52
    or e
    ld d, d
    add hl, bc
    ld d, e
    ld c, e
    ld d, e
    or l
    ld d, e
    add hl, bc
    ld d, h
    ld h, b
    ld d, h
    ret c

    ld d, h
    xor [hl]
    ld d, l
    ld b, d
    ld d, [hl]
    adc h
    ld d, [hl]
    rst $18
    ld d, [hl]
    call nc, Call_003_6057
    ld e, b
    dec c
    ld e, c
    ld l, h
    ld e, c
    jp $2f59


    ld e, d
    db $fd
    ld e, d
    rst $10
    ld e, e
    jr nc, jr_003_4126

    sub l
    ld e, h
    pop af
    ld e, h
    ld h, a
    ld e, l
    jp nz, $755d

    ld e, [hl]
    db $fc
    ld e, [hl]
    ld c, b
    ld e, a
    jp z, Jump_003_7c5f

    ld h, b
    db $fd
    ld h, b
    ld d, [hl]
    ld h, c
    jp z, $0b61

    ld h, d
    adc h
    ld h, d
    rra
    ld h, e
    ld a, [c]
    ld h, e
    ld c, b
    ld h, h
    inc sp
    ld h, l
    sub l
    ld h, l
    add hl, bc
    ld h, [hl]
    sub $66
    jp c, $1a67

    ld l, c
    jr c, jr_003_4163

    ld h, l
    ld l, c
    add [hl]
    ld l, c
    cp a
    ld l, c
    jp hl


    ld l, c
    rra
    ld l, d
    ld b, c
    ld l, d
    ld l, b
    ld l, d
    adc e
    ld l, d
    and a
    ld l, d
    add $6a
    and $6a
    rra
    ld l, e
    dec sp
    ld l, e
    ld d, [hl]
    ld l, e
    ld a, h
    ld l, e
    sbc h
    ld l, e
    jp nz, $df6b

    ld l, e
    ld b, $6c
    jr c, jr_003_418e

    adc d
    ld l, h
    cp [hl]
    ld l, h

jr_003_4126:
    ld bc, $4a6d
    ld l, l
    ld l, e
    ld l, l
    adc d
    ld l, l
    cp b
    ld l, l
    call c, $006d
    ld l, [hl]
    ld hl, $446e
    ld l, [hl]
    sub l
    ld l, [hl]
    or l
    ld l, [hl]
    ret c

    ld l, [hl]
    ld b, e
    ld l, a
    ld l, [hl]
    ld l, a
    sbc [hl]
    ld l, a
    call nz, $fa6f
    ld l, a
    jr z, jr_003_41ba

    ld c, h
    ld [hl], b
    ld a, h
    ld [hl], b
    or a
    ld [hl], b
    ld h, $71
    ld d, $46
    ld c, c
    ld c, [hl]
    ld b, h
    jr nz, jr_003_419f

    ld c, h
    ld b, c
    ld d, e
    ld c, b
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_003_41a6

    ld c, a

jr_003_4163:
    ld c, a
    ld d, d
    nop
    db $f4
    ld bc, $620f
    nop
    ld c, e
    ld h, d
    ld bc, $624b
    ld [bc], a
    ld c, e
    ld h, d
    inc bc
    ld c, e
    ld b, d
    adc h
    ld c, [hl]
    ld b, d
    adc h
    ld c, l
    ld b, d
    dec h
    ld h, $42
    dec h
    dec d
    ld b, d
    dec h
    ld [de], a
    ld b, d
    dec h
    ld de, $2542
    ld d, $42
    dec h
    inc [hl]
    ld b, d

jr_003_418e:
    dec b
    dec sp
    ld b, d
    dec b
    dec a
    ld b, d
    dec b
    dec de
    ld b, d
    dec b
    dec e
    inc hl
    rrca
    ld c, c
    nop
    inc hl
    ld [bc], a

jr_003_419f:
    ld c, b
    ld bc, $0223
    ld [hl-], a
    ld [bc], a
    dec h

jr_003_41a6:
    ret z

    ld [hl+], a
    ld [bc], a
    inc a
    ld b, d
    inc hl
    rrca
    inc sp
    nop
    dec h
    call z, sound_test_selection
    ld b, a
    ld b, d
    inc hl
    rrca
    ld b, a
    nop
    dec h

jr_003_41ba:
    ret z

    ld b, l
    ld bc, $4252
    dec h
    jp nz, $0323

    ld d, h
    ld b, d
    inc hl
    ld [$0243], sp
    inc hl
    ld c, $5c
    nop
    add h
    ld h, $17
    ld bc, $8340
    jr z, @+$4c

    ld [bc], a
    add [hl]
    and $5e
    ld [bc], a
    ld bc, $425f
    add l
    add sp, $5c
    ld [bc], a
    ld [hl], d
    ld b, d
    add l
    add sp, $13
    ld [bc], a
    ld [hl], h
    ld b, d
    add h
    ld h, $5b
    ld [$8409], sp
    ld h, $69
    ld bc, $840e
    ld h, $67
    ld bc, $8413
    ld h, $65
    ld bc, $8418
    ld h, $63
    ld bc, $841d
    ld h, $61
    ld bc, $8422
    ld h, $41
    ld [$8427], sp
    ld h, $20
    ld [bc], a
    inc l

Jump_003_4211:
    add h
    ld h, $11
    ld bc, $8431

Jump_003_4217:
    ld h, $13
    ld bc, $8436
    ld h, $15
    ld bc, $833b

Call_003_4221:
    inc h

Call_003_4222:
    ld d, l
    ld [$e885], sp

Call_003_4226:
    ld b, c
    ld bc, $427b
    add l
    add sp, $38
    ld [bc], a
    add d
    ld b, d
    add h

Call_003_4231:
    ld h, $19

Jump_003_4233:
    ld bc, $8546

Call_003_4236:
    add sp, $5b
    ld [bc], a
    sbc b
    ld b, d
    and b
    nop
    add b
    ld b, b
    ld b, d
    nop

Call_003_4241:
Jump_003_4241:
    add b
    ld b, h
    ld b, d

Jump_003_4244:
    nop

Jump_003_4245:
    ld b, b

Jump_003_4246:
    dec bc

Jump_003_4247:
    add b

Jump_003_4248:
    nop
    ld c, e
    ld b, d
    add b
    nop
    ld c, a
    ld b, d
    ld b, b
    nop

Call_003_4251:
Jump_003_4251:
    ld a, [bc]

Jump_003_4252:
    nop

Jump_003_4253:
    nop

Jump_003_4254:
    nop

Jump_003_4255:
    add b

Jump_003_4256:
    ld e, b
    ld b, d
    add b
    nop
    ld e, h
    ld b, d
    ld b, b

Call_003_425d:
    nop
    ld a, [bc]
    add b
    nop

Jump_003_4261:
    ld h, e

Jump_003_4262:
    ld b, d

Call_003_4263:
Jump_003_4263:
    add b

Jump_003_4264:
    nop

Call_003_4265:
Jump_003_4265:
    ld h, a

Jump_003_4266:
    ld b, d

Jump_003_4267:
    add b
    nop

Jump_003_4269:
    ld l, e
    ld b, d
    add b
    nop
    ld l, a
    ld b, d
    ld [$4a00], sp
    stop

Jump_003_4274:
    add b

Jump_003_4275:
    nop
    ld a, b

Jump_003_4277:
    ld b, d
    nop
    ld b, b
    dec h
    add b
    nop
    ld a, a
    ld b, d
    nop
    ld b, b
    inc h
    nop
    add b
    add [hl]
    ld b, d
    nop
    add b
    adc d
    ld b, d
    nop
    add b
    adc [hl]
    ld b, d
    nop
    add b
    sub d
    ld b, d
    add b
    nop
    sub [hl]
    ld b, d
    stop
    stop
    ld de, $4946
    ld c, [hl]
    ld b, h
    jr nz, jr_003_42f5

    ld c, b
    ld b, l
    jr nz, jr_003_42ea

    ld e, b
    ld c, c
    ld d, h

Jump_003_42a8:
    nop
    ld a, [$0f00]
    ld h, d
    nop
    ld d, a
    ld h, d
    ld bc, $6257
    ld [bc], a
    ld d, a
    ld h, d
    inc bc
    ld d, a
    ld b, d
    ld c, h
    ld c, c
    ld b, d
    ld c, h
    ld c, d
    ld b, d
    adc h
    ld e, d
    ld b, d
    adc h
    ld c, [hl]
    ld b, d
    adc h
    ld c, l
    add h
    ld h, $5f
    ld [$8301], sp
    jr z, jr_003_4326

    ld [$0fa0], sp
    ld d, e
    ld c, b
    ld c, a
    ld c, a
    ld d, h
    jr nz, jr_003_431d

    ld c, a
    ld c, a
    ld d, d
    ld d, e
    nop
    inc l
    ld bc, $620f

Jump_003_42e2:
    nop
    ld d, c
    ld h, d
    ld bc, $6251
    ld [bc], a
    ld d, c

jr_003_42ea:
    ld h, d
    inc bc
    ld d, c
    ld b, d
    ld c, h
    inc h
    ld b, d
    ld c, h
    inc hl
    ld b, d
    ld c, h

jr_003_42f5:
    ld c, d
    ld b, d
    ld c, h
    ld c, c
    ld b, d
    adc h
    ld e, d
    ld b, d
    ld c, h
    ld b, [hl]
    ld b, d
    ld c, h
    ld b, e
    ld b, d
    ld c, h
    ld b, h
    ld b, d
    ld c, h
    inc sp
    ld b, d
    ld c, h
    inc [hl]
    ld b, d
    adc h
    ld c, l
    ld b, d
    adc h
    ld c, [hl]
    add l
    rst $20
    ld d, d
    ld [bc], a
    daa
    ld b, e
    add e
    jr z, jr_003_436b

    ld bc, $2684

jr_003_431d:
    ld e, [hl]
    ld [bc], a
    ld bc, $e785
    ld c, d
    ld [bc], a
    add hl, hl
    ld b, e

jr_003_4326:
    and b
    stop
    stop
    ld c, $4d
    ld c, a
    ld d, d
    ld b, l
    jr nz, jr_003_4376

    ld c, a
    ld c, a
    ld d, d
    ld d, e
    nop
    ld e, [hl]
    ld bc, $620f
    add b
    inc d
    ld h, d
    add c
    inc d
    ld h, d
    add d
    inc d
    ld h, d
    add e
    inc d
    ld b, d
    call z, Call_003_4221
    call z, Call_003_4222
    call z, $4232
    call z, Call_003_4231
    adc h
    ld c, [hl]
    ld b, d
    ld c, h
    ld b, h
    ld b, d
    adc h
    ld e, d
    ld b, d
    ld c, h
    inc sp
    ld b, d
    ld c, h
    inc [hl]
    ld b, d
    ld c, h
    ld b, e
    ld b, d
    call z, Call_003_4251
    adc h
    ld d, a
    add h

jr_003_436b:
    ld h, $5e
    ld [bc], a
    ld bc, $e785
    ld e, b
    ld [bc], a
    sbc b
    ld b, e
    add l

jr_003_4376:
    rst $20
    ld d, e
    ld [$439a], sp
    add e
    jr z, jr_003_4392

    ld [bc], a
    add l
    rst $20
    inc de
    ld [$439c], sp
    add l
    rst $20
    ld d, l
    ld [$439e], sp
    add l
    rst $20
    ld d, [hl]
    ld [bc], a
    and b
    ld b, e
    add l

jr_003_4392:
    rst $20
    ld b, c
    ld bc, $43a2
    and b
    stop
    stop
    stop
    stop
    stop
    stop
    ld de, $4f54
    ld d, l
    ld b, e
    ld c, b
    jr nz, jr_003_4400

    ld c, b
    ld b, l
    jr nz, jr_003_4400

    ld c, a
    ld b, h
    nop
    sub b
    ld bc, $620f
    add b
    jr c, @+$64

    add c
    jr c, jr_003_441f

    add d
    jr c, jr_003_4422

    add e
    jr c, jr_003_4405

    inc c
    inc d
    ld b, d
    inc c
    ld [de], a
    ld b, d
    call z, Call_003_4241
    adc h
    ld c, e
    ld b, d
    call z, Call_003_4221
    dec c
    ld b, e
    ld b, d
    dec c
    inc sp
    ld b, d
    dec c
    inc hl
    ld b, d
    ld c, l
    ld c, [hl]
    ld b, d
    ld c, l
    ld e, l
    ld b, d
    adc h
    ld d, a
    ld b, d
    call z, $2331
    ld a, [bc]
    ld b, a
    nop
    dec h
    adc $36
    ld bc, $447b
    inc hl
    ld c, $52
    ld [bc], a
    inc hl
    ld c, $32
    inc bc
    inc hl
    ld c, $25
    inc b
    inc hl
    rrca
    ld b, l
    nop

jr_003_4400:
    inc hl
    inc c
    daa
    inc bc
    inc hl

jr_003_4405:
    ld [$0229], sp
    inc hl
    ld [bc], a
    ld b, d
    ld bc, $e785
    ld c, d
    ld [bc], a
    ld a, l
    ld b, h
    add l
    add sp, $28
    inc b
    ld a, a
    ld b, h
    add e
    jr z, @+$49

    ld bc, $2883
    ld b, l

jr_003_441f:
    ld bc, $2883

jr_003_4422:
    ld d, $02
    add e
    jr z, @+$3a

    ld [bc], a
    add l
    rst $20
    ld [hl], $02
    sub d
    ld b, h
    add l
    rst $20
    inc d
    ld [bc], a
    sub h
    ld b, h
    add l
    rst $20
    ld d, d
    ld [bc], a
    sub [hl]
    ld b, h
    add l
    rst $20
    ld d, a
    ld [bc], a
    sbc b
    ld b, h
    add l
    rst $20
    ld c, e
    ld [bc], a
    sbc d
    ld b, h
    add h
    ld h, $5e
    ld [bc], a
    ld bc, $e785
    ld sp, $9c04
    ld b, h
    add l
    rst $20
    ld d, l
    ld [$449e], sp
    add l
    add sp, $38
    inc b
    and b
    ld b, h
    add h
    ld h, $18
    ld bc, $8542
    add sp, $45
    ld [bc], a
    or d
    ld b, h
    add l
    add sp, $27
    ld [bc], a
    or h
    ld b, h
    add l
    add sp, $28
    ld [bc], a
    cp d
    ld b, h
    add l
    add sp, $42
    ld bc, $44c0
    and b
    nop
    ld de, $0010
    nop
    add b
    add e
    ld b, h
    nop
    add b
    add a
    ld b, h
    nop
    add b
    adc e
    ld b, h
    nop
    add b
    adc a
    ld b, h
    nop
    ld b, b
    inc h
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    add b
    nop
    and h
    ld b, h
    add b
    nop
    xor b
    ld b, h
    add b
    nop
    xor h
    ld b, h
    add b
    nop
    or b
    ld b, h
    stop
    stop
    add b
    nop
    cp b
    ld b, h
    stop
    nop
    add b
    cp [hl]
    ld b, h
    nop
    stop
    add b
    call nz, $1044
    nop
    dec bc
    ld d, c
    ld d, l
    ld c, c
    ld b, e
    ld c, e
    ld c, h
    ld e, c
    nop
    jp nz, $0f01

    ld h, d
    nop
    add hl, de
    ld h, d
    ld bc, $6219
    ld [bc], a
    add hl, de
    ld h, d
    inc bc
    add hl, de
    ld b, d
    ld c, l
    ld b, [hl]
    ld b, d
    ld c, h
    ld h, $42
    adc h
    ld d, d
    ld b, d
    inc c
    add hl, sp
    ld b, d
    ld c, l
    ld de, $0d42
    dec d
    ld b, d
    ld c, l
    ld c, d
    ld b, d
    ld c, l
    ld c, [hl]
    ld b, d
    dec c
    ld c, c
    ld b, d
    dec c
    ld c, l
    ld b, d
    inc c
    dec d
    ld b, d
    inc c
    ld [de], a
    add h
    ld h, $5e
    ld [bc], a
    ld bc, $2883
    dec hl
    ld [bc], a
    add e
    jr z, jr_003_4549

    ld [bc], a
    add e
    jr z, jr_003_4528

    ld [bc], a
    add e
    jr z, jr_003_454e

    ld bc, $2883
    dec de
    ld [bc], a
    add e
    jr z, jr_003_4563

    ld bc, $2883
    ld b, a
    ld bc, $2883
    jr c, jr_003_452b

    add l

jr_003_4528:
    rst $20
    jr c, jr_003_452d

jr_003_452b:
    ld c, h
    ld b, l

jr_003_452d:
    add l
    rst $20
    ld d, e
    ld [$454e], sp
    add l
    rst $20
    ld d, a
    ld [bc], a
    ld d, b
    ld b, l
    add l
    rst $20
    ld c, h
    ld [$4552], sp
    add l
    rst $20
    inc d
    ld [bc], a
    ld d, h
    ld b, l
    add l
    rst $20
    ld [de], a
    ld [bc], a

jr_003_4549:
    ld d, [hl]
    ld b, l
    and b
    stop

jr_003_454e:
    stop
    stop
    stop
    stop
    stop
    ld de, $4c46
    ld c, a
    ld c, a
    ld d, d
    jr nz, jr_003_45a2

    ld d, l
    ld d, h
    ld d, h

jr_003_4563:
    ld c, a
    ld c, [hl]
    ld d, e
    nop
    db $f4
    ld bc, $620f
    nop
    add hl, de
    ld h, d
    ld bc, $6219
    ld [bc], a
    add hl, de
    ld h, d
    inc bc
    add hl, de
    ld b, d
    dec c
    ld hl, $0d42
    inc hl
    ld b, d
    dec c
    ld d, e
    ld b, d
    dec c
    ld d, l
    ld b, d
    dec c
    ld e, c
    ld b, d
    dec c
    ld c, d
    ld b, d
    dec c
    dec h
    ld b, d
    ld c, l
    ld de, $8d42
    ld c, [hl]
    ld b, d
    dec c
    ld a, [hl-]
    ld b, d
    call Call_003_425d
    ld c, l
    ld c, [hl]
    inc hl
    ld c, $2b
    dec b
    inc hl
    dec d
    add hl, sp
    nop

jr_003_45a2:
    add e
    jr z, jr_003_45da

    inc b
    add e
    jr z, jr_003_45e0

    inc b
    add e
    jr z, jr_003_45e5

    inc b
    add e
    jr z, jr_003_45e4

    ld bc, $2883
    inc [hl]
    ld bc, $2883
    inc de
    ld [$2883], sp
    inc d
    ld [bc], a
    add e
    jr z, @+$18

    ld [bc], a
    add e
    jr z, @+$2a

    inc b
    add e
    jr z, jr_003_4604

    ld [bc], a
    add e
    jr z, jr_003_45f8

    ld [bc], a
    add e
    jr z, jr_003_45ec

    ld [bc], a
    add l
    rst $20
    dec h
    ld [$45f4], sp
    add l
    rst $20

jr_003_45da:
    ld [hl+], a
    ld [bc], a
    or $45
    add l
    rst $20

jr_003_45e0:
    ld d, d
    ld [bc], a
    ld hl, sp+$45

jr_003_45e4:
    add e

jr_003_45e5:
    ld hl, $0839
    add l
    rst $20
    ld c, e
    ld [bc], a

jr_003_45ec:
    ld a, [$8445]
    ld h, $5f
    ld [$a001], sp
    stop
    stop

jr_003_45f8:
    stop
    stop
    inc c
    ld c, c
    ld d, e
    ld c, b
    ld c, a
    ld c, a
    ld d, h
    ld d, l

jr_003_4604:
    ld [hl-], a
    nop
    db $f4
    ld bc, $620f
    nop
    add hl, de
    ld h, d
    ld bc, $6219
    ld [bc], a
    add hl, de
    ld h, d
    inc bc
    add hl, de
    ld b, d
    dec c
    add hl, sp
    ld b, d
    ld c, l
    ld d, $42
    dec c
    ld d, l
    ld b, d
    ld c, l
    ld [hl-], a
    ld b, d
    dec c
    ld e, b
    ld b, d
    dec c
    ld [de], a
    ld b, d
    ld c, l
    ld c, c
    ld b, d
    ld c, [hl]
    inc sp
    ld b, d
    adc $54
    ld b, d
    ld c, $4b
    ld b, d
    adc [hl]
    ld c, [hl]
    ld b, d
    adc $5d
    inc hl
    ld c, $25
    ld b, $23
    dec d
    scf
    nop
    inc hl
    ld c, $5a
    rlca
    inc hl
    ld c, $52
    ld [$2684], sp
    ld e, [hl]
    ld [bc], a
    ld bc, $2883
    rla
    ld [$2883], sp
    jr c, jr_003_4657

    add e

jr_003_4657:
    jr z, @+$47

    ld bc, $2883
    ld d, [hl]
    ld bc, $2883
    ld b, e
    ld [bc], a
    add l
    rst $20
    ld c, e
    ld [bc], a
    cp a
    ld b, [hl]
    add l
    rst $20
    scf
    ld [$46c1], sp
    add l
    rst $20
    ld a, [hl-]
    ld [$46c3], sp
    add e
    jr z, jr_003_4693

    ld [$e785], sp
    ld c, h
    ld bc, $46c5
    add l
    rst $20
    inc d
    ld [bc], a
    rst $00
    ld b, [hl]
    add e
    jr z, jr_003_46cf

    ld bc, $2883
    dec sp
    ld [bc], a
    add l
    rst $20
    ld d, d
    ld [bc], a
    ret


    ld b, [hl]
    add e

jr_003_4693:
    jr z, jr_003_46dc

    ld bc, $2883
    ld de, $8302
    jr z, jr_003_46e9

    ld bc, $2883
    ld sp, $8301
    jr z, @+$23

    ld [bc], a
    add e
    jr z, jr_003_46d1

    ld bc, $2883
    inc l
    ld [$2183], sp
    ld [hl], $02
    add e
    jr z, jr_003_46d8

    inc b
    add e
    jr z, jr_003_46ed

    ld bc, $2883
    ld d, h
    ld [$10a0], sp
    nop
    stop
    stop
    stop
    stop
    stop
    dec d
    ld d, e
    ld c, b
    ld c, a

jr_003_46cf:
    ld c, a
    ld d, h

jr_003_46d1:
    ld c, l
    ld b, l
    jr nz, @+$28

    jr nz, jr_003_4720

    ld d, e

jr_003_46d8:
    ld c, b
    ld c, a
    ld c, a
    ld d, h

jr_003_46dc:
    ld d, l
    nop
    db $f4
    ld bc, $620f
    nop
    add hl, de
    ld h, d
    ld bc, $6219
    ld [bc], a

jr_003_46e9:
    add hl, de
    ld h, d
    inc bc
    add hl, de

jr_003_46ed:
    ld b, d
    adc $31
    ld b, d
    dec c
    dec e
    ld b, d
    adc $51
    ld b, d
    dec c
    ld d, l
    ld b, d
    adc $4d
    ld b, d
    dec c
    dec [hl]
    ld b, d
    ld c, l
    ld b, h
    ld b, d
    call Call_003_4226
    dec c
    ld e, c
    ld b, d
    adc [hl]
    ld e, [hl]
    ld b, d
    dec c
    inc a
    ld b, d
    dec c
    inc de
    inc hl
    dec d
    scf
    nop
    add e
    jr z, jr_003_4751

    ld bc, $2183
    ld [hl], $02
    add e
    jr z, jr_003_474c

jr_003_4720:
    ld bc, $2883
    ld b, a
    ld bc, $2883
    ld c, b
    ld bc, $2883
    ld b, l
    ld bc, $2883
    jr z, @+$06

    add e
    jr z, jr_003_474b

    ld [$2684], sp
    ld e, [hl]
    ld [bc], a
    ld bc, $2883
    inc a
    ld bc, $e785
    ld a, [hl-]
    ld [$47a1], sp
    add l
    rst $20
    ld c, e
    ld [bc], a
    and e
    ld b, a
    add l

jr_003_474b:
    rst $20

jr_003_474c:
    ld e, b
    ld [$47a5], sp
    add l

jr_003_4751:
    rst $20
    inc e
    ld [bc], a
    and a
    ld b, a
    add l
    rst $20
    ld e, $08
    xor c
    ld b, a
    add l
    rst $20
    ld l, $01
    xor e
    ld b, a
    add l
    rst $20
    ld l, $04
    xor l
    ld b, a
    add l
    rst $20
    dec a
    ld [bc], a
    xor a
    ld b, a
    add l
    rst $20
    inc a
    ld [bc], a
    or c
    ld b, a
    add l
    rst $20
    inc e
    ld [$47b3], sp
    add l
    rst $20
    dec sp
    ld [bc], a
    or l
    ld b, a
    add e
    jr z, @+$2d

    ld [bc], a
    add l
    rst $20
    inc d
    ld [bc], a
    or a
    ld b, a
    add l
    rst $20
    ld sp, $b904
    ld b, a
    add l
    rst $20
    ld [de], a
    ld [bc], a
    cp e
    ld b, a
    add e
    jr z, @+$48

    inc b
    add l
    rst $20
    ld d, h
    ld [bc], a
    cp l
    ld b, a
    and b
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    dec bc
    ld d, h
    ld b, l
    ld d, e
    ld d, h
    jr nz, jr_003_47e9

    ld sp, $2600
    ld [bc], a
    rrca
    ld h, d
    nop
    add hl, de
    ld h, d
    ld bc, $6219
    ld [bc], a
    add hl, de
    ld h, d
    inc bc
    add hl, de
    ld b, d
    adc h
    ld a, [de]
    ld b, d
    adc l
    jr c, @+$44

    call $4228
    call Call_003_4226
    adc $3b
    ld b, d
    adc l
    ld e, c

jr_003_47e9:
    ld b, d
    ld c, $2b
    ld b, d
    adc $51
    ld b, d
    ld c, [hl]
    ld c, c
    ld b, d
    adc h
    dec l
    ld b, d
    adc l
    ld [de], a
    ld b, d
    ld c, [hl]
    inc e
    inc hl
    ld c, $44
    add hl, bc
    inc hl
    inc c
    ld e, l
    ld bc, $0e23
    ld e, h
    ld a, [bc]
    inc hl
    ld c, $46
    dec bc
    inc hl
    db $10
    inc h
    nop
    inc hl
    dec d
    inc a
    nop
    inc hl
    ld c, $3e
    inc c
    inc hl
    db $10
    inc [hl]
    nop
    add e
    jr z, @+$3d

    ld [$2883], sp
    ld a, [hl+]
    ld [bc], a
    add e
    jr z, jr_003_4840

    ld [bc], a
    add e
    ld hl, $083c
    add e
    ld hl, $082c
    add e
    jr z, @+$39

    inc b
    add e
    jr z, jr_003_486b

    inc b
    add l
    rst $20
    ld sp, $9004
    ld c, b
    add e
    jr z, jr_003_487c

jr_003_4840:
    ld [bc], a
    add l
    rst $20
    add hl, sp
    ld [bc], a
    sub d
    ld c, b
    add l
    rst $20
    ld d, h
    ld [bc], a
    sub h
    ld c, b
    add l
    rst $20
    ld d, d
    ld [bc], a
    sub [hl]
    ld c, b
    add h
    ld h, $5e
    ld [bc], a
    ld bc, $e885
    ld e, h
    ld [bc], a
    sbc b
    ld c, b
    add l
    rst $20
    ld c, h
    ld bc, $489e
    add l
    rst $20
    ld c, l
    ld bc, $48a0
    add h

jr_003_486b:
    ld h, $5b
    ld [bc], a
    ld a, [bc]
    add l
    rst $20
    inc d
    ld [bc], a
    and d
    ld c, b
    add e
    jr z, jr_003_48c4

    ld [bc], a
    add e
    jr z, jr_003_48b4

jr_003_487c:
    inc b
    add e
    ld hl, $012c
    add e
    ld hl, $022c
    add l
    rst $20
    dec e
    inc b
    and h
    ld c, b
    add e
    jr z, jr_003_48aa

    ld [bc], a
    and b
    stop
    stop
    stop
    stop
    add b
    nop
    sbc h
    ld c, b
    stop
    stop
    stop
    stop
    stop
    inc c
    ld c, c
    ld d, e
    ld c, b

jr_003_48aa:
    ld c, a
    ld c, a
    ld d, h
    ld d, l
    ld [hl-], a
    nop
    ret z

    nop
    nop
    ld h, d

jr_003_48b4:
    nop
    ld de, $0162
    ld de, $0262
    ld de, $0362
    ld de, $4f42
    ld [hl+], a
    ld b, d
    ld c, a

jr_003_48c4:
    inc h
    ld b, d
    rrca
    ld b, c
    inc hl
    ld c, $12
    dec c
    add h
    ld h, $33
    inc b
    ld bc, $0da0
    ld b, [hl]
    ld c, c
    ld d, d
    ld d, e
    ld d, h
    jr nz, @+$43

    ld c, c
    ld b, h
    nop
    ld a, [$1400]
    ld h, d
    add b
    ld d, d
    ld h, d
    add c
    ld d, d
    ld h, d
    add d
    ld d, d
    ld h, d
    add e
    ld d, d
    ld b, d
    ld c, a
    ld [hl+], a
    ld b, d
    dec c
    ld [hl-], a
    ld b, d
    ld c, l
    ld hl, $4e42
    ld sp, $4e42
    inc sp
    ld b, d
    adc [hl]
    ld b, h
    ld b, d
    adc a
    inc de
    ld b, d
    ld c, a
    ld [hl+], a
    ld b, d
    ld c, a
    inc [hl]
    inc hl
    ld c, $51
    ld c, $23
    inc b
    ld [de], a
    inc bc
    inc hl
    inc b
    ld de, $2303
    inc b
    inc h
    inc bc
    add l
    rst $20
    inc hl
    ld bc, $4929
    add l
    rst $20
    inc d
    ld [$492b], sp
    add h
    ld h, $14
    ld [bc], a
    ld bc, $10a0
    nop
    stop
    dec d
    ld d, e
    ld c, l
    ld c, c
    ld c, h
    ld c, a
    ld c, c
    ld b, h
    jr nz, @+$56

    ld b, l
    ld d, d
    ld d, d
    ld c, c
    ld d, h
    ld c, a
    ld d, d
    ld e, c
    nop
    db $f4
    ld bc, $6215
    nop
    ld [hl-], a
    ld h, d
    ld bc, $6222
    ld [bc], a
    ld hl, $0362
    ld sp, $8e42
    ld b, h
    ld b, d
    adc [hl]
    inc d
    ld b, d
    adc [hl]
    jr c, jr_003_499b

    adc [hl]
    jr z, jr_003_499e

    adc [hl]
    ld a, [de]
    ld b, d
    adc [hl]
    ld c, d
    ld b, d
    adc a
    scf
    ld b, d
    adc a
    ld a, [hl-]
    ld b, d
    adc a
    dec sp
    ld b, d
    adc a
    dec hl
    ld b, d
    adc a
    ld a, [hl+]
    ld b, d
    adc a
    daa
    inc hl
    inc b
    ld b, a
    ld bc, $0423
    rla
    ld bc, $2684
    inc l
    ld [bc], a
    ld bc, $10a0
    ld b, [hl]
    ld c, c
    ld c, [hl]
    ld b, h
    jr nz, @+$56

    ld c, b
    ld b, l
    jr nz, jr_003_49d7

    ld b, l
    ld e, c
    nop
    inc l
    ld bc, $6216
    ld b, b
    inc de
    ld h, d
    ld b, c
    inc de
    ld h, d
    ld b, d
    inc de

jr_003_499b:
    ld h, d
    ld b, e
    inc de

jr_003_499e:
    ld b, d
    adc $53
    ld b, d
    ld c, l
    ld de, $0d42
    ld [hl-], a
    ld b, d
    adc $41
    ld b, d
    ld c, $54
    ld b, d
    ld c, [hl]
    ld b, e
    ld b, d
    ld c, l
    dec h
    inc hl
    ld c, $23
    rrca
    inc hl
    dec d
    ld d, c
    nop
    inc hl
    ld a, [bc]
    ld d, d
    nop
    add e
    jr z, jr_003_49e5

    inc b
    add e
    inc h
    ld d, h
    ld [$2684], sp
    ld h, e
    ld bc, $8301
    inc h
    ld d, e
    ld [$2483], sp
    ld b, e
    inc b
    add l
    rst $20
    ld b, c

jr_003_49d7:
    ld bc, $49df
    add e
    ld hl, $0251
    and b
    stop
    dec bc
    ld d, h
    ld d, l
    ld d, d

jr_003_49e5:
    ld c, e
    ld b, l
    ld e, c
    ld d, e
    nop
    db $f4
    ld bc, $620d
    add b
    inc de
    ld h, d
    add c
    inc de
    ld h, d
    add d
    inc de
    ld h, d
    add e
    inc de
    ld b, d
    add b
    ld d, c
    ld b, d
    add b
    inc d
    inc hl
    dec d
    ld de, $2300
    ld c, $12
    db $10
    add e
    jr z, jr_003_4a1c

    inc b
    add e
    jr z, jr_003_4a21

    inc b
    add e
    jr z, jr_003_4a25

    ld [bc], a
    add e
    jr z, @+$26

    ld bc, $2883
    inc h
    ld [bc], a
    add e

jr_003_4a1c:
    jr z, @+$37

    ld [$2883], sp

jr_003_4a21:
    ld b, l
    ld [$2883], sp

jr_003_4a25:
    ld d, d
    ld bc, $2883
    ld d, e
    ld bc, $2183
    ld de, $8504
    rst $20
    ld d, h
    ld [bc], a

jr_003_4a33:
    dec sp
    ld c, d
    add h
    ld h, $14
    ld bc, $a001
    stop
    ld d, $42
    ld d, l
    ld d, h
    ld d, h
    ld c, a
    ld c, [hl]
    ld d, e
    jr nz, @+$51

    ld d, b
    ld b, l
    ld c, [hl]
    jr nz, jr_003_4a90

    ld c, a
    ld c, a
    ld d, d
    ld d, e
    nop
    sub b
    ld bc, $6201
    add b
    ld d, $62
    add c
    ld d, $62
    add d
    ld d, $62
    add e
    ld d, $42
    rst $08
    ld h, c
    ld b, d
    adc a
    ld h, e
    ld b, d
    ld c, a
    ld [hl+], a
    ld b, d
    rst $08
    ld d, l
    ld b, d
    nop
    ld d, d
    ld b, d
    add b
    dec h
    inc hl
    inc d
    ld b, d
    nop
    inc hl
    inc d
    inc hl
    nop
    inc hl
    inc d
    dec [hl]
    nop
    inc hl
    inc d
    ld d, h
    nop
    inc hl
    inc d
    inc d
    nop
    inc hl
    inc d
    ld sp, $2300
    inc d
    ld b, [hl]
    nop
    inc hl
    inc d

jr_003_4a90:
    ld h, e
    nop
    add h
    ld h, $73
    ld bc, $8301
    jr nz, jr_003_4aae

    inc b
    add e
    jr nz, jr_003_4ad4

    add b
    add e
    jr nz, jr_003_4ae8

    ld [$2083], sp
    ld h, h
    db $10
    add e
    jr nz, jr_003_4b0d

    ld bc, $2083
    ld b, c

jr_003_4aae:
    jr nz, jr_003_4a33

    jr nz, @+$33

    ld [bc], a
    add e
    jr nz, jr_003_4ac9

    ld b, b
    and b
    ld c, $47
    ld c, h
    ld b, c
    ld d, e
    ld d, e
    jr nz, jr_003_4b0d

    ld b, c
    ld e, d
    ld b, l
    nop
    sub [hl]
    nop
    ld d, $62
    ld b, b

jr_003_4ac9:
    inc de
    ld h, d
    ld b, c
    inc de
    ld h, d
    ld b, d
    inc de
    ld h, d
    ld b, e
    inc de
    ld b, d

jr_003_4ad4:
    adc $33
    ld b, d
    call $4235
    rst $08
    ld d, e
    ld b, d
    ret nz

    ld b, l
    inc hl
    ld c, $23
    ld de, $2883
    ld [de], a
    ld [bc], a
    add e

jr_003_4ae8:
    jr z, @+$34

    ld [bc], a
    add e
    jr z, jr_003_4b40

    ld [bc], a
    add h
    ld h, $45
    ld [bc], a
    ld bc, $e885
    ld b, l
    ld bc, $4b01
    add l
    add sp, $23
    inc b
    inc bc
    ld c, e
    and b
    ld bc, $0101
    ld bc, $4d0d
    ld c, c
    ld c, [hl]
    ld c, c
    jr nz, jr_003_4b59

    ld b, c

jr_003_4b0d:
    ld e, d
    ld b, l
    nop
    inc l
    ld bc, $6216
    ret nz

    ld hl, $c162
    ld hl, $c262
    ld hl, $c362
    ld hl, $c042
    ld d, h
    ld b, d
    call $4235
    adc $33
    ld b, d
    dec c
    ld d, d
    ld b, d
    adc $45
    ld b, d
    dec c
    ld d, c
    ld b, d
    ld c, l
    inc hl
    ld b, d
    adc $53
    ld b, d
    ld c, l
    ld sp, $0d42
    dec d
    ld b, d
    adc l
    inc d

jr_003_4b40:
    inc hl
    db $10
    ld d, l
    nop
    inc hl
    dec d
    ld b, d
    nop
    add h
    ld h, $53
    inc b
    ld bc, $2183
    ld d, e
    ld [$2883], sp
    ld hl, $8304
    ld hl, $0153

jr_003_4b59:
    add l
    add sp, $23
    inc b
    ld a, [hl]
    ld c, e
    add e
    ld hl, $0854
    add e
    jr z, @+$56

    ld [bc], a
    add l
    rst $20
    ld b, d
    ld [bc], a
    add b
    ld c, e

jr_003_4b6d:
    add l
    rst $20
    ld b, c
    ld [bc], a
    add d
    ld c, e
    add e
    jr z, jr_003_4bc7

    ld bc, $e785
    dec [hl]
    inc b
    add h
    ld c, e
    and b
    ld bc, $1001
    nop
    stop
    stop
    dec c
    ld b, [hl]
    ld d, d
    ld b, l
    ld b, l
    ld e, d
    ld b, l
    jr nz, jr_003_4be4

    ld d, b
    nop
    inc l
    ld bc, $6216
    nop
    ld de, $0162
    ld de, $0262
    ld de, $0362
    ld de, $0042
    ld [hl+], a
    ld b, d
    add b
    ld b, h
    ld b, d
    ret nz

    ld b, d
    ld b, d
    ld b, b
    inc h
    inc hl
    inc d
    inc sp
    nop
    inc hl
    ld c, $12
    ld [de], a
    inc hl
    ld bc, $6432
    add e
    jr z, jr_003_4bce

    ld [bc], a
    add e
    jr nz, jr_003_4be2

    ld [bc], a
    add e
    jr nz, @+$34

    ld bc, $2083
    ld b, d

jr_003_4bc7:
    ld bc, $2083
    ld b, e
    ld [$2083], sp

jr_003_4bce:
    ld b, h
    ld [$2083], sp
    inc [hl]
    inc b
    add e
    jr nz, jr_003_4bfb

    inc b
    add h
    ld h, $13
    ld bc, $8301
    jr nz, @+$37

    add b
    add e

jr_003_4be2:
    jr nz, jr_003_4c37

jr_003_4be4:
    db $10
    add e
    jr nz, jr_003_4c19

    jr nz, jr_003_4b6d

    jr z, jr_003_4bfe

    ld [bc], a
    add e
    jr nz, jr_003_4c13

    ld [$2083], sp
    inc hl
    ld bc, $2083
    inc d
    inc b
    and b
    inc de

jr_003_4bfb:
    ld d, h
    ld b, l
    ld d, e

jr_003_4bfe:
    ld d, h
    jr nz, jr_003_4c24

    ld [hl-], a
    ld a, [hl-]
    jr nz, @+$43

    ld c, l
    ld b, d
    ld d, l
    ld d, e
    ld c, b
    nop
    db $f4
    ld bc, $6210
    nop
    ld de, $0162

jr_003_4c13:
    ld de, $0262
    ld de, $0362

jr_003_4c19:
    ld de, $0042
    daa
    ld b, d
    nop
    ld [hl], a
    ld b, d
    nop
    inc [hl]
    ld b, d

jr_003_4c24:
    ld b, b
    inc hl
    ld b, d
    ld b, b
    ld b, l
    ld b, d
    nop
    ld d, c
    ld b, d
    ret nz

    ld h, e
    ld b, d
    nop
    scf
    ld b, d
    nop
    ld [hl], c
    inc hl
    inc d

jr_003_4c37:
    dec [hl]
    nop
    inc hl
    inc d
    ld d, a
    nop
    inc hl
    inc d
    ld [hl-], a
    nop
    inc hl
    ld [bc], a
    ld [hl], h
    ld bc, $0e23
    ld d, [hl]
    inc de
    add e
    jr z, @+$39

    inc b
    add h
    ld h, $84
    ld bc, $8301
    jr z, jr_003_4c96

    ld bc, $2883
    inc hl
    ld bc, $2083
    inc sp
    add c
    add e
    jr nz, jr_003_4c96

    inc h
    add e
    jr nz, jr_003_4c8a

    ld b, b
    add e
    jr nz, @+$45

    ld bc, $2883
    ld d, l
    ld [bc], a
    add e
    jr nz, jr_003_4ce4

    ld hl, $2083
    ld [hl], l
    add c
    add h
    ld h, $46
    ld [bc], a
    ld a, [bc]
    add l
    add sp, $47
    inc b
    adc d
    ld c, h
    add e
    jr nz, @+$38

    ld [bc], a
    add e
    jr z, @+$29

    inc b
    and b

jr_003_4c8a:
    nop
    add b
    adc [hl]
    ld c, h
    add b
    nop
    sub d
    ld c, h
    nop
    db $10
    dec c
    ld d, b

jr_003_4c96:
    ld d, d
    ld c, a
    ld e, b
    ld c, c
    ld c, l
    ld c, c
    ld d, h
    ld e, c
    nop
    db $f4
    ld bc, $6210
    nop
    ld de, $0162
    ld de, $0262
    ld de, $0362
    ld de, $4d42
    inc hl
    ld b, d
    ld c, l
    dec h
    ld b, d
    call Call_003_4265
    call Call_003_4263
    dec c
    ld [hl], $42
    dec c
    ld d, [hl]
    ld b, d
    adc l
    ld [hl-], a
    ld b, d
    adc l
    ld d, d
    ld b, d
    rrca
    ld b, l
    ld b, d
    rrca
    ld b, e
    ld b, d
    nop
    ld d, l
    ld b, d
    nop
    ld d, e
    inc hl
    ld c, $12
    inc d
    add l
    rst $20
    inc de
    inc b
    ld l, h
    ld c, l
    add l
    rst $20
    dec h
    ld bc, $4d6e
    add l
    rst $20

jr_003_4ce4:
    ld [hl], $02
    ld [hl], b
    ld c, l
    add l
    rst $20
    ld d, a
    ld [$4d72], sp
    add l
    rst $20
    ld h, l
    inc b
    ld [hl], h
    ld c, l
    add l
    rst $20
    ld [hl], e
    ld bc, $4d76
    add l
    rst $20
    ld d, c
    ld [bc], a
    ld a, b
    ld c, l
    add l
    rst $20
    ld sp, $7a02
    ld c, l
    add l
    rst $20
    ld [hl-], a
    ld [bc], a
    ld a, h
    ld c, l
    add l
    rst $20
    ld d, d
    ld [bc], a
    ld a, [hl]
    ld c, l
    add l
    rst $20
    ld d, h
    ld [$4d80], sp
    add l
    rst $20
    inc sp
    ld [bc], a
    add d
    ld c, l
    add l
    rst $20
    inc [hl]
    ld [bc], a
    add h
    ld c, l
    add l
    rst $20
    ld d, h
    ld [bc], a
    add [hl]
    ld c, l
    add l
    rst $20
    ld d, l
    ld [bc], a
    adc b
    ld c, l
    add l
    rst $20
    dec [hl]
    ld [bc], a
    adc d
    ld c, l
    add l
    rst $20
    dec h
    inc b
    adc h
    ld c, l
    add l
    rst $20
    inc hl
    inc b
    adc [hl]
    ld c, l
    add l
    rst $20
    ld h, e
    ld bc, $4d90
    add l
    rst $20
    ld h, l
    ld bc, $4d92
    add l
    rst $20
    ld b, l
    inc b
    sub h
    ld c, l
    add l
    rst $20
    ld b, l
    ld bc, $4d96
    add l
    rst $20
    ld b, e
    ld bc, $4d98
    add l
    rst $20
    ld d, e
    ld bc, $4d9a
    add h
    ld h, $64
    ld bc, $a001
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc c
    ld b, a
    ld d, d
    ld b, l
    ld c, l
    ld c, h
    ld c, c
    ld c, [hl]
    ld d, e
    nop
    ret z

    nop
    ld d, $62
    ld b, b
    inc de
    ld h, d
    ld b, c
    inc de
    ld h, d
    ld b, d
    inc de
    ld h, d
    ld b, e
    inc de
    ld b, d
    add hl, bc
    ld d, h
    ld b, d
    adc c
    ld d, d
    ld b, d
    ret


    ld d, e
    inc hl
    dec d
    inc sp
    nop
    inc hl
    ld c, $23
    dec d
    add e
    ld hl, $0855
    add e
    ld hl, $0443
    add e
    ld hl, $0251
    add h
    ld h, $54
    ld bc, $8301
    jr z, jr_003_4e2c

    ld [bc], a
    add e
    jr z, jr_003_4e31

    ld [bc], a
    and b
    dec c
    ld b, e
    ld b, c
    ld c, l
    ld c, a
    ld b, [hl]
    ld c, h
    ld b, c
    ld b, a
    ld b, l
    nop
    sub b
    ld bc, $6216
    nop
    ld de, $0162
    ld de, $0262
    ld de, $0362
    ld de, $0942
    inc de
    ld b, d
    ld c, c
    dec d
    ld b, d
    adc c
    dec [hl]
    ld b, d
    adc c
    ld d, l
    ld b, d
    ret


    inc sp
    ld b, d
    adc c
    ld d, e
    inc hl
    rlca
    ld [hl-], a
    rst $38
    inc hl
    ld c, $12
    ld d, $84
    ld h, $24
    ld bc, $8501
    rst $20
    ld sp, $2804
    ld c, [hl]
    add e
    jr z, jr_003_4e54

    ld [bc], a
    add e
    jr z, @+$14

    ld [bc], a
    and b
    stop
    dec c
    ld d, h

jr_003_4e2c:
    ld b, l
    ld c, h
    ld b, l
    ld d, b
    ld c, a

jr_003_4e31:
    ld d, d
    ld d, h
    ld d, e
    nop
    inc l
    ld bc, $6216
    ld b, b
    inc de
    ld h, d
    ld b, c
    inc de
    ld h, d
    ld b, d
    inc de
    ld h, d
    ld b, e
    inc de
    ld b, d
    ld c, [hl]

jr_003_4e46:
    dec d
    ld b, d
    adc a
    inc sp
    ld b, d
    ret nz

    ld b, l
    ld b, d
    ret


    ld d, e
    ld b, d
    ret


    ld b, e
    inc hl

jr_003_4e54:
    rla
    dec h
    ld de, $1723
    ld d, l
    ld b, c
    inc hl
    ld c, $23
    rla
    add e
    jr z, jr_003_4eb6

    ld [bc], a
    add e
    jr z, jr_003_4e8b

    inc b
    add l
    rst $20
    inc [hl]
    ld [bc], a
    sub l
    ld c, [hl]
    add l
    rst $20
    ld sp, $9702
    ld c, [hl]
    add l
    rst $20
    ld d, c
    ld [bc], a
    sbc c
    ld c, [hl]
    add e
    jr z, jr_003_4e9f

    inc b
    add e
    jr z, @+$13

    ld [bc], a
    add e
    jr z, jr_003_4eb5

    inc b
    add e
    jr z, jr_003_4ecb

    ld bc, $e785

jr_003_4e8b:
    inc d
    ld [bc], a
    sbc e
    ld c, [hl]
    add h
    ld h, $43
    ld [bc], a
    ld bc, $10a0
    nop
    stop
    stop
    stop
    ld a, [bc]
    ld d, a

jr_003_4e9f:
    ld b, c
    ld c, h
    ld c, h
    ld e, c
    ld d, e
    nop
    db $f4
    ld bc, $620b
    add b
    ld [hl], a
    ld h, d
    add c
    ld [hl], a
    ld h, d
    add d
    ld [hl], a
    ld h, d
    add e
    ld [hl], a
    ld b, d

jr_003_4eb5:
    adc b

jr_003_4eb6:
    ld d, $42
    adc b
    ld d, [hl]
    ld b, d
    ld [$2332], sp
    ld c, $76
    jr jr_003_4e46

    ld h, $52
    ld [bc], a
    ld bc, $e785
    ld h, [hl]
    ld [bc], a
    db $d3

jr_003_4ecb:
    ld c, [hl]
    add l
    rst $20
    ld hl, $d502
    ld c, [hl]
    and b
    db $10
    db $10
    db $10
    db $10
    ld c, $57
    ld b, c
    ld c, h
    ld c, h
    ld e, c
    ld d, a
    ld c, a
    ld d, d
    ld c, h
    ld b, h
    nop
    db $f4
    ld bc, $620a
    ret nz

    ld [hl], a
    ld h, d
    pop bc
    ld [hl], a
    ld h, d
    jp nz, $6277

    jp Jump_003_4277


    ld c, b
    rla
    ld b, d
    adc b
    ld h, [hl]
    ld b, d
    ret z

    ld [hl], c
    ld b, d
    ld [$8411], sp
    ld h, $22
    ld [bc], a
    ld bc, $2883
    inc sp
    ld bc, $0da0
    ld c, l
    ld c, a
    ld d, [hl]
    ld b, l
    jr nz, jr_003_4f55

    ld b, c
    ld d, e
    ld d, h
    nop
    ld h, h
    nop
    inc de
    ld h, d
    nop
    ld de, $0162
    ld de, $0262
    ld de, $0362
    ld de, $0e42
    inc hl
    ld b, d
    adc [hl]
    inc sp
    ld b, d
    adc [hl]
    ld b, l
    ld b, d
    adc $43
    ld b, d
    ld c, [hl]
    dec h
    ld b, d
    adc $35
    ld b, d
    adc a
    ld [hl], e
    ld b, d
    adc a
    ld h, d
    ld b, d
    rrca
    ld d, c
    ld b, d
    adc a
    ld b, c
    ld b, d
    rst $08
    add e
    ld b, d
    ld c, a
    ld d, d
    inc hl
    ld a, [bc]
    ld b, h
    nop
    inc hl
    dec d
    ld [hl], d
    nop
    inc hl
    ld c, $12
    add hl, de
    add h
    ld h, $83

jr_003_4f55:
    inc b
    ld bc, $e785
    ld b, d
    inc b
    ld h, [hl]
    ld c, a
    add e
    ld hl, $0473
    add e
    inc h
    ld b, e
    ld [$10a0], sp
    db $10
    rrca
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_003_4fc7

    ld b, c
    ld c, h
    ld c, h
    ld d, e
    nop
    db $f4
    ld bc, $6210
    ret nz

    ld hl, $c162
    ld hl, $c262
    ld hl, $c362
    ld hl, $c042
    dec h
    ld b, d
    ret


    ld b, e
    ld b, d
    ret z

    ld h, e
    inc hl
    dec d
    ld d, e
    nop
    inc hl
    ld c, $23
    ld a, [de]
    inc hl
    inc d
    ld h, l
    nop
    dec h
    jp z, $0061

    rst $20
    ld c, a
    add h
    ld h, $45
    ld [bc], a
    ld bc, $2883
    dec [hl]
    inc b
    add e
    jr z, jr_003_4fcc

    inc b
    add e
    jr z, jr_003_4ff2

    inc b
    add l
    jp hl


    ld b, l
    inc b
    ld [$834f], a
    jr z, jr_003_4fde

    inc b
    add e
    jr z, jr_003_501e

    ld bc, $2883
    ld h, e
    inc b
    add e
    jr z, @+$57

    inc b
    add e

jr_003_4fc7:
    jr z, @+$49

    ld bc, $e985

jr_003_4fcc:
    ld d, e
    inc b
    db $ed
    ld c, a
    add l
    jp hl


    ld h, l
    inc b
    pop af
    ld c, a
    add e
    jr z, jr_003_4ffc

    inc b
    add l
    jp hl


    dec d
    inc b

jr_003_4fde:
    db $f4
    ld c, a
    add l
    jp hl


    ld b, e
    ld bc, $4ff6
    and b
    nop
    ld b, b
    ld a, [bc]
    ld b, b
    nop
    jr nz, jr_003_502e

    ld b, b
    ld hl, $0021

jr_003_4ff2:
    ld b, b
    inc h
    stop
    nop
    db $10
    ld c, $50
    ld d, d
    ld c, a

jr_003_4ffc:
    ld d, h
    ld b, l
    ld b, e
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    nop
    db $f4
    ld bc, $6224
    ret nz

    ld d, l
    ld h, d
    pop bc
    ld d, l
    ld h, d
    jp nz, $6255

    jp Jump_003_4255


    nop
    ld hl, $0942
    ld sp, $0842
    ld b, c
    ld b, d
    add hl, bc

jr_003_501e:
    inc d
    ld b, d
    nop
    inc de
    ld b, d
    ld [$4223], sp
    ret z

    ld h, d
    ld b, d
    ld [$4251], sp
    ld b, b
    dec d

jr_003_502e:
    ld b, d
    nop
    ld [de], a
    ld b, d
    ld [$2311], sp
    inc d
    inc sp
    nop
    inc hl
    ld d, $61
    nop
    inc hl
    dec d
    ld d, $00
    inc hl
    ld c, $45
    dec de
    inc hl
    ld b, $54
    sub [hl]
    add e
    ld hl, $4852
    add l
    rst $20
    ld b, h
    ld bc, $5086
    add h
    ld h, $11
    ld [$8301], sp
    jr z, @+$63

    ld [bc], a
    add e
    ld [hl+], a
    ld [de], a
    ld [$2083], sp
    inc hl
    add c
    add e
    jr nz, jr_003_508a

    ld bc, $2083
    dec h
    add c
    add e
    jr nz, jr_003_5094

    add c
    add e
    ld hl, $4822
    add e
    ld hl, $4832
    add e
    ld hl, $4842
    add l
    rst $20
    ld b, h
    ld [$5088], sp
    add e
    ld hl, $2412
    and b
    stop
    stop

jr_003_508a:
    ld [de], a
    ld d, h
    ld b, l
    ld d, e
    ld d, h
    jr nz, jr_003_50c4

    ld a, [hl-]
    jr nz, jr_003_50e0

jr_003_5094:
    ld b, l
    ld d, [hl]
    ld b, l
    ld c, h
    ld d, e
    nop
    adc d
    ld [bc], a
    rla
    ld h, d
    add b
    ld d, e
    ld h, d
    add c
    ld d, e
    ld h, d
    add d
    ld d, e
    ld h, d
    add e
    ld d, e
    ld b, d
    ret z

    inc l
    ld b, d
    ld c, c
    inc d
    ld b, d
    ret


    ld d, h
    ld b, d
    nop
    dec h
    ld b, d
    nop
    ld b, l
    ld b, d
    ld b, b
    jr z, @+$44

    ld b, b
    add hl, de
    ld b, d
    ret nz

    ld c, b
    ld b, d
    ret nz

    ld e, c

jr_003_50c4:
    ld b, d
    ld [$4258], sp
    ld [$2318], sp
    dec d
    ld [hl], $00
    inc hl
    ld a, [bc]
    dec sp
    nop
    inc hl
    ld [$023c], sp
    inc hl
    ld c, $4c
    inc e
    inc hl
    ld [bc], a
    ld e, h
    ld bc, $2883

jr_003_50e0:
    dec bc
    ld [bc], a
    add e
    jr z, jr_003_50ef

    ld [bc], a
    add h
    ld h, $5c
    ld [bc], a
    ld bc, $e785
    inc sp
    ld [bc], a

jr_003_50ef:
    dec h
    ld d, c
    add e
    jr z, jr_003_512f

    inc b
    add h
    ld h, $0b
    ld bc, $830a
    inc h
    ld e, c
    ld [$2483], sp
    ld c, e
    ld b, d
    add e
    ld hl, $0846
    add e
    ld hl, $0826
    add e
    inc h
    dec de
    ld [de], a
    add l
    rst $20
    dec hl
    inc b
    daa
    ld d, c
    add l
    rst $20
    scf
    ld [bc], a
    add hl, hl
    ld d, c
    add e
    inc h
    add hl, de
    ld [$e885], sp
    dec bc
    inc b
    dec hl
    ld d, c
    and b
    db $10
    db $10
    stop
    db $10
    db $10
    add b
    nop
    cpl
    ld d, c

jr_003_512f:
    add b
    nop
    inc sp
    ld d, c
    ld b, b
    nop
    inc h
    ld a, [bc]
    ld d, d
    ld c, a
    ld d, [hl]
    ld b, l
    ld d, d
    ld d, e
    nop
    ld e, b
    ld [bc], a
    dec b
    ld h, d
    nop
    ld h, c
    ld h, d
    ld bc, $6261
    ld [bc], a
    ld h, c
    ld h, d
    inc bc
    ld h, c
    ld b, d
    rlca
    ld d, [hl]
    ld b, d
    rlca
    ld h, l
    ld b, d
    rlca
    ld h, $42
    rlca
    ld [de], a
    ld b, d
    rlca
    inc sp
    inc hl
    inc d
    ld d, $00
    inc hl
    dec d
    ld hl, $2300
    ld c, $62
    dec e
    add h
    ld h, $56
    ld [bc], a
    ld bc, $2883
    ld d, l
    ld [bc], a
    add e
    jr z, jr_003_5196

    ld [$e785], sp
    ld h, h
    ld [bc], a
    sub b
    ld d, c
    add l
    rst $20
    ld [hl], $01
    sub d
    ld d, c
    add e
    jr nz, jr_003_5197

    ld [$2183], sp
    ld h, l
    ld [bc], a
    add l
    rst $20
    inc d
    ld [bc], a
    sub h
    ld d, c
    and b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_003_5196:
    dec bc

jr_003_5197:
    ld b, e
    ld c, b
    ld c, a
    ld c, c
    ld b, e
    ld b, l
    ld d, e
    nop
    db $f4
    ld bc, $621b
    nop
    ld b, d
    ld h, d
    ld bc, $6242
    ld [bc], a
    ld b, d
    ld h, d
    inc bc
    ld b, d
    ld b, d
    rlca
    ld h, d
    ld b, d
    rlca
    ld h, [hl]
    ld b, d
    rlca
    ld [hl+], a
    ld b, d
    rlca
    ld h, $42
    ld c, a
    inc h
    ld b, d
    rst $08
    ld h, h
    ld b, d
    ret


    ld d, d
    ld b, d
    ret


    dec h
    ld b, d
    ret


    ld h, l
    ld b, d
    ret


    inc hl
    inc hl
    ld a, [bc]
    ld b, l
    nop
    inc hl
    inc d
    ld d, h
    nop
    inc hl
    dec d
    inc [hl]
    nop
    inc hl
    ld b, $46
    ld h, h
    add e
    inc h
    inc d
    inc b
    add e
    ld hl, $0425
    add e
    ld hl, $0836
    add e
    inc h
    ld [hl], h
    ld bc, $2483
    ld h, d
    ld bc, $2483
    ld h, d
    ld [bc], a
    add e
    inc h
    ld h, [hl]
    ld [$2483], sp
    ld h, [hl]
    ld bc, $2483
    ld [hl+], a
    ld [bc], a
    add e
    inc h
    ld [hl+], a
    inc b
    add e
    inc h
    ld h, $08
    add e
    inc h
    ld h, $04
    add e
    jr nz, jr_003_5273

    ld bc, $2083
    ld b, [hl]
    ld [$2083], sp
    inc h
    inc b
    add e
    ld hl, $0423
    add e
    ld hl, $0232
    add e
    ld hl, $0252
    add e
    ld hl, $0453
    add e
    ld hl, $0455
    add e
    ld hl, $0255
    add h
    ld h, $47
    ld [bc], a
    ld bc, $2483
    ld b, a
    ld bc, $2483
    ld b, a
    inc b
    and b
    inc de
    ld c, e
    ld b, l
    ld e, c
    ld d, e
    jr nz, jr_003_5294

    ld d, b
    ld b, l
    ld c, [hl]
    jr nz, jr_003_528e

    ld c, a
    ld c, a
    ld d, d
    ld d, e
    nop
    db $f4
    ld bc, $621c
    add b
    ld c, [hl]
    ld h, d
    add c
    ld c, [hl]
    ld h, d
    add d
    ld c, [hl]
    ld h, d
    add e
    ld c, [hl]
    ld b, d
    rst $08
    ld e, b
    ld b, d
    ld c, a
    jr z, jr_003_52a7

    ld c, $49
    ld b, d
    ld c, $39
    ld b, d
    nop
    ld b, l
    ld b, d
    nop
    ld b, [hl]
    ld b, d
    nop
    dec [hl]

jr_003_5273:
    ld b, d
    nop
    ld [hl], $42
    rlca
    ld h, c
    ld b, d
    rlca
    ld de, $1423
    ld c, e
    nop
    inc hl
    inc d
    dec sp
    nop
    inc hl
    dec d
    ld d, h
    nop
    inc hl
    dec d
    inc h
    nop
    inc hl
    add hl, bc

jr_003_528e:
    ld a, $00
    add h
    ld h, $40
    ld [bc], a

jr_003_5294:
    ld bc, $2684
    ld sp, $0208
    add e
    jr nz, jr_003_52e7

    ld [bc], a
    add e
    jr nz, jr_003_52db

    ld [bc], a
    add e
    ld hl, $0824
    add e

jr_003_52a7:
    ld hl, $0854
    add e
    inc hl
    ld c, b
    ld [$2383], sp
    jr c, jr_003_52ba

    and b
    ld a, [bc]
    ld d, e
    ld d, b
    ld c, c
    ld d, d
    ld b, c
    ld c, h

jr_003_52ba:
    nop
    ld h, $02
    ld b, $62
    ld h, b
    dec d
    ld h, d
    ld h, c
    dec h
    ld h, d
    ld h, d
    ld h, $62
    ld h, e
    ld d, $42
    and b
    ld h, d
    ld b, d
    and b
    ld d, e
    ld b, d
    ld c, c
    ld de, $4942
    ld [hl+], a
    ld b, d
    ld c, b
    ld h, l
    ld b, d
    ld c, b

jr_003_52db:
    ld h, [hl]
    ld b, d
    ld b, a
    ld b, l
    inc hl
    inc d
    inc hl
    nop
    add h
    ld h, $35
    inc b

jr_003_52e7:
    ld bc, $2883
    dec h
    inc b
    add e
    jr z, jr_003_5324

    ld [bc], a
    add l
    rst $20
    ld b, l
    ld [bc], a
    dec b
    ld d, e
    add e
    jr nz, jr_003_535d

    ld [bc], a
    add e
    jr z, jr_003_5321

    ld [$e785], sp
    ld hl, $0704
    ld d, e
    and b
    stop
    stop
    inc c
    ld d, e
    ld b, e
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld b, l
    ld d, d
    ld d, e
    nop
    inc l
    ld bc, $6203
    add b
    ld d, l
    ld h, d
    add c
    ld d, l
    ld h, d
    add d
    ld d, l
    ld h, d
    add e

jr_003_5321:
    ld d, l
    ld b, d
    ld [bc], a

jr_003_5324:
    ld sp, $0242
    ld d, c
    ld b, d
    add hl, bc
    dec h
    ld b, d
    add hl, bc
    dec d
    ld b, d
    add hl, bc
    inc d
    inc hl
    inc d
    ld b, c
    nop
    inc hl
    inc b
    ld hl, $2303
    ld c, $54
    ld e, $84
    ld h, $26
    ld [$8301], sp
    jr z, jr_003_5369

    ld [bc], a
    add e
    jr nz, jr_003_535c

    ld b, d
    and b
    ld c, $43
    ld d, d
    ld c, a
    ld d, e
    ld d, e
    jr nz, jr_003_5399

    ld c, c
    ld d, d
    ld b, l
    nop
    sub b
    ld bc, $6212
    ld h, b

jr_003_535c:
    scf

jr_003_535d:
    ld h, d
    ld h, c
    scf
    ld h, d
    ld h, d
    scf
    ld h, d
    ld h, e
    scf
    ld b, d
    rlca
    ld [hl], h

jr_003_5369:
    ld b, d
    ld [bc], a
    ld h, a
    ld b, d
    jr z, jr_003_53b3

    ld b, d
    jr z, @+$66

    ld b, d
    ld [bc], a
    inc [hl]
    ld b, d
    jr z, jr_003_53ab

    ld b, d
    rst $00
    ld h, e
    ld b, d
    rst $00
    ld [hl], e
    ld b, d
    rst $00
    db $76
    ld b, d
    rst $00
    ld [hl], a
    ld b, d
    rlca
    ld [hl], l
    add l
    rst $20
    ld [hl], h
    ld [bc], a
    xor e
    ld d, e
    add l
    rst $20
    ld h, e
    ld bc, $53ad
    add l
    rst $20
    ld h, e
    inc b
    xor a
    ld d, e

jr_003_5399:
    add l
    rst $20
    ld [hl], l
    ld [bc], a
    or c
    ld d, e
    add h
    ld h, $73
    ld [bc], a
    ld bc, $e785
    ld d, e
    ld bc, $53b3
    and b

jr_003_53ab:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_003_53b3:
    db $10
    db $10
    rrca
    ld b, e
    ld c, a
    ld d, d
    ld c, [hl]
    ld b, l
    ld d, d
    jr nz, jr_003_5411

    ld c, b
    ld c, a
    ld d, h
    nop
    db $f4
    ld bc, $6210
    add b
    inc [hl]
    ld h, d
    add c
    inc [hl]
    ld h, d
    add d
    inc [hl]
    ld h, d
    add e
    inc [hl]
    ld b, d
    jp nz, Jump_003_4277

    jp nz, Jump_003_4217

    jp nz, Jump_003_4211

    jp nz, $4271

    jp nz, Jump_003_4256

    jp nz, $2365

    ld b, $32
    sub [hl]
    inc hl
    ld d, $23
    nop
    add h
    ld h, $66
    ld [$8301], sp
    jr z, @+$25

    inc b
    add e
    jr z, jr_003_5429

    ld [bc], a
    add e
    jr z, jr_003_5460

    ld bc, $2883
    ld d, l
    ld [bc], a
    add e
    ld [hl+], a
    ld sp, $8302
    ld [hl+], a
    ld h, l
    inc b
    and b
    inc c
    ld b, a
    ld b, c
    ld d, l
    ld c, [hl]
    ld d, h
    ld c, h
    ld b, l

jr_003_5411:
    ld d, h
    nop
    db $f4
    ld bc, $621d
    nop
    ld sp, $0162

jr_003_541b:
    ld sp, $0262
    ld sp, $0362
    ld sp, $c242
    ld b, e
    ld b, d
    ld b, d
    inc hl
    ld b, d

jr_003_5429:
    jp nz, Jump_003_4244

    jp nz, Jump_003_4245

    jp nz, Jump_003_4246

    jp nz, Jump_003_4247

    jp nz, Jump_003_4248

    ld b, d
    inc h
    ld b, d
    ld b, d
    dec h
    ld b, d
    ld b, d
    ld h, $42
    ld b, d
    daa
    ld b, d
    ld b, d
    jr z, jr_003_546a

    ld c, $42
    rra
    inc hl
    ld a, [bc]
    ld d, l
    nop
    inc hl
    ld d, $35
    nop
    add h
    ld h, $3a
    ld [bc], a
    ld bc, $2283
    ld d, e
    ld [$2483], sp
    jr c, jr_003_5461

    and b

jr_003_5460:
    db $10

jr_003_5461:
    ld c, l
    ld b, l
    ld b, l
    ld d, h
    jr nz, @+$44

    ld c, a
    ld d, l
    ld c, [hl]

jr_003_546a:
    ld b, e
    ld b, l
    ld d, d
    nop
    db $f4
    ld bc, $6211
    ld b, b
    ld hl, $4162
    ld hl, $4262
    ld hl, $4362
    ld hl, $4142
    rla
    ld b, d
    ld b, c
    dec [hl]
    ld b, d
    ld b, c
    ld d, e
    inc hl
    inc d
    ld b, a
    nop
    inc hl
    dec bc
    ld b, h
    nop
    inc hl
    ld a, [bc]
    ld b, d
    nop
    inc hl
    ld c, $31
    jr nz, jr_003_541b

    ld h, $56
    ld bc, $8301
    jr z, jr_003_54f1

    ld [$2883], sp
    ld d, [hl]
    ld [bc], a
    add e
    jr z, jr_003_54db

    ld [bc], a
    add e
    jr z, jr_003_54e0

    ld [bc], a
    add e
    jr z, jr_003_5502

    ld [bc], a
    add e
    jr z, jr_003_5507

    ld [bc], a
    add e
    jr z, jr_003_54ea

    ld [$2883], sp
    dec [hl]
    ld [$2883], sp
    ld [hl-], a
    ld [bc], a
    add e
    jr z, @+$33

    ld [bc], a
    add e
    inc h
    ld b, [hl]
    ld [$2083], sp
    ld b, h
    ld [$2583], sp
    ld b, d
    ld [$2883], sp
    ld d, c
    ld [bc], a
    add e
    jr z, @+$55

    ld [bc], a
    and b
    inc de
    ld d, h
    ld b, l

jr_003_54db:
    ld d, e
    ld d, h
    jr nz, jr_003_5513

    ld a, [hl-]

jr_003_54e0:
    jr nz, jr_003_5538

    ld c, c
    ld c, h
    ld c, h
    ld b, c
    ld b, a
    ld b, l
    nop
    cp h

jr_003_54ea:
    ld [bc], a
    ld a, [de]
    ld h, d
    ld b, b
    ld hl, $4162

jr_003_54f1:
    ld hl, $4262
    ld hl, $4362
    ld hl, $8242
    sub e
    ld b, d
    ld [$4275], sp
    rlca
    ld d, d
    ld b, d

jr_003_5502:
    rlca
    ld d, l
    ld b, d
    add d
    add hl, de

jr_003_5507:
    ld b, d
    adc b
    inc hl
    ld b, d
    ld [$4212], sp
    adc c
    dec d
    ld b, d
    adc c
    dec h

jr_003_5513:
    ld b, d
    adc c
    dec [hl]
    ld b, d
    ld b, c
    add a
    ld b, d
    ret z

    sbc b
    inc hl
    add hl, bc
    add d
    nop
    inc hl
    rla
    add hl, sp
    jr z, jr_003_5548

    ld [bc], a
    add h
    ld bc, $1523
    sub [hl]
    nop
    inc hl
    inc d
    add hl, hl
    nop
    inc hl
    rla
    ld h, l
    ld h, $23
    rrca
    sub l
    nop

jr_003_5538:
    inc hl
    rrca
    add l
    nop
    inc hl
    ld c, $86
    ld hl, $1723
    ld d, $91
    dec h
    pop bc
    ld b, d
    sub [hl]

jr_003_5548:
    sbc b
    ld d, l
    add e
    inc hl
    sub a
    ld [bc], a
    add h
    ld h, $11
    ld bc, $830a
    inc hl
    ld d, a
    ld [bc], a
    add e
    jr z, jr_003_55a0

    ld bc, $2383
    ld [hl-], a
    ld bc, $2684
    ld a, [c]
    inc b
    ld a, [bc]
    add e
    jr z, @+$28

    inc b
    add e
    inc hl
    ld b, e
    ld bc, $2083
    sbc b
    ld [$2183], sp
    add h
    ld bc, $2383
    rla
    ld [$2383], sp
    ld b, [hl]
    inc b
    add e
    inc hl
    ld [hl], d
    ld bc, $2883
    jr jr_003_5588

    add e
    jr z, jr_003_559b

    ld [bc], a

jr_003_5588:
    add h
    ld h, $a4
    ld bc, $8301
    jr z, jr_003_55a1

    ld [bc], a
    add l
    add sp, $21
    ld bc, $55a3
    and b
    add b
    nop
    sbc h

jr_003_559b:
    ld d, l
    add b
    db $10
    and b
    ld d, l

jr_003_55a0:
    ld b, b

jr_003_55a1:
    nop
    ld a, [bc]
    add b
    nop
    and a
    ld d, l
    add b
    nop
    xor e
    ld d, l
    ld b, b
    nop
    inc h
    dec c
    ld d, e
    ld b, c
    ld b, e
    ld d, d
    ld c, c
    ld b, [hl]
    ld c, c
    ld b, e
    ld b, l
    nop
    db $f4
    ld bc, $6210
    nop
    ld de, $0162
    ld de, $0262
    ld de, $0362
    ld de, $0742
    ld d, e
    ld b, d
    ld b, a
    inc sp
    ld b, d
    add a
    dec [hl]
    ld b, d
    rst $00
    ld d, l
    dec h
    ret nc

    dec h
    nop
    jr nc, jr_003_5630

    inc hl
    rlca
    inc hl
    ld c, e
    inc hl
    ld c, $12
    ld [hl+], a
    inc hl
    inc b
    ld d, [hl]
    ld [bc], a
    inc hl
    ld b, $52
    ld c, e
    inc hl
    ld bc, $4b65
    inc hl
    dec c
    ld h, e
    nop
    inc hl
    ld c, $32
    inc hl
    inc hl
    inc c
    ld [hl], $01
    add h
    ld h, $54
    ld bc, $8501
    add sp, $31
    ld [bc], a
    ld [hl-], a
    ld d, [hl]
    add l
    add sp, $51
    ld [bc], a
    inc [hl]
    ld d, [hl]
    add l
    add sp, $73
    ld bc, $5636
    add l
    add sp, $65
    inc b
    jr c, jr_003_566d

    add l
    add sp, $23
    ld bc, $563a
    add l
    add sp, $25
    ld bc, $563c
    add l
    add sp, $36
    ld [bc], a
    ld a, $56
    add l
    add sp, $56
    ld [bc], a
    ld b, b
    ld d, [hl]
    and b

jr_003_5630:
    nop
    nop
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    db $10
    ld bc, $0110
    ld d, $46
    ld c, c
    ld c, [hl]
    ld b, h
    jr nz, @+$56

    ld c, b
    ld b, l
    jr nz, jr_003_568f

    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_003_569e

    ld b, l
    ld e, c
    nop
    db $f4
    ld bc, $6210
    add b
    inc d
    ld h, d
    add c
    inc d
    ld h, d
    add d
    inc d
    ld h, d
    add e
    inc d
    ld b, d
    jp nz, Jump_003_4255

    jp nz, Jump_003_4253

    ld [bc], a

jr_003_566d:
    ld [hl], e
    ld b, d
    ld [bc], a
    ld [hl], l
    ld b, d
    ld [bc], a
    ld [hl], a
    ld b, d
    ld [bc], a
    ld [hl], c
    ld b, d
    add d
    inc [hl]
    inc hl
    dec bc
    ld d, h
    nop
    add h
    ld h, $74
    inc b
    ld bc, $2583
    ld [hl], h
    ld [bc], a
    add e
    dec h
    ld [hl], h
    ld [$10a0], sp
    ld c, d
    ld d, l

jr_003_568f:
    ld c, l
    ld d, b
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_003_56e0

    ld b, c
    ld b, e
    ld c, e
    nop
    db $f4
    ld bc, $6210

jr_003_569e:
    nop
    inc d
    ld h, d
    ld b, c
    ld b, a
    ld h, d
    add d
    ld [hl], h
    ld h, d
    jp Jump_003_4241


    add d
    ld d, h
    ld b, d
    add d
    ld b, l
    ld b, d
    add d
    inc [hl]
    ld b, d
    add d
    ld b, e
    inc hl
    rla
    ld [hl-], a
    scf
    inc hl
    rla
    ld [hl], $31
    inc hl
    rla
    ld d, d
    ld d, a
    inc hl
    rla
    ld d, [hl]
    ld d, c
    inc hl
    rla
    ld h, e
    inc de
    inc hl
    rla
    inc hl
    ld [hl], e
    inc hl
    rla
    dec h
    ld [hl], l
    inc hl
    rla
    ld h, l
    dec d
    inc hl
    ld c, $16
    inc h
    add h
    ld h, $54
    ld bc, $a001
    ld [de], a

jr_003_56e0:
    ld d, [hl]
    ld c, c
    ld c, h
    ld c, h
    ld b, c
    ld b, a
    ld b, l
    jr nz, jr_003_5730

    ld d, l
    ld b, c
    ld d, d
    ld b, h
    ld d, e
    nop
    cp h
    ld [bc], a
    ld a, [de]
    ld h, d
    ld b, b
    ld de, $4162
    ld de, $4262

jr_003_56fa:
    ld de, $4362
    ld de, $0342
    ld d, d
    ld b, d
    inc bc
    add d
    ld b, d
    inc bc
    sub [hl]
    ld b, d
    inc bc
    sbc c
    ld b, d
    ld bc, $4244
    add c
    ld a, c
    ld b, d
    ld c, l
    dec d
    ld b, d
    call Call_003_4236
    ld c, l
    rla
    ld b, d
    rlca
    add hl, hl
    ld b, d
    rlca
    add hl, de
    ld b, d
    ld b, c
    ld e, b
    inc hl
    ld b, $69
    sub [hl]
    inc hl
    dec c
    inc hl
    nop
    inc hl
    dec bc
    add hl, sp
    nop
    inc hl
    ld a, [bc]

jr_003_5730:
    sub e
    nop
    inc hl
    ld c, $21
    dec h
    inc hl
    ld bc, $9612
    add l
    rst $20
    inc de
    ld [bc], a
    cp d
    ld d, a
    add l
    rst $20
    sub d
    ld [$57bc], sp
    add l
    rst $20
    ld [hl], e
    inc b
    cp [hl]
    ld d, a
    add e
    jr z, jr_003_5798

    ld bc, $2483
    jr @+$04

    add h
    ld h, $a4
    ld bc, $8301
    jr z, jr_003_5792

    inc b
    add e
    jr z, jr_003_5796

    ld [bc], a
    add e
    jr z, @+$19

    ld [bc], a
    add e
    jr z, jr_003_57b0

    ld bc, $2583
    add h
    ld [bc], a
    add l
    rst $20
    adc c
    ld bc, $57c0
    add e
    jr z, jr_003_56fa

    ld bc, $2883
    ld a, b
    ld bc, $2883
    ld de, $8302
    jr z, jr_003_57f4

    ld [bc], a
    add l
    rst $20
    ld [hl+], a
    inc b
    jp nz, $8557

    rst $20
    inc sp
    inc b
    call nz, $8557
    rst $20
    ld h, d

jr_003_5792:
    inc b
    add $57
    add l

jr_003_5796:
    rst $20
    ld b, [hl]

jr_003_5798:
    inc b
    ret z

    ld d, a
    add l
    rst $20
    ld d, a
    ld [bc], a
    jp z, $8557

    rst $20
    ld e, c
    ld bc, $57cc
    add l
    rst $20
    sub a
    ld [bc], a
    adc $57
    add l
    rst $20
    inc d

jr_003_57b0:
    ld [bc], a
    ret nc

    ld d, a
    add l
    rst $20
    scf
    ld [bc], a
    jp nc, $a057

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, $4e
    ld c, a
    jr nz, jr_003_582b

    ld b, l
    ld d, h
    ld d, d
    ld b, l
    ld b, c
    ld d, h
    nop
    db $f4
    ld bc, $6210
    nop
    ld [de], a
    ld h, d
    ld bc, $6212
    ld [bc], a
    ld [de], a
    ld h, d
    inc bc
    ld [de], a
    ld b, d
    ld [$4274], sp
    ld b, e

jr_003_57f4:
    dec h
    ld b, d
    adc b
    ld d, [hl]
    ld b, d
    ld b, d
    inc hl
    ld b, d
    rlca
    ld d, d
    inc hl
    ld c, $45
    ld h, $23
    db $10
    ld h, e
    nop
    inc hl
    db $10
    ld [hl-], a
    nop
    inc hl
    db $10
    ld [hl], $00
    add h
    ld h, $25
    ld [bc], a
    ld bc, $2883
    dec h
    ld bc, $2883
    ld [hl-], a
    ld [$2883], sp
    ld [hl+], a
    inc b
    add e
    jr z, jr_003_5845

    ld bc, $2883
    ld d, c
    ld [bc], a
    add e
    jr z, jr_003_588d

    inc b

jr_003_582b:
    add e
    jr z, jr_003_5884

    ld [bc], a
    add e
    jr z, @+$38

    ld [bc], a
    add e
    jr z, @+$45

    inc b
    add l
    jp hl


    ld h, l
    inc b
    ld d, h
    ld e, b
    add l
    jp hl


    ld d, h
    ld [bc], a
    ld d, a
    ld e, b
    add l
    jp hl


jr_003_5845:
    ld b, e
    inc b
    ld e, d
    ld e, b
    add l
    jp hl


    inc sp
    ld [bc], a
    ld e, l
    ld e, b
    add e
    jr z, jr_003_5897

    ld bc, $00a0
    ld [$0065], sp
    ld [$0054], sp
    ld [$0043], sp
    ld [$0f34], sp
    ld b, h
    ld c, a
    ld d, l
    ld b, d
    ld c, h
    ld b, l
    jr nz, jr_003_58ab

    ld b, c
    ld b, e
    ld c, e
    nop
    ld h, $02
    db $10
    ld h, d
    nop
    ld d, $62
    ld bc, $6216
    ld [bc], a
    ld d, $62
    inc bc
    ld d, $42
    ret


    ld h, c
    ld b, d
    ld c, c
    inc d
    ld b, d
    add hl, bc

jr_003_5884:
    ld b, c
    ld b, d
    add hl, bc
    ld [de], a
    ld b, d
    ld b, a
    ld [hl], l
    ld b, d
    adc c

jr_003_588d:
    ld [hl], h
    ld b, d
    adc c
    db $76
    ld b, d
    ld b, a
    inc de
    ld b, d
    add hl, bc
    ld d, c

jr_003_5897:
    dec h
    adc $17
    daa
    di
    ld e, b
    add e
    jr z, jr_003_58e7

    inc b
    add e
    jr z, @+$59

    inc b
    add e
    jr z, @+$18

    ld [$2883], sp

jr_003_58ab:
    inc d
    ld [bc], a
    add e
    jr z, jr_003_58e1

    inc b
    add e
    jr z, jr_003_58e5

    ld bc, $2883
    ld [hl], d
    ld [bc], a
    add e
    jr z, jr_003_5930

    ld [$e985], sp
    dec h
    inc b
    push af
    ld e, b
    add l
    jp hl


    ld [hl-], a
    ld [bc], a
    ld hl, sp+$58
    add l
    jp hl


    ld h, e
    ld bc, $58fb
    add l
    jp hl


    ld d, [hl]
    ld [$58fe], sp
    add h
    ld h, $57
    ld [bc], a
    ld bc, $e985
    ld d, [hl]
    ld [bc], a
    ld bc, $8559

jr_003_58e1:
    jp hl


    dec d
    inc b
    inc b

jr_003_58e5:
    ld e, c
    add l

jr_003_58e7:
    jp hl


    ld sp, $0702
    ld e, c
    add l
    jp hl


    ld [hl], e
    ld bc, $590a
    and b
    nop
    ld de, $0800
    ld [hl-], a
    nop
    ld [$0063], sp
    ld [$0056], sp
    ld [$0025], sp
    ld [$0015], sp
    ld [$0031], sp
    ld [$0073], sp
    ld [$1457], sp
    ld c, h
    ld b, l
    ld d, h
    ld d, e
    jr nz, @+$4f

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$43

    jr nz, jr_003_595f

    ld b, l
    ld b, c
    ld c, h
    nop
    db $f4
    ld bc, $621f
    ld b, b
    ld [de], a
    ld h, d
    ld b, c
    ld hl, $4262
    ld [hl+], a
    ld h, d
    ld b, e
    ld de, $4142

jr_003_5930:
    ld h, d
    ld b, d

jr_003_5932:
    ld [bc], a
    ld d, c
    ld b, d
    ld b, d
    ld d, d
    ld b, d
    add d
    ld d, e
    ld b, d
    jp nz, Jump_003_4254

    jp Jump_003_4261


    jp Jump_003_4264


    jp $2373


    inc d
    ld h, e
    nop
    inc hl
    dec d
    ld [hl], c
    nop
    inc hl
    ld d, $74
    nop
    inc hl
    ld a, [bc]
    ld [hl], d
    nop
    add h
    ld h, $83
    ld bc, $8301
    ld hl, $0164

jr_003_595f:
    add e
    jr nz, jr_003_59c3

    ld bc, $2283
    ld h, d
    ld bc, $2483
    ld [hl], e
    ld bc, $0ca0
    ld d, [hl]
    ld b, c
    ld c, l
    ld d, b
    ld c, c
    ld d, d
    ld b, l
    ld d, e
    nop
    db $f4
    ld bc, $6208
    nop
    ld h, c
    ld h, d
    ld bc, $6261
    ld [bc], a
    ld h, c
    ld h, d
    inc bc
    ld h, c
    ld b, d
    and d
    ld d, l
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld h, d
    inc de
    ld b, d
    ld h, d
    ld b, [hl]
    ld b, d
    ld l, d
    ld hl, $6342
    ld d, [hl]
    ld b, d
    ld h, e
    ld h, l
    ld b, d
    ld l, d
    ld [de], a
    ld b, d
    ld l, d
    ld h, $42
    ld l, d
    ld [hl], $42
    ld h, c
    dec d
    ld b, d
    ld h, c
    inc d
    inc hl
    ld c, $62
    jr z, jr_003_5932

    ld h, $17
    ld [$8501], sp
    rst $20
    dec d
    ld [bc], a
    cp a
    ld e, c
    add l
    rst $20
    ld d, $04
    pop bc
    ld e, c
    and b
    db $10
    db $10
    db $10
    db $10

jr_003_59c3:
    rrca
    ld b, e
    ld c, a
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld b, l
    jr nz, @+$55

    ld c, b
    ld c, a
    ld d, b
    nop
    ld e, b
    ld [bc], a
    jr nz, jr_003_5a36

    ret nz

    ld [hl], c
    ld h, d
    pop bc
    ld [hl], d
    ld h, d
    jp nz, Jump_003_6262

    jp Jump_003_4261


    inc bc
    ld b, d
    ld b, d
    ld a, [bc]
    ld [hl], l
    ld b, d
    inc bc
    ld h, h
    ld b, d
    inc bc
    inc de
    ld b, d
    inc bc
    dec d
    ld b, d
    inc bc
    db $76
    ld b, d
    inc bc
    ld d, e
    ld b, d
    inc bc
    ld h, l
    ld b, d
    inc bc
    ld h, [hl]
    ld b, d
    inc bc
    ld [hl], l
    inc hl
    inc d
    inc d
    nop
    inc hl
    dec d
    ld [hl], a
    nop
    inc hl
    ld a, [bc]
    ld d, a
    nop
    inc hl
    dec bc
    ld [hl], h
    nop
    inc hl
    ld bc, $6447
    add e
    jr nz, @+$58

    add c
    add e
    ld hl, $0445
    add h
    ld h, $75
    inc b
    ld bc, $2883
    ld [hl], l
    ld [$2583], sp
    ld d, a
    ld [$2483], sp
    ld h, l
    ld bc, $2083
    ld h, l
    inc b
    and b
    ld de, $4554
    ld d, e
    ld d, h
    jr nz, jr_003_5a59

jr_003_5a36:
    dec [hl]
    ld a, [hl-]
    jr nz, jr_003_5a8e

    ld c, a
    ld d, a
    ld c, [hl]
    nop
    add h
    inc bc
    ld e, $62

jr_003_5a42:
    ld b, b
    ld d, $62
    ld b, c
    ld d, $62
    ld b, d
    ld d, $62
    ld b, e
    ld d, $42
    inc bc
    adc c

jr_003_5a50:
    ld b, d
    inc bc
    ld c, c
    ld b, d
    add e
    ld b, e
    ld b, d
    add e
    add e

jr_003_5a59:
    ld b, d

jr_003_5a5a:
    add d
    or [hl]
    ld b, d
    adc d
    ld h, l
    ld b, d
    ld a, [bc]
    ld h, a
    ld b, d
    jp z, Jump_003_4266

    jp z, Jump_003_42a8

    jp z, $42a4

    ld c, d
    jr z, jr_003_5ab1

    ld c, d
    inc h
    inc hl
    dec d
    ld d, e
    nop
    inc hl
    inc d
    scf
    nop
    inc hl
    inc d
    dec [hl]
    nop
    inc hl
    dec d
    ld e, c
    nop
    inc hl
    dec d
    ld a, c
    nop
    inc hl
    inc d
    sub l
    nop
    inc hl
    inc d
    sub a
    nop
    inc hl

jr_003_5a8e:
    dec d
    ld [hl], e
    nop
    inc hl
    dec bc
    sbc c
    nop
    inc hl
    ld c, $26
    add hl, hl
    inc hl
    add hl, bc
    ld l, c
    nop
    inc hl
    ld [$0133], sp
    inc hl
    rla
    ld h, c
    ld h, [hl]
    inc hl
    ld [bc], a
    sub [hl]
    ld bc, $2684
    or [hl]
    inc b
    ld bc, $2583
    sub [hl]

jr_003_5ab1:
    inc b
    add e
    jr nz, jr_003_5aec

    ld [de], a
    add e
    jr nz, jr_003_5a50

    ld b, d
    add e
    jr nz, jr_003_5af2

    jr jr_003_5a42

    dec h
    and [hl]
    inc b
    add e
    jr nz, jr_003_5a5a

    ld c, b
    add e
    ld hl, $2479
    add e
    ld hl, $2159
    add e
    ld hl, $8153
    add e
    ld hl, $8473
    add e
    jr nz, jr_003_5b3b

    ld [$2684], sp
    ld l, e
    ld [bc], a
    ld a, [bc]
    add e
    ld hl, $2069
    add l
    db $e3
    ld h, e
    ld [$5aee], sp
    add e
    jr z, jr_003_5b56

jr_003_5aec:
    ld [bc], a
    and b
    add b
    nop
    ld a, [c]
    ld e, d

jr_003_5af2:
    add b
    nop
    or $5a
    add b
    nop
    ld a, [$105a]
    ld [$076b], sp
    ld c, c
    ld b, e
    ld b, l
    nop
    db $f4
    ld bc, $6221
    ld b, b
    dec d
    ld h, d
    ld b, c
    dec h
    ld h, d
    ld b, d
    dec [hl]
    ld h, d
    ld b, e
    ld b, l
    ld b, d
    nop
    ld e, b
    ld b, d
    ret nz

    ld d, d
    ld b, d
    ret


    ld h, a
    ld b, d
    ret


    ld h, e
    ld b, d
    ret z

    db $76
    ld b, d
    ret z

    ld [hl], h
    ld b, d
    rst $00
    jr c, jr_003_5b69

    rst $00
    ld [hl-], a
    ld b, d
    ret nz

    ld [hl], $42
    ret nz

    inc [hl]
    ld b, d
    rst $08
    scf
    ld b, d
    rst $08
    inc sp
    inc hl
    inc d
    ld a, c
    nop
    add l
    rst $20

jr_003_5b3b:
    ld h, [hl]
    inc b
    or c
    ld e, e
    add l
    rst $20
    ld h, a
    ld [$5bb3], sp
    add l
    rst $20
    ld e, b
    ld bc, $5bb5
    add l
    rst $20
    ld c, c
    ld [$5bb7], sp
    add l
    rst $20
    ld h, h
    inc b
    cp c

jr_003_5b56:
    ld e, e
    add l
    rst $20
    ld h, h
    ld [$5bbb], sp
    add l
    rst $20
    ld b, d
    inc b
    cp l
    ld e, e
    add l
    rst $20
    ld b, c
    ld [bc], a
    cp a
    ld e, e

jr_003_5b69:
    add l
    rst $20
    ld [hl-], a
    inc b
    pop bc
    ld e, e
    add l
    rst $20
    inc sp
    inc b
    jp $855b


    rst $20
    inc [hl]
    inc b
    push bc
    ld e, e
    add l
    rst $20
    ld [hl], $04
    rst $00
    ld e, e
    add l
    rst $20
    scf
    inc b
    ret


    ld e, e
    add l
    rst $20
    ld c, b
    ld bc, $5bcb
    add l
    rst $20
    ld d, d
    ld [bc], a
    call $855b
    rst $20
    ld d, a
    ld [bc], a
    rst $08
    ld e, e
    add l
    rst $20
    ld d, a
    inc b
    pop de
    ld e, e
    add l
    rst $20
    ld h, e
    ld bc, $5bd3
    add l
    ldh [$ff75], a
    ld bc, $5bd5
    add h
    ld h, $75
    inc b
    ld bc, $10a0
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    inc bc
    nop
    ld a, [bc]
    ld b, e
    ld b, c
    ld c, l
    ld d, b
    ld d, l
    ld d, e
    nop
    db $f4
    ld bc, $6207
    ld b, b
    ld hl, $4162
    ld de, $c262
    ld [hl+], a
    ld h, d
    inc bc
    ld [de], a
    ld b, d
    jp nz, Jump_003_4241

    jp nz, Jump_003_4263

    jp nz, $4224

    jp nz, $4235

    jp z, Jump_003_4251

    jp z, Jump_003_4252

    jp z, Jump_003_4262

    pop bc
    inc d
    ld b, d
    pop bc
    ld [hl], $42
    pop bc
    dec h
    ld b, d
    jp Jump_003_4256


    jp $2365


    inc d
    ld h, c
    nop
    inc hl
    ld d, $16
    nop
    add e
    jr nz, jr_003_5c63

    ld [$2083], sp
    ld h, h
    ld bc, $2283
    ld h, [hl]
    ld [$2283], sp
    ld h, [hl]
    ld bc, $2684
    ld h, [hl]
    ld [bc], a
    ld bc, $0ea0
    ld d, e
    ld c, b
    ld b, c
    ld d, d
    ld c, e
    jr nz, jr_003_5c7a

    ld b, c
    ld c, c
    ld d, h
    nop
    db $f4
    ld bc, $6222
    nop
    ld [hl], c
    ld h, d
    ld bc, $6261
    ld [bc], a
    ld [hl], d
    ld h, d
    inc bc
    ld h, d
    ld b, d
    ld b, $14
    ld b, d
    ld b, $47
    ld b, d
    ld b, $64
    ld b, d
    ld [bc], a
    ld [hl], a
    ld b, d
    ld b, $26
    ld b, d
    ld b, $21
    ld b, d
    ld b, $76
    ld b, d
    ld b, $56

jr_003_5c63:
    ld b, d
    jp nz, Jump_003_4233

    jp nz, $4235

    ld [bc], a
    ld de, $0a42
    rla
    inc hl
    inc d
    ld d, e
    nop
    inc hl
    dec d
    ld d, l
    nop
    add h
    ld h, $44

jr_003_5c7a:
    inc b
    ld bc, $2083
    ld b, l
    inc b
    add e
    ld hl, $0424
    add l
    rst $20
    inc hl
    inc b
    sub c
    ld e, h
    add l
    rst $20
    dec h
    inc b
    sub e
    ld e, h
    and b
    stop
    stop
    dec c
    ld c, [hl]
    ld c, c
    ld b, a
    ld c, b
    ld d, h
    ld c, l
    ld b, c
    ld d, d
    ld b, l
    nop
    db $f4
    ld bc, $6208
    ld b, b
    ld d, $62
    ld b, c
    ld d, $62
    ld b, d
    ld d, $62
    ld b, e
    ld d, $42
    ld b, e
    ld h, [hl]
    ld b, d
    jp Jump_003_4256


    ld b, d
    inc sp
    ld b, d
    jp nz, Jump_003_4244

    push bc
    ld d, c
    ld b, d
    ld [bc], a
    ld d, l
    ld b, d
    ld [bc], a
    ld [hl+], a
    ld b, d
    pop bc
    ld h, h
    ld b, d
    add c
    ld [hl-], a
    ld b, d
    adc d
    ld de, $ca42
    ld [de], a
    ld b, d
    ld b, $24
    inc hl
    inc d
    ld b, e
    nop
    inc hl
    inc d
    ld b, c
    nop
    inc hl
    dec d
    ld h, e
    nop
    add h
    ld h, $61
    inc b
    ld bc, $2083
    ld b, c
    ld b, c
    add e
    ld hl, $2161
    add e
    inc h
    ld h, e
    adc b
    and b
    ld c, $46
    ld b, c
    ld d, e
    ld d, h
    jr nz, @+$56

    ld d, d
    ld b, c
    ld b, e
    ld c, e
    nop
    db $f4
    ld bc, $6223
    nop
    ld d, c
    ld h, d
    ld bc, $6251
    ld [bc], a
    ld d, c
    ld h, d
    inc bc
    ld d, c
    ld b, d
    ld [bc], a
    dec hl
    ld b, d
    ld [bc], a
    inc h
    ld b, d
    ld [bc], a
    jr @+$44

    ld c, e
    ld b, d
    ld b, d
    ld c, e
    ld b, e
    ld b, d
    ld c, e
    ld b, h
    ld b, d
    ld c, e
    ld b, l
    inc hl
    db $10
    ld c, b
    nop
    inc hl
    ld d, $17
    nop
    dec h
    call nc, $0055
    ld h, l
    ld e, l
    add e
    jr nz, @+$44

    inc b
    add e
    jr nz, jr_003_5d79

    inc b
    add e
    jr nz, @+$46

    inc b
    add e
    jr nz, jr_003_5d83

    inc b
    add e
    ld [hl+], a
    ld sp, $8401
    ld h, $41
    ld bc, $8301
    jr z, @+$44

    ld bc, $2883
    ld b, e
    ld bc, $2883
    ld b, h
    ld bc, $2883
    ld b, l
    ld bc, $2883
    ld b, l
    ld [$2883], sp
    ld b, e
    ld [bc], a
    add e
    jr z, jr_003_5da6

    ld [$00a0], sp
    inc bc
    db $10
    ld b, d
    ld c, a
    ld e, b
    jr nz, @+$4e

    ld d, l
    ld c, [hl]
    ld b, e
    ld c, b
    jr nz, jr_003_5d93

    jr nz, jr_003_5d75

jr_003_5d75:
    db $f4
    ld bc, $6224

jr_003_5d79:
    nop
    ld h, c
    ld h, d
    ld bc, $6261
    ld [bc], a
    ld h, c
    ld h, d
    inc bc

jr_003_5d83:
    ld h, c
    ld b, d
    inc bc
    ld b, c
    ld b, d
    inc bc
    ld d, [hl]
    ld b, d
    inc bc
    ld de, $0242
    inc d
    ld b, d
    ld a, [bc]
    ld [hl+], a

jr_003_5d93:
    ld b, d
    ld b, c
    ld d, $42
    ld b, $15
    ld b, d
    ld b, e
    ld [de], a
    dec h
    push de
    ld [hl], $00
    ret nz

    ld e, l
    inc hl
    inc d
    inc hl
    nop

jr_003_5da6:
    inc hl
    ld d, $21
    nop
    add h
    ld h, $14
    ld [$8301], sp
    ld hl, $1416
    add e
    jr nz, jr_003_5dd7

    inc h
    add e
    jr nz, jr_003_5ddc

    ld [bc], a
    add e
    ld [hl+], a
    inc d
    ld [bc], a
    and b
    nop
    inc bc
    ld d, $57
    ld b, c
    ld c, h
    ld c, h
    ld c, b
    ld d, l
    ld b, a
    ld b, a
    ld b, l
    ld d, d
    ld d, e
    jr nz, @+$46

    ld b, l
    ld c, h
    ld c, c
    ld d, h
    ld b, l
    nop
    db $f4

jr_003_5dd7:
    ld bc, $6225
    nop
    ld b, d

jr_003_5ddc:
    ld h, d
    ld bc, $6252
    ld [bc], a
    ld d, c
    ld h, d
    inc bc
    ld b, c
    ld b, d
    ld [$4223], sp
    ld [$4243], sp
    ld [$4247], sp
    ld [$424c], sp
    ld [$422b], sp
    ld [$4217], sp
    ld [$425b], sp
    ld [$425e], sp
    ld [$423e], sp
    ld [$252e], sp
    push de
    ld a, [hl+]
    nop
    ld e, e
    ld e, [hl]
    add l
    rst $20
    ld b, e
    ld [bc], a
    ld e, l
    ld e, [hl]
    add l
    rst $20
    inc h
    ld [$5e5f], sp
    add l
    rst $20
    ld c, b
    ld [$5e61], sp
    add l
    rst $20
    jr jr_003_5e27

    ld h, e
    ld e, [hl]
    add l
    rst $20
    ld a, [hl-]
    ld bc, $5e65

jr_003_5e27:
    add l
    rst $20
    dec hl
    ld bc, $5e67
    add l
    rst $20
    inc a
    inc b
    ld l, c
    ld e, [hl]
    add l
    rst $20
    ld e, e
    ld [$5e6b], sp
    add l
    rst $20
    ld e, [hl]
    ld [$5e6d], sp
    add l
    rst $20
    dec a
    ld [bc], a
    ld l, a
    ld e, [hl]
    add l
    rst $20
    ld d, [hl]
    ld [bc], a
    ld [hl], c
    ld e, [hl]
    add e
    ld hl, $013e
    add h
    ld h, $2e
    ld [bc], a
    ld bc, $e785
    ld h, $01
    ld [hl], e
    ld e, [hl]
    and b
    nop
    ld bc, $0010
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    rrca
    ld b, [hl]
    ld b, c
    ld c, h
    ld d, e
    ld b, l
    jr nz, jr_003_5ed0

    ld d, h
    ld b, c
    ld d, d
    ld d, h
    nop
    ld e, b
    ld [bc], a
    db $10
    ld h, d
    ld b, b
    rla
    ld h, d
    ld b, c
    rla
    ld h, d
    ld b, d
    rla
    ld h, d
    ld b, e
    rla
    ld b, d
    inc bc
    ld [hl], e
    ld b, d
    inc bc
    ld de, $0342
    inc [hl]
    inc hl
    inc d
    ld [hl], a
    nop
    inc hl
    dec d
    ld d, $00
    inc hl
    ld c, $27
    ld a, [hl+]
    add h
    ld h, $71
    inc b
    ld bc, $e085
    inc de
    ld c, b
    add sp, $5e
    add l
    pop hl
    dec [hl]
    ld [de], a
    ld [$855e], a

jr_003_5eb8:
    pop hl
    dec d
    ld c, b
    db $ec
    ld e, [hl]
    add l
    ldh [$ff71], a
    ld [de], a
    xor $5e
    add l
    ldh [rHDMA3], a
    jr jr_003_5eb8

jr_003_5ec8:
    ld e, [hl]
    add l
    ldh [$ff31], a
    ld [de], a
    ld a, [c]
    ld e, [hl]
    add l

jr_003_5ed0:
    ldh [$ff75], a
    jr jr_003_5ec8

    ld e, [hl]
    add l
    ldh [$ff73], a
    ld hl, $5ef6
    add l
    pop hl
    ld d, l
    ld [de], a
    ld hl, sp+$5e
    add l
    pop hl
    inc sp
    add h
    ld a, [$a05e]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1001
    ld b, [hl]
    ld b, l
    ld b, l
    ld b, h
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_003_5f5a

    ld c, c
    ld c, l
    ld b, l
    nop
    inc l
    ld bc, $620d
    ld h, b
    inc sp
    ld h, d
    ld h, c
    inc sp
    ld h, d
    ld h, d
    inc sp
    ld h, d
    ld h, e
    inc sp
    ld b, d
    add [hl]
    ld d, h
    ld b, d
    ld b, $12
    ld b, d
    ld b, [hl]
    dec h
    ld b, d
    add $41
    ld b, d
    ld c, c
    ld b, h
    ld b, d
    ret


    ld b, d
    ld b, d
    add hl, bc
    inc h
    ld b, d
    add hl, bc
    ld [hl+], a
    ld b, d
    ld a, [bc]
    inc de
    ld b, d
    ld c, d
    dec [hl]
    ld b, d
    adc d
    ld d, e
    ld b, d
    jp z, $8431

    ld h, $07
    ld [$8401], sp
    ld h, $16
    ld [$a001], sp
    inc de
    ld d, h
    ld b, l
    ld d, e
    ld d, h
    jr nz, jr_003_5f72

    ld [hl], $3a
    jr nz, jr_003_5f99

    ld c, c
    ld c, [hl]
    ld b, c
    ld c, h
    ld d, e
    nop
    db $f4

jr_003_5f5a:
    ld bc, $6212
    ld h, b
    scf
    ld h, d
    ld h, c
    scf
    ld h, d
    ld h, d
    scf
    ld h, d
    ld h, e
    scf
    ld b, d
    jp z, Jump_003_4233

    jp nz, Jump_003_4265

    ld [bc], a
    ld d, h
    ld b, d

jr_003_5f72:
    pop bc
    ld h, e
    ld b, d
    ld l, d
    inc [hl]
    ld b, d
    jp Jump_003_4277


    pop bc
    ld d, e
    ld b, d
    jp Jump_003_4267


    adc d
    ld b, h
    ld b, d
    add e
    ld h, [hl]
    ld b, d
    ld [bc], a
    ld b, l
    ld b, d
    jp nz, $2356

    inc d
    ld h, h
    nop
    inc hl
    ld d, $43
    nop
    inc hl
    dec d
    halt
    nop
    inc hl

jr_003_5f99:
    ld [bc], a
    ld [hl], e
    ld bc, $0f23
    ld [hl], h
    nop
    add l
    add sp, $74
    ld [$5fc6], sp
    add e
    jr nz, jr_003_5fde

    ld [$2283], sp
    ld h, a
    ld bc, $e785
    ld [hl], e
    ld bc, $5fc8
    add e
    jr z, jr_003_600a

    ld bc, $2183
    ld h, e
    ld [bc], a
    add h
    ld h, $73
    inc b
    ld bc, $2183
    ld d, h
    ld [$10a0], sp
    nop
    db $10
    db $10
    ld c, $44
    ld c, a
    ld c, [hl]
    daa
    ld d, h
    jr nz, jr_003_601f

    ld c, c
    ld d, e
    ld d, e
    nop
    inc l
    ld bc, $6226
    add b
    dec [hl]
    ld h, d
    add c

jr_003_5fde:
    dec [hl]
    ld h, d
    add d
    dec [hl]
    ld h, d
    add e
    dec [hl]
    ld b, d
    jp nz, Jump_003_4252

    jp nz, Jump_003_4254

    ld [bc], a
    ld b, c
    ld b, d
    ld [bc], a
    ld hl, $4242
    ld [de], a
    ld b, d
    ld b, d
    inc d
    ld b, d
    add d
    dec h
    ld b, d
    add d
    ld b, l
    ld b, d
    ld a, [bc]
    ld sp, $4a42
    inc de
    ld b, d
    jp z, Jump_003_4253

    add e
    inc sp
    inc hl

jr_003_600a:
    inc c
    ld d, l
    inc bc
    add h
    ld h, $01
    inc b
    ld bc, $e885
    inc h
    ld [bc], a
    ld h, c
    ld h, b
    add l
    add sp, $24
    ld bc, $6063
    add l

jr_003_601f:
    add sp, $23
    ld bc, $6065
    add l
    add sp, $22
    ld bc, $6067
    add l
    add sp, $21
    ld [bc], a
    ld l, c
    ld h, b
    add l
    add sp, $31
    ld [bc], a
    ld l, e
    ld h, b
    add l
    add sp, $41
    ld [bc], a
    ld l, l
    ld h, b
    add l
    add sp, $52
    ld bc, $606f
    add l
    add sp, $53
    ld bc, $6071
    add l
    add sp, $54
    ld bc, $6073
    add l
    add sp, $44
    ld [bc], a
    ld [hl], l
    ld h, b
    add l
    add sp, $35

Call_003_6057:
    ld [$6077], sp
    add l
    add sp, $55
    ld bc, $607a
    and b
    ld de, $1101
    ld bc, $0111
    ld de, $1101
    ld bc, $0111
    ld de, $1101
    ld bc, $0111
    ld de, $1101
    ld bc, $0901
    inc [hl]
    stop
    inc c
    ld b, e
    ld d, d
    ld c, a
    ld d, e
    ld d, e
    ld b, l
    ld e, c
    ld b, l
    nop
    ld e, b
    ld [bc], a
    daa
    ld h, d
    nop
    ld de, $0162
    ld de, $0262
    ld de, $0362
    ld de, $0442
    jr z, jr_003_60db

    inc b
    ld c, b
    ld b, d
    inc b
    jr c, jr_003_60e1

    inc b
    dec sp
    ld b, d
    inc b
    dec hl
    ld b, d
    inc b
    inc a
    ld b, d
    inc b
    dec [hl]
    ld b, d
    inc b
    dec h
    ld b, d
    inc b
    ld c, e
    ld b, d
    inc b
    ld sp, $0723
    ld d, $4b
    inc hl
    ld c, $13
    dec hl
    inc hl
    ld b, $19
    ld [hl-], a
    add l
    rst $20
    ld [de], a
    inc b
    rst $28
    ld h, b
    add l
    rst $20
    dec d
    inc b
    pop af
    ld h, b
    add l
    rst $20
    jr z, jr_003_60d0

    di

jr_003_60d0:
    ld h, b
    add l
    rst $20
    dec hl
    ld bc, $60f5
    add l
    rst $20
    inc sp
    ld [bc], a

jr_003_60db:
    rst $30
    ld h, b
    add l
    rst $20
    ld [hl], $02

jr_003_60e1:
    ld sp, hl
    ld h, b
    add l
    rst $20
    ld a, [hl-]
    ld [$60fb], sp
    add h
    ld h, $1c
    ld bc, $a001
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    add hl, bc
    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld c, d
    ld b, c
    nop
    db $f4
    ld bc, $6209
    add b
    dec d
    ld h, d
    add c
    ld d, $62
    ld [bc], a
    dec h
    ld h, d
    ld b, e
    ld h, $42
    dec bc
    ld h, e
    ld b, d
    inc b
    ld h, d
    ld b, d
    inc bc
    ld sp, $0242
    ld b, e
    ld b, d
    jp nz, Jump_003_4266

    dec b
    ld h, c
    ld b, d
    ld [bc], a
    ld b, c
    inc hl
    inc d
    ld d, d
    nop
    inc hl
    dec d
    ld b, d
    nop
    inc hl
    inc d
    ld [hl-], a
    nop
    add h
    ld h, $60
    ld [bc], a
    ld bc, $2883
    ld h, c
    ld [bc], a
    add e
    jr z, jr_003_6191

    ld [bc], a
    add e
    ld hl, $4843
    add e
    ld hl, $0453
    add e
    ld hl, $2431
    add e
    ld hl, $1131
    add e
    jr nz, jr_003_6196

    add c
    and b
    add hl, bc
    ld d, e
    ld c, a
    ld c, h
    ld b, c
    ld d, d
    nop
    db $f4
    ld bc, $6228
    ld b, b
    inc [hl]
    ld h, d
    ld b, c
    dec [hl]
    ld h, d
    jp nz, Jump_003_6265

    jp Jump_003_4264


    jp nz, Jump_003_4274

    jp nz, Jump_003_4275

    ld b, d
    inc h
    ld b, d
    ld b, d
    dec h
    ld b, d
    add d
    ld b, [hl]
    ld b, d
    add d
    ld d, [hl]
    ld b, d
    ld [bc], a
    ld d, e
    ld b, d
    ld [bc], a
    ld b, e
    ld b, d
    dec b
    ld d, d
    ld b, d
    dec b
    ld d, a
    ld b, d
    dec b
    ld b, a
    ld b, d
    dec b
    inc sp
    inc hl

jr_003_6191:
    inc d
    ld b, h
    nop
    inc hl
    inc d

jr_003_6196:
    ld b, l
    nop
    inc hl
    inc d
    ld d, l
    nop
    inc hl
    inc d
    ld d, h
    nop
    add e
    jr nz, @+$66

    inc b
    add l
    ldh [$ff75], a
    ld bc, $61c8
    add e
    jr nz, @+$58

    ld [$2083], sp
    ld b, [hl]
    ld [$2083], sp
    ld b, e
    ld [bc], a
    add e
    jr nz, jr_003_620c

    ld [bc], a
    add e
    jr nz, jr_003_61e1

    inc b
    add e
    jr nz, jr_003_61e6

    inc b
    add h
    ld h, $27
    ld [bc], a
    ld bc, $00a0
    db $10
    dec bc
    ld d, e
    ld c, b
    ld b, c
    ld d, h
    ld d, h
    ld b, l
    ld d, d
    nop
    db $f4
    ld bc, $620c
    nop
    ld sp, $0162
    ld [hl-], a
    ld h, d
    ld [bc], a
    ld [hl+], a
    ld h, d
    inc bc

jr_003_61e1:
    ld hl, $0042
    ld d, e
    ld b, d

jr_003_61e6:
    ld [bc], a
    ld c, b
    ld b, d
    rlca
    add c
    ld b, d
    ld [bc], a
    ld h, e
    ld b, d
    ld [bc], a
    ld [hl], $42
    ld bc, $4281
    ld bc, $4215
    ld bc, $4276
    ld b, c
    inc d
    add e
    jr z, jr_003_6247

    inc b
    add e
    jr z, jr_003_625c

    inc b
    add h
    ld h, $59
    ld [$a001], sp
    add hl, bc

jr_003_620c:
    ld d, d
    ld b, c
    ld e, d
    ld c, a
    ld d, d
    nop
    db $f4
    ld bc, $622d
    add b
    dec a
    ld h, d
    add c
    dec l
    ld h, d
    add d
    inc a
    ld h, d
    add e
    inc l
    ld b, d
    inc b
    ld h, $42
    inc b
    ld [hl], $42
    dec bc
    ld sp, $0b42
    ld [hl-], a
    ld b, d
    dec bc
    ld hl, $0b42
    ld [hl+], a
    ld b, d
    ld b, $76
    ld b, d
    ld b, $77
    ld b, d
    ld b, $78
    ld b, d
    ld b, $68
    ld b, d
    dec b
    ld h, a
    dec h
    push de
    ld l, e
    nop
    ld a, h

jr_003_6247:
    ld h, d
    inc hl
    inc d
    ld h, c
    nop
    dec h
    call nc, $0064
    ld a, [hl]

Jump_003_6251:
    ld h, d
    add l
    rst $20
    jr nc, jr_003_6258

    add c
    ld h, d

jr_003_6258:
    add e
    daa
    adc d
    ld [bc], a

jr_003_625c:
    add l
    add sp, $7a
    ld [bc], a
    add h
    ld h, d

Jump_003_6262:
    add h
    ld h, $9d

Jump_003_6265:
    ld bc, $8301
    ld hl, $018d
    add e
    jr nz, jr_003_62d2

    ld [$e885], sp
    dec a
    ld [$6286], sp
    add l
    add sp, $3d
    ld bc, $6289
    and b
    ld bc, $0000

jr_003_627f:
    ld [$0024], sp
    ld [$008a], sp
    db $10
    ld bc, $3c08
    ld bc, $2d08
    ld a, [bc]
    ld d, d
    ld c, a
    ld c, l
    ld d, b
    ld d, l
    ld d, e
    nop
    ld e, b
    ld [bc], a
    ld a, [hl+]
    ld h, d
    nop
    ld d, d
    ld h, d
    pop bc
    ld b, c
    ld h, d
    jp nz, Jump_003_6251

    ld b, e
    ld b, d
    ld b, d
    ld [bc], a
    inc sp
    ld b, d
    add d
    dec [hl]
    ld b, d
    adc d
    ld c, d
    ld b, d
    adc d
    ld a, [hl+]
    ld b, d
    adc d
    jr c, @+$44

    add l
    ld a, $42
    inc b
    ld e, h
    ld b, d
    inc b
    inc e
    ld b, d
    ld bc, $4226
    ld bc, $2546
    push de
    ld c, [hl]
    nop
    ld de, $2563
    call nc, $0059
    inc de
    ld h, e
    inc hl
    inc d
    inc de
    nop
    dec h

jr_003_62d2:
    call nc, $0056
    dec d
    ld h, e
    dec h
    call nc, $0047
    rla
    ld h, e
    dec h

jr_003_62de:
    call nc, $0027
    add hl, de
    ld h, e
    dec h
    call nc, $0016
    dec de
    ld h, e
    inc hl
    ld a, [bc]
    ld b, l
    nop
    dec h
    push de
    ld a, [hl-]
    nop
    dec e
    ld h, e
    add e
    ld hl, $085b
    add e
    jr nz, jr_003_6352

    jr z, jr_003_627f

    inc h
    dec a
    ld [bc], a
    add e
    ld hl, $1253
    add e
    jr nz, jr_003_631e

    ld [$2183], sp
    dec de
    ld [$2684], sp
    ld a, $02
    ld bc, $00a0
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop

jr_003_631e:
    inc bc
    ld [$5247], sp
    ld c, c
    ld b, h
    nop
    db $f4
    ld bc, $622b
    ldh [$ff91], a
    ld h, d
    pop hl
    sub d
    ld h, d
    ld [c], a
    add c
    ld h, d
    db $e3
    add d
    ld b, d
    nop
    sub l
    ld b, d
    ld bc, $4222
    nop
    ld [hl], l
    ld b, d
    ld bc, $4225
    add hl, bc
    sbc b
    ld b, d
    ld a, [bc]
    ld d, d
    ld b, d
    add hl, bc
    ld a, b
    ld b, d
    inc bc
    ld d, a
    ld b, d
    inc bc
    ld e, c
    ld b, d
    ld [bc], a
    ld d, h

jr_003_6352:
    ld b, d
    ld [bc], a
    ld d, [hl]
    ld b, d
    dec b
    jr z, jr_003_62de

    rst $20
    jr @+$03

    call z, $8563
    rst $20
    ld e, c
    ld [bc], a
    adc $63
    add l
    rst $20
    adc c
    ld [bc], a
    ret nc

    ld h, e
    add l
    rst $20
    sbc b
    inc b
    jp nc, $8563

    rst $20
    sub l
    inc b
    call nc, $8563
    rst $20
    and d
    ld bc, $63d6
    add l
    rst $20
    add b
    ld [bc], a
    ret c

    ld h, e
    add l
    rst $20
    ld d, b
    ld [bc], a
    jp c, $8563

    rst $20
    ld hl, $dc08
    ld h, e
    add l
    rst $20
    ld [de], a
    ld bc, $63de
    add l
    rst $20
    dec b
    inc b
    ldh [$ff63], a
    add [hl]
    and $2a
    ld [$e201], sp
    ld h, e
    add l
    rst $20
    ld l, b
    inc b
    db $e4
    ld h, e
    add l
    rst $20
    ld [hl-], a
    inc b
    and $63
    add l
    rst $20
    ld d, a
    ld [$63e8], sp
    add l
    rst $20
    ld h, l
    inc b
    ld [$8563], a
    rst $20
    ld d, h
    ld [$63ec], sp
    add l
    rst $20
    jr c, jr_003_63c7

    xor $63
    add l
    rst $20

jr_003_63c7:
    ld b, l
    ld bc, $63f0
    and b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    inc de
    nop
    inc de
    nop
    inc de
    nop
    inc de
    nop
    inc de
    nop
    inc bc
    nop
    inc bc
    inc c
    ld b, h
    ld c, c
    ld b, c
    ld b, a
    ld c, a
    ld c, [hl]
    ld b, c
    ld c, h
    nop
    db $f4
    ld bc, $622c
    ld h, b
    jr z, @+$64

    ld h, c
    add hl, hl
    ld h, d
    ld h, d
    jr jr_003_646b

    ld h, e
    add hl, de
    ld b, d
    ld h, l
    add d
    ld b, d
    ld h, l
    add e
    ld b, d
    ld h, l
    ld [hl], e
    ld b, d
    ld h, l
    ld [hl], d
    ld b, d
    xor e
    ld d, l
    ld b, d
    and c
    ld c, b
    inc hl
    db $10
    ld [hl], l
    nop
    dec h
    call nz, $0353
    ccf
    ld h, h
    add l
    add sp, $63
    ld bc, $6442
    add h
    ld h, $95
    ld [$8501], sp
    add sp, -$6c
    ld [$6444], sp
    add l
    add sp, $74
    ld [bc], a
    ld b, [hl]
    ld h, h
    and b
    inc bc
    ld b, e
    inc b
    stop
    stop
    nop
    inc bc
    ld d, $54
    ld c, b
    ld b, l
    jr nz, jr_003_649b

    ld b, c
    ld d, e
    ld d, h
    ld b, l
    ld d, d
    ld d, e
    jr nz, jr_003_6499

    ld b, c
    ld d, e
    ld d, h
    ld c, h
    ld b, l
    nop
    rst $20
    inc bc
    add hl, hl
    ld h, d
    ld b, b
    rla
    ld h, d
    ld b, c
    jr jr_003_64c8

    ld b, d
    ld d, $62
    ld b, e
    add hl, de

jr_003_646b:
    ld b, d
    ld [bc], a
    sub [hl]
    ld b, d
    add d
    sbc c
    ld b, d
    ld b, c
    sbc h
    ld b, d
    dec b
    or e
    ld b, d
    dec b
    and h
    ld b, d
    db $10
    rst $10
    ld b, d
    ld bc, $4285
    dec b
    xor d
    ld b, d
    dec b
    ld h, [hl]
    ld b, d
    dec b
    call c, $0542
    ld l, c
    ld b, d
    inc bc
    sub a
    inc hl
    dec d
    ld [hl], e
    nop
    inc hl
    ld a, [bc]
    call nc, $2300
    dec bc

jr_003_6499:
    sub e
    nop

jr_003_649b:
    inc hl
    inc d
    ld h, a
    nop
    inc hl
    dec d
    jp $2300


    inc d
    ld l, b
    nop
    inc hl
    ld c, $da
    inc l
    inc hl
    add hl, bc
    or [hl]
    nop
    inc hl
    ld c, $e9
    dec l
    add l
    add sp, -$4d
    ld [bc], a
    ld hl, $8365
    jr nz, @+$5a

    ld [de], a
    add e
    jr nz, jr_003_6517

    jr @-$7b

    jr nz, jr_003_652b

    ld c, b
    add e

jr_003_64c6:
    jr nz, jr_003_6530

jr_003_64c8:
    ld b, d
    add e
    inc hl
    and $01
    add e
    dec h
    ld a, c
    ld bc, $2183
    jp $8321


    inc h
    and d
    ld [bc], a
    add e
    dec h
    ld c, c
    inc b
    add e
    ld hl, $4283
    add e
    dec h
    db $76
    ld bc, $2583
    ld b, [hl]
    inc b
    add l
    rst $20
    add h
    inc b
    inc h
    ld h, l
    add l
    rst $20
    xor h
    ld [bc], a
    ld h, $65
    add l
    rst $20
    call z, $2801
    ld h, l
    add l
    rst $20
    adc h
    inc b
    ld a, [hl+]
    ld h, l
    add h
    ld h, $e8
    inc b
    add b
    add e
    dec h
    jp z, $8502

    jp hl


    jp z, $2c08

    ld h, l
    add l
    rst $20
    and [hl]
    ld [$652f], sp
    add l

jr_003_6517:
    rst $20
    xor c
    ld [bc], a
    ld sp, $8365
    jr z, jr_003_64c6

    inc b
    and b
    nop
    ld [$10b4], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_003_652b:
    db $10
    ld bc, $c909
    db $10

jr_003_6530:
    db $10
    db $10
    db $10
    inc c
    ld b, a
    ld d, l
    ld b, c
    ld d, d
    ld b, h
    ld c, c
    ld b, c
    ld c, [hl]
    nop
    db $f4
    ld bc, $6210
    ld b, b
    inc d
    ld h, d
    ld bc, $6241
    add d
    ld b, a
    ld h, d
    jp Jump_003_4274


    jp nz, Jump_003_4244

    rlca
    inc sp
    ld b, d
    ld b, a
    dec [hl]
    ld b, d
    add a
    ld d, l
    ld b, d
    rst $00
    ld d, e
    inc hl
    inc c
    ld b, d
    inc bc
    inc hl
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    add l
    add sp, $43
    ld [bc], a
    adc c
    ld h, l
    add l
    add sp, $44
    ld [bc], a
    adc e
    ld h, l
    add l
    add sp, $44
    ld bc, $658d
    add [hl]
    and $44
    inc b
    ld bc, $658f
    add l
    add sp, $45
    ld [bc], a
    sub c
    ld h, l
    add l
    add sp, $42
    ld [bc], a
    sub e
    ld h, l
    and b
    inc bc
    db $10
    inc bc
    db $10
    inc bc
    db $10
    ld bc, $1000
    db $10
    db $10
    db $10
    inc c
    ld c, c
    ld c, [hl]
    ld d, [hl]
    ld c, c
    ld d, b
    ld c, a
    ld d, d
    ld d, h
    nop
    db $f4
    ld bc, $622f
    nop
    ld sp, $0162
    ld hl, $0262
    ld [hl-], a
    ld h, d
    inc bc
    ld [hl+], a
    ld b, d
    ld [bc], a
    ld d, l
    ld b, d
    ld [bc], a
    ld [hl], l
    ld b, d
    ld [bc], a
    ld [hl], e
    ld b, d
    ld [bc], a
    ld d, e
    ld b, d
    ld [bc], a
    ld h, h
    ld b, d
    ld [bc], a
    ld h, d
    ld b, d
    ld [bc], a
    ld [hl], d
    inc hl
    ld [bc], a
    ld [hl], c
    ld bc, $0223
    ld h, c
    ld bc, $0823
    ld d, c
    ld bc, $0823
    ld b, c
    ld [bc], a
    add l
    rst $20
    inc [hl]
    ld [$65fd], sp
    add l
    rst $20
    inc hl
    ld [bc], a
    nop
    ld h, [hl]
    add l
    rst $20
    ld h, $08
    inc bc
    ld h, [hl]
    add l
    rst $20
    ld d, $08
    ld b, $66
    add h
    ld h, $44
    ld [$8301], sp
    jr z, jr_003_6635

    ld [$2883], sp
    ld d, d
    ld [$2883], sp
    ld h, d
    ld [$00a0], sp
    dec bc
    ld sp, $0b00
    ld hl, $0b00
    ld hl, $0b00
    ld de, $4610
    ld c, a
    ld e, b
    dec l
    ld c, [hl]
    dec l
    ld c, b
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    ld d, e
    nop
    db $f4
    ld bc, $6210
    nop
    ld [de], a
    ld h, d
    ld bc, $6211
    ld [bc], a
    inc d
    ld h, d
    inc bc
    ld d, $42
    dec b
    ld h, c
    ld b, d
    dec b
    ld h, e
    ld b, d
    dec b
    ld h, l
    ld b, d
    dec b
    ld h, a
    ld b, d
    dec bc
    ld b, c

jr_003_6635:
    ld b, d
    dec bc
    ld b, e
    ld b, d
    dec bc
    ld b, l
    ld b, d
    dec bc
    ld b, a
    ld b, d
    inc b
    ld d, d
    ld b, d
    inc b
    ld d, h
    ld b, d
    inc b
    ld d, [hl]
    ld b, d
    inc b
    rla
    inc hl
    inc d
    ld d, l
    nop
    inc hl
    inc d
    ld d, e
    nop
    inc hl
    inc d
    inc sp
    nop
    inc hl
    inc d
    dec [hl]
    nop
    inc hl
    inc d
    ld [hl], e
    nop
    inc hl
    inc d
    scf
    nop
    inc hl
    inc d
    ld [hl], l
    nop
    inc hl
    inc d
    inc de
    nop
    inc hl
    inc d
    ld d, c
    nop
    inc hl
    ld [bc], a
    ld [hl], c
    ld [bc], a
    inc hl
    ld [$0172], sp
    inc hl
    ld [$0277], sp
    add e
    jr nz, @+$35

    add c
    add e
    jr nz, jr_003_66d4

    add c
    add e
    jr nz, jr_003_66b6

    ld [bc], a
    add h
    ld h, $84
    ld bc, $8301
    jr nz, jr_003_66bf

    ld b, d
    add e
    jr nz, @+$37

    add c
    add e
    jr nz, jr_003_66eb

    add c
    add l
    add sp, $26
    inc b
    ret nc

    ld h, [hl]
    add e
    jr nz, jr_003_66d5

    ld b, d
    add e
    jr nz, jr_003_66f9

    ld b, d
    add e
    jr nz, @+$55

    ld b, d
    add e
    jr nz, jr_003_66fd

    ld [bc], a
    add e
    inc hl
    ld sp, $8341
    inc hl
    scf
    ld b, c
    add e

jr_003_66b6:
    inc hl
    ld d, a
    ld b, c
    add e
    inc hl
    ld d, c
    ld b, c
    add e
    inc hl

jr_003_66bf:
    ld d, a
    ld [$2083], sp
    inc sp
    ld b, d
    add e
    jr nz, jr_003_66fe

    ld [bc], a
    add l
    ldh [$ff73], a
    ld [bc], a
    db $d3
    ld h, [hl]
    and b
    nop
    ld [$0453], sp

jr_003_66d4:
    nop

jr_003_66d5:
    ld [hl], h
    rrca
    ld c, b
    ld c, a
    ld d, h
    jr nz, jr_003_672c

    ld d, l
    ld d, d
    ld d, e
    ld d, l
    ld c, c
    ld d, h
    nop

jr_003_66e3:
    rst $20
    inc bc
    ld l, $62
    nop
    ld de, $0162

jr_003_66eb:
    ld de, $0262
    ld de, $0362
    ld de, $0542
    db $dd
    ld b, d
    ld bc, $4284

jr_003_66f9:
    jp z, Jump_003_4269

    inc b

jr_003_66fd:
    ld h, l

jr_003_66fe:
    ld b, d
    jp z, Jump_003_42e2

jr_003_6702:
    ld b, e
    ld [hl], $42
    ld bc, $424b
    ld c, e
    or a
    ld b, d
    call nz, $42a4
    ld b, h
    inc hl
    ld b, d
    ld b, [hl]
    cp e
    ld b, d
    add d
    ld [hl], d
    inc hl
    inc d
    and a
    nop
    inc hl
    inc d
    ret


    nop
    inc hl
    rla
    xor $99
    inc hl
    inc d
    ld a, l
    nop
    inc hl
    ld d, $91
    nop
    inc hl
    add hl, bc

jr_003_672c:
    dec d
    nop
    inc hl
    dec d
    jr z, jr_003_6732

jr_003_6732:
    inc hl
    ld [bc], a
    inc a
    ld bc, $0223
    pop de
    ld bc, $0c23
    sbc b
    ld a, [bc]
    inc hl
    rrca
    xor [hl]
    nop
    inc hl
    ld [$0196], sp
    inc hl
    rrca
    ld [$8400], a
    ld h, $ee
    inc b
    ld bc, $2083
    reti


    ld c, b
    add e
    jr nz, jr_003_66e3

    add h
    add e
    jr nz, jr_003_6702

    ld b, d
    add l
    add sp, -$23
    ld bc, $67b0
    add l
    jp hl


    sbc b
    ld [bc], a
    or d
    ld h, a
    add l
    add sp, -$22
    ld bc, $67b5
    add l
    add sp, -$14
    ld [bc], a
    or a
    ld h, a
    add l
    add sp, -$24
    ld [bc], a
    cp c
    ld h, a
    add e
    ld hl, $029d
    add l
    rst $20
    ld sp, $bb04
    ld h, a
    add l
    add sp, $45
    ld [$67bd], sp
    add l
    add sp, $47
    inc b
    cp a
    ld h, a
    add l
    add sp, $18
    ld [$67c1], sp
    add l
    rst $20
    ld b, h
    ld bc, $67c3
    add l
    add sp, -$3a
    ld bc, $67c5
    add e
    ld [hl+], a
    sub h
    ld bc, $2383
    db $e3
    ld [bc], a
    add l
    add sp, -$69
    ld [bc], a
    rst $00
    ld h, a
    and b
    ld bc, $0001
    ld [$01dd], sp
    ld bc, $0101
    ld bc, $1001
    db $10
    ld de, $1111
    ld de, $1111
    db $10
    db $10
    ld de, $8011
    nop
    bit 4, a
    add b
    nop
    rst $08
    ld h, a
    add b
    nop
    db $d3
    ld h, a
    add b
    nop
    rst $10
    ld h, a
    ld b, b
    nop
    inc hl
    ld [de], a
    ld b, e
    ld b, l
    ld c, [hl]
    ld d, h
    ld d, d
    ld b, c
    ld c, h
    jr nz, jr_003_6831

    ld b, c
    ld d, h
    ld d, d
    ld c, c
    ld e, b
    nop
    jr nz, jr_003_67ef

    ld c, $62
    add b

jr_003_67ef:
    add hl, hl
    ld h, d
    add c
    add hl, hl
    ld h, d
    add d
    add hl, hl
    ld h, d
    add e
    add hl, hl
    ld b, d
    adc e
    dec d
    ld b, d
    add h
    ld d, d
    ld b, d
    add h
    sub l
    ld b, d
    add h
    ld h, $42
    adc e
    ld e, d
    ld b, d
    adc e
    ld h, c
    ld b, d
    adc e
    sub [hl]
    ld b, d
    add c
    db $76
    ld b, d
    ld bc, $4245
    ld b, c
    ld d, a
    ld b, d
    pop bc
    ld h, h
    ld b, d
    push bc
    adc c
    inc hl
    dec d
    ld c, c
    nop
    inc hl
    rla
    ld b, h
    ld h, [hl]
    inc hl
    rla
    ld [hl], h
    jr c, @+$25

    rla
    ld b, a
    add e
    inc hl
    ld [bc], a
    ld [hl], a
    ld [bc], a

jr_003_6831:
    inc hl
    inc c
    ld h, l
    inc bc
    dec h
    call z, Call_000_0a55
    ret nc

    ld l, b
    add e
    ld hl, $0476
    add l
    add sp, $37
    inc b
    jp nc, $8568

    add sp, $36
    inc b
    push de
    ld l, b
    add l
    add sp, $35
    inc b
    ret c

    ld l, b
    add l
    add sp, $34
    inc b
    db $db
    ld l, b
    add l
    add sp, $43
    ld [bc], a
    sbc $68
    add l
    add sp, $53
    ld [bc], a
    pop hl
    ld l, b
    add l
    add sp, $63
    ld [bc], a
    db $e4
    ld l, b
    add l
    add sp, -$7c
    ld bc, $68e7
    add l
    add sp, -$7b
    ld bc, $68ea
    add l
    add sp, -$79
    ld bc, $68ed
    add l
    add sp, $48
    ld [$68f0], sp
    add l
    add sp, $58
    ld [$68f3], sp
    add l
    add sp, $68
    ld [$68f6], sp
    add l
    add sp, $78
    ld [$68f9], sp
    add l
    add sp, $75
    ld bc, $68fc
    add l
    add sp, $76
    ld bc, $68ff
    add h
    ld h, $65
    ld bc, $85f2
    add sp, $66
    ld [bc], a
    ld [bc], a
    ld l, c
    add l
    add sp, $64
    ld [bc], a
    dec b
    ld l, c
    add l
    add sp, $54
    ld [bc], a
    ld [$8569], sp
    add sp, $45
    inc b
    dec bc
    ld l, c
    add l
    add sp, $56
    ld bc, $690e
    add l
    add sp, $56
    ld [bc], a
    ld de, $8669
    and $66
    ld bc, $14f2
    ld l, c
    and b
    ld bc, $0101
    add hl, bc
    add a
    ld bc, $8609
    ld bc, $8509
    ld bc, $8409
    ld bc, $4809
    ld bc, $5809
    ld bc, $6809
    ld bc, $3409
    ld bc, $3509
    ld bc, $3709
    ld bc, $4309
    ld bc, $5309
    ld bc, $6309
    ld bc, $7309
    ld bc, $4509
    ld bc, $4609
    ld bc, $6409
    ld bc, $6709
    ld bc, $5709
    ld bc, $7509
    ld bc, $7609
    ld bc, $5409
    add b
    nop
    jr jr_003_6981

    stop
    ld [bc], a
    nop
    ld d, a
    ld b, c
    ld d, d
    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld b, a
    ld l, $20
    ld d, a
    ld b, c
    ld d, d
    ld d, b
    jr nz, jr_003_697f

    ld c, a
    jr nz, jr_003_697a

    nop
    ld b, l
    ld d, [hl]
    ld b, l
    ld c, h
    jr nz, jr_003_6966

    jr nc, jr_003_6965

    nop
    inc bc
    nop
    ld d, h
    ld c, a
    jr nz, jr_003_6993

    ld d, e
    ld b, l
    jr nz, jr_003_6983

    jr nz, jr_003_6994

    ld c, a
    ld b, h
    inc l
    jr nz, jr_003_6999

    ld d, l
    ld d, e
    ld c, b
    nop
    jr nz, jr_003_6990

    ld b, a
    ld b, c
    ld c, c
    ld c, [hl]
    ld d, e
    ld d, h
    jr nz, jr_003_69a0

    ld d, h
    jr nz, jr_003_6980

    jr nz, jr_003_69ac

    ld d, d
    ld b, l
    ld d, e
    nop
    ld d, e
    jr nz, @+$44

    ld l, $00

jr_003_6965:
    ld [bc], a

jr_003_6966:
    nop
    ld d, e
    ld c, b
    ld c, a
    ld c, a
    ld d, h
    ld c, l
    ld b, l
    ld [hl-], a
    ld d, e
    jr nz, jr_003_69b7

    ld e, b
    ld d, b
    ld c, h
    ld c, a
    ld b, h
    ld b, l
    jr nz, jr_003_697a

jr_003_697a:
    ld c, c
    ld b, [hl]
    jr nz, jr_003_69d2

    ld c, a

jr_003_697f:
    ld d, l

jr_003_6980:
    ld b, e

jr_003_6981:
    ld c, b
    ld b, l

jr_003_6983:
    ld b, h
    ld l, $00
    inc bc
    nop
    ld d, h
    ld c, a
    jr nz, @+$55

    ld b, c
    ld b, [hl]
    ld b, l
    ld c, h

jr_003_6990:
    ld e, c
    jr nz, jr_003_69e5

jr_003_6993:
    ld b, l

jr_003_6994:
    ld b, c
    ld b, h
    jr nz, jr_003_69db

    ld c, h

jr_003_6999:
    ld d, l
    nop
    ld b, l
    ld d, e
    inc l
    jr nz, jr_003_69f0

jr_003_69a0:
    ld d, d
    ld b, l
    ld d, e
    ld d, e
    jr nz, jr_003_69f9

    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, @+$56

jr_003_69ac:
    ld c, a
    nop
    jr nz, @+$52

    ld b, c
    ld d, l
    ld d, e
    ld b, l
    jr nz, @+$56

    ld c, b

jr_003_69b7:
    ld b, l
    jr nz, jr_003_6a01

    ld b, c
    ld c, l
    ld b, l
    ld l, $00
    inc bc
    nop
    ld d, b
    ld c, a
    ld b, h
    ld d, e
    jr nz, jr_003_6a13

    ld c, c
    ld c, e
    ld b, l
    jr nz, jr_003_6a20

    ld c, b
    ld c, c
    ld d, e
    jr nz, jr_003_6a14

    ld c, a

jr_003_69d2:
    ld c, [hl]
    nop
    ld d, h
    ld b, c
    ld c, c
    ld c, [hl]
    jr nz, jr_003_6a23

    ld d, h

jr_003_69db:
    ld b, l
    ld c, l
    ld d, e
    jr nz, jr_003_6a06

    jr nz, jr_003_6a25

    ld c, h
    ld d, l
    ld b, l

jr_003_69e5:
    ld d, e
    nop
    ld l, $00
    inc bc
    nop
    ld d, h
    ld c, a
    ld d, l
    ld b, e
    ld c, b

jr_003_69f0:
    jr nz, jr_003_6a38

    ld c, h
    ld c, a
    ld c, a
    ld d, d
    jr nz, jr_003_6a3a

    ld d, l

jr_003_69f9:
    ld d, h
    ld d, h
    ld c, a
    ld c, [hl]
    nop
    ld d, e
    jr nz, jr_003_6a55

jr_003_6a01:
    ld c, a
    jr nz, jr_003_6a53

    ld d, b
    ld b, l

jr_003_6a06:
    ld c, [hl]
    jr nz, jr_003_6a2f

    jr nz, @+$45

    ld c, h
    ld c, a
    ld d, e
    ld b, l
    jr nz, jr_003_6a11

jr_003_6a11:
    ld d, e
    ld b, l

jr_003_6a13:
    ld b, e

jr_003_6a14:
    ld d, d
    ld b, l
    ld d, h
    jr nz, jr_003_6a5d

    ld c, a
    ld c, a
    ld d, d
    ld d, e
    ld l, $00
    ld [bc], a

jr_003_6a20:
    nop
    ld d, h
    ld c, a

jr_003_6a23:
    jr nz, @+$55

jr_003_6a25:
    ld b, l
    ld b, l
    jr nz, jr_003_6a82

    ld c, a
    ld d, l
    ld d, d
    jr nz, jr_003_6a7b

    ld b, c

jr_003_6a2f:
    ld d, b
    inc l
    jr nz, jr_003_6a83

    nop
    ld d, d
    ld b, l
    ld d, e
    ld d, e

jr_003_6a38:
    jr nz, jr_003_6a8d

jr_003_6a3a:
    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    ld l, $00
    ld [bc], a
    nop
    ld b, e
    ld c, b
    ld b, l
    ld b, e
    ld c, e
    jr nz, jr_003_6aa3

    ld c, a
    ld d, l
    ld d, d
    jr nz, jr_003_6a9c

    ld b, c
    ld d, b
    ld l, $20

jr_003_6a53:
    ld c, [hl]
    ld c, a

jr_003_6a55:
    nop
    ld d, a
    jr nz, jr_003_6aa2

    ld d, h
    jr nz, jr_003_6aaf

    ld c, b

jr_003_6a5d:
    ld c, a
    ld d, a
    ld d, e
    jr nz, jr_003_6aaf

    ld c, a
    ld d, d
    ld b, l
    ld l, $20
    nop
    ld [bc], a
    nop
    ld c, c
    ld d, e
    ld c, b
    ld c, a
    ld c, a
    ld d, h
    ld d, l
    jr nz, jr_003_6ac6

    ld d, b
    ld c, c
    ld c, [hl]
    ld d, e
    jr nz, @+$28

    jr nz, jr_003_6ac1

jr_003_6a7b:
    ld c, c
    nop
    ld d, d
    ld b, l
    ld d, e
    jr nz, jr_003_6ad4

jr_003_6a82:
    ld b, c

jr_003_6a83:
    ld c, [hl]
    ld b, h
    ld c, a
    ld c, l
    ld c, h
    ld e, c
    ld l, $00
    ld [bc], a
    nop

jr_003_6a8d:
    ld b, e
    ld c, a
    ld c, c
    ld c, [hl]
    ld d, e
    jr nz, jr_003_6ad5

    ld b, h
    ld b, h
    jr nz, jr_003_6aec

    ld c, a
    jr nz, @+$5b

    ld c, a

jr_003_6a9c:
    ld d, l
    ld d, d
    jr nz, jr_003_6aa0

jr_003_6aa0:
    ld d, e
    ld b, e

jr_003_6aa2:
    ld c, a

jr_003_6aa3:
    ld d, d
    ld b, l
    ld l, $00
    ld [bc], a
    nop
    ld d, a
    ld b, c
    ld d, d
    ld c, [hl]
    ld c, c
    ld c, [hl]

jr_003_6aaf:
    ld b, a
    ld l, $2e
    ld l, $57
    ld b, c
    ld d, d
    ld d, b
    jr nz, @+$56

    ld c, a
    jr nz, jr_003_6abc

jr_003_6abc:
    ld c, h
    ld b, l
    ld d, [hl]
    ld b, l
    ld c, h

jr_003_6ac1:
    jr nz, jr_003_6af5

    jr nc, jr_003_6af3

    nop

jr_003_6ac6:
    ld [bc], a
    nop
    ld b, l
    ld b, c
    ld b, e
    ld c, b
    jr nz, jr_003_6af2

    ld sp, $3030
    jr nc, jr_003_6af3

    ld b, l

jr_003_6ad4:
    ld b, c

jr_003_6ad5:
    ld d, d
    ld c, [hl]
    ld d, e
    jr nz, @+$5b

    nop
    ld c, a
    ld d, l
    jr nz, jr_003_6b20

    jr nz, jr_003_6b2d

    ld c, c
    ld b, [hl]
    ld b, l
    ld l, $00
    inc bc
    nop
    ld b, a
    ld d, d
    ld b, l
    ld b, c

jr_003_6aec:
    ld d, h
    inc l
    jr nz, jr_003_6b4a

    ld c, a
    ld c, [hl]

jr_003_6af2:
    ld b, l

jr_003_6af3:
    jr nz, jr_003_6b26

jr_003_6af5:
    jr nz, @+$45

    ld c, a
    ld c, l
    ld d, b
    nop
    ld c, h
    ld b, l
    ld d, h
    ld b, l
    ld b, h
    ld l, $20
    ld b, a
    ld b, l
    ld d, h
    jr nz, jr_003_6b48

    jr nz, @+$4e

    ld c, c
    ld b, [hl]
    ld b, l
    jr nz, jr_003_6b0e

jr_003_6b0e:
    ld c, c
    ld c, [hl]
    jr nz, jr_003_6b66

    ld c, b
    ld b, l
    jr nz, @+$50

    ld b, l
    ld e, b
    ld d, h
    jr nz, jr_003_6b6b

    ld c, a
    ld b, h
    ld l, $00
    ld [bc], a

jr_003_6b20:
    nop
    ld c, c
    ld d, e
    ld c, b
    ld c, a
    ld c, a

jr_003_6b26:
    ld d, h
    ld d, l
    ld [hl-], a
    jr nz, jr_003_6b78

    ld c, a
    ld d, [hl]

jr_003_6b2d:
    ld b, l
    ld d, e
    jr nz, jr_003_6b57

    nop
    jr nz, jr_003_6b87

    ld c, b
    ld c, a
    ld c, a
    ld d, h
    ld d, e
    ld l, $00
    ld [bc], a
    nop
    ld b, d
    ld b, c
    ld c, [hl]
    ld b, h
    ld b, c
    ld c, c
    ld b, h
    ld d, e
    jr nz, jr_003_6b9e

    ld c, c

jr_003_6b48:
    ld c, h
    ld c, h

jr_003_6b4a:
    jr nz, jr_003_6b94

    ld b, l
    ld b, c
    ld c, h
    nop
    jr nz, jr_003_6bab

    ld c, a
    ld d, l
    ld l, $00
    ld [bc], a

jr_003_6b57:
    nop
    ld d, e
    ld c, a
    ld c, l
    ld b, l
    jr nz, jr_003_6bb1

    ld b, l
    ld b, e
    ld d, d
    ld b, l
    ld d, h
    jr nz, @+$46

    ld c, a

jr_003_6b66:
    ld c, a
    ld d, d
    ld d, e
    jr nz, jr_003_6b6b

jr_003_6b6b:
    ld c, a
    ld d, b
    ld b, l
    ld c, [hl]
    jr nz, jr_003_6bc8

    ld c, c
    ld d, h
    ld c, b
    jr nz, jr_003_6bb7

    jr nz, jr_003_6bc3

jr_003_6b78:
    ld b, l
    ld e, c
    ld l, $00
    ld [bc], a
    nop
    ld d, h
    ld d, l
    ld d, d
    ld c, e
    ld b, l
    ld e, c
    ld a, [hl-]
    jr nz, @+$59

jr_003_6b87:
    ld b, l
    ld b, c
    ld c, e
    inc l
    jr nz, jr_003_6bcf

    ld d, l
    ld d, h
    jr nz, jr_003_6b91

jr_003_6b91:
    ld d, e
    ld b, l
    ld b, l

jr_003_6b94:
    ld d, e
    jr nz, jr_003_6bee

    ld b, l
    ld c, h
    ld c, h
    ld l, $00
    ld [bc], a
    nop

jr_003_6b9e:
    ld d, e
    ld c, a
    ld c, l
    ld b, l
    jr nz, @+$59

    ld b, c
    ld c, h
    ld c, h
    ld d, e
    jr nz, jr_003_6beb

    ld d, d

jr_003_6bab:
    ld b, l
    jr nz, jr_003_6bf0

    ld d, l
    ld c, h
    nop

jr_003_6bb1:
    ld c, h
    ld b, l
    ld d, h
    dec l
    ld d, b
    ld d, d

jr_003_6bb7:
    ld c, a
    ld c, a
    ld b, [hl]
    jr nz, jr_003_6c03

    ld c, h
    ld b, c
    ld d, e
    ld d, e
    ld l, $00
    ld [bc], a

jr_003_6bc3:
    nop
    ld b, [hl]
    ld d, d
    ld b, l
    ld b, l

jr_003_6bc8:
    ld e, d
    ld b, l
    jr nz, jr_003_6c1f

    ld d, h
    ld c, a
    ld d, b

jr_003_6bcf:
    ld d, e
    jr nz, jr_003_6c16

    ld d, d
    ld c, a
    ld c, [hl]
    ld b, l
    nop
    ld d, e
    jr nz, jr_003_6c1d

    ld c, a
    ld c, h
    ld b, h
    ld l, $00
    ld [bc], a
    nop
    ld b, c
    ld d, d
    ld c, l
    ld c, a
    ld d, d
    jr nz, jr_003_6c38

    ld c, a
    ld d, a
    ld b, l

jr_003_6beb:
    ld d, d
    dec l
    ld d, l

jr_003_6bee:
    ld d, b
    ld d, e

jr_003_6bf0:
    jr nz, jr_003_6c39

    ld c, c
    nop
    ld d, [hl]
    ld b, l
    jr nz, jr_003_6c51

    ld c, a
    ld d, l
    jr nz, jr_003_6c49

    ld c, a
    ld d, d
    ld b, l
    jr nz, jr_003_6c49

    ld c, c
    ld d, h

jr_003_6c03:
    ld d, e
    ld l, $00
    inc bc
    nop
    ld e, c
    ld c, a
    ld d, l
    jr nz, @+$43

    ld d, d
    ld b, l
    jr nz, jr_003_6c5f

    ld c, a
    ld d, a
    jr nz, jr_003_6c68

    ld d, h

jr_003_6c16:
    ld d, d
    ld c, a
    ld c, [hl]
    ld b, a
    nop
    jr nz, jr_003_6c62

jr_003_6c1d:
    ld c, [hl]
    ld c, a

jr_003_6c1f:
    ld d, l
    ld b, a
    ld c, b
    jr nz, jr_003_6c78

    ld c, a
    jr nz, @+$44

    ld b, c
    ld d, e
    ld c, b
    jr nz, jr_003_6c70

    ld c, a
    nop
    ld d, a
    ld c, [hl]
    jr nz, jr_003_6c76

    ld c, a
    ld c, a
    ld d, d
    ld d, e
    ld l, $00

jr_003_6c38:
    dec b

jr_003_6c39:
    nop
    ld b, a
    ld d, d
    ld b, l
    ld c, l
    ld c, h
    ld c, c
    ld c, [hl]
    jr nz, jr_003_6c6b

    ld d, e
    ld c, l
    ld c, c
    ld c, h
    ld c, a
    ld c, c

jr_003_6c49:
    ld b, h
    ld d, l
    ld d, e
    nop
    jr nz, jr_003_6c98

    ld c, l
    ld d, b

jr_003_6c51:
    ld b, c
    ld b, e
    ld d, h
    ld d, l
    ld d, e
    add hl, hl
    ld a, [hl-]
    jr nz, jr_003_6c9b

    jr nz, jr_003_6caa

    ld c, a
    ld d, h
    dec l

jr_003_6c5f:
    nop
    ld d, e
    ld c, a

jr_003_6c62:
    dec l
    ld d, e
    ld c, l
    ld b, c
    ld d, d
    ld d, h

jr_003_6c68:
    jr nz, jr_003_6cac

    ld c, a

jr_003_6c6b:
    ld c, l
    ld b, d
    jr nz, jr_003_6cc3

    ld c, b

jr_003_6c70:
    ld b, c
    ld d, h
    nop
    jr nz, jr_003_6cba

    ld e, b

jr_003_6c76:
    ld d, b
    ld c, h

jr_003_6c78:
    ld c, a
    ld b, h
    ld b, l
    ld d, e
    jr nz, jr_003_6ccd

    ld c, [hl]
    jr nz, jr_003_6cc4

    ld c, a
    ld c, [hl]
    ld d, h
    ld b, c
    nop
    ld b, e
    ld d, h
    ld l, $00
    inc bc
    nop
    ld d, a
    ld c, c
    ld d, h
    ld c, b
    jr nz, @+$45

    ld b, c
    ld c, l
    ld c, a
    inc l
    jr nz, @+$55

jr_003_6c98:
    ld c, l
    ld c, c
    ld c, h

jr_003_6c9b:
    ld c, a
    ld c, c
    ld b, h
    nop
    ld d, e
    jr nz, jr_003_6cf9

    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_003_6cf0

    ld b, a
    ld c, [hl]
    ld c, a

jr_003_6caa:
    ld d, d
    ld b, l

jr_003_6cac:
    jr nz, jr_003_6d07

    ld c, a
    ld d, l
    jr nz, jr_003_6cb2

jr_003_6cb2:
    ld b, [hl]
    ld c, a
    ld d, d
    jr nz, @+$43

    ld d, a
    ld c, b
    ld c, c

jr_003_6cba:
    ld c, h
    ld b, l
    ld l, $00
    inc b
    nop
    ld d, b
    ld d, l
    ld c, h

jr_003_6cc3:
    ld d, e

jr_003_6cc4:
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_003_6d0c

    ld c, c
    ld d, d
    ld b, e
    ld c, h

jr_003_6ccd:
    ld b, l
    ld d, e
    jr nz, jr_003_6d12

    ld d, d
    nop
    ld b, l
    jr nz, jr_003_6d2a

    ld b, l
    ld c, h
    ld b, l
    ld d, b
    ld c, a
    ld d, d
    ld d, h
    ld d, e
    ld l, $20
    ld d, h
    ld c, b
    ld b, l
    ld e, c
    jr nz, jr_003_6ce6

jr_003_6ce6:
    ld c, l
    ld c, a
    ld d, [hl]
    ld b, l
    jr nz, jr_003_6d45

    ld c, a
    ld d, l
    jr nz, jr_003_6d44

jr_003_6cf0:
    ld c, a
    jr nz, @+$51

    ld d, h
    ld c, b
    ld b, l
    ld d, d
    jr nz, jr_003_6cf9

jr_003_6cf9:
    ld d, b
    ld c, h
    ld b, c
    ld b, e
    ld b, l
    ld d, e
    ld l, $00
    inc b
    nop
    ld d, a
    ld b, c
    ld c, h
    ld c, h

jr_003_6d07:
    ld e, c
    jr nz, jr_003_6d32

    ld b, h
    ld d, d

jr_003_6d0c:
    ld c, a
    ld c, [hl]
    ld d, l
    ld d, e
    jr nz, jr_003_6d5f

jr_003_6d12:
    ld c, c
    ld d, e
    ld b, h
    nop
    ld c, c
    ld d, d
    ld b, l
    ld b, e
    ld d, h
    ld d, l
    ld d, e
    add hl, hl
    ld a, [hl-]
    jr nz, jr_003_6d62

    jr nz, jr_003_6d7a

    ld b, c
    ld c, h
    ld c, h
    ld c, b
    ld d, l
    nop
    ld b, a

jr_003_6d2a:
    ld b, a
    ld b, l
    ld d, d
    jr nz, @+$56

    ld c, b
    ld b, c
    ld d, h

jr_003_6d32:
    jr nz, jr_003_6d88

    ld b, c
    ld c, e
    ld b, l
    ld d, e
    jr nz, jr_003_6d7b

    ld c, h
    nop
    ld c, a
    ld d, h
    jr nz, jr_003_6d8f

    ld b, [hl]
    jr nz, jr_003_6d87

    ld b, c

jr_003_6d44:
    ld c, l

jr_003_6d45:
    ld b, c
    ld b, a
    ld b, l
    ld l, $00
    ld [bc], a
    nop
    ld d, h
    ld c, c
    ld c, l
    ld b, l
    jr nz, @+$51

    ld d, l
    ld d, h
    jr nz, jr_003_6da2

    ld c, a
    ld d, e
    ld b, l
    ld d, e
    jr nz, jr_003_6d9d

    ld c, h
    ld c, h
    nop

jr_003_6d5f:
    jr nz, jr_003_6db1

    ld c, a

jr_003_6d62:
    ld d, a
    ld b, l
    ld d, d
    dec l
    ld d, l
    ld d, b
    ld d, e
    ld l, $00
    ld [bc], a
    nop
    ld d, h
    ld c, a
    ld d, l
    ld b, e
    ld c, b
    jr nz, @+$51

    ld d, d
    jr nz, jr_003_6dca

    ld c, b
    ld c, a
    ld c, a

jr_003_6d7a:
    ld d, h

jr_003_6d7b:
    jr nz, jr_003_6dbf

    ld c, h
    ld b, c
    nop
    ld b, e
    ld c, e
    jr nz, @+$59

    ld b, c
    ld c, h
    ld c, h

jr_003_6d87:
    ld d, e

jr_003_6d88:
    ld l, $00
    inc bc
    nop
    ld d, e
    ld c, b
    ld c, c

jr_003_6d8f:
    ld b, l
    ld c, h
    ld b, h
    ld d, e
    jr nz, @+$52

    ld d, d
    ld c, a
    ld d, h
    ld b, l
    ld b, e
    ld d, h
    jr nz, jr_003_6df6

jr_003_6d9d:
    ld c, a
    nop
    ld d, l
    jr nz, @+$48

jr_003_6da2:
    ld d, d
    ld c, a
    ld c, l
    jr nz, @+$55

    ld c, b
    ld c, a
    ld d, h
    ld d, e
    ld l, $2e
    ld l, $42
    ld d, d
    ld c, c

jr_003_6db1:
    nop
    ld b, l
    ld b, [hl]
    ld c, h
    ld e, c
    ld l, $00
    ld [bc], a
    nop
    ld b, c
    ld d, l
    ld d, h
    ld c, a
    dec l

jr_003_6dbf:
    ld c, l
    ld b, c
    ld b, a
    jr nz, jr_003_6e11

    ld b, c
    ld c, e
    ld b, l
    ld d, e
    jr nz, jr_003_6e23

jr_003_6dca:
    ld c, a
    ld d, l
    nop
    jr nz, jr_003_6e22

    ld c, b
    ld c, a
    ld c, a
    ld d, h
    jr nz, @+$48

    ld b, c
    ld d, e
    ld d, h
    ld b, l
    ld d, d
    ld l, $00
    ld [bc], a
    nop
    ld d, d
    ld c, a
    ld d, [hl]
    ld b, l
    ld d, d
    ld a, [hl-]
    jr nz, jr_003_6e2a

    ld c, a
    jr nz, @+$50

    ld c, a
    ld d, h
    jr nz, jr_003_6e41

    ld d, l
    ld d, d
    nop
    ld c, [hl]
    jr nz, jr_003_6e47

    ld b, c
    ld c, c
    ld c, h

jr_003_6df6:
    jr nz, jr_003_6e47

    ld c, [hl]
    jr nz, jr_003_6e4f

    ld c, b
    ld b, l
    ld c, l
    ld l, $00
    ld [bc], a
    nop
    ld d, e
    ld b, e
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld b, l
    ld d, d
    ld a, [hl-]
    jr nz, jr_003_6e55

    ld d, h
    ld d, e
    jr nz, jr_003_6e5e

    ld c, a

jr_003_6e11:
    jr nz, @+$55

    ld c, c
    nop
    ld d, h
    ld d, h
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_003_6e60

    ld d, l
    ld b, e
    ld c, e
    ld l, $00
    ld [bc], a

jr_003_6e22:
    nop

jr_003_6e23:
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_003_6e6c

jr_003_6e2a:
    ld d, l
    ld d, h
    ld d, h
    ld c, a
    ld c, [hl]
    ld d, e
    jr nz, @+$51

    ld d, b
    ld b, l
    ld c, [hl]
    nop
    jr nz, jr_003_6e7a

    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_003_6e95

    ld b, c
    ld c, h
    ld c, h

jr_003_6e41:
    ld d, e
    ld l, $00
    dec b
    nop
    ld b, d

jr_003_6e47:
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, e
    ld b, l
    ld d, d
    jr nz, jr_003_6e77

jr_003_6e4f:
    ld d, e
    ld c, l
    ld c, c
    ld c, h
    ld c, a
    ld c, c

jr_003_6e55:
    ld b, h
    ld d, l
    ld d, e
    nop
    jr nz, @+$54

    ld b, l
    ld b, d
    ld c, a

jr_003_6e5e:
    ld d, l
    ld c, [hl]

jr_003_6e60:
    ld b, h
    ld d, l
    ld d, e
    add hl, hl
    ld a, [hl-]
    jr nz, jr_003_6eb0

    ld d, h
    jr nz, jr_003_6eb3

    ld d, e
    nop

jr_003_6e6c:
    jr nz, jr_003_6ec1

    ld d, h
    ld d, d
    ld c, a
    ld c, [hl]
    ld b, a
    jr nz, jr_003_6e9b

    jr nz, jr_003_6ebd

jr_003_6e77:
    ld b, c
    ld d, e
    ld d, h

jr_003_6e7a:
    jr nz, jr_003_6ed3

    ld c, c
    ld d, h
    nop
    ld c, b
    jr nz, jr_003_6ed0

    ld c, a
    jr nz, jr_003_6ed8

    ld b, l
    ld c, [hl]
    ld d, e
    ld b, l
    jr nz, jr_003_6eda

    ld b, [hl]
    jr nz, jr_003_6ed6

    ld d, l
    ld c, l
    ld c, a
    nop
    ld d, d
    ld l, $00

jr_003_6e95:
    ld [bc], a
    nop
    ld d, e
    ld d, b
    ld b, l
    ld b, l

jr_003_6e9b:
    ld b, h
    ld d, l
    ld d, b
    ld d, e
    jr nz, jr_003_6eee

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_003_6eff

    ld c, a
    ld d, l
    jr nz, jr_003_6eaa

jr_003_6eaa:
    ld b, a
    ld c, a
    jr nz, @+$48

    ld b, c
    ld d, e

jr_003_6eb0:
    ld d, h
    ld b, l
    ld d, d

jr_003_6eb3:
    ld l, $00
    ld [bc], a
    nop
    ld e, c
    ld c, a
    ld d, l
    ld d, d
    jr nz, jr_003_6f10

jr_003_6ebd:
    ld c, b
    ld c, a
    ld d, h
    ld d, e

jr_003_6ec1:
    jr nz, jr_003_6f06

    ld b, c
    ld c, [hl]
    jr nz, jr_003_6f15

    ld c, a
    ld d, a
    nop
    jr nz, @+$44

    ld d, d
    ld b, l
    ld b, c
    ld c, e

jr_003_6ed0:
    jr nz, jr_003_6f19

    ld c, h

jr_003_6ed3:
    ld b, c
    ld d, e
    ld d, e

jr_003_6ed6:
    ld l, $00

jr_003_6ed8:
    ld b, $00

jr_003_6eda:
    ld d, a
    ld b, c
    ld d, d
    ld d, b
    ld d, e
    jr nz, jr_003_6f22

    ld d, d
    ld b, l
    jr nz, @+$4a

    ld c, c
    ld b, h
    ld b, h
    ld b, l
    ld c, [hl]
    jr nz, jr_003_6f3b

    nop
    ld c, [hl]

jr_003_6eee:
    jr nz, jr_003_6f3d

    ld c, a
    ld d, e
    ld d, h
    jr nz, jr_003_6f49

    ld b, l
    ld d, e
    ld d, h
    jr nz, jr_003_6f46

    ld b, l
    ld d, [hl]
    ld b, l
    ld c, h
    ld d, e

jr_003_6eff:
    nop
    ld l, $20
    ld d, h
    ld c, a
    jr nz, jr_003_6f4c

jr_003_6f06:
    ld c, c
    ld c, [hl]
    ld b, h
    jr nz, jr_003_6f5f

    ld c, b
    ld b, l
    jr nz, @+$33

    ld d, e

jr_003_6f10:
    ld d, h
    inc l
    nop
    jr nz, jr_003_6f68

jr_003_6f15:
    ld c, b
    ld c, a
    ld c, a
    ld d, h

jr_003_6f19:
    jr nz, jr_003_6f6f

    ld c, b
    ld b, l
    jr nz, jr_003_6f76

    ld b, c
    ld c, h
    ld c, h

jr_003_6f22:
    jr nz, jr_003_6f73

    ld d, b
    nop
    ld d, b
    ld c, a
    ld d, e
    ld c, c
    ld d, h
    ld b, l
    jr nz, jr_003_6f82

    ld c, b
    ld b, l
    jr nz, @+$47

    ld e, b
    ld c, c
    ld d, h
    jr nz, jr_003_6f86

    ld c, [hl]
    nop
    jr nz, jr_003_6f87

jr_003_6f3b:
    ld b, l
    ld d, [hl]

jr_003_6f3d:
    ld b, l
    ld c, h
    jr nz, jr_003_6f72

    ld l, $00
    inc bc
    nop
    ld d, e

jr_003_6f46:
    ld c, h
    ld c, c
    ld d, b

jr_003_6f49:
    jr nz, jr_003_6f8d

    ld e, c

jr_003_6f4c:
    jr nz, jr_003_6fa2

    ld b, l
    ld c, h
    ld b, l
    ld d, b
    ld c, a
    ld d, d
    ld d, h
    ld d, e
    jr nz, jr_003_6f58

jr_003_6f58:
    ld d, a
    ld c, b
    ld b, l
    ld c, [hl]
    jr nz, jr_003_6fb2

    ld c, b

jr_003_6f5f:
    ld b, l
    ld e, c
    jr nz, jr_003_6fa4

    ld d, d
    ld b, l
    jr nz, @+$55

    ld c, l

jr_003_6f68:
    ld b, c
    ld c, h
    nop
    ld c, h
    ld l, $00
    inc b

jr_003_6f6f:
    nop
    ld b, a
    ld d, l

jr_003_6f72:
    ld b, c

jr_003_6f73:
    ld d, d
    ld b, h
    ld a, [hl-]

jr_003_6f76:
    jr nz, jr_003_6fcf

    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_003_6fc1

    ld b, l
    ld b, [hl]
    ld b, l
    ld c, [hl]
    ld b, h

jr_003_6f82:
    nop
    jr nz, jr_003_6fce

    ld d, h

jr_003_6f86:
    ld d, e

jr_003_6f87:
    jr nz, jr_003_6fd9

    ld c, a
    ld d, e
    ld c, c
    ld d, h

jr_003_6f8d:
    ld c, c
    ld c, a
    ld c, [hl]
    jr nz, @+$56

    ld c, a
    jr nz, @+$56

    ld c, b
    nop
    ld b, l
    jr nz, jr_003_6fdf

    ld c, [hl]
    ld b, h
    ld l, $00
    ld [bc], a
    nop
    ld d, e
    ld c, a

jr_003_6fa2:
    ld c, l
    ld b, l

jr_003_6fa4:
    jr nz, jr_003_6fe8

    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_003_6ff0

    ld c, a
    ld c, a
    ld d, d
    ld d, e
    jr nz, jr_003_6ff3

jr_003_6fb2:
    nop
    ld d, d
    ld b, l
    jr nz, jr_003_7006

    ld c, [hl]
    ld b, l
    jr nz, jr_003_7012

    ld b, c
    ld e, c
    jr nz, jr_003_700e

    ld c, [hl]
    ld c, h

jr_003_6fc1:
    ld e, c
    ld l, $00
    inc bc
    nop
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_003_7011

    ld c, a

jr_003_6fce:
    ld c, a

jr_003_6fcf:
    ld d, d
    ld d, e
    jr nz, jr_003_7026

    ld c, a
    ld c, l
    ld b, l
    ld d, h
    ld c, c
    nop

jr_003_6fd9:
    ld c, l
    ld b, l
    ld d, e
    jr nz, jr_003_7031

    ld b, l

jr_003_6fdf:
    ld c, [hl]
    ld b, h
    jr nz, jr_003_703c

    ld c, a
    ld d, l
    jr nz, jr_003_703b

    ld c, a

jr_003_6fe8:
    jr nz, jr_003_703d

    ld d, h
    nop
    ld d, d
    ld b, c
    ld c, [hl]
    ld b, a

jr_003_6ff0:
    ld b, l
    jr nz, jr_003_7043

jr_003_6ff3:
    ld c, h
    ld b, c
    ld b, e
    ld b, l
    ld d, e
    ld l, $00
    inc bc
    nop
    ld d, [hl]
    ld b, c
    ld c, l
    ld d, b
    ld c, c
    ld d, d
    ld b, l
    ld a, [hl-]
    jr nz, jr_003_7051

jr_003_7006:
    ld b, l
    ld b, l
    ld d, b
    jr nz, jr_003_704c

    ld d, a
    ld b, c
    ld e, c

jr_003_700e:
    nop
    jr nz, jr_003_7057

jr_003_7011:
    ld d, d

jr_003_7012:
    ld c, a
    ld c, l
    jr nz, @+$56

    ld c, b
    ld c, c
    ld d, e
    jr nz, jr_003_7061

    ld b, c
    ld b, e
    ld b, l
    jr nz, jr_003_7073

    ld d, l
    nop
    ld b, e
    ld c, e
    ld b, l
    ld d, d

jr_003_7026:
    ld l, $00
    ld [bc], a
    nop
    ld b, d
    ld c, h
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_003_707c

jr_003_7031:
    ld b, l
    ld e, c
    ld d, e
    jr nz, jr_003_7079

    ld b, c
    ld c, [hl]
    jr nz, jr_003_7089

    ld d, b

jr_003_703b:
    ld b, l

jr_003_703c:
    nop

jr_003_703d:
    ld c, [hl]
    jr nz, jr_003_7082

    ld c, h
    ld b, c
    ld b, e

jr_003_7043:
    ld c, e
    jr nz, jr_003_708a

    ld c, a
    ld c, a
    ld d, d
    ld d, e
    ld l, $00

jr_003_704c:
    inc bc
    nop
    ld b, d
    ld d, l
    ld d, h

jr_003_7051:
    ld d, h
    ld c, a
    ld c, [hl]
    ld d, e
    jr nz, jr_003_709a

jr_003_7057:
    ld b, c
    ld c, [hl]
    jr nz, jr_003_70aa

    ld d, b
    ld b, l
    ld c, [hl]
    jr nz, @+$43

    nop

jr_003_7061:
    ld c, [hl]
    ld b, h
    jr nz, jr_003_70a8

    ld c, h
    ld c, a
    ld d, e
    ld b, l
    jr nz, jr_003_70b4

    ld c, [hl]
    ld d, [hl]
    ld c, c
    ld d, e
    ld c, c
    ld b, d
    ld c, h
    ld b, l

jr_003_7073:
    nop
    jr nz, jr_003_70ba

    ld c, a
    ld c, a
    ld d, d

jr_003_7079:
    ld d, e
    ld l, $00

jr_003_707c:
    inc bc
    nop
    ld b, e
    ld d, d
    ld c, a
    ld d, e

jr_003_7082:
    ld d, e
    ld b, l
    ld e, c
    ld b, l
    ld a, [hl-]
    jr nz, jr_003_70d2

jr_003_7089:
    ld d, h

jr_003_708a:
    ld d, e
    jr nz, jr_003_70e0

    ld c, b
    ld b, c
    ld d, d
    nop
    ld d, b
    jr nz, @+$4a

    ld b, l
    ld b, c
    ld d, d
    ld c, c
    ld c, [hl]
    ld b, a

jr_003_709a:
    jr nz, jr_003_70e9

    ld b, c
    ld c, e
    ld b, l
    ld d, e
    jr nz, jr_003_70f7

    ld d, b
    nop
    jr nz, @+$48

    ld c, a
    ld d, d

jr_003_70a8:
    jr nz, jr_003_70f3

jr_003_70aa:
    ld d, h
    ld d, e
    jr nz, jr_003_70f3

    ld e, c
    ld b, l
    ld d, e
    ld c, c
    ld b, a
    ld c, b

jr_003_70b4:
    ld d, h
    ld l, $00
    ld b, $00
    ld b, c

jr_003_70ba:
    ld c, [hl]
    jr nz, jr_003_70fe

    ld c, h
    ld d, h
    ld b, l
    ld d, d
    ld c, [hl]
    ld b, c
    ld d, h
    ld b, l
    jr nz, jr_003_7119

    ld c, a
    ld d, l
    ld d, h
    ld b, l
    nop
    jr nz, jr_003_7114

    ld c, a
    ld d, d
    jr nz, jr_003_7119

jr_003_70d2:
    ld d, d
    ld c, a
    ld d, l
    ld d, b
    ld d, e
    ld a, [hl-]
    jr nz, jr_003_711b

    ld d, h
    jr nz, jr_003_7130

    ld d, h
    nop
    ld b, c

jr_003_70e0:
    ld d, d
    ld d, h
    jr nz, jr_003_7133

    ld b, [hl]
    jr nz, jr_003_7133

    ld b, l
    ld d, [hl]

jr_003_70e9:
    ld b, l
    ld c, h
    jr nz, jr_003_7122

    inc l
    jr nz, @+$56

    ld c, a
    nop
    ld d, l

jr_003_70f3:
    ld b, e
    ld c, b
    jr nz, jr_003_7143

jr_003_70f7:
    ld b, l
    ld b, [hl]
    ld d, h
    jr nz, jr_003_7153

    ld b, c
    ld c, h

jr_003_70fe:
    ld c, h
    jr nz, jr_003_7136

    jr nz, jr_003_7157

    ld c, c
    nop
    ld c, l
    ld b, l
    ld d, e
    jr nz, jr_003_7130

    jr nz, jr_003_715f

    ld c, b
    ld c, a
    ld c, a
    ld d, h
    jr nz, jr_003_7164

    ld c, c
    ld b, a

jr_003_7114:
    ld c, b
    ld d, h
    jr nz, jr_003_7118

jr_003_7118:
    ld d, a

jr_003_7119:
    ld b, c
    ld c, h

jr_003_711b:
    ld c, h
    jr nz, jr_003_7153

    jr nz, jr_003_7174

    ld c, c
    ld c, l

jr_003_7122:
    ld b, l
    ld d, e
    ld l, $00
    dec b
    nop
    ld b, e
    ld c, a
    ld c, [hl]
    ld b, a
    ld d, d
    ld b, c
    ld d, h
    ld d, l

jr_003_7130:
    ld c, h
    ld b, c
    ld d, h

jr_003_7133:
    ld c, c
    ld c, a
    ld c, [hl]

jr_003_7136:
    ld d, e
    ld l, $2e
    ld l, $00
    ld e, c
    ld c, a
    ld d, l
    jr nz, jr_003_7188

    ld b, c
    ld d, [hl]
    ld b, l

jr_003_7143:
    jr nz, jr_003_7187

    ld b, l
    ld b, c
    ld d, h
    ld b, l
    ld c, [hl]
    jr nz, jr_003_71a0

    ld c, b
    nop
    ld b, l
    jr nz, jr_003_719e

    ld b, c
    ld e, d

jr_003_7153:
    ld b, l
    jr nz, jr_003_71a3

    ld b, c

jr_003_7157:
    ld d, e
    ld d, h
    ld b, l
    ld d, d
    ld l, $20
    ld e, c
    ld c, a

jr_003_715f:
    ld d, l
    nop
    jr nz, jr_003_71a4

    ld d, d

jr_003_7164:
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    jr nz, jr_003_71b9

    ld b, l
    ld d, a
    jr nz, jr_003_71b2

    ld e, c
    ld b, d
    ld b, l
    ld d, d
    nop

jr_003_7174:
    ld d, e
    ld b, e
    ld b, c
    ld d, b
    ld b, l
    jr nz, jr_003_71be

    ld c, b
    ld b, c
    ld c, l
    ld d, b
    ld c, c
    ld c, a
    ld c, [hl]
    ld l, $00
    inc b
    inc b
    ld d, h

jr_003_7187:
    ld l, c

jr_003_7188:
    ld l, [hl]
    ld a, c
    nop
    add hl, bc
    dec b
    ld bc, $0a03
    add hl, bc
    inc b
    ld [bc], a
    ld [$0f02], sp
    ld a, [bc]
    inc c
    inc b
    dec b
    ld b, $06
    ld b, $54

jr_003_719e:
    ld h, c
    ld [hl], d

jr_003_71a0:
    ld h, a
    ld h, l
    ld [hl], h

jr_003_71a3:
    nop

jr_003_71a4:
    add hl, bc
    dec b
    inc bc
    add hl, bc
    dec b
    inc bc
    ld a, [bc]
    add hl, bc
    nop
    inc b
    inc bc
    ld a, [bc]
    inc c
    ld [bc], a

jr_003_71b2:
    ld [$0001], sp
    ld b, $09
    nop
    inc b

jr_003_71b9:
    ld [bc], a
    ld [$0a03], sp
    inc c

jr_003_71be:
    ld bc, $0600
    ld a, [bc]
    inc c
    dec b
    ld b, $0c
    dec b
    ld b, $04
    inc b
    ld c, l
    ld [hl], l
    ld l, h
    ld [hl], h
    ld l, c
    dec l
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_003_71fb

    ld sp, $0900
    ld bc, $0305
    ld [$0300], sp
    ld a, [bc]
    ld a, [bc]
    inc c
    nop
    ld [bc], a
    inc c
    dec b
    inc b
    ld b, $05
    dec b
    ld d, e
    ld [hl], l
    ld [hl], e
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l
    nop
    add hl, bc
    ld bc, $0501
    inc bc
    inc c

jr_003_71fb:
    ld [bc], a
    ld [$0601], sp
    add hl, bc
    nop
    inc b
    nop
    inc bc
    ld a, [bc]
    ld [$0001], sp
    ld [bc], a
    inc c
    inc b
    ld b, $0c
    ld b, $05
    dec b
    ld b, e
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    nop
    add hl, bc
    dec b
    ld bc, $0305
    ld a, [bc]
    add hl, bc
    nop
    inc bc
    ld a, [bc]
    ld [$0000], sp
    nop
    ld [bc], a
    ld a, [bc]
    inc c
    nop
    ld b, $0a
    inc c
    dec b
    nop
    dec b
    ld b, $06
    ld b, $54
    ld [hl], a
    ld l, c
    ld [hl], e
    ld [hl], h
    nop
    add hl, bc
    dec b
    inc bc
    add hl, bc
    dec b
    inc bc
    inc c
    ld bc, $0000
    inc bc
    ld a, [bc]
    add hl, bc
    nop
    nop
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    ld [$0000], sp
    ld b, $0a
    inc c
    nop
    nop
    inc b
    inc bc
    inc c
    dec b
    ld b, $0c
    dec b
    ld b, $06
    ld b, $53
    ld [hl], b
    ld l, c
    ld [hl], d
    ld h, c
    ld l, h
    nop
    add hl, bc
    ld bc, $0903
    ld bc, $0803
    ld b, $0c
    nop
    nop
    ld [bc], a
    inc c
    inc bc
    add hl, bc
    ld [bc], a
    ld [$0906], sp
    ld [bc], a
    ld [$0c06], sp
    inc bc
    ld [$0000], sp
    inc bc
    add hl, bc
    ld [bc], a
    inc c
    inc b
    ld b, $0c
    inc b
    ld b, $06
    ld b, $43
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], l
    ld [hl], e
    nop
    add hl, bc
    ld bc, $0903
    ld bc, $0803
    ld b, $08
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld bc, $0000
    ld bc, $0906
    inc b
    nop
    nop
    inc b
    inc bc
    ld [$0803], sp
    ld [bc], a
    add hl, bc
    ld [bc], a
    inc c
    inc b
    ld b, $0c
    inc b
    ld b, $06
    ld b, $43
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    nop
    add hl, bc
    inc bc
    add hl, bc
    dec b
    dec b
    inc bc
    inc c
    nop
    inc b
    ld bc, $0a03
    add hl, bc
    ld [bc], a
    add hl, bc
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld [$0600], sp
    ld [$0a06], sp
    inc c
    inc b
    ld bc, $0300
    inc c
    dec b
    dec b
    ld b, $0c
    ld b, $06
    ld b, $50
    ld l, h
    ld [hl], l
    ld [hl], e
    nop
    add hl, bc
    ld bc, $0903
    ld bc, $0803
    ld b, $0c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld bc, $0201
    add hl, bc
    ld b, $09
    ld b, $08
    inc b
    inc b
    inc bc
    ld [$0803], sp
    inc bc
    add hl, bc
    ld [bc], a
    inc c
    inc b
    ld b, $0c
    inc b
    ld b, $07
    rlca
    ld c, l
    ld h, l
    ld h, h
    ld b, h
    ld [hl], l
    ld h, l
    ld l, h
    nop
    add hl, bc
    ld bc, $0101
    dec b
    ld bc, $0a03
    inc c
    ld [bc], a
    ld a, [bc]
    add hl, bc
    inc b
    ld [bc], a
    ld [$0001], sp
    nop
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    inc c
    nop
    nop
    nop
    inc bc
    ld a, [bc]
    ld [$0401], sp
    nop
    inc b
    nop
    ld [bc], a
    ld a, [bc]
    inc c
    ld bc, $0504
    ld b, $0a
    inc c
    dec b
    inc b
    dec b
    dec b
    dec b
    inc b
    rlca
    rlca
    ld c, l
    ld l, c
    ld h, h
    ld l, c
    dec l
    ld c, l
    ld h, c
    ld a, d
    ld h, l
    nop
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    ld [$0505], sp
    ld bc, $0305
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld bc, $0f02
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0004], sp
    ld bc, $0a02
    ld a, [bc]
    ld a, [bc]
    rrca
    ld [$0604], sp
    ld a, [bc]
    ld a, [bc]
    inc c
    dec b
    inc b
    dec b
    dec b
    ld [bc], a
    inc c
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $08
    ld [$6853], sp
    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    add hl, bc
    dec b
    ld bc, $0903
    ld bc, $0301
    ld [$0201], sp
    ld [$0c02], sp
    ld [bc], a
    ld a, [bc]
    ld [$0806], sp
    nop
    inc b
    ld bc, $0204
    inc c
    ld bc, $0802
    ld bc, $0100
    ld b, $09
    inc b
    nop
    inc b
    ld [bc], a
    ld [$0304], sp
    ld [$0401], sp
    ld bc, $0200
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld [$0803], sp
    ld [bc], a
    ld [$0204], sp
    inc c
    inc b
    inc b
    ld b, $0c
    inc b
    dec b
    ld b, $05
    dec b
    ld b, [hl]
    ld h, l
    ld h, l
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_003_742f

    ld l, c
    ld l, l
    ld h, l
    nop
    add hl, bc
    ld bc, $0100
    inc bc
    ld [$0000], sp
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ld [bc], a
    inc c
    inc b
    inc b
    inc b
    ld b, $0a
    ld a, [bc]
    ld b, d
    ld l, c
    ld h, a
    jr nz, jr_003_7442

    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    add hl, bc
    dec b
    ld bc, $0903
    ld bc, $0105
    dec b
    inc bc
    ld [$0c03], sp
    nop
    ld b, $08
    dec b
    nop
    rlca
    ld a, [bc]
    ld [HeaderLogo], sp
    nop
    inc bc
    ld [$0803], sp
    dec b
    ld [bc], a
    inc c
    inc bc
    inc c
    nop
    nop
    nop
    nop
    ld [bc], a
    dec c
    ld [bc], a
    add hl, bc
    inc b

jr_003_742f:
    ld bc, $0000
    nop
    nop
    inc b
    ld bc, $0802
    dec b
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [$0a06], sp

jr_003_7442:
    add hl, bc
    ld b, $08
    nop
    nop
    nop
    inc b
    nop
    inc bc
    ld [HeaderLogo], sp
    ld b, $0a
    ld [$0500], sp
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    nop
    ld bc, $0204
    inc c
    inc bc
    inc c
    ld [bc], a
    inc c
    inc b
    ld b, $0c
    dec b
    inc b
    dec b
    inc b
    dec b
    ld b, $0e
    dec b
    nop
    add hl, bc
    ld bc, $0505
    ld bc, $0501
    inc bc
    dec c
    ld bc, $0101
    dec b
    inc bc
    ld [$0902], sp
    inc bc
    ld [$0f02], sp
    ld a, [bc]
    rrca
    ld [$0200], sp
    rrca
    ld a, [bc]
    ld [$0806], sp
    ld [bc], a
    ld [HeaderLogo], sp
    nop
    dec b
    inc b
    inc b
    inc b
    dec b
    ld b, $0a
    rrca
    ld [$0e02], sp
    dec bc
    inc c
    ld b, $09
    ld bc, $0505
    ld bc, $0c03
    dec b
    inc b
    inc b
    dec b
    inc b
    dec b
    dec b
    inc b
    ld b, $0f
    rrca
    inc c
    ld b, $07
    rlca
    nop
    add hl, bc
    dec b
    ld bc, $0105
    dec b
    inc bc
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    ld [$0005], sp
    dec b
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    ld [$0005], sp
    dec b
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    inc c
    dec b
    inc b
    dec b
    inc b
    dec b
    ld b, $07
    rlca
    nop
    add hl, bc
    dec b
    ld bc, $0105
    dec b
    inc bc
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    ld [$0005], sp
    dec b
    nop
    dec b
    ld [bc], a
    ld [$0807], sp
    rlca
    ld [$0a07], sp
    ld [$0005], sp
    dec b
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    inc c
    dec b
    inc b
    dec b
    inc b
    dec b
    ld b, $09
    add hl, bc
    nop
    add hl, bc
    ld bc, $0101
    inc bc
    add hl, bc
    ld bc, $0301
    ld [$0400], sp
    inc b
    ld b, $0c
    inc b
    nop
    ld [bc], a
    ld [$0902], sp
    ld bc, $0105
    inc bc
    ld [$0802], sp
    ld [bc], a
    inc c
    ld b, $09
    nop
    ld [bc], a
    inc c
    ld b, $0c
    ld b, $0f
    add hl, bc
    nop
    ld b, $0a
    add hl, bc
    inc bc
    add hl, bc
    inc bc
    rrca
    inc c
    ld b, $09
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    rrca
    rrca
    rrca
    inc c
    ld b, $08
    ld [bc], a
    ld [$0100], sp
    inc bc
    add hl, bc
    ld bc, $0001
    ld [bc], a
    inc c
    inc b
    inc b
    ld b, $0c
    inc b
    inc b
    inc b
    ld b, $05
    ld [$0d00], sp
    dec b
    dec b
    inc bc
    rrca
    add hl, bc
    inc bc
    add hl, bc
    nop
    inc bc
    inc c
    ld b, $08
    nop
    ld [bc], a
    dec c
    ld bc, $0404
    ld b, $09
    nop
    inc bc
    dec c
    inc bc
    ld [$0200], sp
    rrca
    ld a, [bc]
    inc c
    inc b
    ld [bc], a
    dec c
    ld b, $0d
    rlca
    ld a, [bc]
    dec c
    rlca
    inc b
    dec b
    nop
    dec bc
    dec bc
    dec c
    rlca
    ld a, [bc]
    ld a, [bc]
    dec c
    inc bc
    ld a, [bc]
    inc c
    inc bc
    ld a, [bc]
    ld [$0401], sp
    ld b, $0c
    ld b, $0d
    rlca
    inc c
    inc b
    nop
    add hl, bc
    inc bc
    add hl, bc
    ld bc, $0301
    add hl, bc
    ld bc, $0301
    add hl, bc
    inc bc
    ld [$0000], sp
    ld [bc], a
    ld [$0000], sp
    ld [bc], a
    ld [$0000], sp
    ld [bc], a
    ld [$0000], sp
    ld [bc], a
    ld [$0000], sp
    ld [bc], a
    ld [$0000], sp
    ld [bc], a
    inc c
    ld b, $0c
    inc b
    inc b
    ld b, $0c
    inc b
    inc b
    ld b, $0c
    ld b, $05
    dec b
    nop
    add hl, bc
    dec b
    ld bc, $0305
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    ld [$0005], sp
    dec b
    ld [bc], a
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    inc c
    dec b
    inc b
    dec b
    ld b, $0c
    dec b
    nop
    add hl, bc
    ld bc, $0b07
    add hl, bc
    rlca
    dec bc
    rrca
    add hl, bc
    ld bc, $0300
    ld [$0d02], sp
    ld [bc], a
    inc c
    ld bc, $0902
    nop
    inc b
    ld [bc], a
    ld c, $08
    nop
    dec b
    nop
    dec b
    nop
    nop
    nop
    ld [bc], a
    rrca
    ld c, $0b
    ld [$0d02], sp
    ld [bc], a
    add hl, bc
    inc b
    ld [bc], a
    inc c
    nop
    ld bc, $0201
    inc c
    inc b
    rlca
    ld c, $0c
    rlca
    ld c, $0f
    inc c
    inc b
    ld b, $0c
    rlca
    rlca
    nop
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    ld [$0505], sp
    ld bc, $0305
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld bc, $0f02
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0004], sp
    ld bc, $0a02
    ld a, [bc]
    ld a, [bc]
    rrca
    ld [$0604], sp
    ld a, [bc]
    ld a, [bc]
    inc c
    dec b
    inc b
    dec b
    dec b
    ld [bc], a
    inc c
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $05
    ld [$0d00], sp
    ld bc, $0105
    rlca
    dec bc
    ld c, $09
    nop
    inc bc
    inc c
    rlca
    ld [$0200], sp
    dec c
    ld bc, $0404
    ld b, $09
    nop
    inc bc
    add hl, bc
    inc bc
    ld [$0200], sp
    ld [$0c02], sp
    inc b
    ld [bc], a
    inc c
    ld b, $0d
    rlca
    ld a, [bc]
    dec c
    rlca
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    dec b
    dec b
    ld bc, $0903
    ld bc, $0301
    ld a, [bc]
    add hl, bc
    rlca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [HeaderLogo], sp
    ld [bc], a
    inc c
    nop
    ld b, $0a
    ld c, $0a
    add hl, bc
    ld [bc], a
    ld [$0005], sp
    dec b
    inc b
    inc bc
    ld a, [bc]
    ld [$0a02], sp
    add hl, bc
    nop
    ld bc, $0201
    ld a, [bc]
    ld [$0a06], sp
    inc c
    inc b
    ld b, $08
    ld b, $08
    inc b
    ld bc, $0500
    dec b
    dec b
    inc b
    inc bc
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld bc, $0903
    ld [bc], a
    inc c
    inc b
    ld b, $0e
    inc c
    inc b
    inc b
    inc b
    ld b, $07
    rlca
    nop
    add hl, bc
    dec b
    ld bc, $0101
    dec b
    inc bc
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld [$0a03], sp
    ld [$0004], sp
    nop
    nop
    inc b
    ld [bc], a
    ld a, [bc]
    dec c
    nop
    nop
    nop
    rlca
    ld a, [bc]
    ld [$0001], sp
    nop
    nop
    ld bc, $0a02
    inc c
    ld [bc], a
    ld a, [bc]
    ld [$0a06], sp
    inc c
    dec b
    inc b
    inc b
    inc b
    dec b
    ld b, $0e
    ld b, $00
    add hl, bc
    ld bc, $0d03
    ld bc, $0501
    rlca
    add hl, bc
    ld bc, $0301
    dec c
    rlca
    ld [$0404], sp
    inc bc
    inc c
    ld b, $0f
    dec bc
    inc c
    inc b
    inc b
    ld b, $0d
    rlca
    ld a, [bc]
    add hl, bc
    inc bc
    ld [$0101], sp
    ld bc, $0100
    ld bc, $0101
    ld bc, $0a07
    inc c
    ld b, $08
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    ld [$0101], sp
    ld b, $09
    inc bc
    rrca
    ld c, $09
    ld bc, $0301
    dec c
    rlca
    inc c
    inc b
    ld b, $0f
    inc c
    inc b
    dec b
    rlca
    inc c
    inc b
    inc b
    ld b, $0d
    rlca
    ld a, [bc]
    dec b
    nop
    add hl, bc
    ld bc, $0505
    rlca
    dec c
    dec b
    dec b
    ld bc, $0c03
    ld [bc], a
    add hl, bc
    ld bc, $0101
    ld bc, $0c03
    ld b, $0d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    add hl, bc
    ld [bc], a
    inc c
    inc b
    inc b
    inc b
    inc b
    ld b, $09
    inc bc
    inc c
    inc b
    dec b
    dec b
    rlca
    dec c
    dec b
    dec b
    inc b
    ld b, $0b
    dec bc
    nop
    add hl, bc
    dec b
    dec b
    dec b
    inc bc
    dec bc
    add hl, bc
    dec b
    dec b
    dec b
    inc bc
    ld a, [bc]
    add hl, bc
    inc bc
    dec bc
    ld [$0204], sp
    dec bc
    add hl, bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    ld [bc], a
    rrca
    ld [$0e02], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc bc
    ld c, $08
    ld bc, $0e02
    add hl, bc
    ld b, $0a
    inc c
    ld bc, HeaderLogo
    nop
    nop
    nop
    ld bc, HeaderLogo
    ld b, $0d
    ld [bc], a
    rrca
    ld [$0000], sp
    nop
    ld [bc], a
    dec c
    nop
    dec b
    add hl, bc
    inc b
    ld bc, $0004
    nop
    nop
    inc b
    ld bc, $0304
    ld a, [bc]
    add hl, bc
    ld b, $0b
    ld [$0204], sp
    dec bc
    inc c
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0b02], sp
    ld [$0b02], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld b, $0e
    ld [$0200], sp
    ld c, $0c
    ld b, $0a
    inc c
    dec b
    dec b
    dec b
    ld b, $0a
    inc c
    dec b
    dec b
    dec b
    ld b, $04
    rlca
    nop
    add hl, bc
    ld bc, $0101
    ld [$0c02], sp
    ld [bc], a
    ld [HeaderLogo], sp
    ld [bc], a
    ld [$0803], sp
    ld [bc], a
    ld [$0000], sp
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    ld c, $07
    rlca
    nop
    add hl, bc
    ld bc, $0b03
    add hl, bc
    ld bc, $0803
    nop
    inc b
    inc b
    inc b
    nop
    ld [bc], a
    ld [$0100], sp
    ld bc, $0001
    ld [bc], a
    ld [$0c06], sp
    inc b
    ld [bc], a
    ld [$0806], sp
    inc bc
    add hl, bc
    ld bc, $0000
    rlca
    ld [$0802], sp
    ld [bc], a
    ld a, [bc]
    ld [$0c03], sp
    ld b, $0c
    inc b
    ld [bc], a
    inc c
    ld b, $09
    rlca
    nop
    dec bc
    dec bc
    rrca
    dec bc
    dec bc
    dec bc
    rrca
    dec bc
    dec bc
    ld a, [bc]
    ld c, $0b
    ld c, $0a
    ld c, $0b
    ld c, $0a
    ld c, $0f
    ld c, $0f
    ld a, [bc]
    rrca
    ld c, $0f
    ld c, $0b
    dec c
    ld bc, $0001
    ld bc, $0701
    dec bc
    ld c, $0f
    inc c
    nop
    nop
    nop
    ld b, $0f
    ld c, $0d
    dec b
    rlca
    inc c
    nop
    ld b, $0d
    dec b
    rlca
    dec c
    dec b
    dec b
    rlca
    ld c, $0d
    dec b
    dec b
    rlca
    rlca
    rlca
    nop
    add hl, bc
    ld bc, $0101
    ld bc, $0301
    ld [$0000], sp
    nop
    nop
    nop
    ld [bc], a
    ld [$0a02], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0802], sp
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0802], sp
    ld [bc], a
    ld c, $0e
    ld c, $08
    ld [bc], a
    ld [$0100], sp
    ld bc, $0001
    ld [bc], a
    inc c
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $0e
    dec b
    nop
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [$0404], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld bc, $0301
    add hl, bc
    inc bc
    rrca
    add hl, bc
    ld bc, $0f03
    ld [$0e02], sp
    ld [$0000], sp
    ld [bc], a
    inc c
    ld b, $0b
    inc c
    inc b
    ld b, $0f
    ld [$0d02], sp
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    inc b
    dec b
    dec b
    dec b
    dec b
    inc b
    ld b, $06
    ld b, $00
    dec c
    inc bc
    dec c
    dec b
    dec b
    inc bc
    add hl, bc
    inc b
    ld bc, $0101
    ld [bc], a
    ld [$0001], sp
    inc b
    inc b
    ld [bc], a
    ld [$0200], sp
    add hl, bc
    inc bc
    ld a, [bc]
    ld [$0200], sp
    inc c
    ld b, $0a
    inc c
    inc b
    inc b
    dec b
    dec b
    ld b, $0e
    dec b
    nop
    add hl, bc
    ld bc, $0305
    rrca
    rrca
    rrca
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    inc bc
    rrca
    ld [$0f02], sp
    inc c
    ld bc, $0f03
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    ld a, [bc]
    rrca
    ld [$0f02], sp
    rrca
    ld [$0504], sp
    nop
    ld bc, $0501
    dec b
    ld [bc], a
    rrca
    ld [$0f02], sp
    add hl, bc
    ld [bc], a
    rrca
    rrca
    inc c
    nop
    ld [bc], a
    rrca
    rrca
    ld a, [bc]
    rrca
    inc c
    inc b
    dec b
    inc b
    inc b
    rlca
    rrca
    rrca
    inc c
    ld b, $0f
    rrca
    ld c, $0f
    dec b
    dec b
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    rrca
    inc c
    nop
    nop
    nop
    rlca
    dec c
    nop
    nop
    nop
    rlca
    dec c
    nop
    nop
    nop
    rlca
    rrca
    ld c, $0e
    ld c, $0f
    inc c
    inc b
    nop
    dec c
    ld bc, $0d07
    ld bc, $0d07
    ld bc, $0d07
    ld bc, $0906
    nop
    inc bc
    add hl, bc
    nop
    inc bc
    add hl, bc
    nop
    inc bc
    add hl, bc
    nop
    inc bc
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc c
    inc b
    ld b, $0c
    inc b
    ld b, $0c
    inc b
    ld b, $0c
    inc b
    ld b, $08
    ld [$0f00], sp
    dec c
    ld bc, $0903
    ld bc, $0f07
    dec bc
    dec bc
    inc c
    ld [bc], a
    ld [$0b06], sp
    dec bc
    ld a, [bc]
    ld [$0a03], sp
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld c, $0c
    inc b
    nop
    nop
    inc b
    ld b, $0e
    dec bc
    add hl, bc
    ld bc, $0000
    ld bc, $0b03
    ld a, [bc]
    ld [$0a06], sp
    ld a, [bc]
    inc c
    ld [bc], a
    ld a, [bc]
    ld c, $0e
    add hl, bc
    ld [bc], a
    ld [$0e03], sp
    ld c, $0f
    dec c
    inc b
    ld b, $0c
    inc b
    rlca
    rrca
    ld c, $0e
    nop
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [$0400], sp
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    ld [bc], a
    ld [$0902], sp
    inc bc
    inc c
    inc b
    nop
    nop
    inc b
    ld b, $09
    inc bc
    ld [$0802], sp
    ld [bc], a
    inc c
    ld [bc], a
    add hl, bc
    inc bc
    ld [$0902], sp
    inc bc
    ld [$0806], sp
    ld [bc], a
    ld [$0300], sp
    ld [$0806], sp
    nop
    nop
    ld [bc], a
    inc c
    ld [bc], a
    add hl, bc
    nop
    ld [bc], a
    ld [$0604], sp
    ld [$0803], sp
    nop
    nop
    ld [bc], a
    add hl, bc
    ld [bc], a
    inc c
    inc b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    inc bc
    ld c, $0c
    ld [bc], a
    ld [$0c02], sp
    inc b
    inc b
    ld bc, $0a03
    ld a, [bc]
    inc c
    nop
    ld bc, $0405
    nop
    nop
    dec b
    dec b
    dec b
    nop
    ld b, $0a
    ld [$0e03], sp
    ld [$0d03], sp
    nop
    nop
    rlca
    add hl, bc
    inc bc
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld [$0500], sp
    nop
    nop
    dec b
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [$0b06], sp
    ld [$0906], sp
    ld bc, $0301
    inc c
    ld b, $0a
    inc c
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop
    inc b
    rlca
    ld [$0000], sp
    nop
    dec b
    dec b
    nop
    inc bc
    ld a, [bc]
    ld a, [bc]
    inc c
    ld b, $09
    inc bc
    ld [$0404], sp
    ld b, $09
    inc bc
    inc c
    ld b, $0a
    inc c
    dec b
    dec b
    inc b
    ld b, $0c
    dec b
    ld bc, $0c07
    inc b
    dec b
    dec b
    ld b, $0e
    dec b
    nop
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0b07
    dec bc
    inc c
    inc b
    ld [bc], a
    inc c
    ld b, $08
    ld [bc], a
    ld [$0200], sp
    ld [$0605], sp
    ld c, $09
    dec b
    nop
    dec b
    dec b
    nop
    ld [bc], a
    ld [$0200], sp
    ld [$0505], sp
    rlca
    ld [$0a03], sp
    add hl, bc
    inc bc
    ld [$0802], sp
    nop
    ld [bc], a
    ld [$0301], sp
    dec bc
    inc c
    inc b
    inc b
    inc b
    ld b, $0c
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $09
    add hl, bc
    nop
    add hl, bc
    ld bc, $0903
    ld bc, $0903
    ld bc, $0803
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc b
    ld b, $0c
    inc b
    ld b, $0c
    inc b
    ld b, $09
    ld bc, $0903
    ld bc, $0903
    ld bc, $0803
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc c
    inc b
    ld b, $0c
    inc b
    ld b, $0c
    inc b
    ld b, $09
    ld bc, $0903
    ld bc, $0903
    ld bc, $0803
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc b
    ld b, $0c
    inc b
    ld b, $0c
    inc b
    ld b, $09
    add hl, bc
    nop
    add hl, bc
    inc bc
    rrca
    dec c
    rlca
    rrca
    add hl, bc
    ld bc, $0c03
    nop
    inc bc
    rrca
    rrca
    add hl, bc
    nop
    nop
    ld [bc], a
    rrca
    inc c
    ld b, $0f
    add hl, bc
    inc b
    nop
    nop
    ld b, $0b
    rrca
    rrca
    add hl, bc
    ld [bc], a
    rrca
    ld [$0f06], sp
    ld c, $0f
    add hl, bc
    inc b
    nop
    ld bc, $0f06
    dec bc
    rrca
    add hl, bc
    ld [bc], a
    rrca
    ld [$0f06], sp
    rrca
    ld c, $09
    nop
    nop
    ld bc, $0f06
    add hl, bc
    inc bc
    rrca
    ld [$0000], sp
    ld b, $0f
    rrca
    inc c
    nop
    inc bc
    inc c
    inc b
    inc b
    dec b
    dec b
    rlca
    rrca
    inc c
    ld b, $0d
    ld [$0f00], sp
    add hl, bc
    ld bc, $0301
    rrca
    rrca
    rrca
    add hl, bc
    ld bc, $0301
    rrca
    add hl, bc
    nop
    nop
    inc b
    inc b
    ld bc, $0101
    inc b
    inc b
    nop
    nop
    inc bc
    inc c
    inc b
    ld b, $09
    inc bc
    inc c
    inc b
    ld b, $09
    inc bc
    inc c
    inc b
    ld b, $0d
    dec b
    rlca
    inc c
    ld b, $0d
    dec b
    rlca
    inc c
    ld b, $0d
    dec b
    rlca
    dec c
    dec b
    rlca
    add hl, bc
    inc bc
    dec c
    dec b
    rlca
    add hl, bc
    inc bc
    dec c
    dec b
    rlca
    add hl, bc
    ld bc, $0c03
    ld b, $09
    ld bc, $0c03
    ld b, $09
    ld bc, $0c03
    nop
    nop
    ld bc, $0401
    inc b
    inc b
    ld bc, $0001
    nop
    ld b, $0f
    inc c
    inc b
    inc b
    ld b, $0f
    rrca
    rrca

Jump_003_7c5f:
    inc c
    inc b
    inc b
    ld b, $0f
    ld c, $0e
    nop
    add hl, bc
    ld bc, $0301
    add hl, bc
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    ld [$0000], sp
    ld [bc], a
    ld [$0200], sp
    add hl, bc
    ld bc, $0501
    dec b
    inc bc
    ld a, [bc]
    ld [$0404], sp
    ld [bc], a
    ld [$0200], sp
    ld [$0806], sp
    ld bc, $0a03
    ld a, [bc]
    inc c
    inc bc
    add hl, bc
    inc b
    inc b
    inc b
    ld [bc], a
    inc c
    inc bc
    ld [$0004], sp
    ld [bc], a
    ld a, [bc]
    add hl, bc
    nop
    ld [bc], a
    add hl, bc
    dec b
    dec b
    ld b, $09
    ld b, $08
    ld bc, $0204
    ld a, [bc]
    ld [$0a06], sp
    ld a, [bc]
    add hl, bc
    inc bc
    dec bc
    inc c
    inc bc
    ld [$0100], sp
    ld [bc], a
    ld a, [bc]
    ld [$0a03], sp
    inc c
    ld b, $0c
    ld [bc], a
    add hl, bc
    ld b, $0a
    inc c
    inc b
    ld [bc], a
    ld a, [bc]
    inc c
    nop
    ld [bc], a
    add hl, bc
    dec b
    dec b
    inc b
    inc b
    dec b
    inc b
    dec b
    dec b
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld [$0903], sp
    inc bc
    dec c
    ld bc, $0101
    ld bc, $0600
    ld [$0a06], sp
    ld [$0802], sp
    nop
    ld bc, $0000
    nop
    nop
    ld [bc], a
    dec bc
    ld [$0201], sp
    ld [$0a02], sp
    ld [$0802], sp
    nop
    nop
    ld [bc], a
    ld [$0c02], sp
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld [$0802], sp
    ld b, $08
    nop
    inc b
    nop
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld a, [bc]
    inc c
    inc b
    ld b, $0c
    dec b
    nop
    inc b
    ld bc, $0004
    ld [bc], a
    inc c
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $0d
    inc b
    dec b
    inc b
    ld [bc], a
    rlca
    rlca
    nop
    add hl, bc
    ld bc, $0101
    ld bc, $0301
    ld [$0000], sp
    nop
    nop
    nop
    ld [bc], a
    inc c
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    add hl, bc
    ld bc, $0f03
    add hl, bc
    ld bc, $0802
    nop
    nop
    ld bc, $0000
    ld [bc], a
    ld [$0000], sp
    nop
    nop
    nop
    ld [bc], a
    inc c
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
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
