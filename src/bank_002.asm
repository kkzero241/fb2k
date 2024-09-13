; Disassembly of "Faceball 2000 (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    jp Jump_002_4015


    jp Jump_002_4137


Call_002_4006:
    jp Jump_002_4110


    jp Jump_002_40b0


    jp Jump_002_46bb


    jp Jump_002_4705


    jp Jump_002_474c


Jump_002_4015:
    push af
    call Call_002_4006
    pop af
    inc a
    ld b, a
    xor a

jr_002_401d:
    dec b
    jr z, jr_002_4024

    add $09
    jr jr_002_401d

jr_002_4024:
    ld c, a
    ld b, $40
    xor a
    ld hl, $df77

jr_002_402b:
    ld [hl+], a
    dec b
    jr nz, jr_002_402b

    ld hl, $4d66
    add hl, bc
    ld a, [hl+]
    ld [$df6d], a
    ld [$df6e], a
    ld a, [hl+]
    ld [$df79], a
    ld e, a
    ld a, [hl+]
    ld [$df7a], a
    ld d, a
    ld a, [de]
    ld [$df77], a
    inc de
    ld a, [de]
    ld [$df78], a
    ld a, [hl+]
    ld [$df89], a
    ld e, a
    ld a, [hl+]
    ld [$df8a], a
    ld d, a
    ld a, [de]
    ld [$df87], a
    inc de
    ld a, [de]
    ld [$df88], a
    ld a, [hl+]
    ld [$df99], a
    ld e, a
    ld a, [hl+]
    ld [$df9a], a
    ld d, a
    ld a, [de]
    ld [$df97], a
    inc de
    ld a, [de]
    ld [$df98], a
    ld a, [hl+]
    ld [$dfa9], a
    ld e, a
    ld a, [hl+]
    ld [$dfaa], a
    ld d, a
    ld a, [de]
    ld [$dfa7], a
    inc de
    ld a, [de]
    ld [$dfa8], a
    ld a, $01
    ld [$df7f], a
    ld [$df8f], a
    ld [$df9f], a
    ld [$dfaf], a
    inc a
    ld [$df7b], a
    ld [$df8b], a
    ld [$df9b], a
    ld [$dfab], a
    xor a
    ld [$df74], a
    dec a
    ld [$df73], a
    ld [$df75], a
    ld [$df69], a
    ret


Jump_002_40b0:
    ld a, [$df75]
    and a
    jr z, jr_002_410f

    ld a, [$df69]
    and a
    jr nz, jr_002_410f

    ld a, [$dfb8]
    ldh [rNR11], a
    ld a, [$dfb9]
    ldh [rNR12], a
    ld a, [$dfba]
    ldh [rNR13], a
    ld a, [$dfbb]
    set 7, a
    ldh [rNR14], a
    ld a, [$dfbc]
    ldh [rNR21], a
    ld a, [$dfbd]
    ldh [rNR22], a
    ld a, [$dfbe]
    ldh [rNR23], a
    ld a, [$dfbf]
    set 7, a
    ldh [rNR24], a
    ld a, [$dfc0]
    ldh [rNR30], a
    ld a, [$dfc2]
    ldh [rNR32], a
    ld a, [$dfc3]
    ldh [rNR33], a
    ld a, [$dfc4]
    set 7, a
    ldh [rNR34], a
    ld a, [$dfc6]
    ldh [rNR42], a
    ld a, [$dfc7]
    ldh [rNR43], a
    ld a, $80
    ldh [rNR44], a
    ld [$df69], a

jr_002_410f:
    ret


Jump_002_4110:
    xor a
    ld [$df69], a
    ld [$df6a], a
    ld [$df6b], a
    ld [$df6c], a
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR32], a
    ldh [rNR42], a
    ld a, $77
    ldh [rNR50], a
    ld a, $ff
    ldh [rNR51], a
    ld a, $80
    ldh [rNR52], a
    ret


Jump_002_4132:
    xor a
    ld [$df69], a
    ret


Jump_002_4137:
    push af
    push bc
    push de
    push hl
    call Call_002_417d
    call Call_002_4788
    ld a, [$df69]
    and a
    jp z, Jump_002_4178

    ld a, [$df6a]
    and a
    jr nz, jr_002_415e

    ld a, [$df80]
    and a
    jr nz, jr_002_415e

    ld a, [$dfba]
    ldh [rNR13], a
    ld a, [$dfbb]
    ldh [rNR14], a

jr_002_415e:
    ld a, [$df6b]
    and a
    jr nz, jr_002_416e

    ld a, [$dfbe]
    ldh [rNR23], a
    ld a, [$dfbf]
    ldh [rNR24], a

jr_002_416e:
    ld a, [$dfc3]
    ldh [rNR33], a
    ld a, [$dfc4]
    ldh [rNR34], a

Jump_002_4178:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_002_417d:
    ld a, [$df69]
    and a
    jr nz, jr_002_4184

    ret


jr_002_4184:
    ld a, [$df6d]
    ld hl, $df73
    add [hl]
    ld [hl], a
    jr nc, jr_002_419a

    call Call_002_41a3
    call Call_002_4317
    call Call_002_4474
    call Call_002_45de

jr_002_419a:
    call Call_002_42ea
    call Call_002_4447
    jp Jump_002_45a2


Call_002_41a3:
    ld hl, $df7f
    dec [hl]
    ret nz

    ld a, [$df77]
    ld l, a
    ld a, [$df78]
    ld h, a
    xor a
    ld [$df80], a

Jump_002_41b4:
jr_002_41b4:
    ld a, [hl+]
    bit 7, a
    jr nz, jr_002_4214

    cp $60
    jr c, jr_002_41c4

    add $a1
    ld [$df7e], a
    jr jr_002_41b4

jr_002_41c4:
    push hl
    ld hl, $df74
    add [hl]
    ld hl, $df7d
    add [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $4c63
    add hl, bc
    ld a, [hl+]
    ld [$dfba], a
    ld [$df83], a
    ld a, [hl]
    pop hl
    ld [$dfbb], a
    ld [$df84], a
    ld a, [$df6a]
    and a
    jr nz, jr_002_4205

    ld a, [$df80]
    ldh [rNR10], a
    ld a, [$dfb8]
    ldh [rNR11], a
    ld a, [$dfb9]
    ldh [rNR12], a
    ld a, [$dfba]
    ldh [rNR13], a
    ld a, [$dfbb]
    set 7, a
    ldh [rNR14], a

Jump_002_4205:
jr_002_4205:
    ld a, l
    ld [$df77], a
    ld a, h
    ld [$df78], a
    ld a, [$df7e]
    ld [$df7f], a
    ret


jr_002_4214:
    ld b, $00
    cp $ff
    jr nz, jr_002_4258

    ld a, [$df7b]
    ld c, a
    ld a, [$df79]
    add c
    ld l, a
    ld a, [$df7c]
    ld c, a
    ld a, [$df7a]
    adc c
    ld h, a
    ld a, [$df7b]
    add $02
    ld [$df7b], a
    ld a, [$df7c]
    adc b
    ld [$df7c], a
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_4251

    ld a, [$df79]
    ld l, a
    ld a, [$df7a]
    ld h, a
    ld a, $02
    ld [$df7b], a
    ld a, b
    ld [$df7c], a
    inc hl

jr_002_4251:
    ld a, [hl-]
    ld c, a
    ld l, [hl]
    ld h, c
    jp Jump_002_41b4


jr_002_4258:
    cp $f6
    jr nz, jr_002_4263

    ld a, [hl+]
    ld [$dfb9], a
    jp Jump_002_41b4


jr_002_4263:
    cp $f7
    jr nz, jr_002_4272

    ld a, [hl+]
    ld [$df82], a
    ld a, b
    ld [$df81], a
    jp Jump_002_41b4


jr_002_4272:
    cp $fa
    jr nz, jr_002_427d

    ld a, [hl+]
    ld [$dfb8], a
    jp Jump_002_41b4


jr_002_427d:
    cp $f8
    jr nz, jr_002_4284

    jp Jump_002_4205


jr_002_4284:
    cp $f9
    jr nz, jr_002_428b

    jp Jump_002_4205


jr_002_428b:
    cp $fd
    jr nz, jr_002_4299

    ld a, [hl+]
    ld [$dfb7], a
    ld [$df80], a
    jp Jump_002_41b4


jr_002_4299:
    cp $fb
    jr nz, jr_002_42a4

    ld a, [hl+]
    ld [$df74], a
    jp Jump_002_41b4


jr_002_42a4:
    cp $fc
    jr nz, jr_002_42af

    ld a, [hl+]
    ld [$df7d], a
    jp Jump_002_41b4


jr_002_42af:
    cp $f5
    jr nz, jr_002_42ce

    ld a, [hl+]
    ld c, a
    ld [$df79], a
    ld a, [hl]
    ld l, c
    ld h, a
    ld [$df7a], a
    ld a, $02
    ld [$df7b], a
    ld a, b
    ld [$df7c], a
    ld a, [hl+]
    ld c, a
    ld h, [hl]
    ld l, c
    jp Jump_002_41b4


jr_002_42ce:
    cp $fe
    jr nz, jr_002_42da

    ld a, b
    ld [$df75], a
    pop hl
    jp Jump_002_4132


jr_002_42da:
    cp $f4
    jr nz, jr_002_42e8

    ld a, [hl+]
    ld [$df6d], a
    ld [$df6e], a
    jp Jump_002_41b4


jr_002_42e8:
    jr jr_002_42e8

Call_002_42ea:
    ld a, [$df82]
    add a
    ld c, a
    ld b, $00
    ld hl, $4d15
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld h, [hl]
    ld l, c
    push hl
    pop de
    ld a, [$df81]
    ld c, a
    add hl, bc
    ld a, [hl]
    cp $80
    jr nz, jr_002_430a

    xor a
    ld [$df81], a
    ld a, [de]

jr_002_430a:
    ld hl, $df81
    inc [hl]
    ld c, a
    ld a, [$df83]
    add c
    ld [$dfba], a
    ret


Call_002_4317:
    ld hl, $df8f
    dec [hl]
    ret nz

    ld a, [$df87]
    ld l, a
    ld a, [$df88]
    ld h, a

Jump_002_4324:
jr_002_4324:
    ld a, [hl+]
    bit 7, a
    jr nz, jr_002_437f

    cp $60
    jr c, jr_002_4334

    add $a1
    ld [$df8e], a
    jr jr_002_4324

jr_002_4334:
    push hl
    ld hl, $df74
    add [hl]
    ld hl, $df8d
    add [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $4c63
    add hl, bc
    ld a, [hl+]
    ld [$dfbe], a
    ld [$df93], a
    ld a, [hl]
    pop hl
    ld [$dfbf], a
    ld [$df94], a
    ld a, [$df6b]
    and a
    jr nz, jr_002_4370

    ld a, [$dfbc]
    ldh [rNR21], a
    ld a, [$dfbd]
    ldh [rNR22], a
    ld a, [$dfbe]
    ldh [rNR23], a
    ld a, [$dfbf]
    set 7, a
    ldh [rNR24], a

Jump_002_4370:
jr_002_4370:
    ld a, l
    ld [$df87], a
    ld a, h
    ld [$df88], a
    ld a, [$df8e]
    ld [$df8f], a
    ret


Call_002_437f:
jr_002_437f:
    ld b, $00
    cp $ff
    jr nz, jr_002_43c3

    ld a, [$df8b]
    ld c, a
    ld a, [$df89]
    add c
    ld l, a
    ld a, [$df8c]
    ld c, a
    ld a, [$df8a]
    adc c
    ld h, a
    ld a, [$df8b]
    add $02
    ld [$df8b], a
    ld a, [$df8c]
    adc b
    ld [$df8c], a
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_43bc

    ld a, [$df89]
    ld l, a
    ld a, [$df8a]
    ld h, a
    ld a, $02
    ld [$df8b], a
    ld a, b
    ld [$df8c], a
    inc hl

jr_002_43bc:
    ld a, [hl-]
    ld c, a
    ld l, [hl]
    ld h, c
    jp Jump_002_4324


jr_002_43c3:
    cp $f6
    jr nz, jr_002_43ce

    ld a, [hl+]
    ld [$dfbd], a
    jp Jump_002_4324


jr_002_43ce:
    cp $f7
    jr nz, jr_002_43dd

    ld a, [hl+]
    ld [$df92], a
    ld a, b
    ld [$df91], a
    jp Jump_002_4324


jr_002_43dd:
    cp $fa
    jr nz, jr_002_43e8

    ld a, [hl+]
    ld [$dfbc], a
    jp Jump_002_4324


jr_002_43e8:
    cp $f8
    jr nz, jr_002_43ef

    jp Jump_002_4370


jr_002_43ef:
    cp $f9
    jr nz, jr_002_43f6

    jp Jump_002_4370


jr_002_43f6:
    cp $fb
    jr nz, jr_002_4401

    ld a, [hl+]
    ld [$df74], a
    jp Jump_002_4324


jr_002_4401:
    cp $fc
    jr nz, jr_002_440c

    ld a, [hl+]
    ld [$df8d], a
    jp Jump_002_4324


jr_002_440c:
    cp $f5
    jr nz, jr_002_442b

    ld a, [hl+]
    ld c, a
    ld [$df89], a
    ld a, [hl]
    ld l, c
    ld h, a
    ld [$df8a], a
    ld a, $02
    ld [$df8b], a
    ld a, b
    ld [$df8c], a
    ld a, [hl+]
    ld c, a
    ld h, [hl]
    ld l, c
    jp Jump_002_4324


jr_002_442b:
    cp $fe
    jr nz, jr_002_4437

    ld a, b
    ld [$df75], a
    pop hl
    jp Jump_002_4132


jr_002_4437:
    cp $f4
    jr nz, jr_002_4445

    ld a, [hl+]
    ld [$df6d], a
    ld [$df6e], a
    jp Jump_002_4324


jr_002_4445:
    jr jr_002_4445

Call_002_4447:
    ld a, [$df92]
    add a
    ld c, a
    ld b, $00
    ld hl, $4d15
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld h, [hl]
    ld l, c
    push hl
    pop de
    ld a, [$df91]
    ld c, a
    add hl, bc
    ld a, [hl]
    cp $80
    jr nz, jr_002_4467

    xor a
    ld [$df91], a
    ld a, [de]

jr_002_4467:
    ld hl, $df91
    inc [hl]
    ld c, a
    ld a, [$df93]
    add c
    ld [$dfbe], a
    ret


Call_002_4474:
    ld hl, $df9f
    dec [hl]
    ret nz

    ld a, [$df97]
    ld l, a
    ld a, [$df98]
    ld h, a

Jump_002_4481:
jr_002_4481:
    ld a, [hl+]
    bit 7, a
    jr nz, jr_002_44db

    cp $60
    jr c, jr_002_4491

    add $a1
    ld [$df9e], a
    jr jr_002_4481

jr_002_4491:
    push hl
    ld hl, $df74
    add [hl]
    ld hl, $df9d
    add [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $4c63
    add hl, bc
    ld a, [hl+]
    ld [$dfc3], a
    ld [$dfa3], a
    ld a, [hl]
    pop hl
    ld [$dfc4], a
    ld [$dfa4], a
    ld a, [$dfc2]
    ldh [rNR32], a
    ld a, $80
    ldh [rNR30], a
    ld a, [$dfc3]
    ldh [rNR33], a
    ld a, [$dfc4]
    set 7, a
    ldh [rNR34], a
    ld a, [$dfa5]
    ld [$dfa6], a

Jump_002_44cc:
    ld a, l
    ld [$df97], a
    ld a, h
    ld [$df98], a
    ld a, [$df9e]
    ld [$df9f], a
    ret


jr_002_44db:
    ld b, $00
    cp $ff
    jr nz, jr_002_451f

    ld a, [$df9b]
    ld c, a
    ld a, [$df99]
    add c
    ld l, a
    ld a, [$df9c]
    ld c, a
    ld a, [$df9a]
    adc c
    ld h, a
    ld a, [$df9b]
    add $02
    ld [$df9b], a
    ld a, [$df9c]
    adc b
    ld [$df9c], a
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_4518

    ld a, [$df99]
    ld l, a
    ld a, [$df9a]
    ld h, a
    ld a, $02
    ld [$df9b], a
    ld a, b
    ld [$df9c], a
    inc hl

jr_002_4518:
    ld a, [hl-]
    ld c, a
    ld l, [hl]
    ld h, c
    jp Jump_002_4481


jr_002_451f:
    cp $f6
    jr nz, jr_002_452e

    ld a, [hl+]
    ld [$dfc2], a
    ld a, [hl+]
    ld [$dfa5], a
    jp Jump_002_4481


jr_002_452e:
    cp $f7
    jr nz, jr_002_453d

    ld a, [hl+]
    ld [$dfa2], a
    ld a, b
    ld [$dfa1], a
    jp Jump_002_4481


jr_002_453d:
    cp $f8
    jr nz, jr_002_454a

    xor a
    ld [$dfa6], a
    ldh [rNR32], a
    jp Jump_002_44cc


jr_002_454a:
    cp $f9
    jr nz, jr_002_4551

    jp Jump_002_44cc


jr_002_4551:
    cp $fb
    jr nz, jr_002_455c

    ld a, [hl+]
    ld [$df74], a
    jp Jump_002_4481


jr_002_455c:
    cp $fc
    jr nz, jr_002_4567

    ld a, [hl+]
    ld [$df9d], a
    jp Jump_002_4481


jr_002_4567:
    cp $f5
    jr nz, jr_002_4586

    ld a, [hl+]
    ld c, a
    ld [$df99], a
    ld a, [hl]
    ld l, c
    ld h, a
    ld [$df9a], a
    ld a, $02
    ld [$df9b], a
    ld a, b
    ld [$df9c], a
    ld a, [hl+]
    ld c, a
    ld h, [hl]
    ld l, c
    jp Jump_002_4481


jr_002_4586:
    cp $fe
    jr nz, jr_002_4592

    ld a, b
    ld [$df75], a
    pop hl
    jp Jump_002_4132


jr_002_4592:
    cp $f4
    jr nz, jr_002_45a0

    ld a, [hl+]
    ld [$df6d], a
    ld [$df6e], a
    jp Jump_002_4481


jr_002_45a0:
    jr jr_002_45a0

Jump_002_45a2:
    ld a, [$dfa6]
    and a
    jr z, jr_002_45b1

    dec a
    ld [$dfa6], a
    jr nz, jr_002_45b1

    xor a
    ldh [rNR32], a

jr_002_45b1:
    ld a, [$dfa2]
    add a
    ld c, a
    ld b, $00
    ld hl, $4d15
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld h, [hl]
    ld l, c
    push hl
    pop de
    ld a, [$dfa1]
    ld c, a
    add hl, bc
    ld a, [hl]
    cp $80
    jr nz, jr_002_45d1

    xor a
    ld [$dfa1], a
    ld a, [de]

jr_002_45d1:
    ld hl, $dfa1
    inc [hl]
    ld c, a
    ld a, [$dfa3]
    add c
    ld [$dfc3], a
    ret


Call_002_45de:
    ld hl, $dfaf
    dec [hl]
    ret nz

    ld a, [$dfa7]
    ld l, a
    ld a, [$dfa8]
    ld h, a

Jump_002_45eb:
jr_002_45eb:
    ld a, [hl+]
    bit 7, a
    jr nz, jr_002_4623

    cp $60
    jr c, jr_002_45fb

    add $a1
    ld [$dfae], a
    jr jr_002_45eb

jr_002_45fb:
    ld [$dfc7], a
    ld a, [$df6c]
    and a
    jr nz, jr_002_4614

    ld a, [$dfc6]
    ldh [rNR42], a
    ld a, [$dfc7]
    and $77
    ldh [rNR43], a
    ld a, $80
    ldh [rNR44], a

Jump_002_4614:
jr_002_4614:
    ld a, l
    ld [$dfa7], a
    ld a, h
    ld [$dfa8], a
    ld a, [$dfae]
    ld [$dfaf], a
    ret


jr_002_4623:
    ld b, $00
    cp $ff
    jr nz, jr_002_4667

    ld a, [$dfab]
    ld c, a
    ld a, [$dfa9]
    add c
    ld l, a
    ld a, [$dfac]
    ld c, a
    ld a, [$dfaa]
    adc c
    ld h, a
    ld a, [$dfab]
    add $02
    ld [$dfab], a
    ld a, [$dfac]
    adc b
    ld [$dfac], a
    ld a, [hl+]
    or [hl]
    jr nz, jr_002_4660

    ld a, [$dfa9]
    ld l, a
    ld a, [$dfaa]
    ld h, a
    ld a, $02
    ld [$dfab], a
    ld a, b
    ld [$dfac], a
    inc hl

jr_002_4660:
    ld a, [hl-]
    ld c, a
    ld l, [hl]
    ld h, c
    jp Jump_002_45eb


jr_002_4667:
    cp $f6
    jr nz, jr_002_4672

    ld a, [hl+]
    ld [$dfc6], a
    jp Jump_002_45eb


jr_002_4672:
    cp $f8
    jr nz, jr_002_4679

    jp Jump_002_4614


jr_002_4679:
    cp $f9
    jr nz, jr_002_4680

    jp Jump_002_4614


jr_002_4680:
    cp $f5
    jr nz, jr_002_469f

    ld a, [hl+]
    ld c, a
    ld [$dfa9], a
    ld a, [hl]
    ld l, c
    ld h, a
    ld [$dfaa], a
    ld a, $02
    ld [$dfab], a
    ld a, b
    ld [$dfac], a
    ld a, [hl+]
    ld c, a
    ld h, [hl]
    ld l, c
    jp Jump_002_45eb


jr_002_469f:
    cp $fe
    jr nz, jr_002_46ab

    ld a, b
    ld [$df75], a
    pop hl
    jp Jump_002_4132


jr_002_46ab:
    cp $f4
    jr nz, jr_002_46b9

    ld a, [hl+]
    ld [$df6d], a
    ld [$df6e], a
    jp Jump_002_45eb


jr_002_46b9:
    jr jr_002_46b9

Jump_002_46bb:
    add a
    ld c, a
    xor a
    ld b, a
    ld [$df6a], a
    ld hl, $4a16
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $0d
    ld de, $dfc9

jr_002_46ce:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_002_46ce

    ld a, [$dfd5]
    ld [$dfd9], a
    ld a, [$dfca]
    ld [$dfd8], a
    xor a
    ldh [rNR10], a
    ld a, [$dfcf]
    ldh [rNR11], a
    ld a, [$dfd3]
    ldh [rNR12], a
    ld a, [$dfcb]
    ld [$dfd6], a
    ldh [rNR13], a
    ld a, [$dfcc]
    and $07
    ld [$dfd7], a
    set 7, a
    ldh [rNR14], a
    ld [$df6a], a
    ret


Jump_002_4705:
    add a
    ld c, a
    xor a
    ld b, a
    ld [$df6b], a
    ld hl, $4a16
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $0d
    ld de, $dfda

jr_002_4718:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_002_4718

    ld a, [$dfe6]
    ld [$dfea], a
    ld a, [$dfdb]
    ld [$dfe9], a
    ld a, [$dfe0]
    ldh [rNR21], a
    ld a, [$dfe4]
    ldh [rNR22], a
    ld a, [$dfdc]
    ld [$dfe7], a
    ldh [rNR23], a
    ld a, [$dfdd]
    and $07
    ld [$dfe8], a
    set 7, a
    ldh [rNR24], a
    ld [$df6b], a
    ret


Jump_002_474c:
    add a
    ld c, a
    xor a
    ld b, a
    ld [$df6c], a
    ld hl, $4a16
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $0d
    ld de, $dfeb

jr_002_475f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_002_475f

    ld a, [$dff7]
    ld [$dffb], a
    ld a, [$dfec]
    ld [$dffa], a
    ld a, [$dff5]
    ldh [rNR42], a
    ld a, [$dfed]
    and $77
    ld [$dff8], a
    ldh [rNR43], a
    ld a, $80
    ldh [rNR44], a
    ld [$df6c], a
    ret


Call_002_4788:
    call Call_002_49fb
    call Call_002_4794
    call Call_002_4870
    jp Jump_002_494c


Call_002_4794:
    ld a, [$df6a]
    and a
    jr nz, jr_002_479b

    ret


jr_002_479b:
    ld a, [$dfc9]
    and a
    jr nz, jr_002_47cf

    ld a, [$dfd4]
    and a
    jr nz, jr_002_47cf

    ld a, [$df69]
    and a
    jr z, jr_002_47c8

    ld a, [$dfb8]
    ldh [rNR11], a
    ld a, [$dfb9]
    ldh [rNR12], a
    ld a, [$dfba]
    ldh [rNR13], a
    ld a, [$dfbb]
    set 7, a
    ldh [rNR14], a
    xor a
    ld [$df6a], a
    ret


jr_002_47c8:
    xor a
    ldh [rNR12], a
    ld [$df6a], a
    ret


jr_002_47cf:
    ld hl, $dfc9
    dec [hl]
    ld a, [$dfd8]
    and a
    jr nz, jr_002_4821

    ld a, [$dfd4]
    and a
    jr nz, jr_002_47e6

    ld a, [$dfd2]
    and a
    jr nz, jr_002_47e6

    ret


jr_002_47e6:
    ld hl, $dfd2
    dec [hl]
    ld a, [$dfca]
    ld [$dfd8], a
    ld a, [$dfd0]
    and a
    jr z, jr_002_480f

    ld hl, $df6f
    ld a, [$dfcb]
    add [hl]
    ld [$dfd6], a
    ldh [rNR13], a
    ld a, [$dfcc]
    add [hl]
    and $07
    ld [$dfd7], a
    ldh [rNR14], a
    jr jr_002_4821

jr_002_480f:
    ld a, [$dfcb]
    ld [$dfd6], a
    ldh [rNR13], a
    ld a, [$dfcc]
    and $07
    ld [$dfd7], a
    ldh [rNR14], a

jr_002_4821:
    ld hl, $dfd8
    dec [hl]
    ld a, [$dfd5]
    and a
    jr z, jr_002_4834

    ld hl, $dfd9
    dec [hl]
    jr nz, jr_002_486f

    ld [$dfd9], a

jr_002_4834:
    ld a, [$dfd1]
    and a
    jr z, jr_002_486f

    bit 7, a
    jr z, jr_002_4857

    ld a, [$dfd6]
    ld hl, $dfcd
    sub [hl]
    ld [$dfd6], a
    ldh [rNR13], a
    ld a, [$dfd7]
    inc hl
    sbc [hl]
    and $07
    ld [$dfd7], a
    ldh [rNR14], a
    ret


jr_002_4857:
    ld a, [$dfd6]
    ld hl, $dfcd
    add [hl]
    ld [$dfd6], a
    ldh [rNR13], a
    ld a, [$dfd7]
    inc hl
    adc [hl]
    and $07
    ld [$dfd7], a
    ldh [rNR14], a

jr_002_486f:
    ret


Call_002_4870:
    ld a, [$df6b]
    and a
    jr nz, jr_002_4877

    ret


jr_002_4877:
    ld a, [$dfda]
    and a
    jr nz, jr_002_48ab

    ld a, [$dfe5]
    and a
    jr nz, jr_002_48ab

    ld a, [$df69]
    and a
    jr z, jr_002_48a4

    ld a, [$dfbc]
    ldh [rNR21], a
    ld a, [$dfbd]
    ldh [rNR22], a
    ld a, [$dfbe]
    ldh [rNR23], a
    ld a, [$dfbf]
    set 7, a
    ldh [rNR24], a
    xor a
    ld [$df6b], a
    ret


jr_002_48a4:
    xor a
    ldh [rNR22], a
    ld [$df6b], a
    ret


jr_002_48ab:
    ld hl, $dfda
    dec [hl]
    ld a, [$dfe9]
    and a
    jr nz, jr_002_48fd

    ld a, [$dfe5]
    and a
    jr nz, jr_002_48c2

    ld a, [$dfe3]
    and a
    jr nz, jr_002_48c2

    ret


jr_002_48c2:
    ld hl, $dfe3
    dec [hl]
    ld a, [$dfdb]
    ld [$dfe9], a
    ld a, [$dfe1]
    and a
    jr z, jr_002_48eb

    ld hl, $df6f
    ld a, [$dfdc]
    add [hl]
    ld [$dfe7], a
    ldh [rNR23], a
    ld a, [$dfdd]
    add [hl]
    and $07
    ld [$dfe8], a
    ldh [rNR24], a
    jr jr_002_48fd

jr_002_48eb:
    ld a, [$dfdc]
    ld [$dfe7], a
    ldh [rNR23], a
    ld a, [$dfdd]
    and $07
    ld [$dfe8], a
    ldh [rNR24], a

jr_002_48fd:
    ld hl, $dfe9
    dec [hl]
    ld a, [$dfe6]
    and a
    jr z, jr_002_4910

    ld hl, $dfea
    dec [hl]
    jr nz, jr_002_494b

    ld [$dfea], a

jr_002_4910:
    ld a, [$dfe2]
    and a
    jr z, jr_002_494b

    bit 7, a
    jr z, jr_002_4933

    ld a, [$dfe7]
    ld hl, $dfde
    sub [hl]
    ld [$dfe7], a
    ldh [rNR23], a
    ld a, [$dfe8]
    inc hl
    sbc [hl]
    and $07
    ld [$dfe8], a
    ldh [rNR24], a
    ret


jr_002_4933:
    ld a, [$dfe7]
    ld hl, $dfde
    add [hl]
    ld [$dfe7], a
    ldh [rNR23], a
    ld a, [$dfe8]
    inc hl
    adc [hl]
    and $07
    ld [$dfe8], a
    ldh [rNR24], a

jr_002_494b:
    ret


Jump_002_494c:
    ld a, [$df6c]
    and a
    jr nz, jr_002_4953

    ret


jr_002_4953:
    ld a, [$dfeb]
    and a
    jr nz, jr_002_497f

    ld a, [$dff6]
    and a
    jr nz, jr_002_497f

    ld a, [$df69]
    and a
    jr z, jr_002_4978

    ld a, [$dfc6]
    ldh [rNR42], a
    ld a, [$dfc7]
    ldh [rNR43], a
    ld a, $80
    ldh [rNR44], a
    xor a
    ld [$df6c], a
    ret


jr_002_4978:
    xor a
    ldh [rNR42], a
    ld [$df6c], a
    ret


jr_002_497f:
    ld hl, $dfeb
    dec [hl]
    ld a, [$dffa]
    and a
    jr nz, jr_002_49c0

    ld a, [$dff6]
    and a
    jr nz, jr_002_4996

    ld a, [$dff4]
    and a
    jr nz, jr_002_4996

    ret


jr_002_4996:
    ld hl, $dff4
    dec [hl]
    ld a, [$dfec]
    ld [$dffa], a
    ld a, [$dff2]
    and a
    jr z, jr_002_49b6

    ld hl, $df6f
    ld a, [$dfed]
    add [hl]
    and $77
    ld [$dff8], a
    ldh [rNR43], a
    jr jr_002_49c0

jr_002_49b6:
    ld a, [$dfed]
    and $77
    ld [$dff8], a
    ldh [rNR43], a

jr_002_49c0:
    ld hl, $dffa
    dec [hl]
    ld a, [$dff7]
    and a
    jr z, jr_002_49d3

    ld hl, $dffb
    dec [hl]
    jr nz, jr_002_49fa

    ld [$dffb], a

jr_002_49d3:
    ld a, [$dff3]
    and a
    jr z, jr_002_49fa

    bit 7, a
    jr z, jr_002_49ec

    ld a, [$dff8]
    ld hl, $dfef
    sub [hl]
    and $77
    ld [$dff8], a
    ldh [rNR43], a
    ret


jr_002_49ec:
    ld a, [$dff8]
    ld hl, $dfef
    add [hl]
    and $77
    ld [$dff8], a
    ldh [rNR43], a

jr_002_49fa:
    ret


Call_002_49fb:
    ld a, [$df6f]
    and $48
    adc $38
    sla a
    sla a
    ld hl, $df72
    rl [hl]
    dec hl
    rl [hl]
    dec hl
    rl [hl]
    dec hl
    rl [hl]
    ld a, [hl]
    ret


    ld h, h
    ld c, d
    ld [hl], c
    ld c, d
    ld a, [hl]
    ld c, d
    adc e
    ld c, d
    sbc b
    ld c, d
    and l
    ld c, d
    or d
    ld c, d
    cp a
    ld c, d
    call z, $d94a
    ld c, d
    and $4a
    di
    ld c, d
    nop
    ld c, e
    dec c
    ld c, e
    ld a, [de]
    ld c, e
    daa
    ld c, e
    inc [hl]
    ld c, e
    ld b, c
    ld c, e
    ld c, [hl]
    ld c, e
    ld e, e
    ld c, e
    ld l, b
    ld c, e
    ld [hl], l
    ld c, e
    add d
    ld c, e
    adc a
    ld c, e
    sbc h
    ld c, e
    xor c
    ld c, e
    or [hl]
    ld c, e
    jp $d04b


    ld c, e
    db $dd
    ld c, e
    ld [$f74b], a
    ld c, e
    inc b
    ld c, h
    inc de
    ld c, h
    jr nz, @+$4e

    cpl
    ld c, h
    inc a
    ld c, h
    ld c, c
    ld c, h
    ld d, [hl]
    ld c, h
    dec bc
    inc bc
    ret nz

    nop
    ld bc, $8000
    nop
    rst $38
    ld h, e
    pop af
    nop
    nop
    ld a, [bc]
    ld h, e
    add b
    ld b, $24
    nop
    add b
    nop
    rst $38
    ld h, e
    pop af
    nop
    nop
    ld a, [bc]
    rlca
    ret z

    rlca
    inc b
    nop
    add b
    nop
    ld bc, $f263
    nop
    ld [bc], a
    inc c
    ld h, e
    nop
    rlca
    ld h, h
    nop
    nop
    nop
    rst $38
    ld h, e
    ld a, [c]
    nop
    nop
    ld a, [bc]
    ld h, e
    ld b, b
    rlca
    jr z, jr_002_4a9e

jr_002_4a9e:
    ld b, b
    nop
    rst $38
    ld h, e
    pop af
    nop
    nop
    add hl, de
    inc bc
    ldh [rP1], a
    dec b
    nop
    add b
    nop
    rst $38
    ld h, e
    ld a, [c]
    nop
    nop
    add hl, de
    inc b
    rst $10
    rlca
    ld de, $8000
    nop
    rst $38
    ld h, e
    ld a, [c]
    nop
    nop
    inc d
    inc bc
    adc b
    nop
    add [hl]
    nop
    add b
    nop
    rst $38
    ld h, e
    ld a, [c]
    nop
    nop
    inc hl
    inc bc
    add b
    nop
    ld b, $00
    add b
    nop
    rst $38
    ld h, e
    di
    nop
    nop
    ld h, h
    inc bc
    adc b
    nop
    ld b, $00
    add b
    nop
    rst $38
    ld h, e
    rst $30
    nop
    nop
    inc h
    ld [de], a
    sub b
    dec b
    stop
    add b
    nop
    ld bc, $0b63
    rst $38
    nop
    inc d
    ld e, $8f
    ld bc, $0024
    add b
    nop
    ld bc, $0b63
    rst $38
    nop
    dec l
    inc c
    ld b, h
    rlca
    ld b, b
    nop
    add b
    nop
    ld bc, $f700
    nop
    inc c
    inc a
    inc c
    or b
    ld b, $40
    nop
    add b
    nop
    ld bc, $f463
    nop
    inc b
    ld [hl-], a
    ld e, $00
    dec b
    ld b, b
    nop
    ld b, b
    nop
    ld bc, $f600
    nop
    inc bc
    inc d
    ld h, e
    add a
    rlca
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, [de]
    nop
    nop
    inc d
    ld h, e
    daa
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, [de]
    nop
    nop
    rrca
    inc bc
    halt
    nop
    ld a, [hl]
    nop
    nop
    nop
    rst $38
    ld h, e
    ld a, [c]
    nop
    nop
    add hl, bc
    ld [bc], a
    ld a, b
    rlca
    ld [bc], a
    nop
    add b
    nop
    ld bc, $f163
    nop
    nop
    ld l, l
    add hl, bc
    and a
    rlca
    ld [$4000], sp
    nop
    rst $38
    rst $38
    rst $30
    nop
    nop
    ld l, l
    add hl, bc
    and a
    rlca
    ld [$4000], sp
    nop
    rst $38
    rst $38
    rrca
    rst $38
    nop
    ld a, b
    rlca
    add d
    ld b, $19
    nop
    add b
    rst $38
    rst $38
    rst $38
    rst $30
    nop
    nop
    ld a, b
    rrca
    ret nz

    nop
    ld bc, $0000
    nop
    ld bc, $f763
    nop
    ld [bc], a
    ld [hl-], a
    ld h, e
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    rst $38
    nop
    inc a
    ld [hl+], a
    cp b
    nop
    ld bc, $0000
    nop
    ld bc, $f400
    nop
    dec b
    inc a
    ld [bc], a
    sub b
    rlca
    ld [bc], a
    nop
    ld b, b
    nop
    rst $38
    ld h, e
    rrca
    rst $38
    nop
    inc a
    ld h, e
    sub b
    rlca
    ld [de], a
    nop
    ld b, b
    nop
    rst $38
    ld h, e
    db $f4
    nop
    nop
    dec bc
    inc b
    xor h
    rlca
    ld [$8000], sp
    nop
    ld bc, $c163
    nop
    ld [bc], a
    add hl, de
    inc bc
    ld b, b
    rlca
    ld [$8000], sp
    nop
    ld bc, $0a63
    rst $38
    nop
    ld sp, $df02
    inc bc
    stop
    add b
    nop
    rst $38
    ld h, e
    di
    nop
    nop
    ld [hl-], a
    inc bc
    adc b
    nop
    ld b, $00
    add b
    nop
    rst $38
    ld h, e
    di
    nop
    nop
    add hl, de
    inc bc
    add b
    rlca
    inc b
    nop
    add b
    nop
    ld bc, $0a63
    rst $38
    nop
    inc d
    inc bc
    ret nz

    ld [bc], a
    ld b, c
    nop
    nop
    nop
    ld bc, $0963
    rst $38
    nop
    nop
    nop
    rrca
    ld [bc], a
    adc a
    nop
    inc d
    nop
    add b
    nop
    rst $38
    ld h, e
    rst $30
    nop
    nop
    inc d
    inc bc
    nop
    inc bc
    ld b, c
    nop
    nop
    nop
    ld bc, $8963
    rst $38
    nop
    nop
    nop
    inc a
    ld h, e
    ret nc

    rlca
    ld b, $00
    ld b, b
    nop
    rst $38
    ld h, e
    add [hl]
    nop
    inc b
    add hl, de
    inc bc
    nop
    rlca
    ld [$8000], sp
    nop
    ld bc, $0a63
    rst $38
    nop
    inc h
    ld [de], a
    sub b
    rlca
    inc b
    nop
    add b
    nop
    rst $38
    ld h, e
    dec bc
    rst $38
    nop
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
    inc l
    nop
    sbc l
    nop
    rlca
    ld bc, $016b
    jp z, $2301

    ld [bc], a
    ld [hl], a
    ld [bc], a
    rst $00
    ld [bc], a
    ld [de], a
    inc bc
    ld e, b
    inc bc
    sbc e
    inc bc
    jp c, $1603

    inc b
    ld c, [hl]
    inc b
    add e
    inc b
    or l
    inc b
    push hl
    inc b
    ld de, $3c05
    dec b
    ld h, e
    dec b
    adc c
    dec b
    xor h
    dec b
    adc $05
    db $ed
    dec b
    dec bc
    ld b, $27
    ld b, $42
    ld b, $5b
    ld b, $72
    ld b, $89
    ld b, $9e
    ld b, $b2
    ld b, $c4
    ld b, $d6
    ld b, $e7
    ld b, $f7
    ld b, $06
    rlca
    inc d
    rlca
    ld hl, $2d07
    rlca
    add hl, sp
    rlca
    ld b, h
    rlca
    ld c, a
    rlca
    ld e, c
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    add e
    rlca
    adc d
    rlca
    sub b
    rlca
    sub a
    rlca
    sbc l
    rlca
    and d
    rlca
    and a
    rlca
    xor h
    rlca
    or c
    rlca
    or [hl]
    rlca
    cp d
    rlca
    cp [hl]
    rlca
    pop bc
    rlca
    push bc
    rlca
    ret z

    rlca
    rlc a
    adc $07
    pop de
    rlca
    call nc, $d607
    rlca
    reti


    rlca
    jp c, $dd07

    rlca
    rst $18
    rlca
    pop hl
    rlca
    ld [c], a
    rlca
    db $e4
    rlca
    and $07
    rst $20
    rlca
    jp hl


    rlca
    ld [$eb07], a
    rlca
    db $ec
    rlca
    db $ed
    rlca
    xor $07
    rst $28
    rlca
    ldh a, [rTAC]
    pop af
    rlca
    ld a, [c]
    rlca
    di
    rlca
    db $f4
    rlca
    daa
    ld c, l
    add hl, hl
    ld c, l
    ld [hl-], a
    ld c, l
    scf
    ld c, l
    inc a
    ld c, l
    ld b, d
    ld c, l
    ld c, e
    ld c, l
    ld d, h
    ld c, l
    ld e, l
    ld c, l
    nop
    add b
    nop
    ld bc, $0102
    nop
    rst $38
    cp $ff
    add b
    nop
    ld [bc], a
    nop
    cp $80
    nop
    ld bc, $ff00
    add b
    nop
    inc b
    nop
    inc b
    nop
    add b
    nop
    ld [bc], a
    inc b
    ld [bc], a
    nop
    cp $fc
    cp $80
    nop
    inc bc
    ld b, $03
    nop
    db $fd
    ld a, [$80fd]
    nop
    inc b
    ld [$0004], sp
    db $fc
    ld hl, sp-$04
    add b
    nop
    ld [$0810], sp
    nop
    ld hl, sp-$10
    ld hl, sp-$80
    ld [hl+], a
    adc d
    ld c, l
    jp nc, $b84d

    ld c, l
    ld [$304d], a
    and a
    ld d, c
    rst $08
    ld d, c
    xor e
    ld d, c
    db $e3
    ld d, c
    ld a, [hl+]
    ld l, a
    ld d, h
    ld a, l
    ld d, h
    ld [hl], e
    ld d, h
    add c
    ld d, h
    ld e, $9d
    ld d, l
    and l
    ld d, l
    and c
    ld d, l
    xor c
    ld d, l
    ld [$084e], sp
    ld c, [hl]
    ld [$084e], sp
    ld c, [hl]
    ld [$084e], sp
    ld c, [hl]
    ld [$084e], sp
    ld c, [hl]
    dec d
    ld c, [hl]
    dec d
    ld c, [hl]
    dec d
    ld c, [hl]
    adc [hl]
    ld c, [hl]
    dec d
    ld c, [hl]
    rlca
    ld c, a
    ld [$084e], sp
    ld c, [hl]
    ld [$084e], sp
    ld c, [hl]
    ld [$084e], sp
    ld c, [hl]
    ld [$084e], sp
    ld c, [hl]
    nop
    nop
    add b
    ld c, a
    add b
    ld c, a
    and l
    ld c, a
    add b
    ld c, a
    add b
    ld c, a
    and l
    ld c, a
    jp hl


    ld c, a
    add b
    ld c, a
    add b
    ld c, a
    dec l
    ld d, b
    add b
    ld c, a
    add b
    ld c, a
    nop
    nop
    ld [hl], c
    ld d, b
    ld [hl], c
    ld d, b
    sbc c
    ld d, b
    ld [hl], c
    ld d, b
    ld [hl], c
    ld d, b
    db $ed
    ld d, b
    db $ed
    ld d, b
    ld [hl], c
    ld d, b
    ld [hl], c
    ld d, b
    ld b, d
    ld d, c
    ld a, [bc]
    ld d, [hl]
    nop
    nop
    ld d, h
    ld d, c
    ld h, d
    ld d, c
    ld h, d
    ld d, c
    ld h, d
    ld d, c
    ld h, d
    ld d, c
    ld h, d
    ld d, c
    ld h, d
    ld d, c
    ld h, d
    ld d, c
    ld h, d
    ld d, c
    ld h, d
    ld d, c
    ld h, d
    ld d, c
    ld h, d
    ld d, c
    ld h, d
    ld d, c
    ld d, h
    ld d, c
    nop
    nop
    ld a, [$f740]
    rlca
    or $f4
    ld h, [hl]
    add hl, bc
    or $f1
    ld h, b
    add hl, bc
    rst $38
    ld a, [$f680]
    db $f4
    ld h, e
    add hl, bc
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    add hl, bc
    or $f4
    ld h, e
    add hl, bc
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    add hl, bc
    or $f2
    ld h, c
    add hl, bc
    rlca
    inc b
    rlca
    or $f4
    ld h, e
    add hl, bc
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    add hl, bc
    or $f4
    ld h, e
    add hl, bc
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    add hl, bc
    or $f4
    ld h, e
    add hl, bc
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    add hl, bc
    or $f2
    ld h, c
    add hl, bc
    rlca
    inc b
    rlca
    add hl, bc
    rlca
    inc b
    ld [bc], a
    rst $38
    ld a, [$f680]
    db $f4
    ld h, e
    inc c
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    inc c
    or $f4
    ld h, e
    inc c
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    inc c
    or $f2
    ld h, c
    inc c
    dec bc
    add hl, bc
    dec bc
    or $f4
    ld h, e
    inc c
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    inc c
    or $f4
    ld h, e
    inc c
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    inc c
    or $f4
    ld h, e
    inc c
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    inc c
    or $f2
    ld h, c
    inc c
    dec bc
    add hl, bc
    dec bc
    inc c
    dec bc
    add hl, bc
    dec b
    rst $38
    ld a, [$f680]
    db $f4
    ld h, e
    rlca
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    rlca
    or $f4
    ld h, e
    rlca
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    rlca
    or $f2
    ld h, c
    rlca
    dec b
    inc b
    dec b
    or $f4
    ld h, e
    rlca
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    rlca
    or $f4
    ld h, e
    rlca
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    rlca
    or $f4
    ld h, e
    rlca
    ld a, [$f740]
    inc b
    or $f2
    ld h, d
    ld hl, $07f7
    ld a, [$f680]
    pop af
    ld h, b
    rlca
    or $f2
    ld h, c
    rlca
    dec b
    inc b
    dec b
    rlca
    dec b
    rlca
    dec bc
    rst $38
    or $40
    dec b
    ld h, b
    jr z, jr_002_4fae

    jr z, jr_002_4fb0

    jr z, @+$2a

    jr z, @+$2a

    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    jr z, @+$2a

    jr z, @+$2a

    jr z, @+$2a

    jr z, @+$2a

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    rst $38
    or $20
    dec b
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e

jr_002_4fae:
    inc e
    inc e

jr_002_4fb0:
    ld hl, $2121
    ld hl, $2121
    ld hl, $2821
    jr z, jr_002_4fe3

    jr z, jr_002_4fe5

    jr z, jr_002_4fe7

    jr z, jr_002_4ff1

    jr nc, jr_002_4ff3

    jr nc, jr_002_4ff5

    jr nc, jr_002_4ff7

    jr nc, jr_002_4fe5

    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld hl, $2121
    ld hl, $2121
    ld hl, $2821
    jr z, jr_002_5003

    jr z, jr_002_5005

    jr z, jr_002_5007

    jr z, jr_002_5005

    inc h
    inc h

jr_002_4fe3:
    inc h
    inc h

jr_002_4fe5:
    inc h
    inc h

jr_002_4fe7:
    inc h
    rst $38
    or $20
    dec b
    rra
    rra
    rra
    rra
    rra

jr_002_4ff1:
    rra
    rra

jr_002_4ff3:
    rra
    inc h

jr_002_4ff5:
    inc h
    inc h

jr_002_4ff7:
    inc h
    inc h
    inc h
    inc h
    inc h
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl

jr_002_5003:
    dec hl
    inc [hl]

jr_002_5005:
    inc [hl]
    inc [hl]

jr_002_5007:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    jr z, jr_002_504e

    jr z, jr_002_5050

    jr z, jr_002_5052

    jr z, jr_002_5054

    rst $38
    or $20
    dec b
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl

jr_002_504e:
    cpl
    cpl

jr_002_5050:
    ld a, [de]
    ld a, [de]

jr_002_5052:
    ld a, [de]
    ld a, [de]

jr_002_5054:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    rst $38
    ld a, [$f7c0]
    dec b
    or $86
    ld h, b
    db $10
    dec d
    jr jr_002_5091

    db $10
    dec d
    jr jr_002_5095

    db $10
    dec d
    inc e
    dec d
    db $10
    dec d
    inc e
    dec d
    db $10
    dec d
    jr jr_002_50a1

    db $10
    dec d
    jr jr_002_50a5

    db $10

jr_002_5091:
    dec d
    rra
    dec d
    db $10

jr_002_5095:
    dec d
    rra
    dec d
    rst $38
    rst $30
    dec b
    or $f4
    ld h, e
    dec d
    or $f2

jr_002_50a1:
    ld h, d

jr_002_50a2:
    rra
    or $f1

jr_002_50a5:
    ld h, b
    rla
    or $f4
    ld h, e
    jr jr_002_50a2

    ld a, [c]
    ld h, d
    rra
    or $f1
    ld h, b
    dec d
    or $f2

jr_002_50b5:
    ld h, c
    dec d
    rla
    jr jr_002_50d1

    or $f4
    ld h, e
    jr jr_002_50b5

    ld a, [c]
    ld h, d
    rra
    or $f1
    ld h, b
    add hl, bc
    or $f4
    ld h, e
    dec d
    or $f2
    ld h, d

jr_002_50cd:
    rra
    or $f1
    ld h, b

jr_002_50d1:
    rla
    or $f4
    ld h, e
    jr jr_002_50cd

    ld a, [c]
    ld h, d
    rra
    or $f1
    ld h, b
    ld a, [de]
    or $f2
    ld h, c
    inc e
    ld a, [de]
    jr jr_002_50ff

    jr @+$19

    or $f2
    ld h, c
    inc de

jr_002_50eb:
    rla
    rst $38
    rst $30
    ld bc, $f4f6
    ld h, c
    inc e
    jr z, jr_002_50eb

jr_002_50f5:
    ld a, [c]
    rra
    or $f1
    inc e
    or $f4
    ld h, e
    jr z, jr_002_50f5

jr_002_50ff:
    ld a, [c]
    ld h, c
    rra
    or $f1
    inc e
    or $f1
    ld h, b
    jr jr_002_512e

    rla
    inc hl
    jr jr_002_5132

    rla
    inc hl
    jr jr_002_5136

    rla
    inc hl

jr_002_5114:
    jr jr_002_513a

    ld a, [de]
    ld c, $f6
    db $f4
    ld h, c
    inc e
    jr z, jr_002_5114

jr_002_511e:
    ld a, [c]
    rra
    or $f1
    inc e
    or $f4
    ld h, e
    jr z, jr_002_511e

    ld a, [c]
    ld h, c
    rra
    or $f1
    inc e

jr_002_512e:
    or $f1
    ld h, b
    dec d

jr_002_5132:
    ld hl, $1f13
    dec d

jr_002_5136:
    ld hl, $1f13
    dec d

jr_002_513a:
    ld hl, $1f13
    dec d
    ld hl, $2317
    rst $38
    or $f7
    ld h, a
    ld c, $13
    ld a, [de]
    inc hl
    ld c, $13
    ld a, [de]
    ld h, e
    inc hl
    ld h, b
    ld [hl+], a
    ld hl, $1f20
    rst $38
    or $c4
    ld h, a
    ld b, a
    daa
    ld b, a
    daa
    ld b, a
    daa
    ld b, a
    or $d5
    daa
    rst $38
    ld h, c
    or $e1
    ld b, a
    ld h, b
    or $f1
    ld bc, $6101
    or $f2
    rlca
    ld h, b
    or $f1
    ld bc, $6101
    or $e1
    ld b, a
    ld h, b
    or $f1
    ld bc, $6101
    or $f2
    daa
    or $f2
    ld bc, $f661
    pop hl
    ld b, a
    ld h, b
    or $f1
    ld bc, $6101
    or $f2
    rlca
    ld h, b
    or $f1
    ld bc, $6101
    or $e1
    ld b, a
    ld h, b
    or $f1
    ld bc, $6101
    or $f1
    daa
    or $f2
    ld b, a
    rst $38
    db $ed
    ld d, c
    nop
    nop
    di
    ld d, c
    di
    ld d, c
    ld [$f352], sp
    ld d, c
    di
    ld d, c
    ld [$4952], sp
    ld d, d
    di
    ld d, c
    di
    ld d, c
    adc d
    ld d, d
    adc d
    ld d, d
    xor e
    ld d, d
    xor e
    ld d, d
    adc d
    ld d, d
    adc d
    ld d, d
    xor e
    ld d, d
    xor e
    ld d, d
    nop
    nop
    cp h
    ld d, d
    db $ed
    ld d, d
    cp h
    ld d, d
    rst $20
    ld d, d
    inc e
    ld d, e
    cp h
    ld d, d
    ld d, a
    ld d, e
    xor $53
    add a
    ld d, e
    nop
    nop
    rra
    ld d, h
    rra
    ld d, h
    rra
    ld d, h
    ld b, [hl]
    ld d, h
    nop
    nop
    ld h, b
    ld hl, sp-$0b
    rst $08
    ld d, c
    rst $38
    ld h, c
    or $20
    add hl, bc
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    ld d, $ff
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    ld d, $03
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    ld d, $08
    inc d
    ld [$0814], sp
    inc d
    ld [$0416], sp
    db $10
    inc b
    db $10
    inc b
    db $10
    inc b
    ld d, $03
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    ld d, $03
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    ld d, $06
    ld [de], a
    ld b, $12
    ld b, $12
    ld b, $16
    inc b
    db $10
    inc b
    db $10
    inc b
    db $10
    inc b
    ld d, $ff
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    ld a, [bc]
    ld bc, $010d
    dec c
    ld bc, $010d
    ld a, [bc]
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    ld a, [bc]
    ld bc, $010d
    dec c
    ld bc, $010d
    ld a, [bc]
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    ld d, $01
    dec c
    ld bc, $010d
    dec c
    ld bc, $0016
    inc c
    nop
    inc c
    nop
    inc c
    nop
    ld d, $01
    dec c
    ld bc, $010d
    dec c
    ld bc, $ff16
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    dec b
    ld de, $1105
    dec b
    ld de, $1105
    rlca
    inc de
    rlca
    inc de
    rlca
    inc de
    rlca
    inc de
    ld [$0814], sp
    inc d
    ld [$0814], sp
    inc d
    rst $38
    ld a, [bc]
    ld d, $0a
    ld d, $0a
    ld d, $0a
    ld d, $0a
    ld d, $0a
    ld d, $0a
    ld d, $0a
    ld d, $ff
    ld a, [$f780]
    ld [$f2f6], sp
    ld h, l
    rrca
    or $f3
    ld l, c
    rrca
    or $f2
    ld h, l
    rrca
    or $f3
    ld l, c
    rrca
    or $f2
    ld h, l
    rrca
    or $f3
    ld l, c
    rrca
    or $f2
    ld h, l
    rrca
    ld h, e
    rrca
    ld h, c
    inc c
    dec c
    ld c, $fa
    ret nz

    rst $30
    rlca
    rst $38
    ld a, [$f780]
    dec b
    db $fc
    inc c
    or $f3
    ld h, l
    rrca
    ld h, e
    rrca
    ld h, c
    ld [de], a
    rla
    or $f7
    ld l, e
    ld d, $63
    ld [de], a
    ld [hl], c
    inc d
    ld h, l
    rla
    ld d, $63
    db $10
    or $f3
    ld h, l
    rrca
    ld h, e
    rrca
    ld h, c
    ld [de], a
    rla
    or $f7
    ld l, e
    ld d, $63
    rrca
    ld [hl], c
    ld [de], a
    ld h, l
    rla
    ld d, $63
    db $10
    db $fc
    nop
    rst $38
    ld a, [$f700]
    dec b
    ld h, a
    or $f7
    dec de
    ld h, b
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_002_534d

    ld [hl+], a
    ld l, e
    ld [hl+], a
    ld h, e
    daa
    ld l, l
    dec h
    ld h, c

jr_002_5334:
    ld [hl+], a
    ld l, e
    inc h
    ld h, e
    jr nz, jr_002_5334

    add b
    ld h, a
    or $f7
    rra
    ld h, b
    rra
    jr nz, jr_002_5364

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $f7
    ld bc, $276b
    ld h, e

jr_002_534d:
    inc l
    ld l, l
    ld a, [hl+]
    ld h, c
    daa
    ld l, e
    add hl, hl
    ld h, e
    dec h
    rst $38
    ld a, [$f780]
    rlca
    or $f7
    ld h, a
    ld d, $63
    dec de
    ld h, c
    ld d, $6d

jr_002_5364:
    ld de, $1563
    ld h, a
    ld d, $63
    dec de
    ld h, c

jr_002_536c:
    ld d, $6d
    inc d
    ld h, e
    jr jr_002_536c

    ret nz

    ld h, a
    ld d, $63
    dec de
    ld h, c
    ld d, $6d
    ld de, $1563
    ld h, a
    ld d, $63
    dec de
    ld h, c

jr_002_5382:
    ld d, $6d
    inc d
    ld h, e
    jr jr_002_5382

    nop
    or $f3
    ld h, b
    ld d, $18
    ld h, c
    ld a, [de]
    ld h, b
    jr @+$1c

    ld h, c
    dec de
    ld h, b
    ld a, [de]
    dec de
    ld h, c
    dec e
    ld h, b
    dec de
    dec e
    ld h, c
    rra
    rst $30
    ld bc, $1d60
    rra
    ld h, c
    jr nz, jr_002_5407

    rra
    jr nz, jr_002_540b

    ld [hl+], a
    ld h, b
    jr nz, jr_002_53d0

    ld h, c
    inc h
    ld h, b
    ld [hl+], a
    inc h
    ld h, c
    ld h, $f6
    db $e3
    ld h, b
    ld [hl+], a
    inc h
    ld h, c
    ld h, $f6
    db $d3
    ld h, b
    ld [hl+], a
    inc h
    ld h, c
    ld h, $f6
    jp $2260


    inc h
    ld h, c
    ld h, $f6
    or e
    ld h, b
    ld [hl+], a
    inc h
    ld h, c

jr_002_53d0:
    ld h, $f6
    and e
    ld h, b
    ld [hl+], a
    inc h
    ld h, c
    ld h, $f6
    sub e
    ld h, b
    ld [hl+], a
    inc h
    ld h, c
    ld h, $f6
    add e
    ld h, b
    ld [hl+], a
    inc h
    ld h, c
    ld h, $f6
    ld [hl], e
    ld h, b
    ld [hl+], a
    inc h
    ld h, c
    ld h, $ff
    ld a, [$f680]
    rst $00
    rst $30
    dec b
    ld h, a
    ld [hl+], a
    ld h, e
    daa
    ld h, c
    ld [hl+], a
    ld l, l
    dec e
    ld h, e
    ld hl, $2267
    ld h, e
    daa
    ld h, c
    ld [hl+], a
    ld l, l
    jr nz, jr_002_546a

jr_002_5407:
    inc h
    ld a, [$67c0]

jr_002_540b:
    ld [hl+], a
    ld h, e
    daa
    ld h, c
    ld [hl+], a
    ld l, l
    dec e
    ld h, e
    ld hl, $2267
    ld h, e
    daa
    ld h, c
    ld [hl+], a
    ld l, l
    jr nz, jr_002_5480

    inc h
    rst $38
    ld h, c
    or $71
    rlca
    rlca
    or $f1
    dec b
    or $71
    ld bc, $71f6
    rlca
    rlca
    ld h, e
    or $f1
    dec b
    ld h, c
    or $71
    rlca
    rlca
    or $f1
    dec b
    or $71
    ld bc, $71f6
    rlca
    rlca
    or $e1
    dec b
    daa
    rst $38
    or $71
    rlca
    rlca
    or $f1
    dec b
    or $71
    ld bc, $71f6
    rlca
    rlca
    ld h, e
    or $f1
    dec b
    or $c1
    ld h, b
    ld bc, $6103
    dec b
    ld h, b
    ld [bc], a
    inc b
    ld h, c
    rlca
    ld h, b
    inc bc
    dec b
    ld h, c
    daa
    ld h, b

jr_002_546a:
    inc b
    ld b, $61
    daa
    rst $38
    add l
    ld d, h
    nop
    nop
    push de
    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    ld h, $55
    nop
    nop
    add hl, hl
    ld d, l
    nop

jr_002_5480:
    nop
    ld h, h
    ld d, l
    nop
    nop
    ld a, [$f740]
    dec b
    or $f2
    ld h, d
    inc d
    or $f4
    ld h, h
    inc d
    or $f3

jr_002_5493:
    ld h, e
    inc de
    or $f4
    ld h, l
    inc d
    ld h, d
    rla
    jr jr_002_5493

    ld a, [c]
    ld h, d
    dec de
    or $f4
    ld h, h
    dec de
    or $f3
    ld h, e
    ld a, [de]
    or $f4
    ld h, l
    dec de
    ld h, d
    dec de
    add hl, de
    rst $30
    rlca
    ld a, [$fc00]
    db $f4
    or $f1
    ld h, b
    inc d
    dec de
    jr nz, jr_002_54d0

    dec de
    jr nz, jr_002_54d3

    dec de
    jr nz, @+$16

    dec de
    jr nz, jr_002_54d9

    jr jr_002_54e7

    inc d
    jr @+$22

    inc d
    jr jr_002_54ed

    inc d
    jr jr_002_54f0

jr_002_54d0:
    ld a, a
    or $f2

jr_002_54d3:
    jr nz, @+$01

    or $20
    ld a, [bc]
    ld h, c

jr_002_54d9:
    ld [$20f6], sp
    dec b
    ld h, b
    ld [$20f6], sp
    ld a, [bc]
    ld h, c
    ld [$20f6], sp
    dec b

jr_002_54e7:
    ld h, b
    ld [$20f6], sp
    ld a, [bc]
    ld h, c

jr_002_54ed:
    ld [$20f6], sp

jr_002_54f0:
    dec b
    ld h, b
    ld [$20f6], sp
    ld a, [bc]
    ld h, c
    ld [$20f6], sp
    dec b
    ld h, b
    ld [$20f6], sp
    ld a, [bc]
    ld h, c
    ld [$20f6], sp
    dec b
    ld h, b
    ld [$20f6], sp
    ld a, [bc]
    ld h, c
    inc bc
    or $20
    dec b
    ld h, b
    inc bc
    or $20
    ld a, [bc]
    ld h, c
    dec b
    or $20
    dec b
    ld h, b
    dec b
    or $20
    ld a, [bc]
    ld h, c
    rlca
    or $20
    dec b
    ld h, b
    rlca
    rst $38
    ld a, a
    ld [$faff], sp
    ld b, b
    rst $30

jr_002_552c:
    dec b
    or $f2
    ld h, d
    jr @-$08

    db $f4
    ld h, h

jr_002_5534:
    jr jr_002_552c

    di
    ld h, e
    rla
    or $f4
    ld h, l
    jr jr_002_5534

    ld a, [c]
    ld h, d
    ld a, [de]

jr_002_5541:
    dec de
    or $f2
    ld h, d
    jr @-$08

    db $f4
    ld h, h

jr_002_5549:
    jr jr_002_5541

    di
    ld h, e
    rla
    or $f4
    ld h, l
    jr jr_002_5549

    ld a, [c]
    ld h, d
    jr @+$18

    rst $30
    rlca
    or $f7
    ld [hl], a
    inc d
    rst $30
    inc b
    or $f2
    ld h, b
    ld [$61fe], sp
    or $71
    rlca
    ld h, b
    or $71
    ld bc, $f661
    pop af
    dec b
    ld h, b
    or $71
    ld bc, $f661
    ld [hl], c
    rlca
    ld h, b
    or $71
    ld bc, $f661
    pop af
    daa
    ld h, b
    or $71
    ld bc, $f661
    ld [hl], c
    rlca
    ld h, b
    or $71
    ld bc, $f661
    pop af
    dec b
    ld h, b
    or $71
    ld bc, $f661
    ld [hl], c
    rlca
    ld h, e
    or $c2
    daa
    rst $38
    xor l
    ld d, l
    nop
    nop
    cp d
    ld d, l
    nop
    nop
    ldh [rHDMA5], a
    nop
    nop
    db $ed
    ld d, l
    nop
    nop
    ld a, [$f780]
    dec b
    or $f7
    ld h, a
    inc c
    ld a, [bc]
    ld [$077f], sp
    cp $f6
    ld b, b
    inc c
    ld h, b
    inc de
    rra
    dec hl
    inc de
    rra
    dec hl
    rra
    dec hl
    ld de, $291d
    ld de, $291d
    dec e
    add hl, hl
    inc d
    jr nz, @+$2c

    inc d
    jr nz, jr_002_55fe

    jr nz, jr_002_5600

    inc de
    rra
    add hl, hl
    inc de
    rra
    add hl, hl
    rra
    ld h, a
    add hl, hl
    cp $fa
    nop
    rst $30
    dec b
    or $f7
    ld h, a
    dec de
    ld a, [de]
    jr jr_002_566a

    rla
    cp $66
    or $f3
    ld b, a
    ld h, b
    or $f1
    daa
    ld h, [hl]
    or $f3
    ld b, a
    ld h, b
    or $f1
    daa
    ld h, [hl]

jr_002_55fe:
    or $f3

jr_002_5600:
    ld b, a
    ld h, b
    or $f1
    daa
    ld a, a
    or $f4
    ld b, a
    cp $7f
    or $00
    nop
    nop
    rst $38
    ld a, a
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, l
    ld l, [hl]
    ld h, h
    ld b, e
    ld l, a
    ld h, h
    ld h, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, $3e
    ld a, $22
    ld a, $3e
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    sub e
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    jp $81ff


jr_002_566a:
    rst $38
    jp $81ff


    rst $38
    jp Jump_002_7e7e


    nop
    nop
    inc a
    inc a
    rst $38
    rst $20
    rst $38
    add c
    cp $86
    ld a, a
    ld h, c
    rst $38
    add c
    rst $38
    rst $20
    inc a
    inc a
    rst $38
    rst $38
    rst $38
    adc c
    rst $38
    add e
    rst $38
    rst $20
    rst $38
    pop bc
    rst $38
    sub c
    rst $38
    rst $38
    nop
    nop
    ld a, h
    ld a, h
    cp $c6
    cp $82
    rst $38
    rst $00
    rst $38
    add c
    rst $38
    add e
    rst $38
    pop bc
    ld a, a
    ld a, a
    ld a, $3e
    ld a, $22
    ld a, [hl]
    ld h, d
    ld a, [hl]
    ld b, [hl]
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld a, [hl]
    ld h, d
    ld a, [hl]
    ld b, [hl]
    ld a, h
    ld b, h
    ld a, [hl]
    ld b, [hl]
    ld a, [hl]
    ld h, d
    ld a, $3e
    nop
    nop
    ld a, h
    ld a, h
    ld a, [hl]
    ld b, [hl]
    ld a, [hl]
    ld h, d
    ld a, $22
    ld a, [hl]
    ld h, d
    ld a, [hl]
    ld b, [hl]
    ld a, h
    ld a, h
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld c, c
    ld a, a
    ld h, e
    ld a, a
    ld b, c
    ld a, a
    ld h, e
    ld a, a
    ld c, c
    ld a, a
    ld a, a
    nop
    nop
    inc a
    inc a
    inc a
    inc h
    rst $38
    rst $20
    rst $38
    add c
    rst $38
    rst $20
    inc a
    inc h
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld a, $22
    ld a, [hl]
    ld h, d
    ld a, [hl]
    ld b, [hl]
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld b, c
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld a, $22
    ld a, $22
    ld a, $3e
    nop
    nop
    rra
    rra
    ccf
    ld sp, $637f
    cp $c6
    db $fc
    adc h
    ld hl, sp-$68
    ldh a, [$fff0]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    jp $91ff


    rst $38
    add c
    rst $38
    adc c
    rst $38
    jp Jump_002_7e7e


    nop
    nop
    ld e, $1e
    ld a, $32
    ld a, $22
    ld a, $32
    ld e, $12
    ld e, $12
    ld e, $1e
    nop
    nop
    cp $fe
    rst $38
    add e
    rst $38
    ld sp, hl
    rst $38
    jp $9fff


    rst $38
    add c
    rst $38
    rst $38
    nop
    nop
    cp $fe
    rst $38
    add e
    rst $38
    ld sp, hl
    ld a, a
    ld b, e
    rst $38
    ld sp, hl
    rst $38
    add e
    cp $fe
    nop
    nop
    ld a, $3e
    ld a, [hl]
    ld h, d
    cp $c2
    rst $38
    sub e
    rst $38
    add c
    rst $38
    di
    ld e, $1e
    nop
    nop
    cp $fe
    cp $82
    cp $9e
    rst $38
    add e
    rst $38
    ld sp, hl
    rst $38
    add e
    cp $fe
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    cp $c2
    cp $9e
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    jp Jump_002_7e7e


    nop
    nop
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ld sp, hl
    ccf
    inc sp
    ld a, $26
    inc a
    inc h
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    jp $99ff


    rst $38
    jp $99ff


    rst $38
    jp Jump_002_7e7e


    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    jp $99ff


    rst $38
    pop bc
    ld a, a
    ld a, c
    ld a, a
    ld b, e
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, $3e
    ld a, $22
    ld a, $22
    ld a, $3e
    ld a, $22
    ld a, $22
    ld a, $3e
    nop
    nop
    jp $9d42


    sbc c
    or l
    or l
    or c
    or c
    or c
    or c
    or l
    or l
    sbc l
    sbc c
    jp $1f42


    rra
    ccf
    ld sp, $637f
    ld a, [hl]
    ld b, [hl]
    ld a, a
    ld h, e
    ccf
    ld sp, $1f1f
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld b, c
    ld a, a
    ld a, a
    ld a, a
    ld b, c
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld a, [hl]
    ld b, [hl]
    ld a, a
    ld h, e
    ccf
    ld sp, $637f
    ld a, [hl]
    ld b, [hl]
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    jp $91ff


    rst $38
    db $e3
    ld a, $22
    ld a, $3e
    ld a, $22
    ld a, $3e
    ldh a, [$fff0]
    ld hl, sp-$68
    db $fc
    adc h
    cp $86
    db $fc
    adc h
    ld hl, sp-$68
    ldh a, [$fff0]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    jp $99ff


    rst $38
    add c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    rst $38
    nop
    nop
    cp $fe
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    add e
    cp $fe
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    pop bc
    rst $38
    sbc a
    ldh a, [$ff90]
    rst $38
    sbc a
    rst $38
    pop bc
    ld a, a
    ld a, a
    nop
    nop
    cp $fe
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add e
    cp $fe
    nop
    nop
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    sbc a
    cp $82
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    sbc a
    cp $82
    cp $9e
    ldh a, [$ff90]
    ldh a, [$fff0]
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    pop bc
    rst $38
    sbc a
    rst $38
    sub c
    rst $38
    sbc c
    rst $38
    pop bc
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld h, [hl]
    inc a
    inc h
    ld a, [hl]
    ld h, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    add hl, bc
    rst $38
    ld sp, hl
    rst $38
    sbc c
    rst $38
    jp Jump_002_7e7e


    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld c, c
    ld a, a
    ld b, e
    ld a, [hl]
    ld b, [hl]
    ld a, a
    ld b, e
    ld a, a
    ld c, c
    ld a, a
    ld a, a
    nop
    nop
    ld a, b
    ld a, b
    ld a, b
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    ld c, b
    ld a, a
    ld c, a
    ld a, a
    ld b, c
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    add c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc c
    rst $38
    adc c
    rst $38
    add c
    rst $38
    sub c
    rst $38
    sbc c
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    jp $99ff


    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    jp Jump_002_7e7e


    nop
    nop
    cp $fe
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    add e
    cp $9e
    ldh a, [$ff90]
    ldh a, [$fff0]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    jp $99ff


    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    jp Jump_002_717f


    rra
    rra
    cp $fe
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    add e
    rst $38
    add a
    rst $38
    sub c
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    pop bc
    rst $38
    sbc a
    rst $38
    jp $f9ff


    rst $38
    add e
    cp $fe
    nop
    nop
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    rst $20
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc a
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    pop bc
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    jp Jump_002_667e


    inc a
    inc a
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    add c
    rst $38
    sbc c
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc c
    rst $38
    jp Jump_002_667e


    rst $38
    jp $99ff


    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    jp Jump_002_667e


    inc a
    inc h
    inc a
    inc a
    nop
    nop
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    di
    ld a, [hl]
    ld h, [hl]
    rst $38
    rst $08
    rst $38
    add c
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld b, c
    ld a, a
    ld b, a
    ld a, h
    ld b, h
    ld a, a
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld a, a
    nop
    nop
    ld hl, sp-$08
    db $fc
    adc h
    cp $c6
    ld a, a
    ld h, e
    ccf
    ld sp, $191f
    rrca
    rrca
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld b, c
    ld a, a
    ld [hl], c
    rra
    ld de, $717f
    ld a, a
    ld b, c
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    rst $38
    and l
    rst $38
    add c
    rst $38
    and l
    rst $38
    sbc c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
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
    add c
    rst $38
    rst $38
    ld a, h
    ld a, h
    ld a, h
    ld b, h
    ld a, [hl]
    ld b, [hl]
    ld a, [hl]
    ld h, d
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld b, e
    rst $38
    ld sp, hl
    rst $38
    add c
    rst $38
    pop bc
    ld a, a
    ld a, a
    nop
    nop
    ldh a, [$fff0]
    cp $9e
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add e
    cp $fe
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    cp $c2
    cp $9e
    cp $9e
    cp $c2
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rrca
    rrca
    ld a, a
    ld a, c
    rst $38
    pop bc
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    pop bc
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    jp $81ff


    rst $38
    sbc a
    cp $c2
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rra
    rra
    ccf
    ld sp, $677f
    ld a, a
    ld b, c
    ld a, a
    ld h, a
    inc a
    inc h
    inc a
    inc a
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    pop bc
    rst $38
    sbc c
    rst $38
    pop bc
    rst $38
    ld sp, hl
    rst $38
    add e
    cp $fe
    ldh a, [$fff0]
    cp $9e
    rst $38
    add e
    rst $38
    adc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld a, h
    ld b, h
    ld a, h
    ld h, h
    ld a, [hl]
    ld h, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld e, $1e
    ld e, $12
    ld e, $12
    ld e, $12
    ld e, $12
    cp $f2
    cp $86
    db $fc
    db $fc
    ldh a, [$fff0]
    cp $9e
    cp $92
    cp $86
    rst $38
    sub e
    rst $38
    sbc c
    rst $38
    rst $38
    nop
    nop
    ld a, h
    ld a, h
    ld a, h
    ld b, h
    ld a, h
    ld h, h
    inc a
    inc h
    ld a, [hl]
    ld h, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    jp $81ff


    rst $38
    add c
    rst $38
    sbc c
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    cp $fe
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    jp $99ff


    rst $38
    sbc c
    rst $38
    jp Jump_002_7e7e


    nop
    nop
    nop
    nop
    cp $fe
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add e
    cp $9e
    ldh a, [$fff0]
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    pop bc
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    pop bc
    ld a, a
    ld a, c
    rrca
    rrca
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld b, e
    ld a, a
    ld c, c
    ld a, a
    ld c, a
    ld a, b
    ld c, b
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld a, a
    ld h, c
    ld a, a
    ld b, a
    ld a, a
    ld [hl], c
    ld a, a
    ld b, e
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    ld a, [hl]
    ld h, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld h, [hl]
    ld a, $26
    ld a, $32
    ld e, $1e
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    pop bc
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    jp Jump_002_667e


    inc a
    inc a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld c, c
    ld a, a
    ld h, e
    ld a, a
    ld h, e
    ld a, a
    ld c, c
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    pop bc
    rst $38
    ld sp, hl
    rst $38
    add e
    cp $fe
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld b, c
    ld a, a
    ld [hl], e
    ld a, a
    ld h, a
    ld a, a
    ld b, c
    ld a, a
    ld a, a
    nop
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
    ld a, [$7df5]
    ld a, [$ffff]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, l
    ld a, [$f5fa]
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
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $38
    and l
    rst $38
    and l
    rst $38
    add c
    rst $38
    cp l
    rst $38
    add c
    ld a, [hl]
    ld a, [hl]
    nop
    ld a, a
    ccf
    add c
    ld b, e
    cp a
    ld b, e
    cp a
    ld b, e
    cp a
    ld b, e
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    ld a, [hl]
    jp $c37e


    ld a, [hl]
    jp $c37e


    ld a, [hl]
    jp $c37e


    ld a, [hl]
    jp $c37e


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $38
    and l
    rst $38
    add c
    rst $38
    and l
    rst $38
    sbc c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $30
    sbc c
    rst $30
    sbc c
    db $fd
    adc a
    rst $38
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    rst $38
    and l
    rst $38
    and l
    rst $38
    add c
    rst $38
    cp l
    rst $38
    add c
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    jr jr_002_5cc0

    ld de, $213f
    nop
    nop
    nop
    nop
    cp $fe
    rst $38
    ld bc, $44ff
    rst $38
    add $ff
    rst $00
    rst $38
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$ff60], a
    ldh a, [$ff30]

jr_002_5cc0:
    ldh a, [rNR10]
    ld hl, sp+$08
    ccf
    ld hl, $417f
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld c, b
    ld a, a
    ld c, h
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc h
    db $fc
    ld h, h
    ccf
    daa
    ccf
    inc hl
    rra
    db $10
    rra
    jr jr_002_5d0c

    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $ffff
    rst $38
    cp $ff
    nop

jr_002_5d0c:
    rst $38
    nop
    rst $38
    ld bc, $fefe
    nop
    nop
    ld hl, sp-$38
    ld hl, sp-$78
    ldh a, [rNR10]
    ldh a, [$ff30]
    ldh [$ff60], a
    add b
    add b
    nop
    nop
    nop
    nop
    inc a
    dec a
    ld a, h
    ld b, d
    ei
    and l
    rst $30
    adc c
    rst $28
    or l
    rst $18
    cp c
    ld a, $42
    inc a
    cp h
    ld c, c
    ld c, c
    ld a, a
    ld a, a
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, $22
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $38
    and l
    rst $38
    add c
    rst $38
    and l
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    rst $38
    nop
    nop
    inc e
    inc e
    ld a, $22
    ld a, a
    ld e, l
    ld h, e
    ld b, c
    ld a, a
    ld e, l
    ld a, $22
    inc e
    inc e
    nop
    nop
    jr c, jr_002_5dc0

    ld a, h
    ld b, h
    ld a, [hl]
    ld e, d
    ld a, a
    ld b, c
    ld a, [hl]
    ld b, d
    inc a
    inc h
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld b, b
    ld b, d
    ld a, l
    ld a, h
    ld a, [hl]
    nop
    ld b, b
    ld a, [hl]
    ld b, b
    ld b, d
    ld a, l
    ld a, h
    ld a, [hl]
    nop
    nop
    inc e
    inc e
    ld e, $62
    ccf
    dec b
    rra
    ld h, c
    ccf
    add hl, bc
    ld e, $66
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_5dc0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_002_5fc4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [de], a
    jr c, jr_002_6638

jr_002_6638:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc

Jump_002_667e:
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc c
    inc e
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc e
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc e
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc e
    inc de
    nop
    add b
    nop
    ld bc, $8000
    nop
    inc bc
    nop
    ret nz

    nop
    ld bc, $c000
    nop
    ld bc, $8000
    nop
    inc bc
    nop
    add b
    nop
    inc bc
    nop
    add c
    nop
    rst $38
    nop
    add c
    nop
    push bc
    inc e
    ld a, h
    inc e
    inc de
    nop
    add b
    nop
    ld bc, $8000
    nop
    ld bc, $8000
    nop
    ld bc, $8000
    nop
    ld bc, $8000
    nop
    ld bc, $8000
    nop
    ld bc, $8100
    nop
    rst $38
    nop
    add c
    inc c
    db $ec
    ld e, h
    ld a, h
    inc e
    inc de
    nop
    add b
    ld bc, $8001
    add b
    ld bc, $0001
    add b
    ld bc, $8001
    add b
    ld bc, $8001
    add b
    ld bc, $0001
    add b
    ld bc, $0101
    add c
    add b
    rst $38
    ld bc, $8981
    db $ed
    ld e, h
    ld a, h
    inc e
    inc de
    nop
    add b
    ld bc, $8001
    add b
    ld bc, $8001
    add b
    ld bc, $8001
    add b
    ld bc, $8001
    add b
    ld bc, $8001
    add b
    ld bc, $8101
    add c
    add b
    rst $38
    ld bc, $8981
    db $ed
    ld e, h
    ld a, h
    inc e
    inc de
    nop
    add b
    ld bc, $8001
    add b
    ld bc, $8001
    add b
    ld bc, $8001
    add b
    ld bc, $8001
    add b
    ld bc, $8001
    add b
    ld bc, $8101
    add c
    add b
    rst $38
    ld bc, $8981
    rst $38
    ld e, h
    db $fc
    inc e
    inc de
    rra
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add c
    add c
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add c
    add c
    sbc a
    rst $38
    add c
    add c
    add c
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    rra
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add c
    add c
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add c
    add c
    sbc a
    rst $38
    add c
    add c
    add c
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $8081
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $8081
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    nop
    add b
    nop
    ld bc, $8000
    ld bc, $8001
    add c
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $8000
    ld bc, $8001
    add b
    ld bc, $8101
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    nop
    add b
    ld bc, $8001
    add b
    ld bc, $8101
    add c
    add b
    rst $38
    nop
    add b
    ld bc, $8001
    add b
    inc bc
    inc bc
    add b
    add b
    ld bc, $8101
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    nop
    add b
    ld bc, $8001
    add b
    ld bc, $8101
    add c
    add b
    rst $38
    nop
    add b
    ld bc, $8001
    add b
    rlca
    rlca
    nop
    add b
    ld bc, $8101
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    nop
    add b
    ld bc, $8001
    add b
    ld bc, $8101
    add c
    add b
    rst $38
    nop
    add b
    ld bc, $8001
    add b
    nop
    inc bc
    nop
    add b
    ld bc, $8101
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    nop
    add b
    ld bc, $8001
    add b
    ld bc, $8101
    add c
    add b
    rst $38
    nop
    add b
    ld bc, $8001
    add b
    nop
    ld bc, $8000
    ld bc, $8101
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    ld bc, $ff81
    rst $38
    add c
    add c
    add c
    add c
    add c
    add c
    add b
    rst $38
    ld bc, $ff81
    rst $38
    add c
    add c
    add c
    add c
    ld bc, $8181
    add c
    add c
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    ld bc, $ff81
    rst $38
    add c
    add c
    add c
    add c
    add c
    add c
    add b
    rst $38
    ld bc, $ff81
    rst $38
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add c
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add c
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add c
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add b
    rst $38
    ld bc, $8081
    rst $38
    inc e
    db $fc
    inc e
    inc de
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add b
    add b
    nop
    ld bc, $8000
    nop
    ld bc, $8101
    add c
    add c
    add c
    add c
    add c
    add c
    add b
    add b
    nop
    ld bc, $8000
    nop
    ld bc, $fc1c
    inc e
    inc de
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add b
    add b
    nop
    ld bc, $8000
    nop
    ld bc, $8000
    ld bc, $8101
    add c
    add c
    add c
    add b
    add b
    nop
    ld bc, $8000
    nop
    ld bc, $fc1c
    inc e
    inc de
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add b
    add b
    nop
    ld bc, $8000
    nop
    ld bc, $8000
    ld bc, $8101
    add c
    add c
    add c
    add b
    add b
    ld bc, $8001
    add b
    ld bc, $9c01
    db $fc
    inc e
    inc de
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add b
    add b
    ld bc, $8001
    add b
    ld bc, $8001
    add b
    ld bc, $8101
    add c
    add c
    add c
    add b
    add b
    ld bc, $8001
    add b
    ld bc, $9c01
    db $fc
    inc e
    inc de
    ld bc, $8081
    rst $38
    ld bc, $8181
    add c
    add b
    ret nz

    ld bc, $8001
    ret nz

    ld bc, $8001
    add b
    inc bc
    inc bc
    add c
    add c
    add c
    add c
    add b
    ret nz

    ld bc, $8001
    ret nz

    ld bc, $9c01
    db $fc
    inc e
    inc de
    rra
    rst $38
    add b
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc h
    db $fc
    inc e
    inc de
    rra
    rst $38
    add b
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    sbc h
    db $fc
    inc e
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc e
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc e
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc e
    inc de
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $1c
    db $fc
    inc e
    inc de
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    inc e
    db $fc
    inc e
    inc de
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc e
    db $fc
    inc e
    inc de
    ld h, b
    rst $38
    nop
    ld hl, sp+$00
    rrca
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
    ld hl, sp+$00
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    inc bc
    db $fc
    inc e
    db $fc
    inc e
    inc de
    ld h, b
    rst $38
    inc bc
    rst $38
    adc b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    inc bc
    db $fc
    inc e
    db $fc
    inc e
    inc de
    ld h, b
    rst $38
    nop
    rst $38
    ld [$008f], sp
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    inc bc
    db $fc
    inc e
    db $fc
    inc e
    inc de
    ld h, b
    rst $38
    nop
    ld hl, sp+$08
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    inc bc
    db $fc
    inc e
    db $fc
    inc e
    inc de
    ld h, b
    rst $38
    nop
    ld hl, sp-$08
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    inc bc
    db $fc
    inc e
    db $fc
    inc e
    inc de
    ld h, b
    rst $38
    nop
    ld hl, sp-$80
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$78
    adc a
    inc bc
    db $fc
    inc e
    db $fc
    inc e
    inc de
    ld h, b
    rst $38
    nop
    ld hl, sp+$00
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$08
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$08
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$08
    rrca
    inc bc
    db $fc
    inc e
    db $fc
    inc e
    inc de
    ld h, b
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $f8ff
    rst $38
    inc bc
    db $fc
    inc e
    db $fc
    inc e
    inc de
    ld h, b
    rst $38
    nop

Jump_002_6cd8:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc e
    db $fc
    inc e
    inc de
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    inc e
    db $fc
    inc e
    inc de
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc e
    db $fc
    inc e
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc e
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc e
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    rra
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    rra
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld [bc], a
    ld b, $18
    rst $38
    rst $38
    rst $38
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8001
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $9f03
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    sbc a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    sbc a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    sbc a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    sbc [hl]
    add b
    nop
    nop
    ldh [rP1], a
    rlca
    nop
    add b
    nop
    ld a, c
    rlca
    sbc [hl]
    add b
    cp $01
    ld l, a
    add b
    rst $30
    ld [$003f], sp
    ld a, c
    add a
    sbc [hl]
    add b
    rst $38
    nop
    cpl
    ret nz

    or $08
    ld a, b
    rlca
    ld a, c
    add a
    sbc [hl]
    add b
    cp $01
    ld l, a
    add b
    db $e4
    dec de
    ei
    inc b
    ld sp, hl
    rlca
    sbc [hl]
    add b
    db $fc
    inc bc
    rst $28
    nop
    adc $31
    ld a, b
    add b
    ld a, c
    rlca
    sbc [hl]
    add b
    cp $00
    ld l, a
    nop
    rra
    ldh [$ff3e], a
    pop bc
    ld a, c
    add a
    sbc [hl]
    add b
    rst $38
    nop
    cpl
    nop
    ld a, [hl]
    add b
    ld a, h
    inc bc
    ld sp, hl
    rlca
    sbc [hl]
    add b
    cp $01
    ld l, a
    add b
    ld a, h
    add b
    ld sp, hl
    ld b, $f9
    rlca
    sbc [hl]
    add b
    db $fc
    inc bc
    rst $28
    nop
    ld a, c
    add b
    di
    inc c
    ld sp, hl
    rlca
    sbc [hl]
    add b
    ld bc, $e0fe
    rrca
    ld [hl], b
    adc a
    rlca
    ld hl, sp-$07
    rlca
    sbc a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    sbc a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    sbc a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    sbc a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    add b
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $80ff
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld bc, $c000
    nop
    nop
    nop
    ldh [$ff60], a
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
    rlca
    nop
    ldh a, [rP1]
    inc bc
    inc bc
    ld hl, sp+$78
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    stop
    nop
    nop
    nop
    ld bc, $8000
    add b
    ld bc, $8000
    add b
    ld bc, $8000
    add b
    ld bc, $8000
    add b
    ld bc, $8000
    add b
    inc bc
    nop
    add b
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld a, h
    rst $38
    ld a, a
    ld bc, $c000
    ret nz

    ld bc, $8000
    add b
    ld bc, $8000
    add b
    ld bc, $8000
    add b
    ld bc, $8000
    add b
    ld bc, $8000
    add b
    nop
    nop
    add b
    add b
    ld [bc], a
    ld [bc], a
    stop
    nop
    nop
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
    ld [bc], a
    ld h, b
    jr nz, @+$05

    ld [bc], a
    ld h, b
    jr nz, @+$05

    ld [bc], a
    ld h, b
    jr nz, @+$21

    ld e, $7c
    inc a
    rra
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld a, h
    nop
    rra
    ld e, $7c
    inc a
    inc bc
    ld [bc], a
    ld h, b
    jr nz, @+$05

    ld [bc], a
    ld h, b
    jr nz, @+$05

    ld [bc], a
    ld h, b
    jr nz, jr_002_703f

jr_002_703f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    jr jr_002_704a

jr_002_704a:
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    ret nz

    ret nz

    inc bc
    inc bc
    rst $38
    rst $38
    ldh [$ffe0], a
    rlca
    rlca
    rst $38
    nop
    ldh a, [rSVBK]
    rrca
    ld c, $00
    rst $38
    ld a, b
    cp b
    ld e, $1d
    nop
    rst $38
    inc a
    call c, $3b3c
    nop
    rst $38
    ld e, $ee
    ld a, b
    ld [hl], a
    nop
    rst $38
    rrca
    rst $30
    ld [hl], b
    ld l, a
    nop
    rst $38
    rlca
    ei
    ld h, a
    ld e, a
    ld [hl], a
    rst $38
    ld [hl], e
    db $fd
    ld h, h
    ld e, a
    dec h
    rst $38
    ld d, e
    db $fd
    ld h, h
    ld e, a
    dec h
    rst $38
    ld d, e
    db $fd
    ld h, a
    ld e, a
    dec h
    rst $38
    ld [hl], e
    db $fd
    ld h, c
    ld e, a
    dec h
    rst $38
    ld b, e
    db $fd
    ld h, c
    ld e, a
    dec h
    rst $38
    ld b, e
    db $fd
    ld h, a
    ld e, a
    daa
    rst $38
    ld b, e
    db $fd
    ld [hl], b
    ld l, a
    nop
    rst $38
    rlca
    ei
    ld a, b
    ld [hl], a
    nop
    rst $38
    rrca
    rst $30
    inc a
    dec sp
    nop
    rst $38
    ld e, $ee
    ld e, $1d
    nop
    rst $38
    inc a
    call c, $0e0f
    nop
    rst $38
    ld a, b
    cp b
    rlca
    rlca
    rst $38
    nop
    ldh a, [rSVBK]
    inc bc
    inc bc
    rst $38
    rst $38
    ldh [$ffe0], a
    ld bc, $ff01
    rst $38
    ret nz

    ret nz

    ld [bc], a
    inc bc
    jr jr_002_70fd

    ld a, a
    add c
    rst $38
    inc b
    rst $38
    jr nz, @+$81

    add c
    rst $38
    inc b
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    ld a, a
    ld [$20ff], sp
    rst $38
    inc b
    ld a, a
    ld [$20ff], sp
    rst $38
    ld a, b
    ld a, b
    nop

jr_002_70fd:
    nop
    rra
    rra
    jr nz, jr_002_717a

    ld a, [hl]
    ld a, [hl]
    inc b
    rra

jr_002_7106:
    jr nz, jr_002_7180

    rst $38
    add c
    inc b
    rra

jr_002_710c:
    ld a, c
    ld a, c
    rst $38
    inc h
    sbc a
    sbc a
    inc bc
    ld a, d
    rst $38
    ld h, [hl]
    ret nz

    ld e, a
    inc bc
    ld a, d
    rst $38
    ld h, [hl]
    ret nz

    ld e, a
    ld a, e
    ld a, d
    rst $38
    ld h, [hl]
    rst $18
    ld e, a
    inc hl
    ld a, d
    rst $38
    nop
    call nz, $235f
    ld a, d
    rst $38
    jp Jump_002_5fc4


jr_002_7130:
    inc hl
    ld a, d
    rst $38
    ld h, [hl]
    call nz, Call_002_795f
    ld a, c
    rst $38
    inc a
    sbc a
    sbc a
    nop
    ld a, b
    rst $38
    add c
    nop
    rra
    nop
    ld a, b
    ld a, [hl]
    ld a, [hl]
    nop
    rra
    ld a, b
    ld a, b
    nop
    nop
    rra
    rra
    jr nz, jr_002_71cf

    add c
    rst $38
    inc b
    rst $38
    jr nz, jr_002_71d5

    add c
    rst $38
    inc b
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    ld a, a
    ld [$20ff], sp
    rst $38
    inc b
    ld a, a
    ld [$20ff], sp
    rst $38
    ld [bc], a
    inc bc
    jr jr_002_7170

jr_002_7170:
    nop
    inc e
    inc e
    nop
    nop
    nop
    nop
    ld a, $22
    nop

jr_002_717a:
    nop
    nop
    nop
    ccf
    add hl, hl

Jump_002_717f:
    nop

jr_002_7180:
    nop
    nop
    nop
    ccf
    jr z, jr_002_7106

    add b
    nop
    nop
    ccf
    jr z, jr_002_710c

    add b
    nop
    nop
    ccf
    add hl, hl
    nop
    add b
    nop
    nop
    ld a, $2b
    nop
    nop
    nop
    nop
    ld a, $2a
    nop
    nop
    nop
    nop
    ccf
    add hl, hl
    nop
    nop
    nop
    nop
    ccf
    jr z, @-$7e

    add b
    nop
    nop
    ccf
    jr z, jr_002_7130

    add b
    nop
    nop
    ccf
    add hl, hl
    nop
    add b
    nop
    nop
    ld a, $2b
    nop
    nop
    nop
    nop
    ld a, $2a
    nop
    nop
    nop
    nop
    ccf
    add hl, hl
    nop
    nop
    nop
    nop
    ld a, a
    ld b, b
    add b
    add b

jr_002_71cf:
    nop
    nop
    rst $38
    sub d
    ret nz

    ld b, b

jr_002_71d5:
    nop
    nop
    rst $38
    sub d
    ret nz

    ld b, b
    nop
    nop
    rst $38
    add b
    ret nz

    ld b, b
    nop
    nop
    rst $38
    and c
    ret nz

    ld b, b
    nop
    nop
    ld a, a
    ld e, [hl]
    add b
    ret nz

    nop
    nop
    ccf
    ld hl, $8000
    nop
    nop
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    nop
    ld [bc], a
    inc bc
    jr jr_002_7203

jr_002_7203:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    nop
    nop
    inc bc
    inc bc
    rst $38
    ld bc, $8080
    rrca
    inc c
    rst $38
    ld b, h
    ldh [$ff60], a
    rra
    jr @+$01

    add $f0
    jr nc, jr_002_7246

    ld de, $c7ff
    ldh a, [rNR10]
    ccf
    ld hl, $c7ff
    ld hl, sp+$08
    ccf
    ld hl, $c7ff
    ld hl, sp+$08
    ld a, a
    ld b, c
    rst $38
    rst $00
    db $fc
    inc b
    ld a, a
    ld b, c
    rst $38
    rst $00
    db $fc
    inc b
    ld a, a
    ld b, c

jr_002_7246:
    rst $38
    rst $00
    db $fc
    inc b
    ld a, a
    ld b, b
    rst $38
    add $fc
    inc b
    ld a, a
    ld b, b
    rst $38
    nop
    db $fc
    inc b
    ld a, a
    ld b, b
    rst $38
    nop
    db $fc
    inc b
    ld a, a
    ld b, [hl]
    rst $38
    nop
    db $fc
    call nz, $477f
    rst $38
    rst $38
    db $fc
    call nz, Call_002_437f
    rst $38
    rst $38
    db $fc
    add h
    ld a, a
    ld b, b
    rst $38
    nop
    db $fc
    inc b
    ld a, a
    ld b, b
    rst $38
    nop
    db $fc
    inc b
    ld a, a
    ld b, b
    rst $38
    nop
    db $fc
    inc b
    ld a, a
    ld b, b
    rst $38
    nop
    db $fc
    inc b
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    jr jr_002_7296

jr_002_7296:
    nop
    inc e
    inc e
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    nop
    nop
    add hl, hl
    ccf
    nop
    nop
    nop
    nop
    jr z, jr_002_72ea

    add b
    add b
    nop
    nop
    jr z, jr_002_72f0

    add b
    add b
    nop
    nop
    add hl, hl
    ccf
    add b
    nop
    nop
    nop
    dec hl
    ld a, $00
    nop
    nop
    nop
    ld a, [hl+]
    ld a, $00
    nop
    nop
    nop
    add hl, hl
    ccf
    nop
    nop
    nop
    nop
    jr z, jr_002_730e

    add b
    add b
    nop
    nop
    jr z, jr_002_7314

    add b
    add b
    nop
    nop
    add hl, hl
    ccf
    add b
    nop
    nop
    nop
    dec hl
    ld a, $00
    nop
    nop
    nop
    ld a, [hl+]
    ld a, $00
    nop
    nop

jr_002_72ea:
    nop
    add hl, hl
    ccf
    nop
    nop
    nop

jr_002_72f0:
    nop
    ld b, b
    ld a, a
    add b
    add b
    nop
    nop
    sub d
    rst $38
    ld b, b
    ret nz

    nop
    nop
    sub d
    rst $38
    ld b, b
    ret nz

    nop
    nop
    add b
    rst $38
    ld b, b
    ret nz

    nop
    nop
    and c
    rst $38
    ld b, b
    ret nz

    nop

jr_002_730e:
    nop
    ld e, [hl]
    ld a, a
    ret nz

    add b
    nop

jr_002_7314:
    nop
    ld hl, $803f
    nop
    nop
    nop
    rra
    ld e, $00
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld [bc], a
    inc bc
    jr jr_002_7329

jr_002_7329:
    nop
    inc bc
    ld bc, $0080
    nop
    nop
    inc bc
    ld [bc], a
    add b
    add b
    nop
    nop
    ld b, $05
    ret nz

    ld b, b
    nop
    nop
    dec c
    ld a, [bc]
    ld h, b
    and b
    nop
    nop
    ld a, [de]
    dec d
    or b
    ld d, b
    nop
    nop
    dec [hl]
    ld a, [hl+]
    ld e, b
    xor b
    nop
    nop
    ld e, d
    ld [hl], l
    xor h
    ld d, h
    nop
    nop
    xor l
    ld a, [$aa57]
    ld bc, $5601
    db $fd
    xor e
    ld d, l
    ld [bc], a
    inc bc
    xor e
    cp $57
    xor d
    dec b
    rlca
    ld d, l
    rst $38
    xor [hl]
    ld d, h
    ld c, $0b
    xor d
    rst $38
    call c, $1ba8
    dec d
    ld d, l
    rst $38
    ld a, b
    ret nc

    dec [hl]
    ld a, [hl+]
    xor d
    rst $38
    or b
    ldh [$ffea], a
    ld d, l
    push de
    ld a, a
    ld h, b
    ret nz

    push de
    xor d
    ld l, d
    cp a
    ret nz

    add b
    ld [$b555], a
    ld e, a
    add b
    nop
    dec [hl]
    ld a, [hl+]
    ld e, e
    xor [hl]
    nop
    nop
    ld a, [de]
    dec d

jr_002_7396:
    xor [hl]
    ld d, h
    nop
    nop
    dec c
    ld a, [bc]
    ld e, h
    xor b
    nop
    nop
    ld b, $05
    cp b
    ld d, b
    nop
    nop
    inc bc
    ld [bc], a
    ld [hl], b
    and b
    nop
    nop
    ld bc, $e001
    ld b, b
    nop
    nop
    ld bc, $c000
    add b
    nop
    nop
    ld [bc], a
    inc bc
    jr jr_002_73bc

jr_002_73bc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_002_73e9

    add b
    add b
    add d
    add d
    jr nc, jr_002_73ef

    ret nz

    add b
    jp $3082


    jr nz, jr_002_7396

    add b
    jp $3182


    ld sp, $c141
    ld b, a
    add $2e
    ccf
    ld a, $ff
    dec sp
    cp $20
    ccf
    nop
    rst $38

jr_002_73e9:
    inc bc
    cp $20
    ccf
    inc e
    rst $38

jr_002_73ef:
    inc bc
    cp $20
    ccf
    ld a, a
    db $e3
    inc bc
    cp $20
    ccf
    rst $38
    add b
    add e
    cp $21
    ccf
    rst $38
    inc d
    jp $217e


    ccf
    rst $38
    inc d
    jp $217e


    ccf
    rst $38
    inc d
    jp $217e


    ccf
    rst $38
    ld b, c
    jp $217e


    ccf
    rst $38
    ld a, $c3
    ld a, [hl]
    jr nz, jr_002_745c

    rst $38
    add b
    add e
    cp $20
    ccf
    ld a, a
    db $e3
    inc bc
    cp $20
    ccf
    inc e
    rst $38
    inc bc
    cp $10
    rra
    nop
    rst $38
    rlca
    db $fc
    inc c
    rrca
    nop
    rst $38
    ld e, $f8
    inc bc
    inc bc
    add b
    rst $38
    db $fc
    ldh [rP1], a
    nop
    ld a, a
    ld a, a
    ldh a, [rP1]
    nop
    nop
    ccf
    nop
    add b
    nop
    ld [bc], a
    inc bc
    jr jr_002_744f

jr_002_744f:
    nop
    jr c, jr_002_748a

    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop

jr_002_745c:
    ld a, [hl]
    ld e, [hl]
    nop
    nop
    nop
    nop
    ld a, a
    ld e, a
    nop
    nop
    nop
    nop
    ld a, a
    ld e, a
    nop
    nop
    nop
    nop
    ld a, a
    ld e, [hl]
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld e, h
    nop
    nop
    nop
    nop
    ld a, h
    ld e, h
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld e, [hl]
    nop
    nop
    nop
    nop
    ld a, a
    ld e, a
    nop
    nop

jr_002_748a:
    nop
    nop
    ld a, a
    ld e, a
    nop
    nop
    nop
    nop
    ld a, a
    ld e, [hl]
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld e, h
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $ff01
    db $db
    add b
    add b
    ld bc, $ff01
    db $db
    add b
    add b
    ld bc, $ff01
    rst $38
    add b
    add b
    ld bc, $ff01
    cp l
    add b
    add b
    nop
    nop
    rst $38
    jp Jump_000_0080


    nop
    nop
    ld a, a
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, $3c
    nop
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    ld [bc], a
    inc bc
    jr jr_002_7522

    ld b, b
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a
    nop
    rst $38
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    ld hl, sp+$7f
    ld b, b
    rst $38
    nop
    nop
    add [hl]
    ld a, a
    ld b, b
    rst $38
    nop
    ld a, [hl]
    add c
    ld b, b
    ld a, a
    nop
    rst $38
    ld a, [hl]
    add [hl]
    ld b, b
    ld a, a
    nop
    rst $38
    ld hl, sp-$08
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a
    nop
    rst $38
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop

jr_002_7522:
    ld hl, sp+$7f
    ld b, b
    rst $38
    nop
    nop
    add [hl]
    ld a, a
    ld b, b
    rst $38
    nop
    ld a, [hl]
    add c
    ld b, b
    ld a, a
    nop
    rst $38
    ld a, [hl]
    add [hl]
    ld b, b
    ld a, a
    nop
    rst $38
    ld hl, sp-$08
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a
    nop
    rst $38
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    ld hl, sp+$7f
    ld b, b
    rst $38
    nop
    nop
    add [hl]
    ld a, a
    ld b, b
    rst $38
    nop
    ld a, [hl]
    add c
    ld b, b
    ld a, a
    nop
    rst $38
    ld a, [hl]
    add [hl]
    ld b, b
    ld a, a
    nop
    rst $38
    ld hl, sp-$08
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    inc bc
    jr jr_002_7575

jr_002_7575:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    nop
    nop
    inc bc
    inc bc
    rst $38
    ld bc, $8080
    rrca
    inc c
    rst $38
    ld b, h
    ldh [$ff60], a
    rra
    jr @+$01

    add $f0
    jr nc, jr_002_75b8

    ld de, $c7ff
    ldh a, [rNR10]
    ccf
    ld hl, $c7ff
    ld hl, sp+$08
    ccf
    ld hl, $c7ff
    ld hl, sp+$08
    ld a, a
    ld b, c
    rst $38
    rst $00
    db $fc
    inc b
    ld a, a
    ld b, c
    rst $38
    rst $00
    db $fc
    inc b
    ld a, a
    ld b, c

jr_002_75b8:
    rst $38
    rst $00
    db $fc
    inc b
    ld a, a
    ld b, b
    rst $38
    add $fc
    inc b
    ld a, a
    ld b, b
    rst $38
    nop
    db $fc
    inc b
    ld a, a
    ld c, b
    rst $38
    nop
    db $fc
    inc h
    ld a, a
    ld c, h
    rst $38
    nop
    db $fc
    ld h, h
    ccf
    daa
    rst $38
    ld bc, $c8f8
    ccf
    inc hl
    rst $38
    rst $38
    ld hl, sp-$78
    rra
    db $10
    rst $38
    cp $f0
    db $10
    rra
    jr @+$01

    nop
    ldh a, [$ff30]
    rrca
    inc c
    rst $38
    nop
    ldh [$ff60], a
    inc bc
    inc bc
    rst $38
    ld bc, $8080
    nop
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    jr jr_002_7608

jr_002_7608:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_7614:
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    rst $38
    rst $38
    ld hl, sp-$08
    jr nz, @+$41

    nop
    rst $38
    ld [$2ffc], sp
    jr nc, @+$01

    nop
    ld hl, sp+$0c
    cpl
    scf
    rst $38
    sbc a
    ld hl, sp-$34
    dec l
    ld [hl], $f0
    rra
    ld e, b
    db $ec
    dec l
    ld [hl], $f7
    jr jr_002_7614

    ld l, h
    dec l
    ld [hl], $f7
    sbc d
    ret c

    ld l, h
    dec l
    ld [hl], $b6
    set 3, b
    ld l, h
    dec l

jr_002_764a:
    ld [hl], $be
    jp Jump_002_6cd8


    dec l
    ld [hl], $be
    db $d3
    ret c

    ld l, h
    dec l
    ld [hl], $b6
    reti


    ret c

    inc l
    dec l
    ld [hl], $b7
    ret c

    ld hl, sp+$0c
    dec l
    ld [hl], $b7
    db $db
    ld hl, sp-$34

jr_002_7667:
    dec l
    ld [hl-], a
    or [hl]
    ld e, c

jr_002_766b:
    ld e, b
    db $ec
    cpl
    jr nc, jr_002_7667

    jr jr_002_764a

    ld l, h
    cpl
    scf
    rst $38
    rst $38
    ret c

    db $ec
    inc l
    inc sp
    nop
    rst $38
    jr jr_002_766b

    cpl
    jr nc, @+$01

    nop
    ld hl, sp+$0c
    ccf
    ccf
    rst $38
    rst $38
    ld hl, sp-$04
    nop
    rra
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    jr jr_002_769b

jr_002_769b:
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    rst $38
    rst $38
    ldh a, [$fff0]
    rra
    db $10
    rst $38
    nop
    ldh a, [rNR23]
    rra
    db $10
    rst $38
    nop
    ldh a, [rNR23]
    rra
    db $10
    rst $38
    nop
    ldh a, [rNR23]
    rra
    db $10
    rst $38
    nop
    ldh a, [rNR23]
    rra
    rra
    rst $38
    db $fc
    ldh a, [rNR23]
    nop
    rrca
    rlca
    db $fc
    ldh a, [rNR23]
    nop
    nop
    rlca
    inc b
    ldh a, [rNR23]
    ld bc, $ff01
    db $fc
    ldh a, [rNR23]
    ld bc, $ff01
    nop
    ldh a, [rNR23]
    ld bc, $ff01
    nop
    ldh a, [rNR23]
    ld bc, $ff01
    nop
    ldh a, [rNR23]
    ld bc, $ff01
    nop
    ldh a, [$fff8]
    ld bc, $ff01
    nop
    add b
    ld hl, sp+$01
    ld bc, $ffff
    add b
    ret nz

    nop
    nop
    nop
    rst $38
    nop
    ret nz

    ld bc, $ff01
    rst $38
    add b
    add b
    ld bc, $ff01
    nop
    add b
    ret nz

    ld bc, $ff01
    nop
    add b
    ret nz

    ld bc, $ff01
    nop
    add b
    ret nz

    ld bc, $ff01
    rst $38
    add b
    ret nz

    nop
    nop
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
    ld [bc], a
    inc bc
    jr jr_002_772e

jr_002_772e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    rst $38
    rst $38
    add b
    add b
    inc bc
    nop
    rst $38
    nop
    ldh [$ff60], a
    nop
    rra
    ld a, a
    add b
    ld hl, sp+$18
    rlca
    nop
    rst $38
    nop
    db $fc
    call z, $3e01
    rst $38
    nop
    db $fc
    db $e4
    rra
    nop
    rst $38
    nop
    cp $62
    rlca
    ld hl, sp-$01
    nop
    cp $72
    rra
    nop
    rst $38
    nop
    rst $38
    ld [hl], c
    rrca
    ldh a, [rIE]
    nop
    rst $38
    ld [hl], c
    rra
    nop
    rst $38
    nop
    rst $38
    ld [hl], c
    rrca
    ldh a, [rIE]
    nop
    rst $38
    ld hl, $003f
    rst $38
    nop
    rst $38
    ld bc, $f00f
    rst $38
    nop
    rst $38
    ld bc, $003f
    rst $38
    nop
    rst $38
    ld bc, $7807
    rst $38
    ld bc, $02fe
    rra
    nop
    rst $38
    ld bc, $82fe
    ld bc, $ff3e
    nop
    db $fc
    db $e4
    rra
    nop
    rst $38
    nop
    db $fc
    ld a, h
    nop
    rrca
    ccf
    ret nz

    ld hl, sp+$18
    inc bc
    nop
    rst $38
    nop
    ldh [$ff60], a
    inc sp
    inc sp
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    jr jr_002_77c1

jr_002_77c1:
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    db $10
    db $10
    ld a, [bc]
    ld c, $7f
    ld a, a
    jr z, @+$3a

    dec bc
    rrca
    rst $38
    add b
    add sp, -$08
    dec bc
    rrca
    rst $38
    db $e3
    add sp, -$08
    jr jr_002_77ff

    ld a, $f7
    inc c
    db $fc
    ld [hl], c
    ld a, a
    rst $38
    db $e3
    rst $00
    rst $38
    nop
    ld a, a
    inc e
    rst $30
    nop
    rst $38
    ld bc, $ff7f
    db $e3
    ret nz

    rst $38
    nop
    ld a, a
    inc e
    rst $30
    nop
    rst $38
    ld bc, $ff7f

jr_002_77ff:
    db $e3
    ret nz

    rst $38
    ld a, a
    ld a, [hl]
    rst $38
    nop
    rst $38
    ccf
    ccf
    jr nz, @+$01

    nop
    cp $02
    ccf
    jr nz, @+$01

    nop
    cp $02
    ccf
    inc h
    rst $38
    nop
    cp $12
    ccf
    ld h, $ff
    nop
    cp $32
    rra
    inc de
    rst $38
    add b
    db $fc
    db $e4
    rra
    ld de, $ffff
    db $fc
    call nz, $080f
    rst $38
    ld a, a
    ld hl, sp+$08
    rrca
    inc c
    rst $38
    nop
    ld hl, sp+$18
    rlca
    ld b, $ff
    nop
    ldh a, [$ff30]
    ld bc, $ff01
    add b
    ret nz

    ret nz

    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    jr jr_002_7854

jr_002_7854:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    nop
    nop
    ld bc, $ff01
    add b
    ret nz

    ret nz

    inc bc
    ld [bc], a
    rst $38
    nop
    ldh [rNR41], a
    rlca
    inc b
    rst $38
    nop
    ldh a, [rNR10]
    rrca
    ld [$00ff], sp
    ld hl, sp+$08
    rrca
    ld [$00ff], sp
    ld hl, sp+$08
    rra
    db $10
    rst $38
    nop
    db $fc
    inc b
    rra
    ld de, $bdff
    db $fc
    and $1f
    ld de, $b5ff
    db $fc
    and [hl]
    rra
    ld de, $b5ff
    db $fc
    and [hl]
    rra
    ld de, $b5ff
    db $fc
    and [hl]
    rra
    ld de, $bdff
    db $fc
    and $1f
    db $10
    rst $38
    nop
    db $fc
    ld b, $0f
    ld [$00ff], sp
    ld hl, sp+$0e
    rrca
    ld [$00ff], sp
    ld hl, sp+$0c
    rlca
    inc b
    rst $38
    nop
    ldh a, [rNR32]
    inc bc
    ld [bc], a
    rst $38
    nop
    ldh [$ff38], a
    ld bc, $ff01
    add b
    ret nz

    ldh a, [rP1]
    nop
    ld a, a
    ld a, a
    nop
    ldh [rP1], a
    nop
    nop
    ccf
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    jr nz, jr_002_78e7

jr_002_78e7:
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, e
    inc c
    rst $28
    jr jr_002_79be

    inc c
    rst $28
    jr jr_002_79c2

    inc c
    rst $28
    jr jr_002_79c4

    ld a, [hl]
    rst $08
    ccf
    ld a, l
    ld b, $df
    jr nc, jr_002_79cf

    rrca
    rra
    ld hl, sp+$7f
    inc sp
    rst $38
    and $7f
    inc b
    rst $38
    sub b
    ld a, a

Call_002_795f:
    ld [$88ff], sp
    ld a, a
    nop
    rst $38
    add b
    ld [bc], a
    ld [bc], a
    stop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    ld b, b
    rst $38
    inc bc
    ld a, a
    ld a, h
    rst $38
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rlca
    ld a, a
    pop hl
    rst $38
    nop
    ld a, a
    ld bc, $00ff
    ld a, a
    add c
    cp $00
    ld a, a
    ld bc, $00fe
    ld a, a
    add c
    cp $00
    ld a, a
    ld bc, $00fe
    ld a, a
    add c
    cp $40
    ccf
    inc bc
    db $fc
    ld h, b
    rra
    rlca
    ld hl, sp+$78
    rlca
    rra
    ldh [rSC], a
    ld [bc], a
    stop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_002_79be:
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_002_79c2:
    rst $38
    rst $38

jr_002_79c4:
    rlca
    ld a, a
    pop hl
    rst $38
    nop
    ld a, a
    ld bc, $00ff
    ld a, a
    add c

jr_002_79cf:
    cp $00
    ld a, a
    ld bc, $00fe
    ld a, a
    add c
    cp $00
    ld a, a
    ld bc, $00fe
    ld a, a
    add c
    cp $40
    ccf
    inc bc
    db $fc
    ld h, b
    rra
    rlca
    ld hl, sp+$78
    rlca
    rra
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    jr jr_002_7a18

    db $10
    ccf
    jr nz, jr_002_79fd

jr_002_79fd:
    nop
    nop
    nop
    cp $fe
    rst $38
    ld bc, $00ff
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
    add b
    add b
    ldh [$ff60], a
    ldh a, [$ff30]

jr_002_7a18:
    ldh a, [rNR10]
    ld hl, sp+$08
    ccf
    jr nz, jr_002_7a9e

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ccf
    jr nz, jr_002_7a8e

    jr nz, jr_002_7a70

    db $10
    rra
    jr jr_002_7a64

    inc c
    inc bc
    inc bc
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

jr_002_7a64:
    rst $38
    nop
    rst $38
    ld bc, $fefe
    nop
    nop
    ld hl, sp+$08
    ld hl, sp+$08

jr_002_7a70:
    ldh a, [rNR10]
    ldh a, [$ff30]
    ldh [$ff60], a
    add b
    add b
    nop
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
    inc bc
    rrca
    inc c
    rra
    jr jr_002_7aa8

    db $10
    ccf
    jr nz, jr_002_7a8d

jr_002_7a8d:
    nop

jr_002_7a8e:
    nop
    nop
    cp $fe
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop

jr_002_7a9e:
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$ff60], a
    ldh a, [$ff30]

jr_002_7aa8:
    ldh a, [rNR10]
    ld hl, sp+$08
    ccf
    jr nz, jr_002_7b2e

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr c, jr_002_7af0

    rlca
    nop
    nop
    rst $38
    nop
    rst $38
    nop

jr_002_7af0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$38
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ccf
    jr c, jr_002_7b94

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    nop
    nop
    nop
    nop
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
    nop
    nop

jr_002_7b2e:
    nop
    nop
    ret nz

    ret nz

    ld hl, sp+$38
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ccf
    jr nz, jr_002_7bae

    jr nz, jr_002_7b90

    db $10
    rra
    jr jr_002_7b84

    inc c
    inc bc
    inc bc
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

jr_002_7b84:
    rst $38
    nop
    rst $38
    ld bc, $fefe
    nop
    nop
    ld hl, sp+$08
    ld hl, sp+$08

jr_002_7b90:
    ldh a, [rNR10]
    ldh a, [$ff30]

jr_002_7b94:
    ldh [$ff60], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ccf
    jr c, jr_002_7c24

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    nop
    nop

jr_002_7bae:
    nop
    nop
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
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld hl, sp+$38
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr c, jr_002_7c10

    rlca
    nop
    nop
    rst $38
    nop
    rst $38
    nop

jr_002_7c10:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b

jr_002_7c24:
    db $fc
    inc b
    ld hl, sp+$38
    ret nz

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
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    add $c6
    rst $00
    rst $00
    rst $00
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld [$0c08], sp
    inc c
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    add $c6
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_002_7caa

    ld h, b
    ld h, b
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_7caa:
    nop
    nop
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    add $c6
    rst $00
    rst $00
    rst $00
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    add $c6
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ld bc, $0001
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    add $c6
    rst $00
    rst $00
    rst $00
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    add $c6
    nop
    nop
    nop
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld b, $06
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_002_7e20

    ld b, l
    ld b, l
    add d
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld b, l
    nop
    nop

jr_002_7e20:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    nop
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
    inc bc
    ld b, $06
    nop
    nop
    nop
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
    nop
    ld a, h
    nop
    jr c, jr_002_7e53

jr_002_7e53:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

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

Jump_002_7e7e:
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
