; Disassembly of "Faceball 2000 (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ld b, a
    jr nz, load_player_ram_start_to_hl

    bit 6, a
    jr nz, load_player_ram_start_to_hl

    bit 7, a
    jr nz, load_player_ram_start_to_hl

    ld b, $02
    ldh a, [$ff91]
    bit 7, a
    jr nz, jr_001_401b

    ldh a, [$ffa2]
    cp $02
    jr nc, jr_001_401b

    ld b, $01

jr_001_401b:
    ld a, b
    ld [$d9c1], a
    ldh a, [$ffee]
    set 7, a
    ldh [$ffee], a
    call Call_001_58e6
    call Call_001_58e6
    ldh a, [$ffee]
    res 7, a
    ldh [$ffee], a
    ld l, $90
    ld h, $c7
    ld c, $00

jr_001_4037:
    ld a, c
    swap a
    ld e, a
    ld d, $c2
    ld a, [de]
    bit 0, a
    jr z, jr_001_405a

    ld a, [hl]
    ld b, a
    push hl
    push bc
    ld a, c
    or $a0
    ld l, a
    ld a, [hl]
    ld d, a
    push de
    ld a, c
    call SomethingInInputParser
    pop de
    pop bc
    push bc
    ld a, c
    call CheckIfAPressed
    pop bc
    pop hl

jr_001_405a:
    inc l
    inc c
    ld a, c
    cp $10
    jr c, jr_001_4037

    ld a, [$d9c1]
    dec a
    ld b, a
    jr nz, jr_001_401b

load_player_ram_start_to_hl:
    ld hl, $c200

jr_001_406b:
    bit 0, [hl]
    jr z, jr_001_40b6

    inc l
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    and $0f
    ld e, a
    ld a, [hl+]
    ld b, a
    ld a, [hl-]
    and $0f
    swap a
    or e
    ld e, a
    ld d, $c4
    ld a, [de]
    bit 2, a
    jr z, jr_001_408d

    ld a, b
    cp $d0
    jr c, jr_001_408d

    ld b, $d0

jr_001_408d:
    ld a, [de]
    bit 0, a
    jr z, jr_001_4099

    ld a, b
    cp $30
    jr nc, jr_001_4099

    ld b, $30

jr_001_4099:
    ld a, [de]
    bit 1, a
    jr z, jr_001_40a5

    ld a, c
    cp $d0
    jr c, jr_001_40a5

    ld c, $d0

jr_001_40a5:
    ld a, [de]
    bit 3, a
    jr z, UpdatePlayerRAM

    ld a, c
    cp $30
    jr nc, UpdatePlayerRAM

    ld c, $30

UpdatePlayerRAM:
    ld a, b
    ld [hl-], a
    dec l
    ld a, c
    ld [hl], a

jr_001_40b6:
    ld a, l
    and $f0
    add $10
    ld l, a
    jr nz, jr_001_406b

    ldh a, [$ffef]
    bit 5, a
    call nz, Call_000_2aa5
    call LoadInputsAndOtherStuff
    ld hl, $ffef
    bit 2, [hl]
    jr z, jr_001_40d3

    res 2, [hl]
    jr jr_001_40da

jr_001_40d3:
    ld a, [$c90b]
    and a
    jp nz, Jump_001_4153

jr_001_40da:
    xor a
    ld [$c9a4], a
    call CheckIfCopyrightTilemapUpdate
    call Call_000_21e7
    ld a, [$da46]
    bit 0, a
    jr nz, jr_001_40f3

    bit 1, a
    jr nz, jr_001_40f3

    bit 3, a
    jr nz, jr_001_40f6

jr_001_40f3:
    call Call_001_4245

jr_001_40f6:
    call Call_001_74f1
    ld a, [$da2a]
    bit 4, a
    call nz, Call_001_4659
    ldh a, [$ffef]
    bit 0, a
    jr z, jr_001_413a

    ld a, [$da2a]
    bit 0, a
    jr nz, jr_001_413a

    ld e, $20
    ldh a, [$ff91]
    bit 3, a
    jr nz, jr_001_4118

    ld e, $18

jr_001_4118:
    ld b, $08
    ld c, $24
    ld d, $80
    call DrawBox
    xor a
    ld [$c9a3], a
    ld [$c9a4], a
    ld hl, $1e26
    call DrawText
    ldh a, [$ff91]
    bit 3, a
    jr z, jr_001_413a

    ld hl, $1e35
    call DrawText

jr_001_413a:
    call Call_000_224e
    call UpdateFrameBuffer
    ld a, [$c905]
    cp $03
    jr nz, jr_001_4153

    di
    ld a, [hFadeStatus]
    set 0, a
    res 1, a
    ld [hFadeStatus], a
    ei

Jump_001_4153:
jr_001_4153:
    ldh a, [$ffef]
    bit 5, a
    jp z, Jump_001_41df

    ldh a, [$ffa1]
    ld b, a
    ld c, $00
    ld hl, $d9fe

jr_001_4162:
    ld a, [hl]
    and a
    jr z, jr_001_416a

    dec a
    jr z, jr_001_416b

    ld [hl], a

jr_001_416a:
    inc c

jr_001_416b:
    inc hl
    dec b
    jr nz, jr_001_4162

    ld a, c
    and a
    jr nz, jr_001_41df

    ldh a, [$ffa1]
    ld b, a
    ld hl, $c770

jr_001_4179:
    ld a, [hl+]
    and a
    jr nz, jr_001_4183

    dec b
    jr nz, jr_001_4179

    jp PrepareSoftReset


jr_001_4183:
    ld a, [$da2c]
    cp $80
    jr c, jr_001_4193

    call Call_000_1214
    call ShowEnding
    jp PrepareSoftReset


jr_001_4193: ; start scrolling prev level off and new level on
    ldh a, [$ffa1]
    ld b, a
    ld hl, $c770

jr_001_4199:
    ld a, [hl]
    and a
    jr nz, jr_001_41a0

    ld a, $01
    ld [hl], a

jr_001_41a0:
    inc l
    dec b
    jr nz, jr_001_4199

    ld hl, $ffee
    set 5, [hl]
    set 6, [hl]
    ld a, [$da46]
    bit 2, a
    jr nz, jr_001_41df

    ld a, [$da44]
    and a
    jr z, jr_001_41cc

    ld a, $00
    ld [$da44], a
    ld bc, $7a39
    ld de, $7a3e
    call Call_001_74c7
    xor a
    call Call_001_7672
    jr jr_001_41df

jr_001_41cc:
    ld a, $04
    call Call_001_763e
    ld a, [$da2c]
    ld [$da2b], a
    ld a, $00
    ld [$da45], a
    call Call_001_6f71

Jump_001_41df:
jr_001_41df:
    ld a, [$da2a]
    bit 4, a
    jr z, jr_001_4224

    call Call_001_7967
    jr nc, jr_001_41f6

    ld hl, $da2a
    res 4, [hl]
    call Call_001_78e4
    jp Jump_000_3d63


jr_001_41f6:
    ld a, [$d9f9]
    ld c, a
    ld a, [$d9fa]
    ld b, a
    dec bc
    ld a, c
    ld [$d9f9], a
    ld a, b
    ld [$d9fa], a
    or c
    jr nz, jr_001_4224

    ld hl, $da2a
    res 4, [hl]
    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_421b:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_421b

    jp InitScreenForOpening2


jr_001_4224:
    jp Jump_000_3da5


PrepareSoftReset:
    call Call_000_1214
    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_4236:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_4236

    call PrepareCopyrightTilemapUpdate
    call Call_000_382e
    jp Jump_000_09c3


Call_001_4245:
    ld hl, $d9c2
    ld a, [hl]
    and a
    jr z, jr_001_425f

    dec [hl]
    jr nz, jr_001_427b

    ldh a, [$ffef]
    bit 6, a
    call nz, Call_000_245b
    ldh a, [$ffef]
    bit 7, a
    call nz, Call_000_2454
    jr jr_001_427b

jr_001_425f:
    ldh a, [$ffef]
    bit 6, a
    jr z, jr_001_426e

    ld a, $ff
    ld [$da65], a
    call Call_000_247a
    ret


jr_001_426e:
    bit 7, a
    jr z, jr_001_427b

    ld a, $ff
    ld [$da65], a
    call Call_000_24ce
    ret


jr_001_427b:
    ldh a, [$ff92]
    swap a
    ld l, a
    ld h, $c2
    ld a, [hl]
    bit 6, a
    jp nz, Jump_001_42cd

    bit 1, a
    jp nz, Jump_001_42c4

    ldh a, [$ffef]
    bit 1, a
    jr z, jr_001_42a2

    ldh a, [$ff93]
    and a
    jr z, jr_001_429c

    xor a
    call PrepareForClearBufferStack

jr_001_429c:
    ld a, $01
    call Call_001_71ec
    ret


jr_001_42a2:
    ldh a, [$ff93]
    and a
    jr z, jr_001_42ab

    xor a
    call PrepareForClearBufferStack

jr_001_42ab:
    xor a
    ldh [$fff7], a
    call Call_000_08fc
    call Call_001_4508
    ld a, [$d9f6]
    cp $ff
    call nz, Call_000_27ad
    ldh a, [$ffef]
    bit 5, a
    call nz, Call_000_2851
    ret


Jump_001_42c4:
    ld a, $ff
    ld [$da65], a
    call Call_000_264e
    ret


Jump_001_42cd:
    ld a, $ff
    ld [$da65], a
    call $257b
    ret


Jump_001_42d6:
    ld a, [hl+]
    ldh [$ffe4], a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, e
    cp c
    jr nc, jr_001_42fc

    ld h, b
    ld l, c
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ldh a, [$ffe4]
    ld l, a
    and $3f
    ld h, a
    ld a, l
    and $c0
    rla
    jr nc, jr_001_42f9

    set 6, a

jr_001_42f9:
    or h
    ldh [$ffe4], a

jr_001_42fc:
    ldh a, [$ffe4]
    swap a
    and $03
    ld hl, $384a
    cp $00
    jr z, jr_001_431a

    ld hl, $38bf
    cp $01
    jr z, jr_001_431a

    ld hl, $3936
    cp $02
    jr z, jr_001_431a

    ld hl, $39ac

jr_001_431a:
    ld a, $c3
    ldh [$ff9e], a
    ld a, l
    ldh [$ff9f], a
    ld a, h
    ldh [$ffa0], a
    ld a, b
    ldh [$ffe5], a
    ld a, c
    ldh [$ffe6], a
    ld a, d
    ldh [$ffe7], a
    ld a, e
    ldh [$ffe8], a
    ld e, c
    sla e
    inc e
    jr nc, jr_001_4339

    ld a, $70
    ld e, a

jr_001_4339:
    ld a, $37
    sub c
    jr nc, jr_001_433f

    xor a

jr_001_433f:
    ld c, d
    ld d, a

jr_001_4341:
    push bc
    push de
    ld a, d
    call $ff9e
    pop de
    pop bc
    inc d
    dec e
    jr nz, jr_001_4341

    ldh a, [$ffe6]
    ld c, a
    ldh a, [$ffe8]
    sub c
    jp z, Jump_001_43f4

    ld l, a
    ld h, $00
    ldh a, [$ffe5]
    ld d, a
    ldh a, [$ffe7]
    sub d
    ld e, a
    ld a, $00
    jr nc, jr_001_4365

    cpl

jr_001_4365:
    sla e
    rla
    sla e
    rla
    sla e
    rla
    sla e
    rla
    sla e
    rla
    sla e
    rla
    ld d, a
    call Call_000_0b09
    ld a, c
    ld l, a
    ldh [$ffea], a
    ld a, b
    ld h, a
    ldh [$ffeb], a
    sra h
    rr l
    ldh a, [$ffe5]
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
    sla c
    rla
    ld b, a
    add hl, bc
    ld c, $08
    ld b, $00
    add hl, bc
    ldh a, [$ffe6]
    ldh [$ffe9], a

jr_001_43a8:
    ld c, l
    ld b, h
    sra b
    rr c
    sra b
    rr c
    sra b
    rr c
    sra b
    rr c
    sra b
    rr c
    sra b
    rr c
    ld a, c
    cp $8f
    jr c, jr_001_43c9

    ld c, $8f

jr_001_43c9:
    ldh a, [$ffe7]
    ld b, a
    push hl
    ldh a, [$ffe9]
    inc a
    ldh [$ffe9], a
    cpl
    inc a
    add $37
    push bc
    call $ff9e
    pop bc
    ldh a, [$ffe9]
    add $37
    push bc
    call $ff9e
    pop bc
    pop hl
    ldh a, [$ffea]
    ld c, a
    ldh a, [$ffeb]
    ld b, a
    add hl, bc
    ldh a, [$ffe8]
    ld b, a
    ldh a, [$ffe9]
    cp b
    jr nz, jr_001_43a8

Jump_001_43f4:
    ldh a, [$ffe4]
    bit 6, a
    jr nz, jr_001_4415

    ldh a, [$ffe6]
    ld c, a
    ld a, $37
    sub c
    jr nc, jr_001_4403

    xor a

jr_001_4403:
    ld b, a
    ld a, $37
    add c
    jr c, jr_001_440d

    cp $70
    jr c, jr_001_440f

jr_001_440d:
    ld a, $6f

jr_001_440f:
    ld c, a
    ldh a, [$ffe5]
    call Call_000_3a1f

jr_001_4415:
    ldh a, [$ffe4]
    bit 7, a
    ret nz

    ldh a, [$ffe8]
    ld c, a
    ld a, $37
    sub c
    jr nc, jr_001_4423

    xor a

jr_001_4423:
    ld b, a
    ld a, $37
    add c
    jr c, jr_001_442d

    cp $70
    jr c, jr_001_442f

jr_001_442d:
    ld a, $6f

jr_001_442f:
    ld c, a
    ldh a, [$ffe7]
    call Call_000_3a1f
    ret


Call_001_4436:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld [$dc35], a
    ld a, [hl-]
    ld [$dc36], a
    dec hl
    ld a, [de]
    ld c, a
    ld a, b
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    dec de
    dec de
    ld l, e
    ld h, d
    ld a, c
    ld [hl+], a
    ld a, [$dc35]
    ld [hl+], a
    ld a, [$dc36]
    ld [hl+], a
    ld e, b
    xor a
    ld d, a
    ld b, a
    ld hl, $dacf
    add hl, bc
    ld c, l
    ld b, h
    push hl
    ld hl, $dacf
    add hl, de
    push hl
    ld a, [hl+]
    ld [$dc2e], a
    ld a, [hl+]
    ld [$dc2f], a
    ld a, [hl+]
    ld [$dc30], a
    ld a, [hl+]
    ld [$dc31], a
    ld a, [hl+]
    ld [$dc32], a
    ld a, [hl+]
    ld [$dc33], a
    ld a, [hl]
    ld [$dc34], a
    pop hl
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    pop hl
    ld a, [$dc2e]
    ld [hl+], a
    ld a, [$dc2f]
    ld [hl+], a
    ld a, [$dc30]
    ld [hl+], a
    ld a, [$dc31]
    ld [hl+], a
    ld a, [$dc32]
    ld [hl+], a
    ld a, [$dc33]
    ld [hl+], a
    ld a, [$dc34]
    ld [hl], a
    ret


    ld hl, $dbcb
    ld b, $ff
    ldh a, [$fff8]

jr_001_44bf:
    inc b
    sub $03
    jr nz, jr_001_44bf

jr_001_44c4:
    push bc
    push hl
    ld a, b
    ldh [$ffdd], a
    ld e, l
    ld d, h
    ld a, [hl+]
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

jr_001_44d0:
    push hl
    inc hl
    inc hl
    ld a, [hl-]
    cp b
    jr c, jr_001_44dd

    jr nz, jr_001_44e7

    ld a, [hl]
    cp c
    jr nc, jr_001_44e7

jr_001_44dd:
    pop hl
    ld e, l
    ld d, h
    ld a, [hl+]
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    jr jr_001_44eb

jr_001_44e7:
    pop hl
    inc hl
    inc hl
    inc hl

jr_001_44eb:
    ldh a, [$ffdd]
    dec a
    ldh [$ffdd], a
    jr nz, jr_001_44d0

    pop hl
    ld a, e
    cp l
    jr nz, jr_001_44fb

    ld a, d
    cp h
    jr z, jr_001_4500

jr_001_44fb:
    push hl
    call Call_001_4436
    pop hl

jr_001_4500:
    pop bc
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_001_44c4

    ret


Call_001_4508:
    call FillBufferStackHalf2
    call FillBufferThingD0C1
    ldh a, [$fff7]
    sub $07
    jr c, jr_001_4547

    ld c, a
    ld b, $00
    ld hl, $dacf
    add hl, bc

jr_001_451b:
    push hl
    ld bc, $4537
    push bc
    ld a, [hl]
    and $0f
    cp $02
    jp z, Jump_001_42d6

    cp $04
    jp z, Jump_001_4e37

    cp $06
    jp z, Jump_001_4e37

    cp $08
    jp z, Jump_000_2ef0

    pop hl
    ldh a, [$fff7]
    sub $07
    ldh [$fff7], a
    jr z, jr_001_4547

    ld c, $f9
    ld b, $ff
    add hl, bc
    jr jr_001_451b

jr_001_4547:
    ldh a, [$ff92]
    or $50
    ld c, a
    ld b, $c7
    ld a, [bc]
    cp $ff
    jr nz, jr_001_456d

    ldh a, [$ff92]
    swap a
    ld l, a
    ld h, $c2
    ld a, [hl]
    bit 4, a
    jr nz, jr_001_456d

    ld b, $40
    ld c, $30
    ld hl, $7003
    ld d, $00
    ld a, $02
    call Call_000_14e6

jr_001_456d:
    ret


    ld hl, $c20e
    ld de, $c60b
    ld b, $10

jr_001_4576:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl-]
    ld [de], a
    dec e
    ld a, l
    add $10
    ld l, a
    ld a, e
    add $10
    ld e, a
    dec b
    jr nz, jr_001_4576

    ld hl, $c780
    ld de, $c60d
    ld b, $10

jr_001_458f:
    ld a, [hl+]
    ld [de], a
    ld a, e
    add $10
    ld e, a
    dec b
    jr nz, jr_001_458f

    ldh a, [$ffef]
    ld [$c60e], a
    ld a, [$da2a]
    ld [$c60f], a
    ld a, [$da2b]
    ld [$c61e], a
    ld a, [$da25]
    ld [$c62e], a
    ld a, [$da26]
    ld [$c62f], a
    ld a, [$da27]
    ld [$c63e], a
    ld a, [$da28]
    ld [$c63f], a
    ret


    ld a, [$c907]
    or $50
    ld b, a
    ld a, [$c6ff]
    cp b
    jr nz, jr_001_4626

    ld hl, $c20e
    ld de, $c60b
    ld b, $10

jr_001_45d6:
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl-], a
    dec e
    ld a, l
    add $10
    ld l, a
    ld a, e
    add $10
    ld e, a
    dec b
    jr nz, jr_001_45d6

    ld hl, $c780
    ld de, $c60d
    ld b, $10

jr_001_45ef:
    ld a, [de]
    ld [hl+], a
    ld a, e
    add $10
    ld e, a
    dec b
    jr nz, jr_001_45ef

    ld a, [$c60e]
    and $18
    ldh [$ffef], a
    ld a, [$c60f]
    and $0e
    ld [$da2a], a
    ld a, [$c61e]
    ld [$da2b], a
    ld a, [$c62e]
    ld [$da25], a
    ld a, [$c62f]
    ld [$da26], a
    ld a, [$c63e]
    ld [$da27], a
    ld a, [$c63f]
    ld [$da28], a
    ret


jr_001_4626:
    ld hl, $c200

jr_001_4629:
    ld a, l
    or $0e
    ld l, a
    sla a
    sla a
    and $c0
    ld [hl+], a
    ld a, $24
    ld [hl+], a
    ld a, l
    and a
    jr nz, jr_001_4629

    xor a
    ld [$da2b], a
    set 4, a
    ldh [$ffef], a
    ld a, [$da2a]
    res 0, a
    set 1, a
    res 2, a
    set 3, a
    ld [$da2a], a
    ld l, $80
    ld a, $03
    call TitleExitThing
    ret


Call_001_4659:
    ld b, $02
    ld c, $51
    ld d, $52
    ld e, $1e
    call Call_000_3b68
    ld b, $10
    ld c, $54
    ld d, $08
    ld e, $18
    call Call_000_3b27
    ld b, $08
    ld c, $5c
    ld d, $18
    ld e, $08
    call Call_000_3b27
    ld a, $06
    ld b, $48
    ld c, $5a
    call Call_000_3c0a
    ld a, $06
    ld b, $38
    ld c, $66
    call Call_000_3c0a
    ldh a, [$ff92]
    or $90
    ld l, a
    ld h, $c7
    bit 0, [hl]
    jr z, jr_001_46a2

    push hl
    ld a, $05
    ld b, $48
    ld c, $5a
    call Call_000_3c40
    pop hl

jr_001_46a2:
    bit 1, [hl]
    jr z, jr_001_46b1

    push hl
    ld a, $05
    ld b, $38
    ld c, $66
    call Call_000_3c40
    pop hl

jr_001_46b1:
    bit 6, [hl]
    jr z, jr_001_46c2

    push hl
    ld b, $10
    ld c, $54
    ld d, $08
    ld e, $08
    call Call_000_3b31
    pop hl

jr_001_46c2:
    bit 7, [hl]
    jr z, jr_001_46d3

    push hl
    ld b, $10
    ld c, $64
    ld d, $08
    ld e, $08
    call Call_000_3b31
    pop hl

jr_001_46d3:
    bit 5, [hl]
    jr z, jr_001_46e4

    push hl
    ld b, $08
    ld c, $5c
    ld d, $08
    ld e, $08
    call Call_000_3b31
    pop hl

jr_001_46e4:
    bit 4, [hl]
    ret z

    ld b, $18
    ld c, $5c
    ld d, $08
    ld e, $08
    call Call_000_3b31
    ret


    ld hl, $c7d0
    ld b, $10

jr_001_46f8:
    ld a, $ff
    ld [hl+], a
    dec b
    jr nz, jr_001_46f8

    xor a
    ldh [$ffec], a

Jump_001_4701:
    swap a
    ld l, a
    ld h, $c2
    ld a, [hl]
    bit 0, a
    jp z, Jump_001_479e

    bit 6, a
    jp nz, Jump_001_479e

    inc l
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a
    ld a, l
    and $f0
    add $10
    ld l, a

jr_001_4734:
    ld a, [hl]
    bit 0, a
    jr z, jr_001_4798

    bit 6, a
    jr nz, jr_001_4798

    push bc
    push de
    push hl
    inc l
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    bit 7, b
    jr z, jr_001_4757

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_001_4757:
    ld a, b
    and a
    jr nz, jr_001_4795

    inc l
    inc l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    bit 7, d
    jr z, jr_001_4771

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_001_4771:
    ld a, d
    and a
    jr nz, jr_001_4795

    call Call_000_0a89
    ld a, h
    and a
    jr nz, jr_001_4795

    ld a, l
    cp $6a
    jr nc, jr_001_4795

    pop hl
    push hl
    ld b, $c7
    ld a, l
    swap a
    or $d0
    ld c, a
    ldh a, [$ffec]
    ld [bc], a
    or $d0
    ld c, a
    ld a, l
    swap a
    ld [bc], a

jr_001_4795:
    pop hl
    pop de
    pop bc

jr_001_4798:
    ld a, l
    add $10
    ld l, a
    jr nz, jr_001_4734

Jump_001_479e:
    ldh a, [$ffec]
    inc a
    ldh [$ffec], a
    cp $0f
    jp c, Jump_001_4701

    ret


    ld hl, $c750
    ld b, $10
    ld a, $ff

jr_001_47b0:
    ld [hl+], a
    dec b
    jr nz, jr_001_47b0

    ld a, [$da2a]
    bit 4, a
    ret nz

    ldh a, [$ffee]
    set 7, a
    ldh [$ffee], a
    ld hl, $c200

jr_001_47c3:
    push hl
    ld a, [hl+]
    bit 0, a
    jr z, jr_001_47fa

    bit 5, a
    jr nz, jr_001_47fa

    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, $36
    call Call_001_4956
    jr nc, jr_001_47fa

    set 4, [hl]
    pop bc
    push bc
    ld a, c
    swap a
    and $0f
    ld b, a
    or $50
    ld e, a
    ld d, $c7
    inc l
    inc l
    ld a, [hl+]
    cp $14
    jr nc, jr_001_47f3

    ld [de], a

jr_001_47f3:
    inc l
    inc l
    ld a, [hl]
    and $f0
    or b
    ld [hl], a

jr_001_47fa:
    pop hl
    ld a, l
    add $10
    ld l, a
    jr nz, jr_001_47c3

    ret


Call_001_4802:
    push hl
    ld b, $00

jr_001_4805:
    ld a, [hl+]
    and a
    jr z, jr_001_480c

    inc b
    jr jr_001_4805

jr_001_480c:
    pop hl
    ld a, $12
    sub b
    srl a
    ld b, a
    ret


Call_001_4814:
    ld h, b
    ldh a, [$ffe9]
    ld e, a
    sla a
    ld d, a
    ldh a, [$ffe5]
    sub e
    jr nc, jr_001_4825

    ldh a, [$ffe5]
    add e
    ld d, a
    xor a

jr_001_4825:
    ld b, a
    ldh a, [$ffe7]
    sub e
    ld c, a
    push hl
    ld a, h
    cp $01
    jr nz, jr_001_4835

    call Call_000_3b27
    jr jr_001_4838

jr_001_4835:
    call Call_000_3b31

jr_001_4838:
    pop hl
    call Call_001_4852
    ldh a, [$ffcb]
    cp $0f
    ret z

    ld a, $05
    ld hl, $5045
    call Call_000_30b6
    ld a, $05
    ld hl, $5067
    call Call_000_30b6
    ret


Call_001_4852:
    ldh a, [$ffe9]
    ld e, a
    ldh a, [$ffe5]
    ld b, a
    ldh a, [$ffe7]
    sub e
    ld c, a
    ld a, h
    cp $01
    jr nz, jr_001_4866

    ld a, e
    call Call_000_3c02
    ret


jr_001_4866:
    ld a, e
    call Call_000_3c38
    ret


Call_001_486b:
    ld h, b
    ldh a, [$ffe9]
    ld e, a
    sla a
    ld d, a
    ldh a, [$ffe5]
    sub e
    jr nc, jr_001_487c

    ldh a, [$ffe5]
    add e
    ld d, a
    xor a

jr_001_487c:
    ld b, a
    ldh a, [$ffe7]
    ld c, a
    push hl
    ld a, h
    cp $01
    jr nz, jr_001_488b

    call Call_000_3b27
    jr jr_001_488e

jr_001_488b:
    call Call_000_3b31

jr_001_488e:
    pop hl
    call Call_001_48a0
    ldh a, [$ffcb]
    cp $0f
    ret z

    ld a, $05
    ld hl, $5023
    call Call_000_30b6
    ret


Call_001_48a0:
    ldh a, [$ffe9]
    ld e, a
    ldh a, [$ffe5]
    ld b, a
    ldh a, [$ffe7]
    add e
    ld c, a
    ld a, h
    cp $01
    jr nz, jr_001_48b4

    ld a, e
    call Call_000_3c02
    ret


jr_001_48b4:
    ld a, e
    call Call_000_3c38
    ret


Call_001_48b9:
    ldh a, [$ff87]
    bit 2, a
    jr z, jr_001_48c0

    cpl

jr_001_48c0:
    and $03
    cp $00
    jr z, jr_001_48ee

    cp $01
    jr z, jr_001_48e4

    cp $02
    jr z, jr_001_48d8

    ldh a, [$fff9]
    srl a
    srl a
    cpl
    inc a
    add [hl]
    ret


jr_001_48d8:
    ldh a, [$fff9]
    srl a
    srl a
    srl a
    cpl
    inc a
    add [hl]
    ret


jr_001_48e4:
    ldh a, [$fff9]
    srl a
    srl a
    srl a
    add [hl]
    ret


jr_001_48ee:
    ldh a, [$fff9]
    srl a
    srl a
    add [hl]
    ret


Call_001_48f6:
    ldh a, [$fff0]
    cpl
    add $01
    ld l, a
    ldh a, [$fff1]
    cpl
    adc $00
    ld h, a
    add hl, bc
    ld c, l
    ld b, h
    ldh a, [$fff2]
    cpl
    add $01
    ld l, a
    ldh a, [$fff3]
    cpl
    adc $00
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    push bc
    push de
    call Call_000_0a6d
    pop de
    pop bc
    ld a, l
    ldh [$fffa], a
    ld a, h
    ldh [$fffb], a
    or l
    jr z, jr_001_494d

    ldh a, [$fff4]
    cpl
    inc a
    add $40
    call RefreshHIRAMPosStuff
    bit 7, d
    jr nz, jr_001_494d

    ld l, c
    ld h, b
    bit 7, h
    jr z, jr_001_4941

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a

jr_001_4941:
    ld a, h
    cp d
    jr c, jr_001_494f

    jr nz, jr_001_494d

    ld a, l
    cp e
    jr c, jr_001_494f

    jr z, jr_001_494f

jr_001_494d:
    scf
    ret


jr_001_494f:
    call Call_000_3737
    ldh [$fff9], a
    and a
    ret


Call_001_4956:
    ldh [$ffe9], a
    push bc
    push de
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
    ld a, c
    ldh [$ffc5], a
    ld a, b
    ldh [$ffc6], a
    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a
    ld a, e
    ldh [$ffc7], a
    ld a, d
    ldh [$ffc8], a
    xor a
    ldh [$ffec], a

Jump_001_497d:
    sla a
    sla a
    sla a
    ld l, a
    ld h, $c3
    ld a, [hl+]
    ld e, a
    bit 0, a
    jp z, Jump_001_4a82

    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    cp $20
    jp nc, Jump_001_4a82

    inc l
    inc l
    inc l
    ld a, [hl]
    and $0f
    ld c, a
    ld b, $00
    ld hl, $2c7c
    add hl, bc
    ld a, [hl]
    ldh [$ffea], a
    bit 2, e
    jr z, jr_001_49f2

    ldh a, [$ffc5]
    cpl
    add $01
    ld c, a
    ldh a, [$ffc6]
    cpl
    adc $00
    ld b, a
    ld a, d
    and $0f
    cp b
    jp nz, Jump_001_4a82

    ldh a, [$ffc7]
    cpl
    add $01
    ld l, a
    ldh a, [$ffc8]
    cpl
    adc $00
    ld h, a
    ld a, d
    swap a
    and $0f
    cp h
    jp nz, Jump_001_4a82

    ldh a, [$ffea]
    add $7f
    ld h, a
    ldh a, [$ffea]
    cpl
    inc a
    add $7f
    ld b, a
    ld a, c
    cp b
    jp c, Jump_001_4a82

    cp h
    jp nc, Jump_001_4a82

    ld a, l
    cp b
    jp c, Jump_001_4a82

    cp h
    jp nc, Jump_001_4a82

    jp Jump_001_4a73


jr_001_49f2:
    ld a, d
    and $0f
    ld h, a
    ld l, $80
    ld a, l
    ldh [$ffb6], a
    ld a, h
    ldh [$ffb7], a
    ldh a, [$ffc5]
    ld c, a
    ldh a, [$ffc6]
    ld b, a
    add hl, bc
    ld c, l
    ld b, h
    bit 7, b
    jr z, jr_001_4a15

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_001_4a15:
    ld a, b
    and a
    jr nz, jr_001_4a82

    ld a, d
    swap a
    and $0f
    ld h, a
    ld l, $80
    ld a, l
    ldh [$ffb8], a
    ld a, h
    ldh [$ffb9], a
    ldh a, [$ffc7]
    ld e, a
    ldh a, [$ffc8]
    ld d, a
    add hl, de
    ld e, l
    ld d, h
    bit 7, d
    jr z, jr_001_4a3e

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_001_4a3e:
    ld a, d
    and a
    jr nz, jr_001_4a82

    call Call_000_0a89
    ld a, h
    and a
    jr nz, jr_001_4a82

    ldh a, [$ffe9]
    ld b, a
    ldh a, [$ffea]
    add b
    cp l
    jr c, jr_001_4a82

    pop de
    pop bc
    ld a, l
    ldh [$fffa], a
    ldh a, [$ffec]
    sla a
    sla a
    sla a
    ld l, a
    ld h, $c3
    ldh a, [$ffee]
    bit 7, a
    scf
    ret nz

    ld a, $66
    ldh [$fffb], a
    push hl
    call Call_001_4d79
    pop hl
    scf
    ret


Jump_001_4a73:
    ldh a, [$ffec]
    sla a
    sla a
    sla a
    ld l, a
    ld h, $c3
    pop de
    pop bc
    scf
    ret


Jump_001_4a82:
jr_001_4a82:
    ldh a, [$ffec]
    inc a
    ldh [$ffec], a
    cp $20
    jp nz, Jump_001_497d

    pop de
    pop bc
    xor a
    ret


Jump_001_4a90:
    ldh a, [$ffa1]
    ld e, a
    ldh a, [$ff98]
    cp e
    jr c, jr_001_4a9c

    pop de
    pop bc
    scf
    ret


jr_001_4a9c:
    ld e, l
    ld hl, $c300
    ld a, e
    and $04
    jr z, jr_001_4aad

    ld a, d
    add $10
    ld b, a
    ld c, $01
    jr jr_001_4ace

jr_001_4aad:
    ld a, e
    and $01
    jr z, jr_001_4aba

    ld a, d
    sub $10
    ld b, a
    ld c, $04
    jr jr_001_4ace

jr_001_4aba:
    ld a, e
    and $02
    jr z, jr_001_4ac5

    ld b, d
    inc b
    ld c, $08
    jr jr_001_4ace

jr_001_4ac5:
    ld a, e
    and $08
    jr z, jr_001_4ace

    ld b, d
    dec b
    ld c, $02

jr_001_4ace:
    ld a, [hl+]
    bit 0, a
    jr z, jr_001_4b2f

    ld a, [hl+]
    ldh [$ffc0], a
    ld a, [hl+]
    cp $20
    jr c, jr_001_4b2f

    ldh a, [$ffc0]
    cp d
    jr z, jr_001_4ae9

    cp b
    jr nz, jr_001_4b2f

    ld a, d
    ld d, b
    ld b, a
    ld a, e
    ld e, c
    ld c, a

jr_001_4ae9:
    push bc
    inc l
    inc l
    inc l
    ld a, [hl]
    ld b, a
    and $0f
    and e
    jr z, jr_001_4b0d

    ld a, l
    and $f8
    or $05
    ld l, a
    ldh a, [$ff98]
    ld [hl], a
    ld a, l
    and $f8
    ld l, a
    ldh a, [$ffee]
    bit 7, a
    jr z, jr_001_4b0b

    set 3, [hl]
    jr jr_001_4b0d

jr_001_4b0b:
    set 4, [hl]

jr_001_4b0d:
    ld a, b
    swap a
    and $0f
    and e
    jr z, jr_001_4b2e

    ld a, l
    and $f8
    or $05
    ld l, a
    ldh a, [$ff98]
    ld [hl], a
    ld a, l
    and $f8
    ld l, a
    ldh a, [$ffee]
    bit 7, a
    jr z, jr_001_4b2c

    set 3, [hl]
    jr jr_001_4b2e

jr_001_4b2c:
    set 4, [hl]

jr_001_4b2e:
    pop bc

jr_001_4b2f:
    ld a, l
    and $f8
    add $08
    ld l, a
    jr nz, jr_001_4ace

    ldh a, [$ffee]
    bit 7, a
    jr z, jr_001_4b4a

    ldh a, [$ff98]
    ld b, a
    ldh a, [$ff92]
    cp b
    jr nz, jr_001_4b4a

    ld a, $11
    call sound_test_selection

jr_001_4b4a:
    pop de
    pop bc
    scf
    ret


CalledBeforeUpdatePosition:
    ldh [$ffe9], a
    ldh a, [$fff5]
    dec a
    cp b
    jr c, carry_at_start

    ldh a, [$fff6]
    dec a
    cp d
    jr nc, jr_001_4b6a

carry_at_start:
    ldh a, [$ffe4]
    ld c, a
    ldh a, [$ffe5]
    ld b, a
    ldh a, [$ffe6]
    ld e, a
    ldh a, [$ffe7]
    ld d, a
    scf
    ret


jr_001_4b6a:
    push bc
    ld h, $c4
    ld a, d
    swap a
    or b
    ldh [$ff9b], a
    ld l, a
    ld a, [hl]
    ldh [$ff96], a
    ldh a, [$ffe5]
    ld b, a
    ldh a, [$ffe7]
    swap a
    or b
    ldh [$ff9c], a
    ld l, a
    ld a, [hl]
    ldh [$ff95], a
    pop bc
    ldh a, [$ffe9]
    ld h, a
    ld l, $00
    ldh a, [$ffe5]
    cp b
    jr c, jr_001_4bc6

    jr nz, jr_001_4b99

    ldh a, [$ffe4]
    cp c
    jr c, jr_001_4bc6

    jr z, jr_001_4bf7

jr_001_4b99:
    ldh a, [$ffe4]
    sub h
    jr c, jr_001_4ba3

    ldh a, [$ffe5]
    cp b
    jr z, jr_001_4bf7

jr_001_4ba3:
    ldh a, [$ff95]
    and $08
    jr nz, jr_001_4bbe

    ldh a, [$ffe5]
    cp b
    jr z, jr_001_4bf7

    ldh a, [$ff96]
    and $02
    jr z, jr_001_4bf7

    ldh a, [$ffe5]
    ld b, a
    ld c, h
    set 1, l
    set 7, l
    jr jr_001_4bf7

jr_001_4bbe:
    ldh a, [$ffe5]
    ld b, a
    ld c, h
    set 3, l
    jr jr_001_4bf7

jr_001_4bc6:
    ldh a, [$ffe4]
    add h
    jr c, jr_001_4bd0

    ldh a, [$ffe5]
    cp b
    jr z, jr_001_4bf7

jr_001_4bd0:
    ldh a, [$ff95]
    and $02
    jr nz, jr_001_4bee

    ldh a, [$ffe5]
    cp b
    jr z, jr_001_4bf7

    ldh a, [$ff96]
    and $08
    jr z, jr_001_4bf7

    ldh a, [$ffe5]
    ld b, a
    ld a, h
    cpl
    inc a
    ld c, a
    set 3, l
    set 7, l
    jr jr_001_4bf7

jr_001_4bee:
    ldh a, [$ffe5]
    ld b, a
    ld a, h
    cpl
    inc a
    ld c, a
    set 1, l

jr_001_4bf7:
    ldh a, [$ffe7]
    cp d
    jr c, jr_001_4c32

    jr nz, jr_001_4c05

    ldh a, [$ffe6]
    cp e
    jr c, jr_001_4c32

    jr z, jr_001_4c63

jr_001_4c05:
    ldh a, [$ffe6]
    sub h
    jr c, jr_001_4c0f

    ldh a, [$ffe7]
    cp d
    jr z, jr_001_4c63

jr_001_4c0f:
    ldh a, [$ff95]
    and $01
    jr nz, jr_001_4c2a

    ldh a, [$ffe7]
    cp d
    jr z, jr_001_4c63

    ldh a, [$ff96]
    and $04
    jr z, jr_001_4c63

    ldh a, [$ffe7]
    ld d, a
    ld e, h
    set 2, l
    set 7, l
    jr jr_001_4c63

jr_001_4c2a:
    ldh a, [$ffe7]
    ld d, a
    ld e, h
    set 0, l
    jr jr_001_4c63

jr_001_4c32:
    ldh a, [$ffe6]
    add h
    jr c, jr_001_4c3c

    ldh a, [$ffe7]
    cp d
    jr z, jr_001_4c63

jr_001_4c3c:
    ldh a, [$ff95]
    and $04
    jr nz, jr_001_4c5a

    ldh a, [$ffe7]
    cp d
    jr z, jr_001_4c63

    ldh a, [$ff96]
    and $01
    jr z, jr_001_4c63

    ldh a, [$ffe7]
    ld d, a
    ld a, h
    cpl
    inc a
    ld e, a
    set 0, l
    set 7, l
    jr jr_001_4c63

jr_001_4c5a:
    ldh a, [$ffe7]
    ld d, a
    ld a, h
    cpl
    inc a
    ld e, a
    set 2, l

jr_001_4c63:
    ld a, l
    and a
    jr z, jr_001_4c77

    push bc
    push de
    ldh a, [$ff9c]
    bit 7, l
    jr z, jr_001_4c73

    res 7, l
    ldh a, [$ff9b]

jr_001_4c73:
    ld d, a
    jp Jump_001_4a90


jr_001_4c77:
    ldh a, [$ffe9]
    sub $02
    ld h, a
    ld l, $00
    ld a, h
    cp c
    jr c, jr_001_4c8d

    ldh a, [$ff96]
    and $08
    jr z, jr_001_4c8d

    ldh a, [$ffe9]
    ld c, a
    set 3, l

jr_001_4c8d:
    ld a, h
    add c
    jr nc, jr_001_4c9e

    ldh a, [$ff96]
    and $02
    jr z, jr_001_4c9e

    ldh a, [$ffe9]
    cpl
    inc a
    ld c, a
    set 1, l

jr_001_4c9e:
    ld a, h
    cp e
    jr c, jr_001_4cad

    ldh a, [$ff96]
    and $01
    jr z, jr_001_4cad

    ldh a, [$ffe9]
    ld e, a
    set 0, l

jr_001_4cad:
    ld a, h
    add e
    jr nc, jr_001_4cbe

    ldh a, [$ff96]
    and $04
    jr z, jr_001_4cbe

    ldh a, [$ffe9]
    cpl
    inc a
    ld e, a
    set 2, l

jr_001_4cbe:
    ld a, l
    and a
    ret z

    push bc
    push de
    ldh a, [$ff9b]
    ld d, a
    jp Jump_001_4a90


Call_001_4cc9:
    ldh [$ffe9], a
    xor a
    ldh [$ffec], a
    ldh [$ffa3], a
    push bc
    push de
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

Jump_001_4ce6:
    ldh a, [$ffec]
    swap a
    ld l, a
    ld h, $c2
    ldh a, [$ff98]
    swap a
    cp l
    jr z, jr_001_4d6b

    ld a, [hl+]
    bit 0, a
    jr z, jr_001_4d6b

    bit 6, a
    jr nz, jr_001_4d6b

    push bc
    push de
    ld a, [hl+]
    ldh [$ffb6], a
    push hl
    ld h, [hl]
    ld l, a
    ld a, h
    ldh [$ffb7], a
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    bit 7, b
    jr z, jr_001_4d1a

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_001_4d1a:
    ld a, b
    and a
    jr nz, jr_001_4d69

    inc l
    ld a, [hl+]
    ldh [$ffb8], a
    ld h, [hl]
    ld l, a
    ld a, h
    ldh [$ffb9], a
    add hl, de
    ld e, l
    ld d, h
    bit 7, d
    jr z, jr_001_4d38

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_001_4d38:
    ld a, d
    and a
    jr nz, jr_001_4d69

    call Call_000_0a89
    ld a, h
    and a
    jr nz, jr_001_4d69

    ldh a, [$ffe9]
    add $30
    cp l
    jr c, jr_001_4d69

    add sp, $04
    pop de
    pop bc
    ld a, l
    ldh [$fffa], a
    ldh a, [$ffec]
    swap a
    ld l, a
    ld h, $c2
    ldh a, [$ffee]
    bit 7, a
    scf
    ret nz

    ld a, $60
    ldh [$fffb], a
    push hl
    call Call_001_4d79
    pop hl
    scf
    ret


jr_001_4d69:
    pop de
    pop bc

jr_001_4d6b:
    ldh a, [$ffec]
    inc a
    ldh [$ffec], a
    cp $10
    jp c, Jump_001_4ce6

    pop de
    pop bc
    xor a
    ret


Call_001_4d79:
    ld a, c
    ldh [$ffb2], a
    ld a, b
    ldh [$ffb3], a
    ld a, e
    ldh [$ffb4], a
    ld a, d
    ldh [$ffb5], a
    ldh a, [$ffb6]
    ld l, a
    ldh a, [$ffb7]
    ld h, a
    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a
    add hl, bc
    ld c, l
    ld b, h
    ldh a, [$ffb8]
    ld l, a
    ldh a, [$ffb9]
    ld h, a
    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    ldh a, [$fffa]
    ld h, a
    ldh a, [$fffb]
    ld l, a

jr_001_4db1:
    push hl
    ldh a, [$ffb2]
    ld l, a
    ldh a, [$ffb3]
    ld h, a
    add hl, bc
    ld a, l
    ldh [$ffb2], a
    ld a, h
    ldh [$ffb3], a
    ldh a, [$ffb4]
    ld l, a
    ldh a, [$ffb5]
    ld h, a
    add hl, de
    ld a, l
    ldh [$ffb4], a
    ld a, h
    ldh [$ffb5], a
    pop hl
    ldh a, [$fffa]
    add h
    ldh [$fffa], a
    cp l
    jr c, jr_001_4db1

    ld h, a
    xor a
    ldh [$fffa], a

jr_001_4dd9:
    push hl
    ldh a, [$ffb2]
    ld l, a
    ldh a, [$ffb3]
    ld h, a
    ldh a, [$ffb6]
    ld c, a
    ldh a, [$ffb7]
    ld b, a
    add hl, bc
    srl h
    rr l
    ld c, l
    ld b, h
    ldh a, [$ffb4]
    ld l, a
    ldh a, [$ffb5]
    ld h, a
    ldh a, [$ffb8]
    ld e, a
    ldh a, [$ffb9]
    ld d, a
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    pop hl
    srl h
    ret z

    ldh a, [$fffa]
    add h
    sub l
    ret z

    cp $ff
    ret z

    cp $01
    ret z

    ldh a, [$fffa]
    add h
    cp l
    jr nc, jr_001_4e28

    ld a, c
    ldh [$ffb6], a
    ld a, b
    ldh [$ffb7], a
    ld a, e
    ldh [$ffb8], a
    ld a, d
    ldh [$ffb9], a
    ldh a, [$fffa]
    add h
    ldh [$fffa], a
    jr jr_001_4dd9

jr_001_4e28:
    ld a, c
    ldh [$ffb2], a
    ld a, b
    ldh [$ffb3], a
    ld a, e
    ldh [$ffb4], a
    ld a, d
    ldh [$ffb5], a
    jr jr_001_4dd9

jr_001_4e36:
    ret


Call_001_4e37:
Jump_001_4e37:
    ld a, $0f
    ldh [$ffcb], a
    ld a, [hl+]
    ldh [$ff97], a
    and $20
    jr nz, jr_001_4e36

    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    cp $80
    jr c, jr_001_4e4f

    ld a, $80

jr_001_4e4f:
    ldh [$fff9], a
    ld a, [hl+]
    ldh [$ffec], a
    ldh a, [$ff97]
    bit 4, a
    jr nz, jr_001_4e62

    ld a, [hl]
    ldh [$ffcb], a
    cp $0f
    jp nz, Jump_001_4f43

jr_001_4e62:
    ld l, c
    ld h, b
    ld a, [hl+]
    ldh [$ffe9], a
    ld e, a
    ldh a, [$ff97]
    and $0f
    cp $06
    jr z, jr_001_4e7b

    ldh a, [$ffec]
    bit 5, a
    jr z, jr_001_4e7b

    call Call_001_48b9
    jr jr_001_4e7c

jr_001_4e7b:
    ld a, [hl+]

jr_001_4e7c:
    add e
    ldh [$ffe7], a
    ld c, a
    ld a, d
    add $48
    ldh [$ffe5], a
    ld b, a
    ld a, e
    push af
    push bc
    ldh a, [$fff9]
    add $38
    ld c, a
    ldh a, [$ff97]
    and $40
    jr nz, jr_001_4e98

    ld a, e
    call Call_000_3c38

jr_001_4e98:
    pop bc
    pop af
    ld d, a
    ldh a, [$ff97]
    and $0f
    cp $06
    jp z, Jump_001_4f33

    ld h, $01
    ldh a, [$ff97]
    and $10
    jr z, jr_001_4eae

    ld h, $03

jr_001_4eae:
    push bc
    push de
    push hl
    ldh a, [$ffec]
    bit 1, a
    jr z, jr_001_4ed5

    ld a, c
    sub d
    ld c, a
    ld a, h
    cp $03
    jr z, jr_001_4eca

    ld a, d
    call Call_000_3c12
    ld h, $01
    call Call_001_4852
    jr jr_001_4ee4

jr_001_4eca:
    ld a, d
    call Call_000_3c48
    ld h, $03
    call Call_001_4852
    jr jr_001_4ee4

jr_001_4ed5:
    ld a, h
    cp $03
    jr z, jr_001_4ee0

    ld a, d
    call Call_000_3c0e
    jr jr_001_4ee4

jr_001_4ee0:
    ld a, d
    call Call_000_3c44

jr_001_4ee4:
    pop hl
    pop de
    pop bc
    push bc
    push de
    push hl
    ldh a, [$ffec]
    bit 2, a
    jr z, jr_001_4f0e

    ld a, c
    add d
    ld c, a
    ld a, h
    cp $03
    jr z, jr_001_4f03

    ld a, d
    call Call_000_3c0e
    ld h, $01
    call Call_001_48a0
    jr jr_001_4f1d

jr_001_4f03:
    ld a, d
    call Call_000_3c44
    ld h, $03
    call Call_001_48a0
    jr jr_001_4f1d

jr_001_4f0e:
    ld a, h
    cp $03
    jr z, jr_001_4f19

    ld a, d
    call Call_000_3c12
    jr jr_001_4f1d

jr_001_4f19:
    ld a, d
    call Call_000_3c48

jr_001_4f1d:
    pop hl
    pop de
    pop bc
    push hl
    ld b, h
    ldh a, [$ffec]
    bit 6, a
    call nz, Call_001_4814
    pop hl
    ld b, h
    ldh a, [$ffec]
    bit 7, a
    call nz, Call_001_486b
    ret


Jump_001_4f33:
    push bc
    push de
    ld a, d
    call Call_000_3c40
    pop de
    pop bc
    ld a, d
    sub $01
    ret c

    call Call_000_3c0a
    ret


Jump_001_4f43:
    ld l, a
    ldh a, [$ff97]
    and $fe
    bit 3, l
    jr z, jr_001_4f4e

    set 0, a

jr_001_4f4e:
    ldh [$ff97], a
    ld a, l
    and $07
    ld l, c
    ld h, b
    sla a
    sla a
    ld c, a
    ld b, $00
    push bc
    push de
    push hl
    ld a, d
    add $48
    ld b, a
    ldh a, [$fff9]
    add $38
    ld c, a
    ldh a, [$ff97]
    and $40
    jr nz, jr_001_4f72

    ld a, [hl]
    call Call_000_3c38

jr_001_4f72:
    pop hl
    pop de
    pop bc
    ld a, d
    add $48
    ldh [$ffe5], a
    sub [hl]
    ld d, a
    ld a, [hl+]
    ldh [$ffe9], a
    ldh a, [$ffec]
    bit 5, a
    jr z, jr_001_4f8b

    call Call_001_48b9
    inc hl
    jr jr_001_4f8c

jr_001_4f8b:
    ld a, [hl+]

jr_001_4f8c:
    ld e, a
    ldh a, [$ffe9]
    add e
    ldh [$ffe7], a
    ld a, [hl+]
    ldh [$ffa3], a
    ld a, [hl+]
    add d
    ld d, a
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    ld l, c
    ld h, b
    ld b, d
    ld a, c
    ld c, e
    ld d, $00
    ldh a, [$ff97]
    rra
    jr nc, jr_001_4fac

    ld d, $02

jr_001_4fac:
    push bc
    push de
    ldh a, [$ffec]
    bit 6, a
    jr nz, jr_001_4fca

    bit 1, a
    jr z, jr_001_4fc5

    set 0, d
    push bc
    push de
    push hl
    ld h, $01
    call Call_001_4852
    pop hl
    pop de
    pop bc

jr_001_4fc5:
    ldh a, [$ffa3]
    call Call_000_14e6

jr_001_4fca:
    pop de
    pop bc
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ffe9]
    add c
    ld c, a
    ldh a, [$ffec]
    bit 7, a
    jr nz, jr_001_4ff0

    bit 2, a
    jr z, jr_001_4feb

    set 0, d
    push bc
    push de
    push hl
    ld h, $01
    call Call_001_48a0
    pop hl
    pop de
    pop bc

jr_001_4feb:
    ldh a, [$ffa3]
    call Call_000_14e6

jr_001_4ff0:
    ld b, $01
    ldh a, [$ffec]
    bit 6, a
    call nz, Call_001_4814
    ld b, $01
    ldh a, [$ffec]
    bit 7, a
    call nz, Call_001_486b
    ret


    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    ld b, $07
    rlca
    ld c, $0d
    inc c
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0f0f], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    ld a, b
    ldh [rPCM34], a
    ret nz

    ld [hl], a
    and b
    ld [hl], a
    add b
    ld [hl], a
    ld h, b
    ld [hl], a
    ld b, b
    ld [hl], a
    jr nz, @+$79

    nop
    ld [hl], a
    ldh [rPCM12], a
    ret nz

    db $76
    and b
    db $76
    add b
    db $76
    ld h, b
    db $76
    ld b, b
    db $76
    ld b, b
    halt
    nop
    nop
    ldh [$ff79], a
    ret nz

    ld a, c
    and b
    ld a, c
    add b
    ld a, c
    ld h, b
    ld a, c
    ld b, b
    ld a, c
    jr nz, jr_001_50ce

    nop
    ld a, c
    ldh [$ff78], a
    ret nz

    ld a, b
    and b
    ld a, b
    add b
    ld a, b
    ld h, b
    ld a, b
    ld b, b
    ld a, b
    jr nz, jr_001_50dd

    jr nz, jr_001_50df

    nop
    nop
    ret nz

    ld a, e
    and b
    ld a, e
    add b
    ld a, e
    ld h, b
    ld a, e
    ld b, b
    ld a, e
    jr nz, jr_001_50f0

    nop
    ld a, e
    ldh [$ff7a], a
    ret nz

    ld a, d
    and b
    ld a, d
    add b
    ld a, d
    ld h, b
    ld a, d
    ld b, b
    ld a, d
    jr nz, jr_001_50ff

    nop
    ld a, d
    nop
    ld a, d
    jr nz, jr_001_50a3

    rlca
    nop
    sbc a
    ld b, [hl]
    and d
    ld c, b
    and l
    ld c, d
    xor b
    ld c, h
    xor e
    ld c, [hl]
    xor [hl]
    ld d, b
    or c
    ld d, d
    or h
    ld d, h
    or a
    ld d, [hl]
    cp d
    ld e, b
    cp l
    ld e, d

jr_001_50a3:
    ret nz

    ld e, h
    jp $c65e


    ld h, b
    ret


    ld h, d
    call z, $1c64
    inc e
    ld b, $00
    nop
    ld b, b
    adc e
    ld b, c
    ld d, $43
    and c
    ld b, h
    inc l
    ld b, [hl]
    or a
    ld b, a
    ld b, d
    ld c, c
    call Call_001_584a
    ld c, h
    db $e3
    ld c, l
    ld l, [hl]
    ld c, a
    ld sp, hl
    ld d, b
    add h
    ld d, d
    rrca
    ld d, h
    sbc d

jr_001_50ce:
    ld d, l
    dec h
    ld d, a
    ld a, [de]
    ld e, $05
    cp $00
    ld b, b
    ld l, a
    ld b, c
    sbc $42
    ld c, l
    ld b, h

jr_001_50dd:
    cp h
    ld b, l

jr_001_50df:
    dec hl
    ld b, a
    sbc d
    ld c, b
    add hl, bc
    ld c, d
    ld a, b
    ld c, e
    rst $20
    ld c, h
    ld d, [hl]
    ld c, [hl]
    push bc
    ld c, a
    inc [hl]
    ld d, c
    and e

jr_001_50f0:
    ld d, d
    ld [de], a
    ld d, h
    add c
    ld d, l
    jr jr_001_5117

    rlca
    nop
    rst $08
    ld h, [hl]
    ld a, [c]
    ld h, a
    dec d
    ld l, c

jr_001_50ff:
    jr c, jr_001_516b

    ld e, e
    ld l, e
    ld a, [hl]
    ld l, h
    and c
    ld l, l
    call nz, $e76e
    ld l, a
    ld a, [bc]
    ld [hl], c
    dec l
    ld [hl], d
    ld d, b
    ld [hl], e
    ld [hl], e
    ld [hl], h
    sub [hl]
    ld [hl], l
    cp c
    db $76

jr_001_5117:
    call c, $1677
    ld [hl+], a
    ld b, $fe
    or b
    ld e, b
    cp e
    ld e, c
    add $5a
    pop de
    ld e, e
    call c, $e75c
    ld e, l
    ld a, [c]
    ld e, [hl]
    db $fd
    ld e, a
    ld [$1361], sp
    ld h, d
    ld e, $63
    add hl, hl
    ld h, h
    inc [hl]
    ld h, l
    ccf
    ld h, [hl]
    ld c, d
    ld h, a
    ld d, l
    ld l, b
    inc d
    inc h
    dec b
    nop
    ldh a, [rRP]
    cp e
    ld d, a
    add [hl]
    ld e, b
    ld d, c
    ld e, c
    inc e
    ld e, d
    rst $20
    ld e, d
    or d
    ld e, e
    ld a, l
    ld e, h
    ld c, b
    ld e, l
    inc de
    ld e, [hl]
    sbc $5e
    xor c
    ld e, a
    ld [hl], h
    ld h, b
    ccf
    ld h, c
    ld a, [bc]
    ld h, d
    push de
    ld h, d
    ld [de], a
    ld h, $05
    cp $a0
    ld h, e
    ld d, a
    ld h, h
    ld c, $65

jr_001_516b:
    push bc
    ld h, l
    ld a, h
    ld h, [hl]
    inc sp
    ld h, a
    ld [$a167], a
    ld l, b
    ld e, b
    ld l, c
    rrca
    ld l, d
    add $6a
    ld a, l
    ld l, e
    inc [hl]
    ld l, h
    db $eb
    ld l, h
    and d
    ld l, l
    ld e, c
    ld l, [hl]
    db $10
    jr z, jr_001_518e

    nop
    ld h, b
    ld l, c
    db $e3
    ld l, c
    ld h, [hl]

jr_001_518e:
    ld l, d
    jp hl


    ld l, d
    ld l, h
    ld l, e
    rst $28
    ld l, e
    ld [hl], d
    ld l, h
    push af
    ld l, h
    ld a, b
    ld l, l
    ei
    ld l, l
    ld a, [hl]
    ld l, [hl]
    ld bc, $846f
    ld l, a
    rlca
    ld [hl], b
    adc d
    ld [hl], b
    dec c
    ld [hl], c
    ld c, $2a
    dec b
    cp $10
    ld l, a
    add e
    ld l, a
    or $6f
    ld l, c
    ld [hl], b
    call c, $4f70
    ld [hl], c
    jp nz, $3571

    ld [hl], d
    xor b
    ld [hl], d
    dec de
    ld [hl], e
    adc [hl]
    ld [hl], e
    ld bc, $7474
    ld [hl], h
    rst $20
    ld [hl], h
    ld e, d
    ld [hl], l
    call $0c75
    inc l
    ld b, $00
    sub b
    ld [hl], c
    db $db
    ld [hl], c
    ld h, $72
    ld [hl], c
    ld [hl], d
    cp h
    ld [hl], d
    rlca
    ld [hl], e
    ld d, d
    ld [hl], e
    sbc l
    ld [hl], e
    add sp, $73
    inc sp
    ld [hl], h
    ld a, [hl]
    ld [hl], h
    ret


    ld [hl], h
    inc d
    ld [hl], l
    ld e, a
    ld [hl], l
    xor d
    ld [hl], l
    push af
    ld [hl], l
    ld a, [bc]
    ld l, $07
    cp $ff
    ld a, b
    ld a, $79
    ld a, l
    ld a, c
    cp h
    ld a, c
    ei
    ld a, c
    ld a, [hl-]
    ld a, d
    ld a, c
    ld a, d
    cp b
    ld a, d
    rst $30
    ld a, d
    ld [hl], $7b
    ld [hl], l
    ld a, e
    or h
    ld a, e
    di
    ld a, e
    ld [hl-], a
    ld a, h
    ld [hl], c
    ld a, h
    or b
    ld a, h
    ld [$0630], sp
    nop
    ld b, b
    db $76
    ld h, e
    db $76
    add [hl]
    db $76
    xor c
    db $76
    call z, $ef76
    db $76
    ld [de], a
    ld [hl], a
    dec [hl]
    ld [hl], a
    ld e, b
    ld [hl], a
    ld a, e
    ld [hl], a
    sbc [hl]
    ld [hl], a
    pop bc
    ld [hl], a
    db $e4
    ld [hl], a
    rlca
    ld a, b
    ld a, [hl+]
    ld a, b
    ld c, l
    ld a, b
    ld b, $32
    ld b, $fe
    ld [hl], b
    ld a, b
    adc e
    ld a, b
    and [hl]
    ld a, b
    pop bc
    ld a, b
    call c, $f778
    ld a, b
    ld [de], a
    ld a, c
    dec l
    ld a, c
    ld c, b
    ld a, c
    ld h, e
    ld a, c
    ld a, [hl]
    ld a, c
    sbc c
    ld a, c
    or h
    ld a, c
    rst $08
    ld a, c
    ld [$0579], a
    ld a, d
    inc b
    inc [hl]
    rlca
    nop
    rst $28
    ld a, h
    ld a, [$057c]
    ld a, l
    db $10
    ld a, l
    dec de
    ld a, l
    ld h, $7d
    ld sp, $3c7d
    ld a, l
    ld b, a
    ld a, l
    ld d, d
    ld a, l
    ld e, l
    ld a, l
    ld l, b
    ld a, l
    ld [hl], e
    ld a, l
    ld a, [hl]
    ld a, l
    adc c
    ld a, l
    sub h
    ld a, l
    ld [bc], a
    ld [hl], $07
    cp $9f
    ld a, l
    and [hl]
    ld a, l
    xor l
    ld a, l
    or h
    ld a, l
    cp e
    ld a, l
    jp nz, $c97d

    ld a, l
    ret nc

    ld a, l
    rst $10
    ld a, l
    sbc $7d
    push hl
    ld a, l
    db $ec
    ld a, l
    di
    ld a, l
    ld a, [$017d]
    ld a, [hl]
    db $08, $7e

TitleExitThing::
    ld h, $c7
    ld b, $10

jr_001_52a9:
    ld [hl+], a
    dec b
    jr nz, jr_001_52a9

    ret


Call_001_52ae:
    ld b, a
    ldh a, [$ff98]
    swap a
    or $0f
    ld l, a
    ld h, $c2
    ld a, [hl]
    srl a
    srl a
    and $07
    ld [$da92], a
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
    jr nc, jr_001_52d1

    dec b

jr_001_52d1:
    ld a, [hl+]
    ld e, a
    rla
    jr nc, jr_001_52d7

    dec d

jr_001_52d7:
    ld a, [$da92]
    and a
    jr z, jr_001_52f4

    ld l, c
    ld h, b
    sra b
    rr c
    sra b
    rr c
    sra b
    rr c
    push de
    ld d, a

jr_001_52ed:
    add hl, bc
    dec d
    jr nz, jr_001_52ed

    ld c, l
    ld b, h
    pop de

jr_001_52f4:
    ld a, [$da92]
    and a
    jr z, jr_001_5311

    ld l, e
    ld h, d
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    push bc
    ld b, a

jr_001_530a:
    add hl, de
    dec b
    jr nz, jr_001_530a

    ld e, l
    ld d, h
    pop bc

jr_001_5311:
    ret


SomethingInInputParser:
    ldh [$ff98], a
    or $50
    ld l, a
    ld h, $c7
    ld a, [hl]
    cp $ff
    jr nz, jr_001_5332

    ld a, [$da2a]
    bit 2, a
    jr z, jr_001_5332

    bit 1, b
    jr z, jr_001_5332

    bit 1, d
    jr nz, jr_001_5332

    xor $08
    ld [$da2a], a

jr_001_5332:
    ld c, $00
    bit 3, a
    jr z, player_at_pod

    ld c, $01
    bit 2, a
    jr nz, player_at_pod

    bit 1, b
    jr nz, player_at_pod

    ld c, $00

player_at_pod:
    ld a, c
    ld [$dab4], a
    ldh a, [$ff98]
    swap a
    ld l, a
    ld h, $c2
    push hl
    ld a, l
    or $0f
    ld l, a
    ld a, [hl]
    ld c, a
    swap a
    srl a
    and $07
    ld e, a
    ld d, $00
    ld hl, $5486
    add hl, de
    ld a, [hl]
    push bc
    ld b, a
    ldh a, [$ff91]
    bit 7, a
    jr nz, jr_001_5372

    ldh a, [$ffa2]
    cp $02
    jr c, jr_001_5374

jr_001_5372:
    srl b

jr_001_5374:
    ld a, b
    pop bc
    ld [$da93], a
    ld a, c
    srl a
    srl a
    and $07
    ld [$da92], a
    pop hl
    push hl
    ld a, [hl+]
    bit 6, a
    jr z, MoveMovementValsFromWRAMToHIRAM

    pop hl
    ret


MoveMovementValsFromWRAMToHIRAM:
    ld a, [hl+]
    ldh [$ffe4], a
    ld a, [hl+]
    ldh [$ffe5], a
    ld a, [hl+]
    ldh [$ffe6], a
    ld a, [hl+]
    ldh [$ffe7], a
    ld a, [hl+]
    ldh [$ffe8], a
    ld a, [$da93]
    ld c, a
    srl a
    ld d, a
    ld a, [$dab4]
    ld e, a
    bit 5, b
    jr z, bit_4_with_b_after_movement_stuff

    ldh a, [$ffe8]
    add c
    bit 1, e
    jr nz, jr_001_53b2

    add d

jr_001_53b2:
    ldh [$ffe8], a

bit_4_with_b_after_movement_stuff:
    bit 4, b
    jr z, jr_001_53c2

    ldh a, [$ffe8]
    sub c
    bit 0, e
    jr nz, jr_001_53c0

    sub d

jr_001_53c0:
    ldh [$ffe8], a

jr_001_53c2:
    ldh a, [$ffe8]
    bit 6, b
    jr nz, bit_6_with_joypad_byte_after_mov

    add $80
    bit 7, b
    jr nz, bit_6_with_joypad_byte_after_mov

jr_001_53ce:
    pop hl
    ld a, [hl]
    bit 2, a
    jr nz, UpdateDirectionHIRAM

    ld a, l
    add $05
    ld l, a
    ldh a, [$ffe8]
    ld [hl], a
    ret


UpdateDirectionHIRAM:
    ld a, l
    add $05
    ld l, a
    ldh a, [$ffe8]
    ldh [$fff4], a
    ld [hl], a
    ret


bit_6_with_joypad_byte_after_mov:
    call Call_001_52ae
    ld a, [$dab4]
    and a
    jr nz, jr_001_53ef

jr_001_53ef:
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
    ld a, $30
    call Call_001_4cc9
    jr nc, PrepareUpdatePositionStuff

    push bc
    ldh a, [$ff98]
    or $00
    ld c, a
    ld b, $c7
    ld a, [bc]
    and a
    jr z, jr_001_541f

    set 1, [hl]
    ld a, l
    swap a
    or $c0
    ld c, a
    ldh a, [$ff98]
    ld [bc], a

jr_001_541f:
    pop bc
    ld a, $30
    call CalledBeforeUpdatePosition
    jr c, jr_001_53ce

PrepareUpdatePositionStuff:
    ldh a, [$ffa1]
    ld h, a
    ldh a, [$ff98]
    cp h
    jr nc, jr_001_5451

    ld a, $30
    call Call_001_4956
    jr nc, jr_001_5451

    bit 5, [hl]
    jr z, jr_001_5451

    inc l
    inc l
    ld a, [hl]
    cp $0e
    jr nz, jr_001_5451

    ld a, l
    add $05
    ld l, a
    ld a, [hl]
    ld [$d9f6], a
    ld [$d9f7], a
    ld a, $ee
    ld [$d9f8], a

jr_001_5451:
    ld a, $30
    call CalledBeforeUpdatePosition
    pop hl
    ld a, [hl+]
    bit 2, a
    jr nz, UpdatePositionStuff

    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ldh a, [$ffe8]
    ld [hl+], a
    ret


UpdatePositionStuff:
    ld a, c
    ldh [$fff0], a
    ld [hl+], a
    ld a, b
    ldh [$fff1], a
    ld [hl+], a
    ld a, e
    ldh [$fff2], a
    ld [hl+], a
    ld a, d
    ldh [$fff3], a
    ld [hl+], a
    ldh a, [$ffe8]
    ldh [$fff4], a
    ld [hl+], a
    ret


    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [bc], a
    inc b
    ld b, $08
    db $10
    jr jr_001_54ad

    ld b, b

Call_001_548e:
jr_001_548e:
    ld a, [de]
    and a
    jr z, jr_001_5496

    ld [hl+], a
    inc de
    jr jr_001_548e

jr_001_5496:
    ld a, b
    cp $0a
    jr c, jr_001_54a7

    sub $0a
    ld b, a
    ld a, $31
    ld [hl+], a
    ld a, b
    add $30
    ld [hl+], a
    jr jr_001_54ae

jr_001_54a7:
    ld a, b
    add $30
    ld [hl+], a
    ld a, $20

jr_001_54ad:
    ld [hl+], a

jr_001_54ae:
    xor a
    ld [hl+], a
    ret


    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld e, a
    inc hl
    nop
    ld e, a
    ld b, h
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, l
    ld e, a
    inc hl
    nop

Call_001_54c3:
    ld hl, $c200

jr_001_54c6:
    xor a
    ld [hl], a
    ld a, l
    or $0f
    ld l, a
    ld a, [hl]
    or $24
    ld [hl], a
    ld a, l
    and $f0
    add $10
    ld l, a
    jr nz, jr_001_54c6

    ld l, $70
    ld a, $03
    call TitleExitThing
    ld a, [$da2a]
    bit 4, a
    ret nz

    ldh a, [$ffa1]
    or $50
    ld b, a
    ld a, [$c6ff]
    cp b
    ret z

    ldh a, [$ff92]
    ld [$c6fe], a
    ldh a, [$ffa1]
    or $50
    ld [$c6ff], a
    ld b, $00

jr_001_54fd:
    push bc
    ld a, b
    swap a
    ld l, a
    ld h, $c6
    ld de, $54b1
    inc b
    call Call_001_548e
    dec b
    pop bc
    inc b
    ld a, b
    cp $10
    jr c, jr_001_54fd

    ret


Call_001_5514:
    swap a
    ld l, a
    ld h, $c6
    ld b, $0a
    ld a, $20

jr_001_551d:
    ld [hl+], a
    dec b
    jr nz, jr_001_551d

    xor a
    ld [hl+], a
    ret


Call_001_5524:
    ldh a, [$ffef]
    bit 5, a
    jr z, jr_001_554c

    ldh a, [$ffa1]
    ld d, a
    ld a, c
    cp d
    jr nc, jr_001_5533

    ld c, $00

jr_001_5533:
    ld a, c
    sla a
    ld c, a
    ld b, $00
    ld hl, $da72
    add hl, bc
    ld a, [hl+]
    ld c, a
    and $0f
    ld b, a
    ld a, c
    swap a
    and $0f
    ld c, a
    ld a, [hl+]
    and $e0
    ret


jr_001_554c:
    ldh a, [rLY]
    ld b, a
    swap a
    and $0f
    ld c, a
    ld a, b
    and $0f
    ld b, a
    ldh a, [$fff6]
    sub $02
    cp c
    jr c, jr_001_554c

    jr z, jr_001_554c

    ldh a, [$fff5]
    sub $02
    cp b
    jr c, jr_001_554c

    jr z, jr_001_554c

    inc b
    inc c
    push bc
    ld a, c
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    pop bc
    and $0f
    ld e, a
    ld d, $00
    xor $0f
    jr z, jr_001_554c

    ld hl, $55c0
    add hl, de
    ld a, [hl]
    ld e, a
    ld hl, $c200

jr_001_5588:
    ld a, [hl+]
    bit 0, a
    jr z, jr_001_5597

    inc l
    ld a, [hl+]
    cp b
    jr nz, jr_001_5597

    inc l
    ld a, [hl+]
    cp c
    jr z, jr_001_554c

jr_001_5597:
    ld a, l
    and $f0
    add $10
    ld l, a
    jr nz, jr_001_5588

    ld hl, $c300

jr_001_55a2:
    ld a, [hl+]
    bit 0, a
    jr z, jr_001_55b6

    ld a, [hl]
    ld d, a
    and $0f
    cp b
    jr nz, jr_001_55b6

    ld a, d
    swap a
    and $0f
    cp c
    jr z, jr_001_554c

jr_001_55b6:
    ld a, l
    and $f8
    add $08
    ld l, a
    jr nz, jr_001_55a2

    ld a, e
    ret


    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    add b
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    nop

Call_001_55d0:
    push af
    ld c, a
    call Call_001_5524
    ld e, a
    pop af
    ld d, a
    swap a
    or $01
    ld l, a
    ld h, $c2
    ld a, $80
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld h, e
    ld a, d
    ld d, c
    ld c, $80
    ld e, $80
    call Call_001_71af
    ret


Call_001_55f4:
    and $0f
    swap a
    ld l, a
    ld a, h
    push af
    ld a, $13
    call sound_test_selection
    ld a, l
    swap a
    ld h, a
    ldh a, [$ff92]
    cp h
    jr nz, jr_001_5646

    ld h, $c2
    xor a
    set 0, a
    set 2, a
    ld [hl+], a
    ld a, c
    ldh [$fff0], a
    ld [hl+], a
    ld a, b
    ldh [$fff1], a
    ld [hl+], a
    ld a, e
    ldh [$fff2], a
    ld [hl+], a
    ld a, d
    ldh [$fff3], a
    ld [hl+], a
    pop af
    and $c0
    ld [hl+], a
    ldh [$fff4], a
    ld a, l
    and $f0
    or $0f
    ld l, a
    ld a, [hl]
    and $03
    ld [$d9fb], a
    ldh a, [$ffee]
    set 3, a
    ldh [$ffee], a
    ld a, $ff
    ld [$d9f6], a
    ldh a, [$ffef]
    res 1, a
    ldh [$ffef], a
    jr jr_001_5661

jr_001_5646:
    ldh a, [$ffa1]
    dec a
    cp h
    ld h, $c2
    ld a, $00
    jr nc, jr_001_5652

    set 5, a

jr_001_5652:
    set 0, a
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop af
    and $c0
    ld [hl+], a

jr_001_5661:
    ld a, l
    swap a
    and $0f
    ld e, a
    ld b, $c7
    ld a, e
    or $30
    ld c, a
    xor a
    ld [bc], a
    ld a, e
    or $00
    ld c, a
    xor a
    ld [bc], a
    ld a, e
    or $20
    ld c, a
    xor a
    ld [bc], a
    ld a, e
    or $40
    ld c, a
    xor a
    ld [bc], a
    ld a, [$da2a]
    bit 4, a
    jr nz, jr_001_5691

    ld d, $00
    ld hl, $d9d3
    add hl, de
    ld a, $12
    ld [hl], a

jr_001_5691:
    ld a, e
    swap a
    or $0b
    ld l, a
    ld h, $c2
    ld a, e
    or $f0
    ld c, a
    ld a, [bc]
    ld [hl+], a
    ld a, e
    or $80
    ld c, a
    ld a, [bc]
    ld [hl], a
    ret


    ld a, [hl+]
    ldh [$ffdd], a
    ld a, l
    and $f0
    or $0e
    ld l, a
    ld a, [hl]
    ldh [$ffc9], a
    call Call_001_48f6
    ret c

    cp $41
    jr c, jr_001_56bc

    ld a, $40

jr_001_56bc:
    sla a
    ld c, a
    ld b, $00
    push bc
    ldh a, [$ffdd]
    ld e, a
    ldh a, [$fff4]
    cpl
    inc a
    add e
    ld e, a
    ldh a, [$ffe7]
    sra a
    add e
    srl a
    srl a
    srl a
    ld c, a
    ld b, $00
    ld hl, $5003
    add hl, bc
    ld a, [hl]
    and $0f
    ldh [$ffdd], a
    pop bc
    ld hl, $7d56
    ldh a, [$ffc9]
    bit 4, a
    jr z, jr_001_56f4

    ldh a, [$ff87]
    rra
    jr nc, jr_001_56f4

    ld hl, $7dd8

jr_001_56f4:
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [hl]
    ld d, a
    ldh a, [$ffe7]
    add $48
    ld e, a
    sub d
    jr nc, jr_001_5704

    xor a

jr_001_5704:
    ld b, a
    ld a, e
    add d
    cp $90
    jr c, jr_001_570d

    ld a, $8f

jr_001_570d:
    ld c, a
    call Call_000_36d0
    jp c, Jump_001_5716

    pop bc
    ret


Jump_001_5716:
    ld h, $c2
    ldh a, [$ffa8]
    ld l, a
    set 7, [hl]
    xor a
    ld [$da71], a
    ldh a, [$ffef]
    bit 5, a
    jr z, jr_001_5732

    ldh a, [$ffa1]
    ld b, a
    ld a, l
    swap a
    cp b
    jr c, jr_001_5759

    jr jr_001_5763

jr_001_5732:
    bit 3, a
    jr z, jr_001_5746

    ld a, l
    or $0f
    ld l, a
    ld a, [hl]
    and $03
    ld b, a
    ld a, [$d9fb]
    cp b
    jr z, jr_001_5759

    jr jr_001_5763

jr_001_5746:
    ld a, l
    swap a
    ld b, a
    ld a, [$dab6]
    cp $07
    jr c, jr_001_5763

    ld a, [$dab5]
    cp b
    jr z, jr_001_5759

    jr jr_001_5763

jr_001_5759:
    ldh a, [$ff87]
    rra
    jr c, jr_001_5763

    ld a, $40
    ld [$da71], a

jr_001_5763:
    ldh a, [$fff7]
    ld c, a
    ld b, $00
    ld hl, $dacf
    add hl, bc
    ldh a, [$ff97]
    ld c, a
    swap a
    srl a
    and $10
    ld b, a
    ld a, c
    srl a
    and $20
    or b
    ld b, a
    ld a, [$da71]
    or b
    or $04
    ld [hl+], a
    and $20
    jr z, jr_001_57b6

    push hl
    ld h, $c2
    ldh a, [$ffa8]
    or $0d
    ld l, a
    ld a, [hl]
    srl a
    srl a
    srl a
    cp $08
    jr c, jr_001_579d

    ld a, $07

jr_001_579d:
    ld c, a
    ld b, $00
    ld hl, $57a7
    add hl, bc
    ldh a, [$fff9]
    jp hl


    srl a
    nop
    srl a
    nop
    srl a
    nop
    srl a
    nop
    ldh [$fff9], a
    pop hl

jr_001_57b6:
    pop bc
    ldh a, [$ffe7]
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ldh a, [$fff9]
    ld [hl+], a
    ldh a, [$ffc9]
    ld [hl+], a
    ldh a, [$ffdd]
    ld [hl], a
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
    call Call_000_21ed
    ret


    ld [$dab9], a
    or $70
    ld e, a
    ld d, $c7
    ld a, [de]
    and a
    ret z

    ld a, [$dab9]
    sla a
    ld e, a
    ld d, $00
    ld hl, $da94
    add hl, de
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push bc
    push hl
    call Call_001_583a
    ld a, b
    ld [$daba], a
    pop hl
    pop bc
    add hl, bc
    jr nc, jr_001_5811

    add sp, $02
    ret


jr_001_5811:
    push hl
    call Call_001_583a
    ld a, [$daba]
    cp b
    jr z, jr_001_5825

    ld c, a
    ld a, b
    sub c
    ld b, a
    ld a, [$dab9]
    call Call_001_584c

jr_001_5825:
    pop bc
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, [$dab9]
    ld b, a
    ldh a, [$ff92]
    cp b
    ret nz

    ldh a, [$ffee]
    set 6, a
    ldh [$ffee], a
    ret


Call_001_583a:
    ld de, $ff9c
    ld b, $00

jr_001_583f:
    ld a, h
    cp $00
    jr nz, jr_001_5847

    ld a, l
    cp $64

jr_001_5847:
    ret c

    inc b
    add hl, de

Call_001_584a:
    jr jr_001_583f

Call_001_584c:
    or $70
    ld e, a
    ld d, $c7
    ld a, [de]
    add b
    ld [de], a
    ld a, e
    and $0f
    ld e, a
    ldh a, [$ff92]
    cp e
    ret nz

    ld a, $0e
    call sound_test_selection
    ldh a, [$ffee]
    set 5, a
    ldh [$ffee], a
    ret


CheckIfAPressed:
    bit 0, b
    ret z

    ldh [$ff98], a
    or $60
    ld c, a
    ld b, $c7
    swap a
    and $f0
    ld l, a
    ld h, $c2
    ld a, [hl]
    bit 6, a
    ret nz

    bit 4, a
    ret nz

    ldh a, [$ffef]
    bit 5, a
    jr z, jr_001_588a

    ld a, [bc]
    and a
    jr nz, jr_001_5891

jr_001_588a:
    bit 0, d
    jr z, jr_001_5891

    bit 3, [hl]
    ret nz

jr_001_5891:
    ld a, [hl]
    set 3, a
    set 4, a
    ld [hl+], a
    bit 2, a
    jr z, jr_001_58a1

    ldh a, [$ffee]
    set 1, a
    ldh [$ffee], a

jr_001_58a1:
    ld a, [hl+]
    ldh [$ffe4], a
    ld a, [hl+]
    ldh [$ffe5], a
    ld a, [hl+]
    ldh [$ffe6], a
    ld a, [hl+]
    ldh [$ffe7], a
    ld a, [hl+]
    push af
    push hl
    ldh a, [$ffe4]
    ld c, a
    ldh a, [$ffe5]
    ld b, a
    ldh a, [$ffe6]
    ld e, a
    ldh a, [$ffe7]
    ld d, a
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop af
    ld [hl+], a
    ld a, l
    swap a
    and $0f
    ld b, a
    or $e0
    ld l, a
    ld h, $c7
    ld c, [hl]
    ld a, b
    swap a
    or $0d
    ld l, a
    ld h, $c2
    ld [hl], c
    ldh a, [$ff92]
    cp b
    ret nz

    ld a, $1a
    call sound_test_selection
    ret


Call_001_58e6:
    xor a
    ldh [$ff98], a

Jump_001_58e9:
    swap a
    ld l, a
    ld h, $c2
    ld a, [hl]
    bit 3, a
    jp z, Jump_001_59ad

    ldh [$ffe8], a
    ld a, l
    or $06
    ld l, a
    ld a, [hl+]
    ld c, a
    ldh [$ffe4], a
    ld a, [hl+]
    ld b, a
    ldh [$ffe5], a
    push bc
    ld a, [hl+]
    ld e, a
    ldh [$ffe6], a
    ld a, [hl+]
    ld d, a
    ldh [$ffe7], a
    push de
    ld a, [hl+]
    call Call_001_52ae
    pop hl
    add hl, de
    ld e, l
    ld d, h
    pop hl
    add hl, bc
    ld c, l
    ld b, h
    push bc
    push de
    ld a, $0c
    call CalledBeforeUpdatePosition
    pop de
    pop bc
    jr nc, jr_001_592c

Jump_001_5923:
jr_001_5923:
    ldh a, [$ffe8]
    res 3, a
    ldh [$ffe8], a
    jp Jump_001_5997


jr_001_592c:
    push bc
    push de
    ld a, $0c
    call Call_001_4956
    jr nc, jr_001_593b

    ldh a, [$ffa1]
    ld b, a
    ldh a, [$ff98]
    cp b

jr_001_593b:
    pop de
    pop bc
    jr nc, jr_001_5955

    bit 2, [hl]
    jr nz, jr_001_5955

    push bc
    set 3, [hl]
    ldh a, [$ff98]
    ld c, a
    ld a, l
    or $05
    ld l, a
    ld a, [hl]
    and $f0
    or c
    ld [hl], a
    pop bc
    jr jr_001_5923

jr_001_5955:
    ld a, $0c
    call Call_001_4cc9
    jr nc, jr_001_596a

    push bc
    ldh a, [$ffa1]
    ld b, a
    ldh a, [$ff98]
    cp b
    jr c, jr_001_5969

    ld a, l
    swap a
    cp b

jr_001_5969:
    pop bc

jr_001_596a:
    jr nc, jr_001_5997

    push hl
    ld a, l
    swap a
    or $40
    ld l, a
    ld h, $c7
    ld a, [hl]
    and a
    pop hl
    jr nz, jr_001_5997

    set 1, [hl]
    ld a, l
    swap a
    or $c0
    ld l, a
    ld h, $c7
    ldh a, [$ff98]
    ld [hl], a
    ld h, a
    ldh a, [$ff92]
    cp h
    jp nz, Jump_001_5923

    ldh a, [$ffef]
    set 2, a
    ldh [$ffef], a
    jp Jump_001_5923


Jump_001_5997:
jr_001_5997:
    ldh a, [$ff98]
    swap a
    ld l, a
    ld h, $c2
    ldh a, [$ffe8]
    ld [hl], a
    ld a, l
    or $06
    ld l, a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a

Jump_001_59ad:
    ld hl, $ff98
    inc [hl]
    ld a, [hl]
    cp $10
    jp c, Jump_001_58e9

    ret


    call Call_001_48f6
    ret c

    srl a
    srl a
    cp $41
    jr c, jr_001_59c6

    ld a, $40

jr_001_59c6:
    sla a
    ld c, a
    ld b, $00
    ld hl, $7d56
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    push bc
    ld l, c
    ld h, b
    ld a, [hl]
    ld d, a
    ldh a, [$ffe7]
    add $48
    ld e, a
    sub d
    jr nc, jr_001_59e0

    xor a

jr_001_59e0:
    ld b, a
    ld a, e
    add d
    cp $90
    jr c, jr_001_59e9

    ld a, $8f

jr_001_59e9:
    ld c, a
    call Call_000_36d0
    jr c, jr_001_59f1

    pop bc
    ret


jr_001_59f1:
    ldh a, [$fff7]
    ld c, a
    ld b, $00
    ld hl, $dacf
    add hl, bc
    ld a, $06
    ld [hl+], a
    ldh a, [$ffe7]
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ldh a, [$fff9]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $0f
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


    ld b, b
    nop

Call_001_5a2a:
    ld c, a
    ld b, $00
    ld hl, $d9fe
    add hl, bc
    ld a, [hl]
    ret


Call_001_5a33:
    ld b, $00
    ld hl, $d9fe
    add hl, bc
    ld [hl], a
    ret


Call_001_5a3b:
    ld b, $10
    ld hl, $d9fe
    xor a

jr_001_5a41:
    ld [hl+], a
    dec b
    jr nz, jr_001_5a41

    ret


Call_001_5a46:
    ld hl, $d9fe
    ldh a, [$ffa1]
    ld b, a

jr_001_5a4c:
    ld a, [hl+]
    cp $ff
    scf
    ret nz

    dec b
    jr nz, jr_001_5a4c

    and a
    ret


Call_001_5a56:
    ld [$da0e], a
    ld a, b
    ld [$da21], a
    ld a, l
    ld [$d9fc], a
    ld a, h
    ld [$d9fd], a
    call Call_001_5a3b
    ld hl, $da0e
    ld a, [hl+]
    ld b, $0f

jr_001_5a6e:
    ld [hl+], a
    dec b
    jr nz, jr_001_5a6e

    ld a, $01
    ld [$da23], a
    ld [$da22], a
    call Call_001_5af5
    ld [$da1f], a
    ret


Call_001_5a81:
    ld hl, $da0e
    ld a, [$da21]
    cp $01
    jr nz, jr_001_5a97

    push bc
    ld a, [$da20]
    ld c, a
    ld b, $00
    ld hl, $da0e
    add hl, bc
    pop bc

jr_001_5a97:
    ld a, [hl]
    ret


MenuSystemSomething1:
    ld a, [$d9fc]
    ld l, a
    ld a, [$d9fd]
    ld h, a

jr_001_5aa1:
    ld a, [hl]
    and $f0
    cp $f0

Jump_001_5aa6:
    jp nz, Jump_001_5aa6

    ld a, [hl+]
    cp d
    ret z

MenuSystemSomething2:
    ld bc, $0002
    cp $f0
    jr z, jr_001_5aca

    ld bc, $0004
    cp $f1
    jr z, jr_001_5aca

    ld bc, $0000
    cp $f2
    jr z, jr_001_5aca

    ld bc, $0000
    cp $f3

jr_001_5ac6:
    jr nz, jr_001_5ac6

    scf
    ret


jr_001_5aca:
    add hl, bc

jr_001_5acb:
    ld a, [hl]
    and $f0
    cp $f0
    jr z, jr_001_5aa1

    inc hl
    inc hl
    inc hl
    jr jr_001_5acb

Call_001_5ad7:
    ld d, $f1
    call MenuSystemSomething1
    ret c

    ld e, a
    push hl
    call Call_001_5a81
    pop hl
    and a
    ret z

    ld b, a

jr_001_5ae6:
    push bc
    ld a, e
    ld d, $f1
    call MenuSystemSomething2
    ld e, a
    pop bc
    ret c

    dec b
    jr nz, jr_001_5ae6

    and a
    ret


Call_001_5af5:
    ld d, $f1
    call MenuSystemSomething1
    ld e, a
    ld a, $00
    ret c

    inc a
    ld b, a

jr_001_5b00:
    push bc
    ld a, e
    ld d, $f1
    call MenuSystemSomething2
    ld e, a
    pop bc
    ld a, b
    ret c

    inc b
    jr jr_001_5b00

Jump_001_5b0e:
    jr nc, jr_001_5b35

    call Call_001_5a81
    dec a
    jr nc, jr_001_5b1c

    ld a, [$da1f]
    and a
    ret z

    dec a

jr_001_5b1c:
    ld [hl], a
    ld a, [$da21]
    and a
    jr z, jr_001_5b2c

    ldh a, [$ff92]
    ld b, a
    ld a, [$da20]
    cp b
    jr nz, jr_001_5b34

jr_001_5b2c:
    ld a, $01
    ld [$da22], a
    ld [$da23], a

jr_001_5b34:
    ret


jr_001_5b35:
    call Call_001_5a81
    dec a
    cp $ff
    ret z

    jr jr_001_5b1c

Jump_001_5b3e:
    jr nc, jr_001_5b67

    ld a, [$da1f]
    and a
    ret z

    ld b, a
    call Call_001_5a81
    inc a
    cp b
    jr c, jr_001_5b4e

    xor a

jr_001_5b4e:
    ld [hl], a
    ld a, [$da21]
    and a
    jr z, jr_001_5b5e

    ldh a, [$ff92]
    ld b, a
    ld a, [$da20]
    cp b
    jr nz, jr_001_5b66

jr_001_5b5e:
    ld a, $01
    ld [$da22], a
    ld [$da23], a

jr_001_5b66:
    ret


jr_001_5b67:
    ld a, [$da1f]
    and a
    ret z

    ld b, a
    call Call_001_5a81
    inc a
    cp b
    ret nc

    jr jr_001_5b4e

Call_001_5b75:
jr_001_5b75:
    ld a, [hl]
    and $f0
    cp $f0
    jr nz, jr_001_5b7e

    and a
    ret


jr_001_5b7e:
    push bc
    push hl
    ld a, [hl+]
    and b
    jr z, jr_001_5b90

    ld de, $5b8c
    push de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    pop hl
    pop bc
    scf
    ret


jr_001_5b90:
    pop hl
    pop bc
    inc hl
    inc hl
    inc hl
    jr jr_001_5b75

Call_001_5b97:
    ld b, a
    push bc
    call Call_001_5ad7
    pop bc
    jr c, jr_001_5ba9

    inc hl
    inc hl
    inc hl
    inc hl
    push bc
    call Call_001_5b75
    pop bc
    ret c

jr_001_5ba9:
    push bc
    ld d, $f2
    call MenuSystemSomething1
    pop bc
    ret c

    call Call_001_5b75
    ret


Call_001_5bb5:
    ld d, $f0
    call MenuSystemSomething1
    ld bc, $5bc2
    push bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ret c

    ldh a, [$ff92]
    ld [$da20], a
    call Call_001_5ad7
    ret c

    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    push bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    and h
    jr z, jr_001_5bda

    call UpdateTilemapBeyond9A00

jr_001_5bda:
    pop bc
    and a
    ld [$c9a4], a
    ld d, $01
    ld hl, $5a28
    call Call_000_1bd9
    ret


Call_001_5be8:
    ld b, $00
    call Call_001_5a56
    ld a, $00
    ld [$da1e], a
    ld a, $01
    ld [$da23], a

Jump_001_5bf7:
    ld a, [$da22]
    and a
    jr z, jr_001_5c06

    xor a
    ld [$da22], a
    ld a, $1b
    call sound_test_selection

jr_001_5c06:
    ld a, [$da1e]
    cp $01
    ret z

    ld a, [$da23]
    and a
    jr z, jr_001_5c3e

    xor a
    ld [$da23], a
    xor a
    ld [$c9a3], a
    ld [$c9a4], a
    ld a, [$c9a2]
    cp $02
    call nz, CheckIfCopyrightTilemapUpdate
    call Call_001_5bb5
    call UpdateFrameBuffer
    ld a, [$c905]
    cp $03
    jr nz, jr_001_5c3e

    di
    ld a, [hFadeStatus]
    set 0, a
    res 1, a
    ld [hFadeStatus], a
    ei

jr_001_5c3e:
    ldh a, [$ff87]
    inc a
    ldh [$ff87], a
    call LoadInputsAndOtherStuff
    call Call_000_11f2
    call Call_000_1283
    call Call_001_7122
    xor a
    ld [$da20], a

Jump_001_5c53:
    ld a, [$da21]
    cp $01
    jr nz, jr_001_5c65

    ld a, [$da20]
    call Call_001_5a2a
    cp $ff
    jp z, Jump_001_5ced

jr_001_5c65:
    ld h, $c7
    ld a, [$da20]
    or $a0
    ld l, a
    ld c, [hl]
    ld a, [$da20]
    or $90
    ld l, a
    ld b, [hl]
    bit 6, b
    jr z, jr_001_5c84

    bit 6, c
    jr nz, jr_001_5c84

    push bc
    ld a, $40
    call Call_001_5b97
    pop bc

jr_001_5c84:
    bit 7, b
    jr z, jr_001_5c93

    bit 7, c
    jr nz, jr_001_5c93

    push bc
    ld a, $80
    call Call_001_5b97
    pop bc

jr_001_5c93:
    bit 5, b
    jr z, jr_001_5ca2

    bit 5, c
    jr nz, jr_001_5ca2

    push bc
    ld a, $20
    call Call_001_5b97
    pop bc

jr_001_5ca2:
    bit 4, b
    jr z, jr_001_5cb1

    bit 4, c
    jr nz, jr_001_5cb1

    push bc
    ld a, $10
    call Call_001_5b97
    pop bc

jr_001_5cb1:
    bit 0, b
    jr z, jr_001_5cc0

    bit 0, c
    jr nz, jr_001_5cc0

    push bc
    ld a, $01
    call Call_001_5b97
    pop bc

jr_001_5cc0:
    bit 1, b
    jr z, jr_001_5ccf

    bit 1, c
    jr nz, jr_001_5ccf

    push bc
    ld a, $02
    call Call_001_5b97
    pop bc

jr_001_5ccf:
    bit 2, b
    jr z, jr_001_5cde

    bit 2, c
    jr nz, jr_001_5cde

    push bc
    ld a, $04
    call Call_001_5b97
    pop bc

jr_001_5cde:
    bit 3, b
    jr z, jr_001_5ced

    bit 3, c
    jr nz, jr_001_5ced

    push bc
    ld a, $08
    call Call_001_5b97
    pop bc

Jump_001_5ced:
jr_001_5ced:
    ldh a, [$ffa1]
    ld b, a
    ld a, [$da20]
    inc a
    ld [$da20], a
    cp b
    jp c, Jump_001_5c53

    jp Jump_001_5bf7


    jr nz, jr_001_5d20

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_001_5d2c

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    nop
    ld a, [de]
    ld e, l
    cp $5c
    nop
    nop
    stop
    nop
    cp $5c
    nop
    nop

jr_001_5d20:
    ld de, $0206
    ld c, $01
    ld d, $8c
    ld e, $0e
    call DrawBox

jr_001_5d2c:
    ret

StartArenaFromMainMenu:
    ldh a, [$ffef]
    res 5, a
    ldh [$ffef], a
    bit 3, a
    jr z, jr_001_5d3d

    call Call_001_605b
    jp Jump_001_5d6e


jr_001_5d3d:
    xor a
    call Call_001_61e1
    call Call_001_6dca
    jp Jump_001_5d6e

StartCyberscapeFromMainMenu:
    ld hl, $5ea0
    call UpdateTilemapBeyond9A00
    xor a
    ld b, $00
    ld hl, $6160
    call Call_001_5a56

StartCyberscapeFromConfigSys:
    ldh a, [$ffa1]
    cp $05 ; check for >4 players
    ret nc

    ldh a, [$ffef]
    set 5, a
    ldh [$ffef], a
    ret

Jump_001_5d62:
    and a
    jp Jump_001_5b0e
    
Jump_001_5d66:
    and a
    jp Jump_001_5b3e

Jump_001_5d6a:
    scf
    jp Jump_001_5b3e

Jump_001_5d6e:
    ld a, $01
    ld [$da23], a
    ld [$da22], a
    ret


Jump_001_5d77:
    ld a, [$da20]
    ld b, a
    ldh a, [$ff92]
    cp b
    ret nz

    ld a, $01
    ld [$da23], a
    ld [$da22], a
    ret


    ld c, c
    ld c, [hl]
    ld d, h
    ld b, l
    ld d, d
    dec l
    ld b, [hl]
    ld b, c
    ld b, e
    ld b, l
    nop
    ld b, e
    ld a, c
    ld h, d
    ld h, l
    ld [hl], d
    ld [hl], e
    ld h, e
    ld h, c
    ld [hl], b
    ld h, l
    nop
    ld b, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld h, c
    nop
    ld c, a
    ld [hl], b
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_001_5e06

    ld h, l
    ld h, c
    ld h, h
    ld a, c
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_001_5e14

    ld h, l
    ld h, c
    ld h, h
    ld a, c
    nop
    ld c, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld a, [hl-]
    nop
    ld c, a
    ld d, b
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    ld d, e
    nop
    ld d, l
    ld d, b
    cpl
    ld b, h
    ld c, a
    ld d, a
    ld c, [hl]
    cpl
    ld d, e
    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    ld a, [hl-]
    jr nz, @+$52

    ld l, c
    ld h, e
    ld l, e
    nop
    jr nz, jr_001_5e0c

    ld b, c
    cpl
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, [hl-]
    jr nz, jr_001_5e39

    ld l, a
    ld l, [hl]
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld l, l
    jr nz, @+$22

    nop
    ld b, c
    ld a, [hl-]
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a

jr_001_5e06:
    ld h, l
    jr nz, jr_001_5e29

    ld b, d
    ld a, [hl-]
    ld d, b

jr_001_5e0c:
    ld [hl], d
    ld h, l
    db $76
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    nop

jr_001_5e14:
    dec de
    ld e, [hl]
    push de
    ld e, l
    nop
    nop
    stop
    nop
    ld [$005d], a
    nop
    ld de, $5e3e
    add hl, hl
    ld e, [hl]
    nop
    nop
    db $10

jr_001_5e29:
    jr nz, jr_001_5e7b

    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_001_5ea9

    ld h, c
    ld l, c
    ld [hl], h
    jr nz, @+$79

    ld l, b
    ld l, c

jr_001_5e39:
    ld l, h
    ld h, l
    jr nz, jr_001_5e5d

    nop
    nop
    nop
    ld b, l
    ld e, [hl]
    nop
    nop
    ld de, $746f
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_001_5ebc

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, @+$68

    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    nop
    ld h, c
    ld e, [hl]
    push de

jr_001_5e5d:
    ld e, l
    nop
    nop
    stop
    nop
    rst $38
    ld e, l
    nop
    nop
    ld de, $5e84
    ld l, a
    ld e, [hl]
    nop
    nop
    db $10
    ld c, d
    ld c, a
    ld e, c
    ld d, b
    ld b, c
    ld b, h
    ld a, [hl-]
    jr nz, jr_001_5ec8

    ld l, c
    ld h, e
    ld l, e

jr_001_5e7b:
    jr nz, jr_001_5ee9

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_001_5e84

jr_001_5e84:
    nop
    nop
    adc e
    ld e, [hl]
    nop
    nop
    ld de, $2020
    jr nz, jr_001_5ed0

    ld a, [hl-]
    ld b, c
    ld h, h
    ld h, h
    jr nz, jr_001_5eb5

    ld b, d
    ld a, [hl-]
    ld b, l
    ld [hl], d
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_001_5ebe

    jr nz, jr_001_5ea0

jr_001_5ea0:
    and a
    ld e, [hl]
    rst $38
    ld e, l
    nop
    nop
    stop
    nop

jr_001_5ea9:
    xor [hl]
    ld e, [hl]
    nop
    nop
    ld de, $7250
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_001_5f08

jr_001_5eb5:
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_001_5f2f

    ld l, a

jr_001_5ebc:
    jr nz, jr_001_5f20

jr_001_5ebe:
    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]
    nop

Call_001_5ec3:
    call $5d21
    ld a, $05

jr_001_5ec8:
    ld [$c9a4], a
    ldh a, [$ffa1]
    ld l, a
    ld h, $00

jr_001_5ed0:
    call UpdateTimeDisplay
    ld b, $01
    ld c, $0c
    ld d, $00
    ld hl, $c9ac
    call Call_000_1bd9
    and a
    ret


    add sp, $5e
    sub e
    ld e, l
    ld bc, $0202
    rst $28

jr_001_5ee9:
    ld e, [hl]
    sbc [hl]
    ld e, l
    ld bc, $0402
    nop
    nop
    and h
    ld e, l
    ld bc, $0902
    db $fd
    ld e, [hl]
    adc b
    ld e, l
    nop
    inc b
    nop
    nop
    nop
    cp c
    ld e, l
    nop
    inc bc
    inc c
    ld d, [hl]
    ld h, l
    ld [hl], d
    ld a, c

jr_001_5f08:
    jr nz, jr_001_5f4f

    ld h, c
    ld [hl], e
    ld a, c
    nop
    ld b, l
    ld h, c
    ld [hl], e
    ld a, c
    nop
    ld b, c
    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    nop
    ld c, b
    ld h, c
    ld [hl], d
    ld h, h
    nop

jr_001_5f20:
    ld d, [hl]
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_001_5f6e

    ld h, c
    ld [hl], d
    ld h, h
    nop
    ld d, d
    ld h, c
    ld h, h
    ld l, c
    ld h, e

jr_001_5f2f:
    ld h, c
    ld l, h
    ld hl, $2800
    ld b, e
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld l, a
    ld l, l
    add hl, hl
    nop

MainMenuActions:
    ldh a, [rOCPD]
    ld e, a
    pop af
    ld bc, $0002
    nop
    ld bc, $5d47
    ld [$5d47], sp
    pop af
    ld bc, $0004
    nop

jr_001_5f4f:
    ld bc, $5d2d
    ld [$5d2d], sp
    pop af
    ld bc, $0009
    nop
    ld bc, $635e
    ld [$635e], sp
    ld a, [c]
    ld b, b
    ld h, d
    ld e, l
    add b
    ld h, [hl]
    ld e, l
    inc b
    ld l, d
    ld e, l
    di

DrawMainMenu:
    ld hl, $5e14

jr_001_5f6e:
    call UpdateTilemapBeyond9A00
    ld hl, $5ee1 ; Cyberscape, Arena, Options
    call DrawText
    ld b, $02
    ld c, $59
    ld d, $8c
    ld e, $17
    call DrawBox
    call Call_001_5ec3
    ld hl, $5ef6
    call DrawText
    ld b, $01
    ld c, $0b
    ld d, $00
    ld hl, $5dc7
    call Call_000_1bd9
    ld b, $07
    ld c, $0b
    ld d, $00
    ldh a, [$ff92]
    swap a
    ld l, a
    ld h, $c6
    call Call_000_1bd9
    and a
    ret


    ld c, h
    ld h, l
    db $76
    ld h, l
    ld l, h
    dec a
    nop
    nop
    nop
    or a
    ld e, a
    nop
    dec b
    nop
    ld d, e
    ld c, l
    ld c, c
    ld c, h
    ld c, a
    ld c, c
    ld b, h
    ld d, e
    nop
    ret nc

    ld e, a
    rst $00
    ld e, a
    ld bc, $0602
    ld d, h
    ld [hl], l
    ld [hl], d
    ld l, e
    ld h, l
    ld a, c
    ld [hl], e
    ld a, [hl-]
    nop
    pop hl
    ld e, a
    rst $10
    ld e, a
    ld bc, $0802
    ld b, a
    ld [hl], d
    ld h, l
    ld l, l
    ld l, h
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld a, [hl-]
    nop
    ldh a, [$ff5f]
    add sp, $5f
    ld bc, $0a02
    ld d, d
    ld l, a
    db $76
    ld h, l
    ld [hl], d
    ld [hl], e
    ld a, [hl-]
    nop
    nop
    nop
    rst $30
    ld e, a
    ld bc, $0c02
    ld b, d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, e
    ld h, l
    ld [hl], d
    ld [hl], e
    ld a, [hl-]
    nop
    ldh a, [$ff79]
    ld h, b
    pop af
    ld bc, $0003
    nop
    jr nz, @-$23

    ld h, c
    db $10
    rst $08
    ld h, c
    ld bc, $61cf
    pop af
    ld bc, $0006
    nop
    ld bc, $60ee
    db $10
    xor $60
    jr nz, jr_001_6046

    ld h, c
    pop af
    ld bc, $0008
    nop
    ld bc, $60f3
    db $10
    di
    ld h, b
    jr nz, @+$2e

    ld h, c
    pop af
    ld bc, $000a
    nop
    ld bc, $60f8
    db $10
    ld hl, sp+$60
    jr nz, @+$33

    ld h, c
    pop af
    ld bc, $000c
    nop
    ld bc, $60fd
    db $10
    db $fd

jr_001_6046:
    ld h, b
    jr nz, jr_001_607f

    ld h, c
    ld a, [c]
    ld [bc], a
    ld l, l
    ld h, e
    ld b, b
    ld h, l
    ld h, b
    add b
    ld l, d
    ld h, b
    inc b
    ld l, a
    ld h, b
    ld [$6dca], sp
    di

Call_001_605b:
    xor a
    ld b, $00
    ld hl, $6001
    call Call_001_5a56
    ret


    ld hl, $5d62
    jr jr_001_6072

    ld hl, $5d66
    jr jr_001_6072

    ld hl, $5d6a

jr_001_6072:
    ld a, [$da2b]
    cp $33
    ret c

    jp hl


    ld hl, $5e5a
    ld a, [$da2b]

jr_001_607f:
    cp $33
    jr nc, jr_001_6086

    ld hl, $5ea0

jr_001_6086:
    call UpdateTilemapBeyond9A00
    call $5d21
    ld a, $05
    ld [$c9a4], a
    ld hl, $5fb0
    call DrawText
    xor a
    ld [$c9a4], a
    ld hl, $5fc0
    call DrawText
    ld hl, $5fa9
    ld b, $02
    ld c, $03
    ld d, $01
    call Call_000_1bd9
    call Call_001_61a4
    ld b, $08
    ld c, $03
    ld d, $01
    call Call_000_1bd9
    ld a, [$da25]
    ld c, $06
    call Call_001_60db
    ld a, [$da26]
    ld c, $08
    call Call_001_60db
    ld a, [$da27]
    ld c, $0a
    call Call_001_60db
    ld a, [$da28]
    ld c, $0c
    call Call_001_60db
    and a
    ret


Call_001_60db:
    ld l, a
    ld h, $00
    push bc
    call UpdateTimeDisplay
    pop bc
    ld b, $0e
    ld d, $01
    ld hl, $c9ac
    call Call_000_1bd9
    ret


    ld hl, $da25
    jr jr_001_6100

    ld hl, $da26
    jr jr_001_6100

    ld hl, $da27
    jr jr_001_6100

    ld hl, $da28

jr_001_6100:
    call Call_001_610f
    inc a
    cp $11
    ret nc

    ld a, c
    cp $08
    ret nc

    inc [hl]
    jp Jump_001_5d6e


Call_001_610f:
    ldh a, [$ffa1]
    ld b, a
    ld a, [$da25]
    ld c, a
    ld a, [$da26]
    add c
    ld c, a
    ld a, [$da27]
    add c
    ld c, a
    ld a, [$da28]
    add c
    ld c, a
    add b
    ret


    ld hl, $da25
    jr jr_001_6139

    ld hl, $da26
    jr jr_001_6139

    ld hl, $da27
    jr jr_001_6139

    ld hl, $da28

jr_001_6139:
    ld a, [hl]
    and a
    ret z

    call Call_001_610f
    dec a
    cp $02
    ret c

    dec [hl]

jr_001_6144:
    jp Jump_001_5d6e


    ld e, c
    ld h, c
    ld c, [hl]
    ld h, c
    nop
    inc b
    nop
    ld b, h
    ld c, c
    ld b, [hl]
    ld b, [hl]
    ld c, c
    ld b, e
    ld d, l
    ld c, h
    ld d, h
    ld e, c
    nop
    nop
    nop
    xor c
    ld e, a
    ld bc, $0602
    ldh a, [$ff7d]
    ld h, c
    ld a, [c]
    ld [$6177], sp
    jr nz, jr_001_6144

    ld h, c
    db $10
    rst $08
    ld h, c
    inc b
    rst $08
    ld h, c
    ld bc, $61cf
    ld [bc], a
    ld l, d
    ld h, e
    di

Call_001_6177:
    ld a, $01
    ld [$da1e], a
    ret


Call_001_617d:
    ld a, [$da2b]
    cp $33
    jr c, jr_001_6188

    xor a
    ld [$da2b], a

jr_001_6188:
    call $5d21
    ld a, $05
    ld [$c9a4], a
    ld hl, $6147
    call DrawText
    call Call_001_61a4
    ld b, $08
    ld c, $06
    ld d, $01
    call Call_000_1bd9
    scf
    ret


Call_001_61a4:
    ld a, [$da2b]
    ld hl, $5f04
    cp $01
    ret c

    ld hl, $5f0e
    cp $0b
    ret c

    ld hl, $5f13
    cp $15
    ret c

    ld hl, $5f1b
    cp $1f
    ret c

    ld hl, $5f20
    cp $29
    ret c

    ld hl, $5f2a
    cp $33
    ret c

    ld hl, $5f33
    ret


    ld a, [$da2b]
    add $0a
    cp $3d
    jr c, jr_001_61e1

    xor a
    jr jr_001_61e1

    ld a, [$da2b]
    sub $0a
    ret c

Call_001_61e1:
jr_001_61e1:
    ld [$da2b], a

Call_001_61e4:
    call Call_001_6e3b
    jr nc, jr_001_61f9

    ld a, [hl+]
    ld [$da25], a
    ld a, [hl+]
    ld [$da26], a
    ld a, [hl+]
    ld [$da27], a
    ld a, [hl+]
    ld [$da28], a

jr_001_61f9:
    jp Jump_001_5d6e


    ld d, e
    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_001_624a

    ld h, c
    ld h, e
    ld h, l
    nop
    ld d, h
    ld h, l
    ld h, c
    ld l, l
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld a, [hl-]
    nop
    ld d, e
    ld [hl], h
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld h, a
    ld [hl], h
    ld l, b
    ld a, [hl-]
    nop
    ld c, l
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    ld a, [hl-]
    nop
    ld a, [hl+]
    ld h, d
    rst $00
    ld e, l
    ld bc, $0302
    ld sp, $fc62
    ld h, c
    ld bc, $0502
    jr c, @+$64

    ld [$0162], sp
    ld [bc], a
    rlca
    ccf
    ld h, d
    ld [de], a
    ld h, d
    ld bc, $0902
    nop
    nop
    inc e
    ld h, d
    ld bc, $0b02
    ld c, l
    ld h, d
    rst $00
    ld e, l

jr_001_624a:
    ld bc, $0302
    ld d, h
    ld h, d
    db $fc
    ld h, c
    ld bc, $0502
    ld e, e
    ld h, d
    ld [$0362], sp
    ld [bc], a
    rlca
    ld h, d
    ld h, d
    ld [de], a
    ld h, d

jr_001_625f:
    ld bc, $0902
    nop
    nop
    inc e
    ld h, d
    ld bc, $0b02
    ld c, b
    ld d, l
    ld d, d
    ld d, h
    nop
    ld c, a
    ld c, e
    nop
    ld c, b
    ld b, c
    ld d, b
    ld d, b
    ld e, c
    nop
    ld hl, $2121
    ld hl, $6900
    ld h, d
    ld l, [hl]
    ld h, d
    ld [hl], c
    ld h, d
    ld [hl], a
    ld h, d
    ldh a, [$ffd2]
    ld h, d
    pop af
    ld bc, $5a03
    ld e, [hl]
    ld bc, $654f
    pop af
    ld bc, $5a05
    ld e, [hl]
    ld bc, $6b0a
    pop af
    ld bc, $5a07
    ld e, [hl]
    ld bc, $6cab
    jr nz, jr_001_631f

    ld h, e
    db $10
    ld a, [hl]
    ld h, e
    pop af
    ld bc, $5a09
    ld e, [hl]
    ld bc, $6399
    db $10
    sbc c
    ld h, e
    jr nz, jr_001_625f

    ld h, e
    pop af
    ld bc, $5a0b
    ld e, [hl]
    ld bc, $63bf
    jr nz, @-$3f

    ld h, e
    db $10
    cp a
    ld h, e
    ld a, [c]
    ld b, b
    ld h, d
    ld e, l
    add b
    ld h, [hl]
    ld e, l
    inc b
    ld l, d
    ld e, l
    ld [$6371], sp
    ld [bc], a
    ld [hl], c
    ld h, e
    di

Call_001_62d2:
    ld hl, $6246
    ldh a, [$ffa1]
    cp $02 ; check player count for options screen
    jr c, jr_001_62de

    ld hl, $6223

jr_001_62de:
    call DrawText
    call $5d21
    ld b, $08
    ld c, $03
    ld d, $01
    ldh a, [$ff92]
    swap a
    ld l, a
    ld h, $c6
    call Call_000_1bd9
    ld hl, $6b89
    ld b, $0c
    ld c, $07
    ld d, $03
    ldh a, [$ffa1]
    cp $02
    jr c, jr_001_6305

    ld d, $01

jr_001_6305:
    ldh a, [$ffef]
    bit 3, a
    jr nz, jr_001_630e

    ld hl, $6b8d

jr_001_630e:
    call Call_000_1bd9
    ldh a, [$ff92]
    or $80
    ld l, a
    ld h, $c7
    ld a, [hl]
    cp $04
    jr c, jr_001_631f

    ld a, $04

jr_001_631f:
    dec a
    sla a
    ld c, a
    ld b, $00
    ld hl, $627c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $0c
    ld c, $09
    ld d, $01
    call Call_000_1bd9
    ld hl, $6b89
    ld b, $09
    ld c, $0b
    ld d, $01
    ld a, [$da2a]
    bit 1, a
    jr nz, jr_001_6348

    ld hl, $6b8d

jr_001_6348:
    call Call_000_1bd9
    ld a, $05
    ld [$c9a4], a
    ld b, $05
    ld c, $00
    ld d, $00
    ld hl, $5dcd
    call Call_000_1bd9
    and a
    ret


Jump_001_635e:
    xor a
    ld b, $00
    ld hl, $6284
    call Call_001_5a56
    jp Jump_001_5d6e


    xor a
    jr jr_001_6373

    ld a, $01
    jr jr_001_6373

    ld a, $02

jr_001_6373:
    ld b, $00
    ld hl, $5f3c
    call Call_001_5a56
    jp Jump_001_5d6e


    ldh a, [$ffa1]
    cp $02
    ret c

    ldh a, [$ffef]
    bit 3, a
    jr z, jr_001_638d

    res 3, a
    jr jr_001_638f

jr_001_638d:
    set 3, a

jr_001_638f:
    ldh [$ffef], a
    bit 3, a
    call nz, Call_001_6d78
    jp Jump_001_5d6e


    ld a, [$da20]
    or $80
    ld l, a
    ld h, $c7
    ld a, [hl]
    inc a
    cp $04
    jr c, jr_001_63a9

    ld a, $01

jr_001_63a9:
    ld [hl], a
    jp Jump_001_5d6e


    ld a, [$da20]
    or $80
    ld l, a
    ld h, $c7
    ld a, [hl]
    dec a
    jr nz, jr_001_63bb

    ld a, $03

jr_001_63bb:
    ld [hl], a
    jp Jump_001_5d6e


    ld a, [$da2a]
    xor $02
    ld [$da2a], a
    jp Jump_001_5d6e


    pop hl
    ld h, e
    pop de
    ld h, e
    ld bc, $0302
    ld b, c
    jr nz, jr_001_6416

    jr nz, jr_001_6419

    jr nz, @+$46

    jr nz, jr_001_641f

    jr nz, @+$48

    jr nz, jr_001_6425

    jr nz, jr_001_6428

    nop
    ld hl, sp+$63
    add sp, $63
    ld bc, $0502
    ld c, c
    jr nz, jr_001_6435

    jr nz, @+$4d

    jr nz, jr_001_643b

    jr nz, @+$4f

    jr nz, jr_001_6441

    jr nz, jr_001_6444

    jr nz, jr_001_6447

    nop
    rrca
    ld h, h
    rst $38
    ld h, e
    ld bc, $0702
    ld d, c
    jr nz, jr_001_6454

    jr nz, jr_001_6457

    jr nz, jr_001_645a

    jr nz, jr_001_645d

    jr nz, jr_001_6460

    jr nz, jr_001_6463

    jr nz, @+$5a

    nop
    nop
    nop
    ld d, $64
    ld bc, $0902

jr_001_6416:
    ld e, c
    jr nz, jr_001_6473

jr_001_6419:
    jr nz, jr_001_6448

    jr nz, jr_001_647c

    jr nz, jr_001_6471

jr_001_641f:
    ld d, l
    ld b, d
    jr nz, jr_001_6468

    ld c, [hl]
    ld b, h

jr_001_6425:
    nop
    ld [hl-], a
    ld h, h

jr_001_6428:
    dec l
    ld h, h
    nop
    rlca
    nop
    ld c, [hl]
    ld b, c
    ld c, l
    ld b, l
    nop
    nop
    nop
    rst $00

jr_001_6435:
    ld e, l
    nop
    ld bc, $f00c
    db $ec

jr_001_643b:
    ld h, h
    pop af
    ld bc, $0003
    nop

jr_001_6441:
    pop af
    inc bc
    inc bc

jr_001_6444:
    nop
    nop
    pop af

jr_001_6447:
    dec b

jr_001_6448:
    inc bc
    nop
    nop
    pop af
    rlca
    inc bc
    nop
    nop
    pop af
    add hl, bc
    inc bc
    nop

jr_001_6454:
    nop
    pop af
    dec bc

jr_001_6457:
    inc bc
    nop
    nop

jr_001_645a:
    pop af
    dec c
    inc bc

jr_001_645d:
    nop
    nop
    pop af

jr_001_6460:
    rrca
    inc bc
    nop

jr_001_6463:
    nop
    pop af
    ld bc, $0005

jr_001_6468:
    nop
    pop af
    inc bc
    dec b
    nop
    nop
    pop af
    dec b
    dec b

jr_001_6471:
    nop
    nop

jr_001_6473:
    pop af
    rlca
    dec b
    nop
    nop
    pop af
    add hl, bc
    dec b
    nop

jr_001_647c:
    nop
    pop af
    dec bc
    dec b
    nop
    nop
    pop af
    dec c
    dec b
    nop
    nop
    pop af
    rrca
    dec b
    nop
    nop
    pop af
    ld bc, $0007
    nop
    pop af
    inc bc
    rlca
    nop
    nop
    pop af
    dec b
    rlca
    nop
    nop
    pop af
    rlca
    rlca
    nop
    nop
    pop af
    add hl, bc
    rlca
    nop
    nop
    pop af
    dec bc
    rlca
    nop
    nop
    pop af
    dec c
    rlca
    nop
    nop
    pop af
    rrca
    rlca
    nop
    nop
    pop af
    ld bc, $0009
    nop
    pop af
    inc bc
    add hl, bc
    nop
    nop
    pop af
    dec b
    add hl, bc
    nop
    nop
    pop af
    rlca
    add hl, bc
    nop
    nop
    pop af
    add hl, bc
    add hl, bc
    nop
    nop
    pop af
    dec c
    add hl, bc
    nop
    nop
    ld a, [c]
    ld b, b
    or h
    ld h, l
    add b
    adc $65
    jr nz, jr_001_653d

    ld e, l
    db $10
    ld h, [hl]
    ld e, l

LoadNameChangeScreen:
    ld bc, $6614
    ld [bc], a
    ld a, [bc]
    ld h, [hl]
    inc b
    ld e, a
    ld h, [hl]
    ld [$6593], sp
    di
    call $5d21
    ld b, $02
    ld c, $61
    ld d, $8c
    ld e, $0f
    call DrawBox
    ld hl, $63ca
    call DrawText
    ld a, $05
    ld [$c9a4], a
    ld hl, $6426
    call DrawText
    ldh a, [$ff92]
    call Call_001_5a2a
    cp $ff
    jr z, jr_001_6526

    sla a
    sla a
    sla a
    add $38
    ld b, a
    ld c, $65
    ld d, $08
    ld e, $08
    call Call_000_3b22

jr_001_6526:
    ldh a, [$ff92]
    swap a
    ld l, a
    ld h, $c6
    ld b, $07
    ld c, $0c
    ld d, $00
    call Call_000_1bd9
    ldh a, [$ff92]
    call Call_001_5a2a
    cp $ff

jr_001_653d:
    jr z, jr_001_6547

    ld hl, $5e68
    call UpdateTilemapBeyond9A00
    and a
    ret


jr_001_6547:
    ld hl, $5e22
    call UpdateTilemapBeyond9A00
    scf
    ret


    ld hl, $d9c3
    ld b, $10

jr_001_6554:
    ld a, $00
    ld [hl+], a
    dec b
    jr nz, jr_001_6554

    xor a
    ld b, $01
    ld hl, $6439
    call Call_001_5a56
    ld hl, $c600

jr_001_6566:
    push hl
    ld b, $00

jr_001_6569:
    ld a, b
    cp $0a
    jr nz, jr_001_6573

    dec b

jr_001_656f:
    xor a
    ld [hl], a
    jr jr_001_657f

jr_001_6573:
    ld a, [hl]
    cp $20
    jr z, jr_001_656f

    and a
    jr z, jr_001_657f

    inc l
    inc b
    jr jr_001_6569

jr_001_657f:
    ld a, l
    swap a
    and $0f
    ld c, a
    ld a, b
    call Call_001_5a33
    pop hl
    ld a, l
    add $10
    ld l, a
    jr nz, jr_001_6566

    jp Jump_001_5d6e


Jump_001_6593:
    ld a, [$da20]
    call Call_001_5a2a
    ld a, $ff
    ld [hl], a
    call Call_001_5a46
    jp c, Jump_001_5d77

    call CheckNameAgainstCheats
    jp c, Jump_001_5d6e

    xor a
    ld b, $00
    ld hl, $6284
    call Call_001_5a56
    jp Jump_001_5d77


    call Call_001_5a81
    cp $1c
    jr nz, jr_001_65bf

    ld a, $14
    jr jr_001_65ca

jr_001_65bf:
    cp $1d
    jr nz, jr_001_65c7

    ld a, $16
    jr jr_001_65ca

jr_001_65c7:
    sub $08
    ret c

jr_001_65ca:
    ld [hl], a
    jp Jump_001_5d77


    call Call_001_5a81
    cp $18
    ret nc

    add $08
    cp $1d
    jr c, jr_001_65df

    ld a, $1c
    jr z, jr_001_65df

    inc a

jr_001_65df:
    ld [hl], a
    jp Jump_001_5d77


Call_001_65e3:
    ld a, [$da20]
    call Call_001_5a2a
    cp $09
    jr nz, jr_001_6601

jr_001_65ed:
    ld c, a
    ld a, [$da20]
    swap a
    add c
    ld e, a
    ld d, $c6
    ld a, [de]
    cp $20
    jr z, jr_001_6601

    ld a, $20
    ld [de], a
    and a
    ret


jr_001_6601:
    ld a, [hl]
    dec a
    cp $ff
    scf
    ret z

    ld [hl], a
    jr jr_001_65ed

    call Call_001_6662
    call Call_001_65e3
    jp nc, Jump_001_5d77

    ret


    call Call_001_5a81
    cp $1c
    jr nz, jr_001_6625

    call Call_001_6662
    call Call_001_65e3
    jp nc, Jump_001_5d77

    ret


jr_001_6625:
    cp $1d
    jp z, Jump_001_6593

    push af
    call Call_001_6662
    pop af
    cp $1a
    jr nz, jr_001_6637

    ld a, $ec
    jr jr_001_663d

jr_001_6637:
    cp $1b
    jr nz, jr_001_663d

    ld a, $1e

jr_001_663d:
    add $41
    ld c, a
    push bc
    ld a, [$da20]
    call Call_001_5a2a
    pop bc
    ld b, a
    ld a, [$da20]
    swap a
    add b
    ld e, a
    ld d, $c6
    ld a, c
    ld [de], a
    ld a, [hl]
    inc a
    cp $0a
    jp nc, Jump_001_5d77

    ld [hl], a
    jp Jump_001_5d77


    jp Jump_001_5d6a


Call_001_6662:
    ld a, [$da20]
    ld c, a
    ld b, $00
    ld hl, $d9c3
    add hl, bc
    ld a, [hl]
    cp $01
    ret z

    ld a, $01
    ld [hl], a
    ld a, [$da20]
    call Call_001_5514
    ld a, [$da20]
    ld c, a
    xor a
    call Call_001_5a33
    ret


CheckNameAgainstCheats:
    ld hl, CheatList

jr_001_6685:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    or c
    ret z

    call CheckCheat
    jr c, jr_001_6694

    inc hl
    inc hl
    jr jr_001_6685

jr_001_6694:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


CheckCheat:
    ld de, $c600

jr_001_669b:
    ld a, [bc]
    and a
    jr z, jr_001_66ae

    xor $ff
    push bc
    ld b, a
    ld a, [de]
    cp b
    pop bc
    jr nz, jr_001_66ac

    inc de
    inc bc
    jr jr_001_669b

jr_001_66ac:
    and a
    ret


jr_001_66ae:
    scf
    ret

CheatList:
    dw Cheat_SoundTest, CheatFunc_SoundTest
    dw Cheat_PhotoPause, CheatFunc_PhotoPause
    dw Cheat_ConfigSys, CheatFunc_ConfigSys
    dw Cheat_ShowEnding, CheatFunc_ShowEnding
    dw Cheat_ExtraLives, CheatFunc_ExtraLives
    dw 0

PUSHC
SETCHARMAP cheats
Cheat_SoundTest:
    db "SOUNDTEST", 0

Cheat_PhotoPause:
    db "PHOTOPAUSE", 0

Cheat_ConfigSys:
    db "CONFIG_SYS", 0

Cheat_ShowEnding:
    db "SHOWENDING", 0

Cheat_ExtraLives:
    db "EXTRALIVES", 0
POPC

CheatFunc_SoundTest:
    call Call_001_67c7
    scf
    ret

CheatFunc_PhotoPause:
    ld hl, $da2a
    set 0, [hl]
    and a
    ret

CheatFunc_ConfigSys:
    call Call_001_6a7f
    scf
    ret

CheatFunc_ShowEnding:
    call ShowEnding
    and a
    ret

CheatFunc_ExtraLives:
    ld l, $70
    ld a, $05
    call Call_001_6a94
    and a
    ret


    nop
    nop
    ld [hl+], a
    ld h, a
    nop
    ld b, $00
    ld d, e
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    nop
    ld [hl], $67
    cpl
    ld h, a
    ld bc, $0403
    ld c, l
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    ld a, [hl-]
    nop
    ld b, h
    ld h, a
    dec a
    ld h, a
    ld bc, $0603
    ld d, e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld a, [hl-]
    nop
    nop
    nop
    ld c, e
    ld h, a
    ld bc, $0a03
    ld c, a
    ld b, [hl]
    ld b, [hl]
    nop
    ldh a, [$ff87]
    ld h, a
    pop af
    ld [bc], a
    inc b
    ld e, d
    ld e, [hl]
    ld bc, $67e9
    db $10
    ldh a, [$ff67]
    jr nz, @+$01

    ld h, a
    pop af
    ld [bc], a
    ld b, $5a
    ld e, [hl]
    ld bc, $680b
    db $10
    ld [de], a
    ld l, b
    jr nz, @+$23

    ld l, b
    pop af
    ld [bc], a
    ld a, [bc]
    ld e, d
    ld e, [hl]
    ld bc, $67e0
    ld a, [c]
    ld b, b
    ld h, d
    ld e, l
    add b
    ld h, [hl]
    ld e, l
    inc b
    ld l, d
    ld e, l
    ld [bc], a
    jp c, Jump_000_0867

    jp c, $f367

    call $5d21
    ld hl, $6728
    call DrawText
    ld a, [$d9fe]
    ld l, a
    ld h, $00
    call UpdateTimeDisplay
    ld b, $0a
    ld c, $04
    ld d, $01
    ld hl, $c9ac
    call Call_000_1bd9
    ld a, [$d9ff]
    ld l, a
    ld h, $00
    call UpdateTimeDisplay
    ld b, $0a
    ld c, $06
    ld d, $01
    ld hl, $c9ac
    call Call_000_1bd9
    ld a, $05
    ld [$c9a4], a
    ld hl, $671b
    call DrawText
    and a
    ret


Call_001_67c7:
    xor a
    ld [$d9fe], a
    ld [$d9ff], a
    xor a
    ld b, $00
    ld hl, $674f
    call Call_001_5a56
    jp Jump_001_5d6e


    call Call_001_67e0
    jp Jump_001_635e


Call_001_67e0:
    call Call_000_093a
    ld a, $26
    call sound_test_selection
    ret

Call_001_67e9:
    ld a, [$d9fe]
    call PrepareHiramJumpDest
    ret


    ld a, [$d9fe]
    inc a
    cp $04
    jr c, jr_001_67f9

    xor a

jr_001_67f9:
    ld [$d9fe], a
    jp Jump_001_5d6e


    ld a, [$d9fe]
    dec a
    cp $ff
    jr nz, jr_001_67f9

    ld a, $03
    jr jr_001_67f9

    ld a, [$d9ff]
    call sound_test_selection
    ret


    ld a, [$d9ff]
    inc a
    cp $27
    jr c, jr_001_681b

    xor a

jr_001_681b:
    ld [$d9ff], a
    jp Jump_001_5d6e


    ld a, [$d9ff]
    dec a
    cp $ff
    jr nz, jr_001_681b

    ld a, $26
    jr jr_001_681b

    ld c, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    nop
    ld d, h
    ld l, a
    ld h, a
    ld h, a
    ld l, h
    ld h, l
    ld sp, $5300
    ld l, h
    ld l, a
    ld [hl], a
    ld c, a
    ld l, [hl]
    ld b, d
    nop
    ld d, h
    ld l, a
    ld h, a
    ld h, a
    ld l, h
    ld h, l
    ld [hl-], a
    nop
    dec l
    ld l, b
    inc [hl]
    ld l, b
    inc a
    ld l, b
    ld b, h
    ld l, b
    nop
    nop
    ld e, e
    ld l, b
    nop
    inc b
    nop
    ld b, a
    ld b, c
    ld c, l
    ld b, l
    jr nz, @+$55

    ld b, l
    ld d, h
    ld d, l
    ld d, b
    nop
    ld a, d
    ld l, b
    ld l, l
    ld l, b
    ld bc, $0302
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_001_68c0

    ld h, l
    db $76
    ld h, l
    ld l, h
    ld a, [hl-]
    nop
    add a
    ld l, b
    add c
    ld l, b
    ld bc, $0502
    ld d, d
    ld h, c
    ld [hl], h
    ld h, l
    ld a, [hl-]
    nop
    sbc l
    ld l, b
    adc [hl]
    ld l, b
    ld bc, $0701
    ld b, c
    ld [hl], d
    ld l, l
    ld l, a
    ld [hl], d
    dec a
    jr nz, jr_001_68b6

    jr nz, @+$43

    ld [hl], l
    ld [hl], h
    ld l, a
    dec a
    nop
    nop
    nop
    and h

jr_001_68a0:
    ld l, b
    ld bc, $0901
    ld d, e
    ld [hl], b
    ld h, l
    ld h, l
    ld h, h
    dec a
    jr nz, jr_001_68cc

    jr nz, @+$4e

    ld l, c
    ld h, [hl]
    ld h, l
    dec a
    nop
    ldh a, [rNR12]
    ld l, c

jr_001_68b6:
    pop af
    ld bc, $5a03
    ld e, [hl]
    ld bc, $69d0
    db $10
    ret nc

jr_001_68c0:
    ld l, c
    jr nz, jr_001_68a0

    ld l, c
    pop af
    ld bc, $5a05
    ld e, [hl]
    ld bc, $6a65

jr_001_68cc:
    db $10
    ld h, l
    ld l, d
    jr nz, @+$67

    ld l, d
    pop af
    nop
    rlca
    ld e, d
    ld e, [hl]
    ld bc, $6a03
    db $10
    inc bc
    ld l, d
    pop af
    add hl, bc
    rlca
    ld e, d
    ld e, [hl]
    ld bc, $69e6
    db $10
    and $69
    pop af
    nop
    add hl, bc
    ld e, d
    ld e, [hl]
    ld bc, $6a1e
    db $10
    ld e, $6a
    pop af
    add hl, bc
    add hl, bc
    ld e, d
    ld e, [hl]
    ld bc, $6a4f
    db $10
    ld c, a
    ld l, d
    jr nz, jr_001_695e

    ld l, d
    ld a, [c]
    ld b, b
    ld h, d
    ld e, l
    add b
    ld h, [hl]
    ld e, l
    inc b
    ld l, d
    ld e, l
    ld [bc], a
    adc e
    ld l, d
    ld [$6a8b], sp
    di

LoadConfigCheatScreen:
    call $5d21
    ld hl, $6866
    call DrawText
    ld a, [$da2b]
    inc a
    ld l, a
    ld h, $00
    call UpdateTimeDisplay
    ld b, $0f
    ld c, $03
    ld d, $01
    ld hl, $c9ac
    call Call_000_1bd9
    ld a, [$c710]
    ld l, a
    ld h, $00
    call UpdateTimeDisplay
    ld b, $07
    ld c, $07
    ld d, $01
    ld hl, $c9ac
    call Call_000_1bd9
    ld a, [$c760]
    ld l, a
    ld h, $00
    call UpdateTimeDisplay
    ld b, $0f
    ld c, $07
    ld d, $01
    ld hl, $c9ac
    call Call_000_1bd9
    ld a, [$c20f]

jr_001_695e:
    srl a
    srl a
    and $07
    ld l, a
    ld h, $00
    call UpdateTimeDisplay
    ld b, $07
    ld c, $09
    ld d, $01
    ld hl, $c9ac
    call Call_000_1bd9
    ld a, [$c770]
    ld l, a
    ld h, $00
    call UpdateTimeDisplay
    ld b, $0f
    ld c, $09
    ld d, $01
    ld hl, $c9ac
    call Call_000_1bd9
    ld a, [$da2a]
    srl a
    and $06
    ld c, a
    ld b, $00
    ld hl, $684c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $08
    ld c, $05
    ld d, $01
    call Call_000_1bd9
    ld a, $05
    ld [$c9a4], a
    ld b, $00
    ld c, $60
    ld d, $90
    ld e, $10
    call Call_000_3b27
    ld a, [$da2b]
    call Call_000_3296
    ld c, $0c
    ld d, $00
    ld hl, $c9ac
    call Call_001_4802
    call Call_000_1bd9
    ld hl, $6854
    call DrawText
    and a
    ret


    ld a, [$da2b]
    inc a
    cp $4b
    ret nc

jr_001_69d7:
    ld [$da2b], a
    jp Jump_001_5d6e


    ld a, [$da2b]
    dec a
    cp $ff
    ret z

    jr jr_001_69d7

    ld a, [$c760]
    inc a
    cp $07
    jr c, jr_001_69ef

    xor a

jr_001_69ef:
    ld l, $60
    call Call_001_6a94
    ld l, $e0
    ld a, [$c760]
    cpl
    inc a
    add $06
    call Call_001_6a94
    jp Jump_001_5d6e


    ld a, [$c710]
    inc a
    cp $0a
    jr c, jr_001_6a0c

    xor a

jr_001_6a0c:
    ld l, $10
    call Call_001_6a94
    ld l, $80
    ld a, [$c710]
    add $03
    call Call_001_6a94
    jp Jump_001_5d6e


    ld a, [$c20f]
    srl a
    srl a
    and $07
    add $02
    cp $07
    jr c, jr_001_6a35

    ld a, $24
    srl a
    srl a
    and $07

jr_001_6a35:
    sla a
    sla a
    ld c, a
    ldh a, [$ffa1]
    ld b, a
    ld hl, $c20f

jr_001_6a40:
    ld a, [hl]
    and $e3
    or c
    ld [hl], a
    ld a, l
    add $10
    ld l, a
    dec b
    jr nz, jr_001_6a40

    jp Jump_001_5d6e


    ld a, [$c770]
    inc a
    cp $64
    ret nc

jr_001_6a56:
    ld l, $70
    call Call_001_6a94
    jp Jump_001_5d6e


    ld a, [$c770]
    dec a
    jr nz, jr_001_6a56

    ret


    ld a, [$da2a]
    ld c, a
    srl a
    srl a
    inc a
    and $03
    sla a
    sla a
    ld b, a
    ld a, c
    and $f3
    or b
    ld [$da2a], a
    jp Jump_001_5d6e


Call_001_6a7f:
    xor a
    ld b, $00
    ld hl, $68b3
    call Call_001_5a56
    jp Jump_001_5d6e


Call_001_6a8b:
    call StartCyberscapeFromConfigSys
    ld a, $01
    ld [$da1e], a
    ret


Call_001_6a94:
    ld h, a
    ldh a, [$ffa1]
    ld b, a
    ld a, h
    ld h, $c7

jr_001_6a9b:
    ld [hl+], a
    dec b
    jr nz, jr_001_6a9b

    ret


    nop
    nop
    and a
    ld l, d
    nop
    rlca
    nop
    ld b, [hl]
    ld b, c
    ld b, e
    ld b, l
    nop
    ldh a, [$ffc9]
    ld l, d
    ld a, [c]
    ld b, b
    ld d, c
    ld l, e
    add b
    ld [hl], $6b
    jr nz, jr_001_6aee

    ld l, e
    db $10
    ld d, c
    ld l, e
    ld bc, $6b1a
    ld [bc], a
    ld a, [de]
    ld l, e
    inc b
    ld d, c
    ld l, e
    ld [$6b1a], sp
    di
    call $5d21
    ld a, $05
    ld [$c9a4], a
    ld hl, $6aa0
    call DrawText
    ldh a, [$ff92]
    swap a
    or $0e
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $f0
    ld b, a
    ldh a, [$ff87]
    and $1f
    ld c, a
    call Call_000_25f8
    ld a, $01

jr_001_6aee:
    ld [$da23], a
    ldh a, [$ff92]
    call Call_001_5a2a
    cp $ff
    jr z, jr_001_6b02

    ld hl, $5e14
    call UpdateTilemapBeyond9A00
    and a
    ret


jr_001_6b02:
    ld hl, $5e22
    call UpdateTilemapBeyond9A00
    scf
    ret


    xor a
    ld b, $01
    ld hl, $6aac
    call Call_001_5a56
    ld a, $0f
    ldh [$ff87], a
    jp Jump_001_5d6e


    ld a, [$da20]
    call Call_001_5a2a
    ld a, $ff
    ld [hl], a
    call Call_001_5a46
    jp c, Jump_001_5d77

    ld a, $01
    ld b, $00
    ld hl, $6284
    call Call_001_5a56
    jp Jump_001_5d77


    ld a, [$da20]
    swap a
    or $0e
    ld l, a
    ld h, $c2
    ld a, [hl]
    rlca
    rlca
    dec a
    rrca
    rrca
    and $c0
    ld b, a
    ld a, [hl]
    and $3f
    or b
    ld [hl], a
    jp Jump_001_5d77


    ld a, [$da20]
    swap a
    or $0e
    ld l, a
    ld h, $c2
    ld a, [hl]
    rlca
    rlca
    inc a
    rrca
    rrca
    and $c0
    ld b, a
    ld a, [hl]
    and $3f
    or b
    ld [hl], a
    jp Jump_001_5d77


    ldh a, [$ff3d]
    ld l, h
    ld a, [c]
    ld b, b
    rrca
    ld l, l
    add b
    inc e
    ld l, l
    jr nz, jr_001_6ba3

    ld l, l
    db $10
    ld c, c
    ld l, l
    ld bc, $6d49
    ld [bc], a
    db $db
    ld l, h
    inc b
    ld h, a
    ld l, l
    ld [$6cdb], sp
    di
    ld e, c
    ld b, l
    ld d, e
    nop
    ld c, [hl]
    ld c, a
    jr nz, jr_001_6b91

jr_001_6b91:
    add e
    dec l
    dec l
    dec l
    nop
    dec l
    ld a, [hl]
    dec l
    dec l
    nop
    dec l
    dec l
    ld e, [hl]
    dec l
    nop
    dec l
    dec l
    dec l

jr_001_6ba3:
    add l
    nop
    xor [hl]
    ld l, e
    xor h
    ld l, e
    nop
    ld bc, $2000
    nop
    or a
    ld l, e
    or l
    ld l, e
    nop
    ld bc, $2001
    nop
    ret nz

    ld l, e
    cp [hl]
    ld l, e
    nop
    ld bc, $2002
    nop
    ret


    ld l, e
    rst $00
    ld l, e
    nop
    ld bc, $2003
    nop
    jp nc, $d06b

    ld l, e
    nop
    ld bc, $2004
    nop
    db $db
    ld l, e
    reti


    ld l, e
    nop
    ld bc, $2005
    nop
    db $e4
    ld l, e
    ld [c], a
    ld l, e
    nop
    ld bc, $2006
    nop
    db $ed
    ld l, e
    db $eb
    ld l, e
    nop
    ld bc, $2007
    nop
    or $6b
    db $f4
    ld l, e
    nop
    ld bc, $2008
    nop
    rst $38
    ld l, e
    db $fd
    ld l, e
    nop
    ld bc, $2009
    nop
    ld [$066c], sp
    ld l, h
    nop
    ld bc, $200a
    nop
    ld de, $0f6c
    ld l, h
    nop
    ld bc, $200b
    nop
    ld a, [de]
    ld l, h
    jr jr_001_6c81

    nop
    ld bc, $200c
    nop
    inc hl
    ld l, h
    ld hl, $006c
    ld bc, $200d
    nop
    inc l
    ld l, h
    ld a, [hl+]
    ld l, h
    nop
    ld bc, $200e
    nop
    nop
    nop
    inc sp
    ld l, h
    nop
    ld bc, $200f
    nop
    sub c
    ld l, e
    sub [hl]
    ld l, e
    sbc e
    ld l, e
    and b
    ld l, e
    ld hl, $5e5a
    call UpdateTilemapBeyond9A00
    ld hl, $6ba5
    call UpdateTilemapBeyond9A00
    ld b, $10

jr_001_6c4b:
    push bc
    ldh a, [$ffa1]
    ld c, a
    cp b
    jr nc, jr_001_6c54

    jr jr_001_6c84

jr_001_6c54:
    dec b
    ld a, b
    swap a
    ld l, a
    ld h, $c6
    ld c, b
    ld b, $03
    ld d, $00
    call Call_000_1bfa
    pop bc
    push bc
    dec b
    ld a, b
    swap a
    or $0f
    ld l, a
    ld h, $c2
    ld a, [hl]
    and $03
    rla
    ld e, a
    ld d, $00
    ld hl, $6c35
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, b
    ld b, $0e
    ld d, $00

jr_001_6c81:
    call Call_000_1bfa

jr_001_6c84:
    pop bc
    dec b
    jr nz, jr_001_6c4b

    ld a, [$da29]
    ld c, a
    ld b, $01
    ld d, $00
    ld hl, $5a28
    call Call_000_1bfa
    ld a, [$c905]
    cp $03
    jr nz, jr_001_6ca9

    di
    ld a, [hFadeStatus]
    set 0, a
    res 1, a
    ld [hFadeStatus], a
    ei

jr_001_6ca9:
    scf
    ret

Jump_001_6cab:
    ldh a, [$ffa1]
    cp $02
    ret c

    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_6cbc:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_6cbc

    call PrepareCopyrightTilemapUpdate
    call Call_000_382e
    xor a
    ld b, $00
    ld hl, $6b6c
    call Call_001_5a56
    xor a
    ld [$da29], a
    call LoadSoundForMainGameplay
    jp Jump_001_5d6e


    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_6ce7:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_6ce7

    call PrepareCopyrightTilemapUpdate
    call PrepareTitleOrMenuTransition
    ld a, $02
    ld b, $00
    ld hl, $6284
    call Call_001_5a56
    call Call_001_6d78
    di
    ld a, [hFadeStatus]
    set 0, a
    res 1, a
    ld [hFadeStatus], a
    ei
    jp Jump_001_5d6e


    ld a, [$da29]
    dec a
    cp $ff
    ret z

    ld [$da29], a
    jp Jump_001_5d6e


    ldh a, [$ffa1]
    ld b, a
    ld a, [$da29]
    inc a
    cp b
    ret nc

    ld [$da29], a
    jp Jump_001_5d6e


    ld a, [$da29]
    swap a
    or $0f
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    and $fc
    ld b, a
    ld a, c
    dec a
    and $03
    or b
    ld [hl], a
    ldh a, [$ffef]
    set 3, a
    ldh [$ffef], a
    jp Jump_001_5d6e


    ld a, [$da29]
    swap a
    or $0f
    ld l, a
    ld h, $c2
    ld a, [hl]
    ld c, a
    and $fc
    ld b, a
    ld a, c
    inc a
    and $03
    or b
    ld [hl], a
    ldh a, [$ffef]
    set 3, a
    ldh [$ffef], a
    jp Jump_001_5d6e


    ldh a, [$ffa1]
    ld b, a
    ld a, [$da29]
    inc a
    cp b
    jr c, jr_001_6d72

    xor a

jr_001_6d72:
    ld [$da29], a
    jp Jump_001_5d6e


Call_001_6d78:
    ld hl, $c20f
    ldh a, [$ffa1]
    ld b, a

jr_001_6d7e:
    ld a, [hl-]
    and $03
    cp $01
    jr z, jr_001_6d89

    cp $02
    jr nz, jr_001_6d8b

jr_001_6d89:
    xor $03

jr_001_6d8b:
    swap a
    sla a
    sla a
    ld [hl+], a
    ld a, l
    add $10
    ld l, a
    dec b

jr_001_6d97:
    jr nz, jr_001_6d7e

    ret

ChooseArenaActions:
    ldh a, [$ffb7]
    ld l, l
    ld a, [c]
    ld b, b
    pop hl
    ld l, l
    add b
    xor $6d
    db $10
    pop hl
    ld l, l
    jr nz, jr_001_6d97

    ld l, l
    inc b
    jp nc, $016d

    ld a, [$026d]
    rst $38
    ld l, l
    ld [$6dfa], sp
    di

Call_001_6db7:
    ld a, [$dabb]
    call Call_000_26f1
    ld a, $00
    call Call_001_71ec
    ld hl, $5e14
    call UpdateTilemapBeyond9A00
    scf
    ret


Call_001_6dca:
    xor a
    ld hl, $6d9a
    call Call_001_5a56
    ret

ChooseArena_SelectButton:
    ld a, [$dabb]
    inc a
    cp $0f
    jr c, jr_001_6ddb

    xor a

jr_001_6ddb:
    ld [$dabb], a
    jp Jump_001_5d6e

ChooseArena_UpRightButtons:
    ld a, [$dabb]
    inc a
    cp $0f
    ret nc

    ld [$dabb], a
    jp Jump_001_5d6e


ChooseArena_DownLeftButtons:
    ld a, [$dabb]
    and a
    ret z

    dec a
    ld [$dabb], a
    jp Jump_001_5d6e


    ld a, $01
    ld [$da1e], a
    ld hl, $605b
    ldh a, [$ffef]
    bit 3, a
    jr nz, jr_001_6e0b

    ld hl, $636d

jr_001_6e0b:
    jp hl


    ret


Call_001_6e0d:
    xor a
    ld [$dabb], a
    call Call_000_26f1
    ld bc, $66db
    call CheckCheat
    jr nc, jr_001_6e24

    xor a
    ld hl, $68b3
    call Call_001_5be8
    ret


jr_001_6e24:
    ldh a, [$ffa1]
    cp $02 ; if playercount >1, start on Arena instead of Cyberscape
    jr nc, jr_001_6e32

    xor a
    ld hl, $5f3c
    call Call_001_5be8
    ret


jr_001_6e32:
    ld a, $01
    ld hl, $5f3c
    call Call_001_5be8
    ret


Call_001_6e3b:
    ld hl, $6e6b
    ldh a, [$ffa1]
    cp $02
    jr nc, jr_001_6e47

    ld hl, $6e6f

jr_001_6e47:
    ld a, [$da2b]
    cp $01
    ret c

    ld hl, $6e73
    cp $0b
    ret c

    ld hl, $6e77
    cp $15
    ret c

    ld hl, $6e7b
    cp $1f
    ret c

    ld hl, $6e7f
    cp $29
    ret c

    ld hl, $6e83
    cp $33
    ret


    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a

Call_001_6e87:
    call LoadSoundForMainGameplay
    xor a
    ldh [$ffa2], a
    ldh a, [$ffa1]
    ld b, a
    swap a
    or $0f
    ld l, a
    ld h, $c2
    ld a, $10
    sub b
    ld b, a

jr_001_6e9b:
    ld a, [hl]
    or $03
    ld [hl], a
    ld a, l
    add $10
    ld l, a
    dec b
    jr nz, jr_001_6e9b

    ldh a, [$ffef]
    bit 5, a
    ret nz

    call Call_001_6f07
    ldh a, [$ffa1]
    cpl
    inc a
    add b
    ld b, a
    ldh a, [$ffa1]
    ldh [$ff98], a
    ld a, $00
    ld [$da24], a
    ld a, [$da25]
    call Call_001_6ee5
    ld a, $09
    ld [$da24], a
    ld a, [$da26]
    call Call_001_6ee5
    ld a, $07
    ld [$da24], a
    ld a, [$da27]
    call Call_001_6ee5
    ld a, $01
    ld [$da24], a
    ld a, [$da28]
    call Call_001_6ee5
    ret


Call_001_6ee5:
    and a
    ret z

    ld c, a

jr_001_6ee8:
    push bc
    ldh a, [$ff98]
    ld b, a
    ld a, [$da24]
    ld c, a
    ld de, $0000
    call Call_000_09a1
    ld hl, $ff98
    inc [hl]
    ld hl, $ffa2
    inc [hl]
    pop bc
    dec c
    ret z

    dec b
    jr nz, jr_001_6ee8

    add sp, $02
    ret


Call_001_6f07:
    ldh a, [$fff5]
    ld b, a
    ldh a, [$fff6]
    ld c, a
    call Call_000_0aef
    ld b, l
    ld hl, $c400

jr_001_6f14:
    ld a, [hl+]
    and $0f
    cp $0f
    jr nz, jr_001_6f1c

    dec b

jr_001_6f1c:
    ld a, l
    and a
    jr nz, jr_001_6f14

    ret


Call_001_6f21:
    ldh a, [$ffa1]
    ld b, a
    ldh a, [$ffa2]
    add b
    ld b, a

jr_001_6f28:
    push bc
    ldh a, [$ffef]
    bit 5, a
    jr z, jr_001_6f40

    ldh a, [$ffa1]
    dec a
    cp b
    jr c, jr_001_6f40

    ld a, b
    dec a
    or $70
    ld c, a
    ld b, $c7
    ld a, [bc]
    and a
    jr z, jr_001_6f56

jr_001_6f40:
    call Call_000_11f2
    ldh a, [$ff91]
    bit 3, a
    jr z, jr_001_6f50

    pop bc
    push bc
    ld a, b
    dec a
    call Call_001_55d0

jr_001_6f50:
    call Call_000_1283
    call Call_001_7122

jr_001_6f56:
    pop bc
    dec b
    jr nz, jr_001_6f28

    ret


Call_001_6f5b:
    call Call_001_6e87
    call Call_001_6f21
    call Call_001_6fad
    ret c

    ld a, [$da2a]
    bit 1, a
    ret z

    ld a, $01
    call PrepareHiramJumpDest
    ret


Call_001_6f71:
    ld hl, $c200

jr_001_6f74:
    xor a
    ld [hl], a
    ld a, l
    add $10
    ld l, a
    jr nz, jr_001_6f74

    call Call_000_2e5c
    ld a, $ff
    ld [$d9f6], a
    ld [$d9f7], a
    ld a, $00
    ld [$d9f5], a
    ld a, $01
    ld [$da44], a
    call Call_001_6e87
    ld a, [$da2b]
    call Call_000_323b
    call Call_001_6f21
    call Call_001_6fad
    ret c

    ld a, [$da2a]
    bit 1, a
    ret z

    ld a, $01
    call PrepareHiramJumpDest
    ret


Call_001_6fad:
    ldh a, [$ffef]
    bit 3, a
    jr nz, jr_001_6fb5

jr_001_6fb3:
    and a
    ret


jr_001_6fb5:
    ldh a, [$ffa1]
    ld b, a
    ldh a, [$ffa2]
    add b
    ld b, a
    ld hl, $c20f
    ld a, [hl]
    and $03
    ld c, a

jr_001_6fc3:
    ld a, l
    add $10
    ld l, a
    dec b
    jr z, jr_001_6fd2

    ld a, [hl]
    and $03
    cp c
    jr nz, jr_001_6fb3

    jr jr_001_6fc3

jr_001_6fd2:
    scf
    ret


Call_001_6fd4:
    xor a
    ld hl, $7013
    call Call_001_5be8
    ret


    pop af
    ld l, a
    db $e3
    ld l, a
    ld bc, $0203
    ld c, a
    ld c, [hl]
    ld c, h
    ld e, c
    jr nz, jr_001_7038

    ld c, [hl]
    ld b, l
    jr nz, jr_001_7041

    ld b, l
    ld b, c
    ld c, l
    nop
    nop
    ld [hl], b
    ld hl, sp+$6f
    ld bc, $0406
    ld b, l
    ld e, b
    ld c, c
    ld d, e
    ld d, h
    ld d, e
    ld hl, $0000
    nop
    rlca
    ld [hl], b
    nop
    inc b
    ld a, [bc]
    ld d, b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$55

    ld d, h
    ld b, c
    ld d, d
    ld d, h
    nop
    ldh a, [rNR31]
    ld [hl], b
    ld a, [c]
    ld [$7029], sp
    di
    ld hl, $6fdc
    call DrawText
    ld hl, $5d13
    call UpdateTilemapBeyond9A00
    scf
    ret


NotTransitionTitleToDemo:
    ld a, $01
    ld [$da1e], a
    ret

TransitionFromTitle::
    ld a, [$c907]
    ldh [$ffa1], a
    xor a
    call PrepareForClearBufferStack

jr_001_7038:
    call PrepareTitleOrMenuTransition
    call CheckIfCopyrightTilemapUpdate
    call UpdateFrameBuffer

jr_001_7041:
    ld hl, $5d13
    call UpdateTilemapBeyond9A00
    call Call_001_54c3
    call Call_000_2e5c
    call Call_001_7636
    ld a, $ff
    ld [$d9f6], a
    ld [$d9f7], a
    ld a, $00
    ld [$d9f5], a
    ld a, [$da2a]
    bit 4, a
    jr nz, jr_001_70cf

    ldh a, [$ffa1]
    cp $01
    jr nz, jr_001_706f

    ld hl, $ffef
    set 3, [hl]

jr_001_706f:
    call Call_001_61e4
    call Call_001_6e0d
    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_7081:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_7081

    ldh a, [$ffef]
    bit 5, a
    jr z, jr_001_70af

    ld bc, $7a46
    ld de, $7a4b
    call Call_001_74b6
    call Call_001_74c7
    ld a, $04
    call Call_001_763e
    ld a, $00
    ld [$da45], a
    call Call_001_6f71
    call Call_001_6fad
    ret nc

    call Call_001_6fd4
    jr jr_001_706f

jr_001_70af:
    call Call_001_6f5b
    call Call_001_6fad
    jr nc, jr_001_70bc

    call Call_001_6fd4
    jr jr_001_706f

jr_001_70bc:
    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_70c8:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_70c8

    ret


jr_001_70cf:
    ld hl, $ffef
    res 3, [hl]
    ld a, $00
    call Call_000_26f1
    ld a, $04
    ldh [$ffa1], a
    ldh a, [$ff92]
    ld b, a
    ld c, $05
    ld de, $0011
    call Call_000_09a1
    ldh a, [$ff92]
    call Call_001_5524
    ld h, a
    ld d, c
    ld c, $80
    ld e, $80
    ldh a, [$ff92]
    call Call_001_55f4
    ldh a, [$ff92]
    swap a
    ld l, a
    ld h, $c2
    set 5, [hl]
    ld a, $04

jr_001_7103:
    push af
    call Call_001_5524
    ld h, a
    ld d, c
    ld c, $80
    ld e, $80
    pop af
    push af
    call Call_001_55f4
    pop af
    swap a
    ld l, a
    ld h, $c2
    res 5, [hl]
    swap a
    inc a
    cp $08
    jr c, jr_001_7103

    ret


Call_001_7122:
    ldh a, [$ff91]
    bit 7, a
    jr nz, jr_001_7131

    ld a, [$c907]
    cp $02
    ret c

    call Call_000_11dd

jr_001_7131:
    xor a
    ld [$da52], a

Jump_001_7135:
jr_001_7135:
    ldh a, [$ff91]
    bit 7, a
    jr z, jr_001_7144

    ld a, [$c910]
    cp $01
    jr z, jr_001_7144

    scf
    ret


jr_001_7144:
    call Call_000_118a
    jr nc, jr_001_7151

    ldh a, [$ff91]
    bit 7, a
    jr nz, jr_001_7135

    scf
    ret


jr_001_7151:
    ld a, [$c916]
    and $f0
    cp $d0
    jr nz, jr_001_716a

    ld a, [$c916]
    and $0f
    or $90
    ld c, a
    ld b, $c7
    ld a, [$c917]
    ld [bc], a
    jr jr_001_7135

jr_001_716a:
    cp $90
    jr nz, jr_001_718c

    ld a, [$c917]
    ld c, a
    ld a, [$c918]
    ld b, a
    ld a, [$c919]
    ld e, a
    ld a, [$c91a]
    ld d, a
    ld a, [$c91b]
    ld h, a
    ld a, [$c916]
    and $0f
    call Call_001_55f4
    jr jr_001_7135

jr_001_718c:
    cp $b0
    jr nz, jr_001_7192

    and a
    ret


jr_001_7192:
    cp $40
    jr nz, jr_001_7198

    scf
    ret


jr_001_7198:
    cp $50
    jr nz, jr_001_71ac

    ld a, [$c907]
    ld b, a
    ld a, [$da52]
    inc a
    ld [$da52], a
    cp b
    jr c, jr_001_71ac

    scf
    ret


jr_001_71ac:
    jp Jump_001_7135


Call_001_71af:
    push af
    ld a, [$c907]
    cp $02
    jr nc, jr_001_71bc

    pop af
    call Call_001_55f4
    ret


jr_001_71bc:
    pop af
    and $0f
    or $90
    ld [$c936], a
    ld a, c
    ld [$c937], a
    ld a, b
    ld [$c938], a
    ld a, e
    ld [$c939], a
    ld a, d
    ld [$c93a], a
    ld a, h
    ld [$c93b], a
    call Call_000_10ad
    ret


LoadInputsAndOtherStuff:
    ldh a, [$ffa1]
    ld b, a
    ld hl, $c790
    ld de, $c7a0

still_bytes_to_load:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, still_bytes_to_load

    ret


Call_001_71ec:
    ld [$dabc], a
    ldh a, [$fff5]
    sla a
    ld b, a
    sla a
    add b
    ld b, a
    ld a, $90
    sub b
    srl a
    ldh [$ffc1], a
    ldh [$ffc3], a
    ldh a, [$fff6]
    sla a
    ld b, a
    sla a
    add b
    ld b, a
    ld a, $70
    sub b
    srl a
    ld b, a
    ld a, $70
    sub b
    ldh [$ffc5], a
    xor a
    ldh [$ffac], a
    ldh [$ffaf], a
    ld [$c9a3], a
    ld [$c9a4], a

Jump_001_7220:
    ldh a, [$ffac]
    ld b, a
    ldh a, [$ffaf]
    swap a
    or b
    ld l, a
    ld h, $c4
    ld a, [hl]
    ldh [$ffa8], a
    ldh a, [$ffef]
    bit 5, a
    jr z, jr_001_7252

    ldh a, [$ffa8]
    bit 4, a
    jr z, jr_001_724e

    ld a, $00
    ldh [$ffdd], a
    ldh a, [$ffc1]
    ld b, a
    ldh a, [$ffc5]
    sub $06
    ld c, a
    ld d, $06
    ld e, d
    call Call_000_3b27
    jr jr_001_7252

jr_001_724e:
    ld a, $01
    ldh [$ffdd], a

jr_001_7252:
    ldh a, [$ffc1]
    ld b, a
    add $06
    ld c, a
    ldh a, [$ffc5]
    sub $06
    ld d, a
    push bc
    push de
    ldh a, [$ffa8]
    and $04
    jr z, jr_001_7271

    ldh a, [$ffdd]
    cp $01
    jr z, jr_001_7271

    ld a, d
    call Call_000_38bf
    jr jr_001_727f

jr_001_7271:
    ldh a, [$ffef]
    bit 5, a
    jr nz, jr_001_727f

    inc b
    inc b
    dec c
    dec c
    ld a, d
    call Call_000_38bf

jr_001_727f:
    pop de
    pop bc
    dec b
    dec c
    inc d
    ldh a, [$ffdd]
    cp $01
    jr z, jr_001_7292

    ldh a, [$ffa8]
    and $04
    ld a, d
    call nz, Call_000_39ac

jr_001_7292:
    ldh a, [$ffc5]
    ld c, a
    sub $06
    ld b, a
    ldh a, [$ffc1]
    ld d, a
    push bc
    push de
    ldh a, [$ffa8]
    and $08
    jr z, jr_001_72af

    ldh a, [$ffdd]
    cp $01
    jr z, jr_001_72af

    ld a, d
    call Call_000_3a5f
    jr jr_001_72bd

jr_001_72af:
    ldh a, [$ffef]
    bit 5, a
    jr nz, jr_001_72bd

    inc b
    inc b
    dec c
    dec c
    ld a, d
    call Call_000_3a5f

jr_001_72bd:
    pop de
    pop bc
    inc b
    inc c
    dec d
    ldh a, [$ffdd]
    cp $01
    jr z, jr_001_72d0

    ldh a, [$ffa8]
    and $08
    ld a, d
    call nz, Call_000_3ae3

jr_001_72d0:
    ldh a, [$ffdd]
    cp $01
    jr z, jr_001_72dd

    ld a, [$dabc]
    and a
    call nz, Call_001_7416

jr_001_72dd:
    ldh a, [$ffc1]
    ld b, a
    add $06
    ld c, a
    ldh a, [$ffc5]
    ld d, a
    push bc
    push de
    ldh a, [$ffdd]
    cp $01
    jr z, jr_001_72fa

    ldh a, [$ffa8]
    and $01
    jr z, jr_001_72fa

    ld a, d
    call Call_000_38bf
    jr jr_001_7308

jr_001_72fa:
    ldh a, [$ffef]
    bit 5, a
    jr nz, jr_001_7308

    inc b
    inc b
    dec c
    dec c
    ld a, d
    call Call_000_38bf

jr_001_7308:
    pop de
    pop bc
    dec b
    dec c
    inc d
    ldh a, [$ffdd]
    cp $01
    jr z, jr_001_731b

    ldh a, [$ffa8]
    and $01
    ld a, d
    call nz, Call_000_39ac

jr_001_731b:
    ldh a, [$ffc5]
    ld c, a
    sub $06
    ld b, a
    ldh a, [$ffc1]
    add $06
    ld d, a
    push bc
    push de
    ldh a, [$ffa8]
    and $02
    jr z, jr_001_733a

    ldh a, [$ffdd]
    cp $01
    jr z, jr_001_733a

    ld a, d
    call Call_000_3a5f
    jr jr_001_7348

jr_001_733a:
    ldh a, [$ffef]
    bit 5, a
    jr nz, jr_001_7348

    inc b
    inc b
    dec c
    dec c
    ld a, d
    call Call_000_3a5f

jr_001_7348:
    pop de
    pop bc
    inc b
    inc c
    dec d
    ldh a, [$ffdd]
    cp $01
    jr z, jr_001_735b

    ldh a, [$ffa8]
    and $02
    ld a, d
    call nz, Call_000_3ae3

jr_001_735b:
    ldh a, [$ffc1]
    add $06
    ldh [$ffc1], a
    ldh a, [$ffac]
    inc a
    ldh [$ffac], a
    ld b, a
    ldh a, [$fff5]
    cp b
    jp nz, Jump_001_7220

    xor a
    ldh [$ffac], a
    ldh a, [$ffc3]
    ldh [$ffc1], a
    ldh a, [$ffc5]
    sub $06
    ldh [$ffc5], a
    ldh a, [$ffaf]
    inc a
    ldh [$ffaf], a
    ld b, a
    ldh a, [$fff6]
    cp b
    jp nz, Jump_001_7220

    ldh a, [$ffef]
    bit 5, a
    jr nz, jr_001_739d

    ld c, $0c
    ld d, $00
    ld hl, $da2d
    call Call_001_4802
    call Call_000_1bd9
    call Call_001_73d0
    ret


jr_001_739d:
    ld hl, $73f9
    call DrawText
    ld a, [$da2b]
    inc a
    ld l, a
    ld h, $00
    call UpdateTimeDisplay
    ld b, $0b
    ld c, $0c
    ld d, $00
    ld hl, $c9ac
    call Call_000_1bd9
    ld a, [$da2b]
    call Call_000_3296
    ld c, $0d
    ld d, $00
    ld hl, $c9ac
    call Call_001_4802
    call Call_000_1bd9
    call Call_001_73d0
    ret


Call_001_73d0:
    ld a, [$dabc]
    and a
    ret z

    ldh a, [$ff92]
    swap a
    or $05
    ld l, a
    ld h, $c2
    ld a, [hl]
    swap a
    and $0e
    ld c, a
    ld b, $00
    ld hl, $7406
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $07
    ld b, $08
    ld c, $08
    ld d, $00
    call Call_000_14e6
    ret


    nop
    nop
    nop
    ld [hl], h
    nop
    dec b
    inc c
    ld c, h
    ld b, l
    ld d, [hl]
    ld b, l
    ld c, h
    nop
    add [hl]
    ld b, b
    ld b, e
    ld b, b
    nop
    ld b, b
    push de
    ld b, c
    sub d
    ld b, c
    ld c, a
    ld b, c
    inc c
    ld b, c
    ret


    ld b, b

Call_001_7416:
    ld hl, $c200

jr_001_7419:
    push hl
    ld a, [hl+]
    bit 0, a
    jr z, jr_001_7455

    bit 6, a
    jr nz, jr_001_7455

    ld a, [hl+]
    ld a, [hl+]
    ld b, a
    ldh a, [$ffac]
    cp b
    jr nz, jr_001_7455

    ld a, [hl+]
    ld a, [hl+]
    ld b, a
    ldh a, [$ffaf]
    cp b
    jr nz, jr_001_7455

    ldh a, [$ffc1]
    add $03
    ld b, a
    ldh a, [$ffc5]
    sub $03
    inc a
    ld c, a
    ld a, l
    and $f0
    ld l, a
    bit 2, [hl]
    jr z, jr_001_7450

    ldh a, [$ff87]
    rra
    ld a, $01
    call nc, Call_000_3c40
    jr jr_001_7455

jr_001_7450:
    ld a, $01
    call Call_000_3c25

jr_001_7455:
    pop hl
    ld a, l
    add $10
    ld l, a
    jr nz, jr_001_7419

    ret


    nop
    nop
    ld h, h
    ld [hl], h
    nop
    nop
    ld b, $7b
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    nop
    nop
    nop
    ld a, [hl]
    ld [hl], h
    nop
    nop
    rlca
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    nop
    ld a, [$da51]
    and a
    ret nz

    ld a, [$da46]
    bit 0, a
    jr z, jr_001_74a3

    ld a, $38
    ld [$da47], a
    ret


jr_001_74a3:
    bit 1, a
    jr z, jr_001_74ad

    ld a, $01
    ld [$da47], a
    ret


jr_001_74ad:
    bit 2, a
    ret z

    ld a, $70
    ld [$da48], a
    ret


Call_001_74b6:
    ld a, c
    ld [$da49], a
    ld a, b
    ld [$da4a], a
    ld a, e
    ld [$da4b], a
    ld a, d
    ld [$da4c], a
    ret


Call_001_74c7:
    ld a, c
    ld [$da4d], a
    ld a, b
    ld [$da4e], a
    ld a, e
    ld [$da4f], a
    ld a, d
    ld [$da50], a
    ret


Call_001_74d8:
    ld a, [$da4d]
    ld [$da49], a
    ld a, [$da4e]
    ld [$da4a], a
    ld a, [$da4f]
    ld [$da4b], a
    ld a, [$da50]
    ld [$da4c], a
    ret


Call_001_74f1:
    ld hl, $da51
    ld a, [hl]
    and a
    jr z, jr_001_74fb

    dec [hl]
    jr jr_001_755b

jr_001_74fb:
    ld a, [$da47]
    ld b, a
    ld a, [$da46]
    bit 0, a
    jr z, jr_001_751e

    ldh a, [$ffef]
    bit 0, a
    ld a, b
    jr nz, jr_001_7563

    add $06
    cp $38
    jr c, jr_001_7563

    ld a, [$da46]
    res 0, a
    res 3, a
    ld [$da46], a
    ret


jr_001_751e:
    bit 1, a
    jr z, jr_001_7538

    ldh a, [$ffef]
    bit 0, a
    ld a, b
    jr nz, jr_001_7563

    sub $06
    jr nc, jr_001_7563

    ld a, [$da46]
    res 1, a
    ld [$da46], a
    xor a
    jr jr_001_7563

jr_001_7538:
    bit 2, a
    jr z, jr_001_755b

    ldh a, [$ffef]
    bit 0, a
    ld a, [$da48]
    jr nz, jr_001_758d

    add $06
    ld [$da48], a
    cp $70
    jr c, jr_001_758d

    ld a, [$da46]
    res 2, a
    ld [$da46], a
    call Call_001_74d8
    jr jr_001_7566

jr_001_755b:
    ld a, [$da46]
    bit 3, a
    ret z

    jr jr_001_7566

jr_001_7563:
    ld [$da47], a

jr_001_7566:
    ld a, [$da47]
    cpl
    inc a
    ld [$c9a4], a
    add $38
    ld e, a
    call Call_001_7612
    ld hl, $da49
    call Call_001_760e
    ld a, [$da47]
    ld [$c9a4], a
    add $38
    ld c, a
    call Call_001_7623
    ld hl, $da4b
    call Call_001_760e
    ret


jr_001_758d:
    ld a, [$da48]
    cp $38
    jr nc, jr_001_75ce

    ld [$c9a4], a
    add $38
    ld e, a
    call Call_001_7612
    ld hl, $da49
    call Call_001_760e
    ld a, [$da48]
    ld b, a
    ld a, $70
    sub b
    cpl
    inc a
    ld [$c9a4], a
    ld hl, $7477
    call DrawText
    ld hl, $da4f
    call Call_001_760e
    ld a, [$da48]
    ld [$c9a4], a
    add $38
    ld c, a
    call Call_001_7623
    ld hl, $da4b
    call Call_001_760e
    ret


jr_001_75ce:
    sub $38
    ld e, a
    ld a, [$da48]
    ld [$c9a4], a
    call Call_001_7612
    ld a, [$da48]
    sub $38
    ld c, a
    call Call_001_7623
    ld hl, $da49
    call Call_001_760e
    ld a, [$da48]
    ld b, a
    ld a, $70
    sub b
    cpl
    inc a
    ld [$c9a4], a
    ld hl, $745d
    call DrawText
    ld hl, $7477
    call DrawText
    ld hl, $da4f
    call Call_001_760e
    ld hl, $da4d
    call Call_001_760e
    ret


Call_001_760e:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_001_7612:
    ld b, $00
    ld c, $00
    ld d, $90
    ld a, e
    call Call_000_3b27
    ld hl, $745d
    call DrawText
    ret


Call_001_7623:
    ld b, $00
    ld a, c
    ld d, $90
    ld a, $70
    sub c
    ld e, a
    call Call_000_3b27
    ld hl, $7477
    call DrawText
    ret


Call_001_7636:
    xor a
    ld [$da46], a
    ld [$da51], a
    ret


Call_001_763e:
    ld [$da51], a
    xor a
    ld [$da47], a
    ld [$da48], a
    ld a, [$da46]
    set 0, a
    res 1, a
    res 2, a
    set 3, a
    ld [$da46], a
    ret


    ld [$da51], a
    ld a, $32
    ld [$da47], a
    xor a
    ld [$da48], a
    ld a, [$da46]
    res 0, a
    set 1, a
    res 2, a
    set 3, a
    ld [$da46], a
    ret


Call_001_7672:
    ld [$da51], a
    xor a
    ld [$da47], a
    ld [$da48], a
    ld a, [$da46]
    res 0, a
    res 1, a
    set 2, a
    set 3, a
    ld [$da46], a
    ret


    and l
    db $76
    sub d
    halt
    nop
    nop
    ld [$4320], sp
    ld l, a
    ld [hl], b
    ld a, c
    ld [hl], d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_001_76d9

    jr nz, jr_001_76d1

    add hl, sp
    add hl, sp
    ld sp, $0020
    cp a
    db $76
    xor h
    halt
    nop
    nop
    add hl, bc
    jr nz, jr_001_76ce

    jr nz, jr_001_76f2

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
    jr nz, jr_001_76dd

    jr nz, jr_001_76bf

jr_001_76bf:
    nop
    nop
    add $76
    nop
    nop
    ld a, [bc]
    jr nz, jr_001_76e8

    jr nz, jr_001_76ea

    jr nz, jr_001_771f

    ld l, a
    ld h, [hl]

jr_001_76ce:
    ld [hl], h
    ld [hl], a
    ld h, c

jr_001_76d1:
    ld [hl], d
    ld h, l
    jr nz, jr_001_76f5

    jr nz, @+$22

    jr nz, jr_001_76d9

jr_001_76d9:
    di
    db $76
    ldh [rPCM12], a

jr_001_76dd:
    nop
    nop
    inc c
    jr nz, jr_001_7702

    jr nz, jr_001_7734

    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e

jr_001_76e8:
    jr nz, @+$22

jr_001_76ea:
    jr nz, @+$22

    jr nz, jr_001_770e

    jr nz, jr_001_7710

    jr nz, jr_001_7712

jr_001_76f2:
    nop
    nop
    nop

jr_001_76f5:
    ld a, [$0076]
    nop
    dec c
    jr nz, jr_001_771c

    ld [hl], h
    ld l, a
    jr nz, jr_001_7762

    ld h, l
    ld h, a

jr_001_7702:
    ld l, c
    ld l, [hl]
    jr nz, @+$69

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_001_772b

    jr nz, jr_001_770d

jr_001_770d:
    nop

jr_001_770e:
    nop
    inc d

jr_001_7710:
    ld [hl], a
    nop

jr_001_7712:
    add hl, bc
    inc c
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    nop
    ld [hl], $77

jr_001_771c:
    ld hl, $0077

jr_001_771f:
    nop
    db $10
    jr nz, jr_001_7743

    jr nz, jr_001_7745

    jr nz, @+$45

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h

jr_001_772b:
    ld h, l
    ld h, h
    jr nz, @+$64

    ld a, c
    jr nz, CalledInMiddleOfLogoBlit

    jr nz, @+$22

jr_001_7734:
    jr nz, jr_001_7736

jr_001_7736:
    nop
    nop
    dec a
    ld [hl], a
    nop
    nop
    ld de, $5820
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld l, b

jr_001_7743:
    jr nz, @+$55

jr_001_7745:
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
    jr nz, CalledInMiddleOfLogoBlit

CalledInMiddleOfLogoBlit:
    ld bc, $0168

jr_001_7755:
    push bc
    ld bc, $0001
    call Call_000_09f1
    call Call_000_125d
    pop bc
    ret c

    dec bc

jr_001_7762:
    ld a, b
    or c
    jr nz, jr_001_7755

    and a
    ret


TransitionToLogoOrTitleFromDemo::
    ld a, [hFadeStatus]
    and a
    jr nz, TransitionToLogoOrTitleFromDemo

    ld a, [$da57]
    and a
    jp nz, TransitionToTitle

    ld a, [$c6ff]
    and $f0
    cp $50
    jp z, TransitionToTitle

    call PrepareBPSLogoHiramJump
    call CalledInMiddleOfLogoBlit
    jr c, PrepareCopyrightScreenWipe

    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_7793:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_7793

    call UpdateVRAMGFX
    ld a, $01
    ld [$da57], a
    call Call_000_382e
    call Call_000_08de
    di
    ld a, [hFadeStatus]
    set 0, a
    res 1, a
    ld [hFadeStatus], a
    ei
    call CalledInMiddleOfLogoBlit

PrepareCopyrightScreenWipe:
    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_77c2:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_77c2

    call UpdateVRAMGFX

TransitionToTitle:
    call PrepareTitleOrMenuTransition
    xor a
    call PrepareForClearBufferStack
    call CheckIfCopyrightTilemapUpdate
    call UpdateFrameBuffer
    ld hl, $da2a
    res 4, [hl]
    ld a, $64 ; title screen timer
    ld [$d9f9], a
    ld a, $00
    ld [$d9fa], a
    ld bc, $78ff
    ld de, $792f
    call Call_001_74b6
    ld a, $08
    call Call_001_763e
    xor a
    ld [$da53], a
    ld [$da56], a
    ld a, $00
    call PrepareHiramJumpDest

Jump_001_7801: ;draw FPA player count
    call CheckIfCopyrightTilemapUpdate
    xor a
    ld [$c9a3], a
    ld [$c9a4], a
    call Call_000_0fe9
    and a
    jr z, jr_001_7831

    ld e, a
    push de
    ld b, $7c
    ld c, $4c
    ld d, $10
    ld e, $18
    call DrawBox
    pop de
    ld l, e
    ld h, $00
    call UpdateTimeDisplay
    ld b, $10
    ld c, $0a
    ld d, $01
    ld hl, $c9ac
    call Call_000_1bd9

jr_001_7831:
    ld hl, $768b ; "Copyright (C) 1991 Bullet-Proof Software"
    call DrawText
    ld hl, $771a ; "Created by Xanth Software F/X"
    call UpdateTilemapBeyond9A00
    ld a, [$da46]
    bit 3, a
    jr nz, jr_001_7867

    call Call_001_7946
    jr nc, jr_001_7867

    ld hl, $76d9 ; "Press       to begin game"
    call DrawText
    ld a, [$da53]
    and $02
    jr z, jr_001_7867

    ld b, $46
    ld c, $5f
    ld d, $2c
    ld e, $09
    call DrawBox
    ld hl, $770d ; "START"
    call DrawText

jr_001_7867:
    ld c, $00
    ld b, $00
    ld hl, $6634 ; Logo addr
    ld a, $02 ; Logo bank
    ld d, $00
    call Call_000_14e6
    call DrawFlashingShotsOnTitle
    call Call_001_74f1
    call UpdateFrameBuffer
    call TransitionExitingTitle
    ld a, [$c905]
    cp $03
    jr nz, jr_001_7894

    di
    ld a, [hFadeStatus]
    set 0, a
    res 1, a
    ld [hFadeStatus], a
    ei

jr_001_7894:
    ld hl, $da53
    inc [hl]
    ld a, [$da46]
    bit 3, a
    jr z, jr_001_78a7

    call Call_000_125d
    jp c, Jump_001_78e4

    jr jr_001_78ad

jr_001_78a7:
    call Call_001_7967
    jp c, Jump_001_78e4

jr_001_78ad:
    ld a, [$d9f9]
    ld c, a
    ld a, [$d9fa]
    ld b, a
    dec bc
    ld a, c
    ld [$d9f9], a
    ld a, b
    ld [$d9fa], a
    or c
    jp nz, Jump_001_7801

    ld a, $c8 ; demo timer
    ld [$d9f9], a
    ld a, $00
    ld [$d9fa], a
    ld hl, $da2a
    set 4, [hl]
    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_78dd:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_78dd

    ret


Call_001_78e4:
Jump_001_78e4:
    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_78f0:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_78f0

    call Call_000_093a
    ld a, $14
    ld [$c903], a
    ret


    ld b, $30
    ld d, $30
    ld e, $18
    ld a, [$da47]
    cpl
    inc a
    add $10
    ld c, a

jr_001_790d:
    ld a, c
    cp $70
    jr c, jr_001_7917

    inc c
    dec e
    jr nz, jr_001_790d

    ret


jr_001_7917:
    call Call_000_3b22
    ld a, [$da47]
    cpl
    inc a
    add $10
    ld c, a
    ld b, $30
    ld hl, $6e17
    ld a, $02
    ld d, $00
    call Call_000_14e6
    ret


    ld hl, $7936
    call DrawText
    ret


    nop
    nop
    dec a
    ld a, c
    nop
    dec b
    add hl, bc
    ld d, b
    ld d, d
    ld b, l
    ld d, e
    ld b, l
    ld c, [hl]
    ld d, h
    ld d, e
    nop

Call_001_7946:
    ld a, [$c907]
    and a
    jr z, jr_001_7956

    ldh a, [$ff91]
    bit 3, a
    jr nz, jr_001_7954

    and a
    ret


jr_001_7954:
    scf
    ret


jr_001_7956:
    ld a, [$c6ff]
    and $f0
    cp $50
    jr nz, jr_001_7954

    ld a, [$c6fe]
    and a
    jr z, jr_001_7954

    and a
    ret


Call_001_7967:
    call Call_000_125d
    jr c, jr_001_797f

    call Call_001_7946
    ret nc

    ld a, [$c902]
    bit 3, a
    jp nz, Jump_001_797f

    bit 2, a
    jp nz, Jump_001_797f

    and a
    ret


Jump_001_797f:
jr_001_797f:
    call Call_000_093a
    ld hl, $da2a
    res 4, [hl]
    scf
    ret


TransitionExitingTitle::
    ldh a, [$ff91]
    bit 7, a
    ret z

    ld a, [$c913]
    and $0f
    cp $09
    jr z, jr_001_79a2

    cp $05
    jr z, jr_001_79a2

    cp $0b
    jr z, jr_001_79a2

    cp $0d
    ret nz

jr_001_79a2:
    ld a, [$c9a2]
    cp $01
    call nz, PrepareTitleOrMenuTransition
    call CheckIfCopyrightTilemapUpdate
    ld hl, $79cc
    call DrawText
    call UpdateFrameBuffer
    ld a, [$c905]
    cp $03
    jr nz, jr_001_79c9

    di
    ld a, [hFadeStatus]
    set 0, a
    res 1, a
    ld [hFadeStatus], a
    ei

jr_001_79c9:
    jp TransitionExitingTitle


    and $79
    db $d3
    ld a, c
    ld bc, $0400
    jr nz, @+$48

    ld d, b
    ld b, c
    jr nz, @+$6b

    ld l, [hl]
    ld h, e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, h
    ld a, c
    jr nz, @+$22

    nop
    nop
    nop
    db $ed
    ld a, c
    ld bc, $0600
    jr nz, @+$22

    jr nz, jr_001_7a11

    ld h, e
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_001_7a1c

    jr nz, @+$22

    jr nz, DrawFlashingShotsOnTitle

DrawFlashingShotsOnTitle:
    ld a, [$da54]
    ld b, a
    ld a, [$da55]
    ld c, a
    ld a, [$da53]
    and $07
    ret nz

    ld hl, $6fc0

jr_001_7a11:
    ld a, $02
    jr jr_001_7a21

    ld hl, $6f7d
    ld a, $02
    jr jr_001_7a21

jr_001_7a1c:
    ld hl, $6f3a
    ld a, $02

jr_001_7a21:
    ld d, $00
    call Call_000_14e6
    ldh a, [rLY]
    and $1f
    add $0c
    ld [$da55], a
    ldh a, [rLY]
    and $7f
    add $08
    ld [$da54], a
    ret


    ld a, [$da2c]
    jr jr_001_7a53

    ld a, [$da2c]
    call Call_000_3296
    jr jr_001_7a75

    ld a, [$da2b]
    jr jr_001_7a53

    ld a, [$da2b]
    call Call_000_3296
    jr jr_001_7a75

jr_001_7a53:
    push af
    ld b, $05
    ld c, $04
    ld d, $01
    ld hl, $3119
    call Call_000_1bd9
    pop af
    inc a
    ld l, a
    ld h, $00
    call UpdateTimeDisplay
    ld b, $0b
    ld c, $04
    ld d, $01
    ld hl, $c9ac
    call Call_000_1bd9
    ret


jr_001_7a75:
    ld hl, $c9ac
    call Call_001_4802
    ld c, $08
    ld d, $01
    call Call_000_1bd9
    ret


    ldh a, [$ff92]
    or $70
    ld l, a
    ld h, $c7
    ld a, [hl]
    and a
    jr nz, jr_001_7a95

    ld hl, $316c
    call DrawText
    ret


jr_001_7a95:
    ld hl, $311f
    call DrawText
    ld a, [$da2b]
    inc a
    ld l, a
    ld h, $00
    call UpdateTimeDisplay
    ld b, $06
    ld c, $04
    ld d, $01
    ld hl, $c9ac
    call Call_000_1bd9
    ret


    call Call_001_7ad7
    ret c

    ld hl, $314b
    call DrawText
    call Call_001_7aef
    ld a, [$da42]
    ld l, a
    ld a, [$da43]
    ld h, a
    call UpdateTimeDisplay
    ld b, $0d
    ld c, $0a
    ld d, $00
    ld hl, $c9ac
    call Call_000_1bd9
    ret


Call_001_7ad7:
    ldh a, [$ffa1]
    ld b, a
    ld hl, $d9fe

jr_001_7add:
    ld a, [hl]
    and a
    jr z, jr_001_7ae7

    inc hl
    dec b
    jr nz, jr_001_7add

    and a
    ret


jr_001_7ae7:
    ld hl, $317e
    call DrawText
    scf
    ret


Call_001_7aef:
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

jr_001_7b03:
    ld a, [hl]
    and a
    jr z, jr_001_7b0a

    inc hl
    jr jr_001_7b03

jr_001_7b0a:
    ld a, $30
    ld [hl+], a
    xor a
    ld [hl+], a
    ld b, $0a
    ld c, $09
    ld d, $00
    ld hl, $c9ac
    call Call_000_1bd9
    ret


ShowEnding:
    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_7b28:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_7b28

    xor a
    ldh [$ff87], a
    ld hl, $7bc2
    call ShowEndingSmiloidScene
    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_7b43:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_7b43

    call PrepareCreditsHiramJump
    ret


ShowEndingSmiloidScene:
    ld a, [hl+]
    ldh [$ffec], a
    ld a, [hl+]
    ld b, a
    cp $ff
    ret z

jr_001_7b55:
    push bc
    push hl
    ldh a, [$ff87]
    inc a
    ldh [$ff87], a
    call CheckIfCopyrightTilemapUpdate
    call FillBufferStackHalf2
    ldh a, [$ff87]
    srl a
    and $7f
    ld b, $48
    ld c, $38
    call Call_000_3c44
    ldh a, [$ff87]
    srl a
    srl a
    ld b, $48
    ld c, $38
    call Call_000_3c29
    ldh a, [$ff87]
    srl a
    srl a
    srl a
    ld b, $48
    ld c, $38
    call Call_000_3c0e
    ldh a, [$ff87]
    srl a
    srl a
    srl a
    srl a
    ld b, $48
    ld c, $38
    call Call_000_3bf3
    pop hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    push hl
    call Call_001_7d2a
    call UpdateFrameBuffer
    ld a, [$c905]
    cp $03
    jr nz, jr_001_7bbb

    di
    ld a, [hFadeStatus]
    set 0, a
    res 1, a
    ld [hFadeStatus], a
    ei

jr_001_7bbb:
    pop hl
    pop bc
    dec b
    jr nz, jr_001_7b55

    jr ShowEndingSmiloidScene

    jr nz, jr_001_7be5

    cp b
    ld [bc], a
    cp l
    ld [bc], a
    pop bc
    inc b
    add $04
    jp z, $cf06

    ld b, $d3
    ld [$08d8], sp
    call c, $e10a
    ld a, [bc]
    push hl
    inc c
    ld [$ee0c], a
    ld c, $f3
    ld c, $f7
    db $10
    db $fc
    stop

jr_001_7be5:
    ld [de], a
    inc b
    ld [de], a
    add hl, bc
    inc d
    dec c
    inc d
    ld [de], a
    ld d, $16
    ld d, $1b
    jr jr_001_7c12

    jr jr_001_7c19

    ld a, [de]
    jr z, jr_001_7c12

    dec l
    inc e
    ld sp, $361c
    ld e, $3a
    ld e, $3f

jr_001_7c01:
    jr nz, @+$45

    jr nz, @+$4a

    ld [hl+], a
    ld h, b
    ld hl, $0248
    ld b, e
    ld [bc], a
    ccf
    inc b
    ld a, [hl-]
    inc b
    ld [hl], $06

jr_001_7c12:
    ld sp, $2d06

jr_001_7c15:
    ld [$0828], sp

jr_001_7c18:
    inc h

jr_001_7c19:
    ld a, [bc]
    rra
    ld a, [bc]
    dec de
    inc c
    ld d, $0c
    ld [de], a
    ld c, $0d
    ld c, $09
    db $10
    inc b
    stop
    ld [de], a
    db $fc
    ld [de], a
    rst $30
    inc d
    di
    inc d
    xor $16
    ld [$e516], a
    jr jr_001_7c18

    jr jr_001_7c15

    ld a, [de]
    ret c

    ld a, [de]
    db $d3
    inc e
    rst $08
    inc e
    jp z, $c61e

    ld e, $c1
    jr nz, @-$41

    jr nz, jr_001_7c01

    ld [hl+], a
    and b
    ld hl, $02b8
    cp l
    ld [bc], a
    pop bc
    inc b
    add $04
    jp z, $cf06

    ld b, $d3
    ld [$08d8], sp
    call c, $e10a
    ld a, [bc]
    push hl
    inc c
    ld [$ee0c], a
    ld c, $f3
    ld c, $f7
    db $10
    db $fc
    stop
    ld [de], a
    inc b
    ld [de], a
    add hl, bc
    inc d
    dec c
    inc d
    ld [de], a
    ld d, $16
    ld d, $1b
    jr jr_001_7c9a

    jr jr_001_7ca1

    ld a, [de]
    jr z, jr_001_7c9a

    dec l
    inc e
    ld sp, $361c
    ld e, $3a
    ld e, $3f

jr_001_7c89:
    jr nz, @+$45

    jr nz, jr_001_7cd5

    ld [hl+], a
    ldh [rNR42], a
    ld c, b
    ld [bc], a
    ld b, e
    ld [bc], a
    ccf
    inc b
    ld a, [hl-]
    inc b
    ld [hl], $06

jr_001_7c9a:
    ld sp, $2d06

jr_001_7c9d:
    ld [$0828], sp

jr_001_7ca0:
    inc h

jr_001_7ca1:
    ld a, [bc]
    rra
    ld a, [bc]
    dec de
    inc c
    ld d, $0c
    ld [de], a
    ld c, $0d
    ld c, $09
    db $10
    inc b
    stop
    ld [de], a
    db $fc
    ld [de], a
    rst $30
    inc d
    di
    inc d
    xor $16
    ld [$e516], a
    jr jr_001_7ca0

    jr jr_001_7c9d

    ld a, [de]
    ret c

    ld a, [de]
    db $d3
    inc e
    rst $08
    inc e
    jp z, $c61e

    ld e, $c1
    jr nz, @-$41

    jr nz, jr_001_7c89

    ld [hl+], a
    jr nz, jr_001_7ce8

    nop

jr_001_7cd5:
    ld [bc], a
    nop
    inc b
    nop
    ld b, $00
    ld [$0a00], sp
    nop
    inc c
    nop
    ld c, $00
    stop
    ld [de], a
    nop
    inc d

jr_001_7ce8:
    nop
    ld d, $00
    jr jr_001_7ced

jr_001_7ced:
    ld a, [de]
    nop
    inc e
    nop
    ld e, $00
    jr nz, jr_001_7cf5

jr_001_7cf5:
    ld [hl+], a
    nop
    inc h
    nop
    ld h, $00
    jr z, jr_001_7d03

    inc b
    nop
    jr z, jr_001_7d01

jr_001_7d01:
    jr z, jr_001_7d03

jr_001_7d03:
    jr z, jr_001_7d05

jr_001_7d05:
    jr z, jr_001_7d07

jr_001_7d07:
    stop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    rst $38

Call_001_7d2a:
    ld hl, $da68
    ld a, $04
    ld [hl+], a
    ld a, b
    ld [hl+], a
    push hl
    ld a, e
    sla a
    ld c, a
    ld b, $00
    ld hl, $7d56
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ldh a, [$ffec]
    ld [hl+], a
    ld a, [$5012]
    ld [hl], a
    ld hl, $da68
    call Call_001_4e37
    ret


    add c
    ld d, d
    add c
    ld d, d
    add c
    ld d, d
    add c
    ld d, d
    add c
    ld d, d
    add c
    ld d, d
    ld e, l
    ld d, d
    ld e, l
    ld d, d
    ld e, l
    ld d, d
    ld e, l
    ld d, d
    add hl, sp
    ld d, d
    add hl, sp
    ld d, d
    add hl, sp
    ld d, d
    add hl, sp
    ld d, d
    dec d
    ld d, d
    dec d
    ld d, d
    dec d
    ld d, d
    dec d
    ld d, d
    pop af
    ld d, c
    pop af
    ld d, c
    pop af
    ld d, c
    pop af
    ld d, c
    call $cd51
    ld d, c
    call $cd51
    ld d, c
    xor c
    ld d, c
    xor c
    ld d, c
    xor c
    ld d, c
    xor c
    ld d, c
    add l
    ld d, c
    add l
    ld d, c
    add l
    ld d, c
    add l
    ld d, c
    ld h, c
    ld d, c
    ld h, c
    ld d, c
    ld h, c
    ld d, c
    ld h, c
    ld d, c
    dec a
    ld d, c
    dec a
    ld d, c
    dec a
    ld d, c
    dec a
    ld d, c
    add hl, de
    ld d, c
    add hl, de
    ld d, c
    add hl, de
    ld d, c
    add hl, de
    ld d, c
    push af
    ld d, b
    push af
    ld d, b
    push af
    ld d, b
    push af
    ld d, b
    pop de
    ld d, b
    pop de
    ld d, b
    pop de
    ld d, b
    pop de
    ld d, b
    xor l
    ld d, b
    xor l
    ld d, b
    xor l
    ld d, b
    xor l
    ld d, b
    adc c
    ld d, b
    adc c
    ld d, b
    adc c
    ld d, b
    adc c
    ld d, b
    adc c
    ld d, b
    adc c
    ld d, b
    adc c
    ld d, b
    add c
    ld d, d
    add c
    ld d, d
    add c
    ld d, d
    add c
    ld d, d
    add c
    ld d, d
    add c
    ld d, d
    add c
    ld d, d
    add c
    ld d, d
    add c
    ld d, d
    add c
    ld d, d
    ld e, l
    ld d, d
    ld e, l
    ld d, d
    ld e, l
    ld d, d
    ld e, l
    ld d, d
    add hl, sp
    ld d, d
    add hl, sp
    ld d, d
    add hl, sp
    ld d, d
    add hl, sp
    ld d, d
    dec d
    ld d, d
    dec d
    ld d, d
    dec d
    ld d, d
    dec d
    ld d, d
    pop af
    ld d, c
    pop af
    ld d, c
    pop af
    ld d, c
    pop af
    ld d, c
    call $cd51
    ld d, c
    call $cd51
    ld d, c
    xor c
    ld d, c
    xor c
    ld d, c
    xor c
    ld d, c
    xor c
    ld d, c
    add l
    ld d, c
    add l
    ld d, c
    add l
    ld d, c
    add l
    ld d, c
    ld h, c
    ld d, c
    ld h, c
    ld d, c
    ld h, c
    ld d, c
    ld h, c
    ld d, c
    dec a
    ld d, c
    dec a
    ld d, c
    dec a
    ld d, c
    dec a
    ld d, c
    add hl, de
    ld d, c
    add hl, de
    ld d, c
    add hl, de
    ld d, c
    add hl, de
    ld d, c
    push af
    ld d, b
    push af
    ld d, b
    push af
    ld d, b
    push af
    ld d, b
    pop de
    ld d, b
    pop de
    ld d, b
    pop de
    ld d, b
    pop de
    ld d, b
    xor l
    ld d, b
    xor l
    ld d, b
    xor l
    ld d, b
    xor l
    ld d, b
    xor l
    ld d, b
    xor l
    ld d, b
    xor l
    ld d, b

Call_001_7e5a::
    call ZeroOutTimerCtrl
    call zero_timer_return
    ld a, $ff
    ld [$df66], a
    ld a, $80
    ld [$df67], a
    ld a, $26
    ld [$df68], a
    ld a, $37
    ld [$df69], a
    call Call_000_093a
    ld a, $30
    ldh [rP1], a
    ld a, $91
    ld [$c900], a
    xor a
    ld [hFadeStatus], a
    ld [$c905], a
    ld [$c901], a
    ld [$c902], a
    ld [$c903], a
    ldh [rSCY], a
    ldh [rSCX], a
    ld a, $00
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    xor a
    ld [$c956], a
    ld [$c957], a
    ld [$c958], a
    ld [$c959], a
    ld [$c907], a
    ldh [$ff92], a
    ld [$c909], a
    ld [$c908], a
    ld [$c90b], a
    ld [$c911], a
    ld [$c914], a
    cpl
    ld [$c915], a
    ld a, $00
    ld [$c910], a
    ld a, $00
    ldh [rSB], a
    ld [$c912], a
    ldh a, [rIF]
    res 3, a
    ldh [rIF], a
    ldh a, [rIE]
    set 3, a
    ldh [rIE], a
    ld a, $80
    ldh [rSC], a
    ld a, $55
    ld [$c95a], a
    xor a
    set 5, a
    ldh [$ff91], a
    xor a
    ld [$c9a4], a
    ld [$c9a3], a
    ldh [$ff93], a
    ld a, $00
    ld [$c9a2], a
    ldh a, [rIF]
    res 0, a
    res 4, a
    ldh [rIF], a
    ldh a, [rIE]
    set 0, a
    ldh [rIE], a
    ei
    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_7f10:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_7f10

    call UpdateVRAMGFX
    xor a
    set 4, a
    ldh [$ffef], a
    ret


    ldh [$ff92], a
    ld [$c909], a
    ld [$c908], a
    ld [$c90b], a
    ld [$c911], a
    ld [$c914], a
    cpl
    ld [$c915], a
    ld a, $00
    ld [$c910], a
    ld a, $00
    ldh [rSB], a
    ld [$c912], a
    ldh a, [rIF]
    res 3, a
    ldh [rIF], a
    ldh a, [rIE]
    set 3, a
    ldh [rIE], a
    ld a, $80
    ldh [rSC], a
    ld a, $55
    ld [$c95a], a
    xor a
    set 5, a
    ldh [$ff91], a
    xor a
    ld [$c9a4], a
    ld [$c9a3], a
    ldh [$ff93], a
    ld a, $00
    ld [$c9a2], a
    ldh a, [rIF]
    res 0, a
    res 4, a
    ldh [rIF], a
    ldh a, [rIE]
    set 0, a
    ldh [rIE], a
    ei
    di
    ld a, [hFadeStatus]
    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_7f83:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_7f83

    call UpdateVRAMGFX
    xor a
    set 4, a
    ldh [$ffef], a
    ret


    res 0, a
    set 1, a
    ld [hFadeStatus], a
    ei

jr_001_7f9a:
    ld a, [hFadeStatus]
    and a
    jr nz, jr_001_7f9a

    call UpdateVRAMGFX
    xor a
    set 4, a
    ldh [$ffef], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
