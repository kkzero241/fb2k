; Disassembly of "Faceball 2000 (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    ld [bc], a
    rlca
    inc e
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
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
    rra
    nop
    rst $38
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
    cp $00
    nop
    nop
    nop
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
    nop
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
    ld hl, sp+$00
    ccf
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
    ld [bc], a
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    db $fc
    nop
    ccf
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
    rst $38
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
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    inc e
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
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
    rra
    nop
    rst $38
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
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rra
    inc c
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
    jr @+$01

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
    jr nc, @+$01

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
    ld h, b
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
    ret nz

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
    ld bc, $c0ff
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
    add b
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
    ldh a, [rP1]
    rra
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
    ld [bc], a
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rlca
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
    nop
    cp $00
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
    nop
    cp $00
    ccf
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
    db $fc
    nop
    ccf
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
    rst $38
    nop
    db $fc
    nop
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
    ld hl, sp+$00
    rra
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
    ld hl, sp+$00
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
    ldh a, [rP1]
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
    ldh [rP1], a
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
    ldh [rP1], a
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
    rst $38
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
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    inc e
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
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
    rra
    nop
    rst $38
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
    add b
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
    ld c, $ff
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
    ld a, $ff
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
    ld a, h
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
    ld a, h
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
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    ld bc, $f0ff
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
    ldh a, [rP1]
    rra
    inc de
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
    ld hl, sp+$00
    ccf
    daa
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
    db $fc
    nop
    ccf
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
    db $fc
    nop
    ccf
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
    db $fc
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
    rst $38
    nop
    cp $00
    ld a, a
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
    rst $38
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
    ld [bc], a
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
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
    cp $00
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
    cp $00
    ld a, a
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
    cp $00
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
    cp $00
    ccf
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
    db $fc
    nop
    ccf
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
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    ld bc, $f0ff
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
    inc de
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
    ldh a, [rP1]
    rlca
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
    ldh [rP1], a
    rlca
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
    ldh [rP1], a
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
    ret nz

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
    rst $38
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
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    inc e
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
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
    rra
    nop
    rst $38
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
    db $10
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
    ld [hl], b
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

    ldh a, [rIE]
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
    ld b, c
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
    add e
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff01
    rlca
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
    ld [bc], a
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
    ret nz

    nop
    rlca
    ld b, $ff
    rra
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
    inc b
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
    ldh [rP1], a
    rrca
    inc c
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
    ldh a, [rP1]
    rra
    jr @+$01

    ld a, a
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
    jr @+$01

    ld a, a
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
    ccf
    jr nc, @+$01

    cp $ff
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

    cp $ff
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
    ld h, c
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
    ld h, c
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
    ld a, a
    ld b, c
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
    ld a, a
    ld b, c
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    pop bc
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
    rst $38
    pop bc
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
    add c
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
    add b
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
    ld [bc], a
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
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
    db $fc
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
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    ld bc, $f8ff
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
    ld bc, $f0ff
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
    inc bc
    rst $38
    ldh a, [rIE]
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
    rlca
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
    jr nz, @+$01

    rrca
    rst $38
    ret nz

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
    rra
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
    jr @+$01

    ccf
    rst $38
    add b
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
    rst $38
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
    rst $38
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
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    ld bc, $fcff
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
    rst $38
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
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    inc e
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
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
    rra
    nop
    rst $38
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
    ld [bc], a
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
    ld [$07ff], sp
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
    db $10
    rst $38
    rrca
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
    rra
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
    ldh [rIE], a
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff01
    ret nz

    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    ld bc, $c0ff
    rst $38
    rst $38
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
    add c
    rst $38
    rst $38
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
    add c
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    rlca
    rst $38
    inc bc
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    rrca
    rst $38
    inc bc
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    rrca
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
    ld hl, sp+$00
    ccf
    ld e, $ff
    rlca
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
    ld e, $ff
    rlca
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
    ld e, $ff
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    inc a
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc a
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc a
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc a
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    jr c, @+$01

    rrca
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
    jr c, @+$01

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
    jr c, @+$01

    rlca
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
    jr nc, @+$01

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
    rst $38
    nop
    rst $38
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
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $fcff
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
    ld bc, $fcff
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
    ld bc, $f8ff
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
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $00
    ccf
    jr nz, @+$01

    nop
    rst $38
    rlca
    rst $38
    ret nz

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
    rra
    rst $38
    add b
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
    ccf
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    inc e
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
    ld hl, sp+$00
    rra
    ld c, $ff
    ld bc, $feff
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
    rst $00
    rst $38
    db $fc
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
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    ld bc, $ffff
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
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
    ret nz

    nop
    ld bc, $ff00
    rra
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
    rst $38
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
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    inc e
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
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
    rra
    nop
    rst $38
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
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rra
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    ld c, $ff
    nop
    rst $38
    ld hl, sp-$01
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld e, $ff
    ld bc, $f8ff
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    inc a
    rst $38
    ld bc, $f8ff
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ld a, h
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    ld bc, $f8ff
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld bc, $f8ff
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    inc bc
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc bc
    rst $38
    ldh a, [rIE]
    rra
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    inc bc
    rst $38
    ldh a, [rIE]
    rra
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    rlca
    rst $38
    ldh a, [rIE]
    rra
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    rlca
    rst $38
    ldh [rIE], a
    rra
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    rlca
    rst $38
    ldh [rIE], a
    rra
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    cp $00
    ld a, a
    rlca
    rst $38
    ldh [rIE], a
    rra
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    cp $00
    ld a, a
    rlca
    rst $38
    ldh [rIE], a
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $00
    ld a, a
    rlca
    rst $38
    ret nz

    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $00
    rst $38
    rlca
    rst $38
    ret nz

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
    rlca
    rst $38
    ret nz

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
    inc bc
    rst $38
    add b
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
    inc bc
    rst $38
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $f8ff
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
    inc bc
    rst $38
    ld hl, sp-$01
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
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    cp $00
    ld a, a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    nop
    cp $00
    ld a, a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    nop
    cp $00
    ld a, a
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ret nz

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
    rrca
    rst $38
    add b
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
    ccf
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
    cp $ff
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
    ld bc, $feff
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc bc
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld bc, $fcff
    rst $38
    ccf
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
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
    ret nz

    nop
    ld bc, $ff00
    inc bc
    rst $38
    ld hl, sp-$01
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
    rst $38
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
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    inc e
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
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
    rra
    nop
    rst $38
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
    jr nz, @+$01

    ld [bc], a
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
    ldh [rIE], a
    rlca
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    ld bc, $e0ff
    rst $38
    rlca
    rst $38
    add b
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    inc bc
    rst $38
    ret nz

    rst $38
    rrca
    rst $38
    ret nz

    cp $00
    nop
    nop
    nop
    nop
    rst $38
    rlca
    rst $38
    ret nz

    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    rrca
    rst $38
    ret nz

    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    ldh [rIE], a
    nop
    ldh [rP1], a
    rrca
    nop
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    ldh [rIE], a
    nop
    ldh a, [rP1]
    rra
    nop
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    ldh [rIE], a
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    ldh [rIE], a
    nop
    ld hl, sp+$00
    ccf
    nop
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    ldh [rIE], a
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    nop
    db $fc
    nop
    ld a, a
    nop
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    nop
    cp $00
    ld a, a
    nop
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    nop
    cp $00
    ld a, a
    nop
    rst $38
    ccf
    rst $38
    add b
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    ccf
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
    rst $38
    ccf
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
    rst $38
    ld e, $ff
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
    ld e, $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    nop
    ld a, a
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ret nz

    cp $00
    ld a, a
    rrca
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

    cp $00
    ld a, a
    rlca
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
    rra
    rst $38
    nop
    cp $00
    ccf
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
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
    ld a, [hl]
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld bc, $fcff
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
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ccf
    rst $38
    add b
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    nop
    ld hl, sp+$00
    rrca
    nop
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh [rIE], a
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
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
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    nop
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
    rra
    rst $38
    ldh [rIE], a
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
    rst $38
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
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    inc e
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
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
    rra
    nop
    rst $38
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

jr_006_55c0:
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
    inc b
    rst $38
    nop
    rst $38
    jr nz, jr_006_55c0

    nop
    nop
    nop
    nop
    nop
    rra

jr_006_55e6:
    nop
    rst $38
    ld c, $ff
    nop
    rst $38
    jr nc, jr_006_55e6

    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    ld e, $ff
    nop
    rst $38
    ld a, b
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    ld a, $ff
    nop
    rst $38
    ld a, h
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    ldh [rP1], a
    rlca
    nop
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    ldh [rP1], a
    rrca
    nop
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    ldh a, [rP1]
    rra
    nop
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    ld hl, sp+$00
    rra
    nop
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    ld hl, sp+$00
    ccf
    nop
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    db $fc
    nop
    ccf
    nop
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    db $fc
    nop
    ccf
    nop
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    db $fc
    nop
    ld a, a
    nop
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    cp $00
    ld a, a
    nop
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    cp $00
    ld a, a
    nop
    rst $38
    ld bc, $feff
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    add b
    cp $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    cp $ff
    nop
    rst $38
    ld a, a
    rst $38
    add b
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    nop
    rst $38
    ld a, a
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
    ld a, $ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $f0ff
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
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld hl, sp-$01
    nop
    rst $38
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
    nop
    rst $38
    ld e, $fe
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
    inc a
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
    ld a, b
    db $fc
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
    ld bc, $f0ff
    db $fc
    nop
    ccf
    nop
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rlca
    rst $38
    ldh a, [$fffc]
    nop
    rra
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    rrca
    rst $38
    ldh [$fff8], a
    nop
    rra
    nop
    rst $38
    ld bc, $feff
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    add b
    ld hl, sp+$00
    rrca
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    jp $ffff


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
    rst $38
    rst $38
    cp $ff
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
    db $fc
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    rst $38
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
    ld bc, $ff00
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $16
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
    rra
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
    ld a, a
    ld b, b
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff01
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
    ld [bc], a
    ld b, $16
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
    ccf
    inc c
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
    inc c
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
    inc c
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
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld [$00ff], sp
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
    rra
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
    ld b, $16
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
    rra
    jr @+$01

    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld a, a
    jr nc, @+$01

    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff01
    ret nz

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
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
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
    inc c
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
    rra
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    jr @+$01

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
    db $fc
    nop
    ccf
    db $10
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
    db $10
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
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    ld b, $16
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
    ccf
    inc bc
    rst $38
    ret nz

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
    ret nz

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
    db $fc
    nop
    rra
    inc bc
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
    inc bc
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
    inc bc
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
    inc bc
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
    rlca
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
    rra
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
    ld b, $16
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
    rra
    ld b, $ff
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld a, a
    inc e
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
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    ld a, b
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
    ret nz

    rst $38
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
    ld hl, sp+$00
    ccf
    daa
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
    ld b, $ff
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
    inc b
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
    ld [bc], a
    ld b, $16
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
    ccf
    nop
    rst $38
    inc a
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
    inc a
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
    inc a
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
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ld a, b
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
    ld [hl], b
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
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    ld bc, $e0ff
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
    ldh [rIE], a
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
    ld bc, $ff01
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff01
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
    rra
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
    ld b, $16
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
    rra
    ld bc, $80ff
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld a, a
    ld b, e
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
    add a
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff01
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff01
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
    ccf
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
    ccf
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
    ld a, [hl]
    rst $38
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
    ld [$fcff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    jr @+$01

    db $fc
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
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    db $10
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    jr nc, @+$01

    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nc, @+$01

    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    ld b, $16
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
    ccf
    nop
    rst $38
    ld bc, $f0ff
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ld bc, $f0ff
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    nop
    rst $38
    inc bc
    rst $38
    ret nz

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
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    rra
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
    ccf
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
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    inc bc
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
    ld bc, $ff01
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    ldh a, [rIE]
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
    rra
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
    ld b, $16
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
    rra
    db $10
    rst $38
    jr c, @+$01

    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld a, a
    jr nz, @+$01

    ld a, b
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    ld h, b
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    pop bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    add b
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
    inc bc
    rst $38
    add a
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    rlca
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    rlca
    rst $38
    rrca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    rrca
    rst $38
    rrca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    ld c, $ff
    rrca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld c, $ff
    rrca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld c, $ff
    rrca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    inc c
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc e
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc e
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld [$0fff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    ld b, $16
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
    ccf
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    rra
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
    ld e, $ff
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    db $10
    rst $38
    nop
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld [$00ff], sp
    rst $38
    ld a, h
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
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh a, [rP1]
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
    rlca
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    ld bc, $ffff
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    ccf
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
    rra
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
    ld b, $16
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
    rra
    inc c
    rst $38
    rlca
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld a, a
    inc e
    rst $38
    rrca
    rst $38
    add b
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    jr c, @+$01

    rrca
    rst $38
    add b
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ld a, b
    rst $38
    rra
    rst $38
    add b
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    ld [hl], b
    rst $38
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
    ccf
    rst $38
    add b
    rst $38
    nop
    ret nz

    nop
    rlca
    ld bc, $f0ff
    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    ldh [rP1], a
    rlca
    ld bc, $f0ff
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld bc, $e0ff
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    inc bc
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc bc
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc bc
    rst $38
    ret nz

    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    inc bc
    rst $38
    ret nz

    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc bc
    rst $38
    ret nz

    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc bc
    rst $38
    ret nz

    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld bc, $80ff
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld bc, $00ff
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    ld b, $16
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
    ccf
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    nop
    db $fc
    nop
    ccf
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    nop
    db $fc
    nop
    ccf
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    nop
    db $fc
    nop
    rra
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    rra
    inc b
    rst $38
    nop
    rst $38
    ld bc, $f0ff
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld b, $ff
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    ldh a, [rP1]
    rrca
    inc bc
    rst $38
    add b
    rst $38
    rlca
    rst $38
    ret nz

    rst $38
    nop
    ldh a, [rP1]
    rlca
    ld bc, $e0ff
    rst $38
    rra
    rst $38
    add b
    rst $38
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    ld a, a
    rst $38
    cp $ff
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    rra
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    rlca
    rst $38
    ldh a, [rIE]
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
    rra
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
    ld b, $16
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
    rra
    ld bc, $80ff
    rst $38
    ld [hl], b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld a, a
    rlca
    rst $38
    add b
    rst $38
    ldh a, [$fffe]
    nop
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
    rrca
    rst $38
    ld bc, $f8ff
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    rra
    rst $38
    ld bc, $fcff
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    rra
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
    rlca
    nop
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    ldh [rP1], a
    rrca
    nop
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    ld a, a
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
    ld a, a
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ld a, [hl]
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ld a, [hl]
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    ccf
    nop
    rst $38
    ld a, $ff
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ld a, $ff
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    inc a
    rst $38
    ld bc, $f0ff
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    inc e
    rst $38
    ld bc, $e0ff
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ret nz

    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    ld b, $16
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
    ccf
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$fffc]
    nop
    ccf
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$fffc]
    nop
    ccf
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e0ff
    db $fc
    nop
    rra
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [$fff8], a
    nop
    rra
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ret nz

    ld hl, sp+$00
    rra
    ld bc, $c0ff
    rst $38
    nop
    rst $38
    rlca
    rst $38
    add b
    ld hl, sp+$00
    rrca
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rrca
    rst $38
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld a, $ff
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    ld a, $ff
    nop
    rst $38
    db $fc
    rst $38
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    ret nz

    nop
    ld bc, $ff00
    inc bc
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
    rst $38
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
    rra
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
    ld b, $16
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
    rra
    nop
    rst $38
    ld [hl], b
    rst $38
    ld c, $f8
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    ldh a, [rIE]
    rrca
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    add b
    nop
    nop
    ld bc, $ff00
    ld bc, $f0ff
    rst $38
    rrca
    rst $38
    add b
    add b
    nop
    ld bc, $ff00
    ld bc, $f0ff
    rst $38
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
    ld hl, sp-$01
    rra
    rst $38
    ret nz

    ret nz

    nop
    rlca
    nop
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    ret nz

    ldh [rP1], a
    rlca
    nop
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    ret nz

    ldh [rP1], a
    rrca
    nop
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    ret nz

    ldh a, [rP1]
    rrca
    nop
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    ret nz

    ldh a, [rP1]
    rra
    nop
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    ldh [$fff8], a
    nop
    rra
    nop
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    ret nz

    ld hl, sp+$00
    rra
    nop
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ret nz

    ld hl, sp+$00
    ccf
    nop
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ret nz

    db $fc
    nop
    ccf
    nop
    rst $38
    ld bc, $f0ff
    rst $38
    rrca
    rst $38
    ret nz

    db $fc
    nop
    ccf
    nop
    rst $38
    ld bc, $f0ff
    rst $38
    rrca
    rst $38
    add b
    db $fc
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    add b
    db $fc
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    ld b, $16
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
    ccf
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rlca
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
    rlca
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
    rrca
    db $fc
    nop
    rra
    nop
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $f8
    nop
    rra
    nop
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    inc e
    ld hl, sp+$00
    rra
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    ld hl, sp+$00
    rrca
    nop
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, b
    ldh a, [rP1]
    rrca
    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    ld bc, $f0ff
    ldh a, [rP1]
    rlca
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    ldh [$ffe0], a
    nop
    rlca
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ret nz

    ldh [rP1], a
    inc bc
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    ccf
    rst $38
    db $fc
    rst $38
    nop
    add b
    nop
    ld bc, $ff00
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
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
    rra
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
    inc b
    stop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    nop
    inc bc
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
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld [$00ff], sp
    rst $38
    nop
    ldh a, [rP1]
    rra
    db $10
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
    db $fc
    nop
    ccf
    jr nz, @+$01

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
    cp $00
    ld a, a
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc b
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
    ld h, b
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
    ld a, a
    ld h, b
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
    cp $00
    ld a, a
    jr nz, @+$01

    nop
    rst $38
    nop
    cp $00
    ccf
    jr nz, @+$01

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
    db $fc
    nop
    rra
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
    ldh a, [rP1]
    rlca
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
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    stop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    ld bc, $ff00
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
    ret nz

    nop
    rlca
    ld b, $ff
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    inc c
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
    ld hl, sp+$00
    ccf
    jr @+$01

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
    db $fc
    nop
    ld a, a
    jr nc, @+$01

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
    cp $00
    ld a, a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [bc], a
    inc b
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
    jr @+$01

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
    ld a, a
    jr @+$01

    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr @+$01

    nop
    rst $38
    nop
    cp $00
    ld a, a
    db $10
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
    db $fc
    nop
    ccf
    jr nc, @+$01

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
    ld hl, sp+$00
    rrca
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
    ldh [rP1], a
    inc bc
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
    add b
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    stop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    add b
    rst $38
    nop
    ret nz

    nop
    rlca
    inc bc
    rst $38
    add b
    rst $38
    nop
    ldh [rP1], a
    rrca
    rlca
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    ld c, $ff
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    ld c, $ff
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc e
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    inc e
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
    cp $00
    ld a, a
    jr c, @+$01

    nop
    rst $38
    nop
    cp $00
    rst $38
    jr c, @+$01

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
    jr nc, @+$01

    nop
    rst $38
    nop
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
    inc b
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
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    cp $00
    ld a, a
    rlca
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, $ff
    nop
    rst $38
    nop
    cp $00
    ccf
    ld c, $ff
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
    db $fc
    nop
    rra
    inc e
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld [$00ff], sp
    rst $38
    nop
    ldh a, [rP1]
    rlca
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
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    stop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    ld h, b
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    ldh [rIE], a
    nop
    ldh [rP1], a
    rrca
    ld bc, $e0ff
    rst $38
    nop
    ldh a, [rP1]
    rra
    inc de
    rst $38
    ret nz

    rst $38
    nop
    ld hl, sp+$00
    ccf
    inc hl
    rst $38
    ret nz

    rst $38
    nop
    db $fc
    nop
    ccf
    daa
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    ld a, a
    ld b, a
    rst $38
    add b
    rst $38
    nop
    cp $00
    ld a, a
    ld c, a
    rst $38
    add b
    rst $38
    nop
    cp $00
    ld a, a
    ld c, a
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    adc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    inc b
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
    ld a, b
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
    ld a, a
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    ldh [rIE], a
    nop
    cp $00
    ld a, a
    ld bc, $e0ff
    rst $38
    nop
    cp $00
    ccf
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    db $fc
    nop
    ccf
    ccf
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    rra
    rra
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld c, $ff
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
    ldh [rP1], a
    inc bc
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
    add b
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    stop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    ld [bc], a
    rst $38
    inc e
    rst $38
    nop
    ret nz

    nop
    rlca
    inc b
    rst $38
    inc a
    rst $38
    nop
    ldh [rP1], a
    rrca
    inc c
    rst $38
    inc a
    rst $38
    nop
    ldh a, [rP1]
    rra
    jr @+$01

    ld a, b
    rst $38
    nop
    ld hl, sp+$00
    ccf
    jr @+$01

    ld hl, sp-$01
    nop
    db $fc
    nop
    ccf
    jr nc, @+$01

    ld hl, sp-$01
    nop
    db $fc
    nop
    ld a, a
    jr nc, @+$01

    ld hl, sp-$01
    nop
    cp $00
    ld a, a
    ld [hl], c
    rst $38
    ldh a, [rIE]
    nop
    cp $00
    ld a, a
    ld [hl], c
    rst $38
    ldh a, [rIE]
    nop
    cp $00
    rst $38
    ld h, c
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld h, c
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld h, c
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    inc b
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
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    rrca
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    ld c, $ff
    nop
    cp $00
    ld a, a
    nop
    rst $38
    inc e
    rst $38
    nop
    cp $00
    ccf
    jr nc, @+$01

    ld a, b
    rst $38
    nop
    db $fc
    nop
    ccf
    rra
    rst $38
    ldh a, [rIE]
    nop
    db $fc
    nop
    rra
    rrca
    rst $38
    ldh [rIE], a
    nop
    ld hl, sp+$00
    rrca
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    ldh a, [rP1]
    rlca
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
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    stop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    ld bc, $83ff
    rst $38
    nop
    ret nz

    nop
    rlca
    inc bc
    rst $38
    rlca
    rst $38
    add b
    ldh [rP1], a
    rrca
    rlca
    rst $38
    rrca
    rst $38
    add b
    ldh a, [rP1]
    rra
    rlca
    rst $38
    rrca
    rst $38
    add b
    ld hl, sp+$00
    ccf
    ld c, $ff
    rrca
    rst $38
    add b
    db $fc
    nop
    ccf
    ld c, $ff
    rra
    rst $38
    add b
    db $fc
    nop
    ld a, a
    ld e, $ff
    rra
    rst $38
    nop
    cp $00
    ld a, a
    ld e, $ff
    rra
    rst $38
    nop
    cp $00
    ld a, a
    inc e
    rst $38
    rra
    rst $38
    nop
    cp $00
    rst $38
    inc e
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    inc b
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
    ld b, b
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    ld a, a
    ld h, b
    rst $38
    nop
    rst $38
    ldh a, [$fffe]
    nop
    ld a, a
    jr nz, @+$01

    nop
    rst $38
    ldh [$fffe], a
    nop
    ld a, a
    jr nc, @+$01

    inc bc
    rst $38
    ret nz

    cp $00
    ccf
    inc e
    rst $38
    rlca
    rst $38
    add b
    db $fc
    nop
    ccf
    rrca
    rst $38
    rst $38
    rst $38
    nop
    db $fc
    nop
    rra
    inc bc
    rst $38
    cp $ff
    nop
    ld hl, sp+$00
    rrca
    nop
    rst $38
    ld hl, sp-$01
    nop
    ldh a, [rP1]
    rlca
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
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    stop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    ld h, b
    rst $38
    ldh [$ffc0], a
    nop
    rlca
    nop
    rst $38
    ret nz

    rst $38
    ldh [$ffe0], a
    nop
    rrca
    ld bc, $c0ff
    rst $38
    ldh a, [$fff0]
    nop
    rra
    inc bc
    rst $38
    pop bc
    rst $38
    ldh a, [$fff8]
    nop
    ccf
    inc bc
    rst $38
    pop bc
    rst $38
    ldh a, [$fffc]
    nop
    ccf
    inc bc
    rst $38
    pop bc
    rst $38
    ldh a, [$fffc]
    nop
    ld a, a
    rlca
    rst $38
    pop bc
    rst $38
    ldh a, [$fffe]
    nop
    ld a, a
    rlca
    rst $38
    pop bc
    rst $38
    ldh a, [$fffe]
    nop
    ld a, a
    rlca
    rst $38
    pop bc
    rst $38
    ldh a, [$fffe]
    nop
    rst $38
    rlca
    rst $38
    add c
    rst $38
    ldh [rIE], a
    nop
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ldh [rIE], a
    nop
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    nop
    ld [bc], a
    inc b
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
    jr nc, @+$01

    nop
    rst $38
    rlca
    rst $38
    add b
    rst $38
    jr nc, @+$01

    nop
    rst $38
    rlca
    rst $38
    nop
    ld a, a
    jr @+$01

    nop
    rst $38
    ld c, $fe
    nop
    ld a, a
    inc c
    rst $38
    nop
    rst $38
    ld c, $fe
    nop
    ld a, a
    ld c, $ff
    nop
    rst $38
    inc a
    cp $00
    ccf
    rlca
    rst $38
    add b
    rst $38
    ld hl, sp-$04
    nop
    ccf
    ld bc, $ffff
    rst $38
    ldh [$fffc], a
    nop
    rra
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    ld hl, sp+$00
    rrca
    nop
    rst $38
    ccf
    rst $38
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop

jr_006_706c:
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
    add b
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    stop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    jr @+$01

    jr jr_006_706c

    nop
    rlca
    nop
    rst $38
    jr c, @+$01

    inc e
    ldh [rP1], a
    rrca
    nop
    rst $38
    ld a, b
    rst $38
    ld e, $f0
    nop
    rra
    nop
    rst $38
    ld a, h
    rst $38
    ld e, $f8
    nop
    ccf
    nop
    rst $38
    ld a, h
    rst $38
    ld a, $fc
    nop
    ccf
    nop
    rst $38
    ld a, h
    rst $38
    ccf
    db $fc
    nop
    ld a, a
    nop
    rst $38
    db $fc
    rst $38
    ccf
    cp $00
    ld a, a
    nop
    rst $38
    db $fc
    rst $38
    ccf
    cp $00
    ld a, a
    nop
    rst $38
    ld a, h
    rst $38
    rra
    cp $00
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    inc c
    rst $38
    nop
    ld [bc], a
    inc b
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
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    ld h, b
    ld a, a
    rlca
    rst $38
    nop
    rst $38
    nop
    cp $e0
    ld a, a
    inc bc
    rst $38
    add b
    rst $38
    ld bc, $c0fe
    ld a, a
    ld bc, $c0ff
    rst $38
    inc bc
    cp $80
    ccf
    nop
    rst $38
    ldh a, [rIE]
    rrca
    db $fc
    nop
    ccf
    nop
    rst $38
    ld a, a
    rst $38
    cp $fc
    nop
    rra
    nop
    rst $38
    rra
    rst $38
    ld hl, sp-$08
    nop
    rrca
    nop
    rst $38
    rlca
    rst $38
    ldh [$fff0], a
    nop
    rlca
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
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
    nop
    cp $00
    nop
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    nop
    ldh [rP1], a
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
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    ld b, b
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    cp $00
    ld a, a
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
    nop
    ld [bc], a
    inc bc
    inc c
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
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ld b, b
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    cp $00
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    nop
    rst $38
    nop
    ld hl, sp+$00
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
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    inc b
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld [$00ff], sp
    ldh a, [rP1]
    rra
    db $10
    rst $38
    nop
    ld hl, sp+$00
    ccf
    jr nc, @+$01

    nop
    db $fc
    nop
    ld a, a
    ld h, b
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    nop
    cp $00
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
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    inc bc
    inc c
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
    jr nc, @+$01

    nop
    rst $38
    nop
    ld a, a
    jr nc, @+$01

    nop
    cp $00
    ld a, a
    jr nz, @+$01

    nop
    cp $00
    ld a, a
    jr nz, @+$01

    nop
    cp $00
    ccf
    jr nz, @+$01

    nop
    db $fc
    nop
    rra
    nop
    rst $38
    nop
    ld hl, sp+$00
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
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    ld [bc], a
    rst $38
    nop
    ldh [rP1], a
    rrca
    inc b
    rst $38
    nop
    ldh a, [rP1]
    rra
    inc c
    rst $38
    nop
    ld hl, sp+$00
    ccf
    jr @+$01

    nop
    db $fc
    nop
    ld a, a
    jr c, @+$01

    nop
    cp $00
    ld a, a
    jr nc, @+$01

    nop
    cp $00
    ld a, a
    jr nc, @+$01

    nop
    cp $00
    rst $38
    ld h, b
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
    ld [bc], a
    inc bc
    inc c
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
    inc c
    rst $38
    nop
    rst $38
    nop
    ld a, a
    inc c
    rst $38
    nop
    cp $00
    ld a, a
    inc c
    rst $38
    nop
    cp $00
    ld a, a
    jr @+$01

    nop
    cp $00
    ccf
    jr c, @+$01

    nop
    db $fc
    nop
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
    rlca
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    ld bc, $00ff
    ldh [rP1], a
    rrca
    inc bc
    rst $38
    nop
    ldh a, [rP1]
    rra
    rlca
    rst $38
    nop
    ld hl, sp+$00
    ccf
    ld c, $ff
    nop
    db $fc
    nop
    ld a, a
    ld c, [hl]
    rst $38
    nop
    cp $00
    ld a, a
    ld e, [hl]
    rst $38
    nop
    cp $00
    ld a, a
    inc e
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
    sbc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    ld [bc], a
    inc bc
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $c0ff
    rst $38
    nop
    rst $38
    ld bc, $80ff
    rst $38
    nop
    ld a, a
    inc bc
    rst $38
    add b
    cp $00
    ld a, a
    inc bc
    rst $38
    nop
    cp $00
    ld a, a
    ld b, a
    rst $38
    nop
    cp $00
    ccf
    ld a, $ff
    nop
    db $fc
    nop
    rra
    inc e
    rst $38
    nop
    ld hl, sp+$00
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
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    ld b, b
    ldh [rP1], a
    rrca
    ld [$c0ff], sp
    ldh a, [rP1]
    rra
    ld de, $c0ff
    ld hl, sp+$00
    ccf
    inc sp
    rst $38
    ret nz

    db $fc
    nop
    ld a, a
    inc hl
    rst $38
    ret nz

    cp $00
    ld a, a
    ld h, e
    rst $38
    add b
    cp $00
    ld a, a
    ld h, a
    rst $38
    add b
    cp $00
    rst $38
    ld b, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    inc bc
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
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    nop
    ld a, a
    nop
    rst $38
    ld [hl], b
    cp $00
    ld a, a
    ld b, b
    rst $38
    ldh [$fffe], a
    nop
    ld a, a
    ld h, c
    rst $38
    ret nz

    cp $00
    ccf
    ccf
    rst $38
    add b
    db $fc
    nop
    rra
    rrca
    rst $38
    nop
    ld hl, sp+$00
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
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc bc

jr_006_7488:
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    ld [bc], a
    rst $38
    db $10
    ldh [rP1], a
    rrca
    inc c
    rst $38
    jr nc, jr_006_7488

    nop
    rra
    inc c
    rst $38
    ld a, b
    ld hl, sp+$00
    ccf
    jr @+$01

    ld a, b
    db $fc
    nop
    ld a, a
    jr @+$01

    ldh a, [$fffe]
    nop
    ld a, a
    jr c, @+$01

    ldh a, [$fffe]
    nop
    ld a, a
    jr c, @+$01

    ldh a, [$fffe]
    nop
    rst $38
    jr nc, @+$01

    ldh [rIE], a
    nop
    rst $38
    jr nc, @+$01

    ldh [rIE], a
    nop
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    nop
    ld [bc], a
    inc bc
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    nop
    ld a, a
    ld b, b
    rst $38
    ld c, $fe
    nop
    ld a, a
    jr nz, @+$01

    inc e
    cp $00
    ld a, a
    jr nc, @+$01

jr_006_74ed:
    jr c, jr_006_74ed

    nop
    ccf
    rra
    rst $38
    ldh a, [$fffc]
    nop
    rra
    rlca
    rst $38
    ret nz

    ld hl, sp+$00
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
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    ld bc, $0cff
    ldh [rP1], a
    rrca
    inc bc
    rst $38
    ld c, $f0
    nop
    rra
    rlca
    rst $38
    ld c, $f8
    nop
    ccf
    rlca
    rst $38
    ld e, $fc
    nop
    ld a, a
    rrca
    rst $38
    ld e, $fe
    nop
    ld a, a
    ld c, $ff
    ld e, $fe
    nop
    ld a, a
    ld c, $ff
    ld e, $fe
    nop
    rst $38
    ld c, $ff
    ld e, $ff
    nop
    rst $38
    ld c, $ff
    inc e
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [$00ff], sp
    ld [bc], a
    inc bc
    inc c
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
    ldh [rIE], a
    jr nz, @+$01

    nop
    rst $38
    ret nz

    ld a, a
    jr nc, @+$01

    ld bc, $80fe
    ld a, a
    jr @+$01

    inc bc
    cp $80
    ld a, a
    inc c
    rst $38
    rrca
    cp $00
    ccf
    rlca
    rst $38
    db $fc
    db $fc
    nop
    rra
    ld bc, $f8ff
    ld hl, sp+$00
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
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    jp $00e0


    rrca
    ld bc, $c3ff
    ldh a, [$ff80]
    rra
    ld bc, $c3ff
    ld hl, sp-$80
    ccf
    ld bc, $c3ff
    db $fc
    ret nz

    ld a, a
    inc bc
    rst $38
    jp $c0fe


    ld a, a
    inc bc
    rst $38
    jp $c0fe


    ld a, a
    inc bc
    rst $38
    jp $c0fe


    rst $38
    ld bc, $c3ff
    rst $38
    add b
    rst $38
    ld bc, $c3ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    add c
    rst $38
    nop
    ld [bc], a
    inc bc
    inc c
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
    jr @+$01

    ld [$00ff], sp
    rst $38
    jr @+$81

    inc c
    rst $38
    nop
    cp $30
    ld a, a
    ld b, $ff
    nop
    cp $60
    ld a, a
    inc bc
    rst $38
    add c
    cp $c0
    ccf
    ld bc, $ffff
    db $fc
    add b
    rra
    nop
    rst $38
    ld a, [hl]
    ld hl, sp+$00
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
    inc bc
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [$0007], sp
    ldh [rP1], a
    rra
    nop
    ld hl, sp+$00
    ccf
    nop
    db $fc
    nop
    ld a, a
    ld b, b
    cp $00
    ld a, a
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
    ld [bc], a
    ld [bc], a
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
    ld a, a
    nop
    cp $00
    ld a, a
    ld b, b
    cp $00
    ccf
    nop
    db $fc
    nop
    rra
    nop
    ld hl, sp+$00
    rlca
    nop
    ldh [rP1], a
    ld [bc], a
    ld [bc], a
    ld [$0007], sp
    ldh [rP1], a
    rra
    nop
    ld hl, sp+$00
    ccf
    jr nz, @-$02

    nop
    ld a, a
    nop
    cp $00
    ld a, a
    ld b, b
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld b, b
    rst $38
    nop
    ld a, a
    ld b, b
    cp $00
    ld a, a
    ld b, b
    cp $00
    ccf
    nop
    db $fc
    nop
    rra
    nop
    ld hl, sp+$00
    rlca
    nop
    ldh [rP1], a
    ld [bc], a
    ld [bc], a
    ld [$0007], sp
    ldh [rP1], a
    rra
    ld [$00f8], sp
    ccf
    db $10
    db $fc
    nop
    ld a, a

jr_006_76dc:
    jr nc, jr_006_76dc

    nop
    ld a, a
    ld h, b
    cp $00
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    ld a, a

jr_006_76ff:
    jr nc, jr_006_76ff

    nop
    ld a, a
    ld h, b
    cp $00
    ccf
    nop
    db $fc
    nop
    rra
    nop
    ld hl, sp+$00
    rlca
    nop
    ldh [rP1], a
    ld [bc], a
    ld [bc], a
    ld [$0007], sp
    ldh [rP1], a
    rra
    inc b
    ld hl, sp+$00
    ccf
    ld [$00fc], sp
    ld a, a
    ld e, b
    cp $00
    ld a, a

jr_006_7726:
    jr c, jr_006_7726

    nop
    rst $38
    or b
    rst $38
    nop
    rst $38
    or b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    ld [bc], a
    ld [bc], a
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc c
    rst $38
    nop
    ld a, a

jr_006_7745:
    jr jr_006_7745

    nop
    ld a, a
    ld [hl], b
    cp $00
    ccf
    nop
    db $fc
    nop
    rra
    nop
    ld hl, sp+$00
    rlca
    nop
    ldh [rP1], a
    ld [bc], a
    ld [bc], a
    ld [$0007], sp
    ldh [rP1], a
    rra
    ld [bc], a
    ld hl, sp+$00
    ccf
    ld h, $fc
    nop
    ld a, a
    ld l, $fe
    nop
    ld a, a
    ld c, h
    cp $00
    rst $38
    ld c, h
    rst $38
    nop
    rst $38
    ld c, h
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    ld [bc], a
    ld [bc], a
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add e
    rst $38
    nop
    ld a, a
    ld b, [hl]
    cp $00
    ld a, a
    inc a
    cp $00
    ccf
    nop
    db $fc
    nop
    rra
    nop
    ld hl, sp+$00
    rlca
    nop
    ldh [rP1], a
    ld [bc], a
    ld [bc], a
    ld [$0007], sp
    ldh [rP1], a
    rra
    ld bc, $00f8
    ccf
    inc de
    db $fc
    nop
    ld a, a
    inc sp
    cp $00
    ld a, a
    daa
    cp $00
    rst $38
    ld h, a
    rst $38
    nop
    rst $38
    ld h, a
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ld h, c
    cp $80
    ld a, a
    ccf
    cp $00
    ccf
    nop
    db $fc
    nop
    rra
    nop
    ld hl, sp+$00
    rlca
    nop
    ldh [rP1], a
    ld [bc], a
    ld [bc], a
    ld [$0007], sp
    ldh [rP1], a
    rra
    nop
    ld hl, sp-$80
    ccf
    ld [$c0fc], sp
    ld a, a

jr_006_77f4:
    jr jr_006_77f4

    ret nz

    ld a, a
    add hl, de
    cp $c0
    rst $38
    add hl, de
    rst $38
    ret nz

    rst $38
    add hl, de
    rst $38
    ret nz

    rst $38
    db $10
    rst $38
    add b
    ld [bc], a
    ld [bc], a
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, jr_006_7896

jr_006_7817:
    jr nc, jr_006_7817

    ld h, b
    ld a, a
    rrca
    cp $80
    ccf
    nop
    db $fc
    nop
    rra
    nop
    ld hl, sp+$00
    rlca
    nop
    ldh [rP1], a
    ld [bc], a
    ld [bc], a
    ld [$0007], sp
    ldh [rP1], a
    rra
    nop
    ld hl, sp+$00
    ccf
    ld b, $fc
    ld h, b
    ld a, a
    ld c, $fe
    ld [hl], b
    ld a, a
    ld c, $fe
    ld [hl], b
    rst $38
    ld c, $ff
    ld [hl], b
    rst $38
    ld c, $ff
    ld [hl], b
    rst $38
    inc b
    rst $38
    jr nz, @+$04

    ld [bc], a
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    jr nc, @+$01

    inc c
    rst $38
    db $10
    rst $38
    ld [$0c7f], sp
    cp $30
    ld a, a
    rlca
    cp $e0
    ccf
    nop
    db $fc
    nop
    rra
    nop
    ld hl, sp+$00
    rlca
    nop
    ldh [rP1], a
    ld [bc], a
    ld [bc], a
    ld b, $03
    nop
    ret nz

    nop
    rrca
    nop
    ldh a, [rP1]
    rra
    nop
    ld hl, sp+$00
    rra
    nop
    ld hl, sp+$00
    ccf
    nop
    db $fc
    nop
    ccf
    nop
    db $fc
    nop
    ld [bc], a
    ld [bc], a
    ld b, $3f
    nop
    db $fc

jr_006_7891:
    nop
    ccf
    jr nz, jr_006_7891

    nop

jr_006_7896:
    rra
    nop
    ld hl, sp+$00
    rra
    nop
    ld hl, sp+$00
    rrca
    nop
    ldh a, [rP1]
    inc bc
    nop
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld b, $03
    nop
    ret nz

    nop
    rrca
    ld [$00f0], sp
    rra
    db $10
    ld hl, sp+$00
    rra
    nop
    ld hl, sp+$00
    ccf
    jr nz, @-$02

jr_006_78bc:
    nop
    ccf
    jr nz, jr_006_78bc

    nop
    ld [bc], a
    ld [bc], a
    ld b, $3f
    nop
    db $fc
    nop
    ccf
    db $10
    db $fc
    nop
    rra
    db $10
    ld hl, sp+$00
    rra
    db $10
    ld hl, sp+$00
    rrca
    nop
    ldh a, [rP1]
    inc bc
    nop
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld b, $03
    nop
    ret nz

    nop
    rrca
    nop
    ldh a, [rP1]
    rra
    ld [$00f8], sp
    rra
    db $10
    ld hl, sp+$00
    ccf
    db $10
    db $fc
    nop
    ccf
    nop
    db $fc
    nop
    ld [bc], a
    ld [bc], a
    ld b, $3f
    nop
    db $fc
    nop
    ccf
    ld [$00fc], sp
    rra
    ld [$00f8], sp
    rra
    db $10
    ld hl, sp+$00
    rrca
    nop
    ldh a, [rP1]
    inc bc
    nop
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld b, $03
    nop
    ret nz

    nop
    rrca
    inc b
    ldh a, [rP1]
    rra
    inc c
    ld hl, sp+$00
    rra
    ld [$00f8], sp
    ccf
    jr z, @-$02

    nop
    ccf
    nop
    db $fc
    nop
    ld [bc], a
    ld [bc], a
    ld b, $3f
    nop
    db $fc
    nop
    ccf
    inc b
    db $fc

jr_006_7937:
    nop
    rra
    inc b
    ld hl, sp+$00
    rra
    jr jr_006_7937

    nop
    rrca
    nop
    ldh a, [rP1]
    inc bc
    nop
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld b, $03
    nop
    ret nz

    nop
    rrca
    ld a, [bc]
    ldh a, [rP1]
    rra
    ld d, $f8
    nop
    rra
    ld d, $f8
    nop
    ccf
    inc h
    db $fc
    nop
    ccf
    inc h
    db $fc
    nop
    ld [bc], a
    ld [bc], a
    ld b, $3f
    nop
    db $fc
    nop
    ccf
    ld bc, $00fc
    rra
    ld [bc], a
    ld hl, sp+$00
    rra
    inc e
    ld hl, sp+$00
    rrca
    nop
    ldh a, [rP1]
    inc bc
    nop
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld b, $03
    nop
    ret nz

    nop
    rrca
    add hl, bc
    ldh a, [rP1]
    rra
    dec bc
    ld hl, sp+$00
    rra
    dec de
    ld hl, sp+$00
    ccf
    inc de
    db $fc
    nop
    ccf
    ld [de], a
    db $fc
    nop
    ld [bc], a
    ld [bc], a
    ld b, $3f
    nop
    db $fc

jr_006_799f:
    nop
    ccf
    jr nz, jr_006_799f

    add b
    rra
    ld de, $80f8
    rra
    rrca
    ld hl, sp+$00
    rrca
    nop
    ldh a, [rP1]
    inc bc
    nop
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld b, $03
    nop
    ret nz

    nop
    rrca
    inc b
    ldh a, [$ff80]
    rra
    inc c
    ld hl, sp-$40
    rra
    dec c
    ld hl, sp-$40
    ccf
    dec c
    db $fc
    add b
    ccf
    ld [$80fc], sp
    ld [bc], a
    ld [bc], a
    ld b, $3f
    nop
    db $fc
    nop
    ccf
    db $10
    db $fc
    jr nz, jr_006_79fa

    ld [$40f8], sp
    rra
    rlca
    ld hl, sp-$80
    rrca
    nop
    ldh a, [rP1]
    inc bc
    nop
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld b, $03
    nop
    ret nz

    nop
    rrca
    ld [bc], a
    ldh a, [rLCDC]
    rra
    ld b, $f8
    ld h, b
    rra

jr_006_79fa:
    ld b, $f8
    ld h, b
    ccf
    ld b, $fc
    ld h, b
    ccf
    ld [bc], a
    db $fc
    ld b, b
    ld [bc], a
    ld [bc], a
    ld b, $3f
    nop
    db $fc
    nop
    ccf
    ld [$10fc], sp
    rra
    inc b
    ld hl, sp+$20
    rra
    inc bc
    ld hl, sp-$40
    rrca
    nop
    ldh a, [rP1]
    inc bc
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
