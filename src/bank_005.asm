; Disassembly of "Faceball 2000 (USA).gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ld [bc], a
    rlca
    ld a, [de]
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
    ld a, a
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
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
    rrca
    ld [$00ff], sp
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
    nop
    rst $38
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
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    rlca
    ld a, [de]
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
    rst $38
    nop
    db $fc
    nop
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
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
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
    rrca
    nop
    rst $38
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
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
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
    cp $00
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
    ld a, [de]
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
    ld a, a
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
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
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rrca
    inc b
    rst $38
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
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    jr c, @+$01

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
    ld [hl], b
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
    ldh [rIE], a
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
    ldh [rIE], a
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
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    rlca
    ld a, [de]
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
    rst $38
    nop
    db $fc
    nop
    rra
    ld bc, $c0ff
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
    ld bc, $c0ff
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
    ld bc, $c0ff
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
    ld bc, $c0ff
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
    add b
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
    ldh a, [rP1]
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
    ret nz

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
    rrca
    nop
    rst $38
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
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
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
    cp $00
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
    ld a, [de]
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
    ld a, a
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
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
    rrca
    ld bc, $80ff
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
    rlca
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
    rrca
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
    ld e, $ff
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
    inc bc
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
    ret nz

    nop
    rlca
    ld bc, $f8ff
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
    rrca
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
    ld hl, sp+$00
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
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    rlca
    ld a, [de]
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
    rst $38
    nop
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
    rst $38
    nop
    db $fc
    nop
    rra
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
    ld hl, sp+$00
    rra
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
    ld hl, sp+$00
    rra
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
    ld hl, sp+$00
    rra
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
    ld hl, sp+$00
    rrca
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
    ldh a, [rP1]
    rrca
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
    ldh a, [rP1]
    rlca
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
    ldh [rP1], a
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
    inc bc
    ld bc, $f8ff
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
    add b
    nop
    nop
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
    rrca
    nop
    rst $38
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
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
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
    cp $00
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
    ld a, [de]
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
    ld a, a
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
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
    rrca
    nop
    rst $38
    ld [hl], b
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
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    ld bc, $f0ff
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
    ld b, e
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
    add a
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
    rrca
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
    inc bc
    ld [bc], a
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
    rrca
    ld [$7fff], sp
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
    rra
    jr @+$01

    ld a, [hl]
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
    ld a, [hl]
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
    ld a, h
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
    ccf
    jr nc, @+$01

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
    jr nz, @+$01

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
    jr nz, @+$01

    ld [hl], b
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
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    rlca
    ld a, [de]
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
    rst $38
    nop
    db $fc
    nop
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
    db $fc
    nop
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
    db $fc
    nop
    rra
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
    ld hl, sp+$00
    rra
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
    ld hl, sp+$00
    rra
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
    ld hl, sp+$00
    rra
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
    ld hl, sp+$00
    rrca
    nop
    rst $38
    ld bc, $f0ff
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
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
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
    ldh [rP1], a
    rlca
    inc b
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
    ldh [rP1], a
    inc bc
    inc bc
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
    ret nz

    nop
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
    add b
    nop
    nop
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
    rrca
    nop
    rst $38
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
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
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
    cp $00
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
    ld a, [de]
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
    ld a, a
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    rst $38
    inc bc
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
    inc b
    rst $38
    rlca
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

    rrca
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
    jr nc, @+$01

    rra
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
    ld [hl], b
    rst $38
    ccf
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
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ldh [rIE], a
    rst $38
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
    inc bc
    inc bc
    rst $38
    pop bc
    rst $38
    cp $ff
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
    cp $ff
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
    add e
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
    rlca
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
    ldh a, [rP1]
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
    rra
    rrca
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
    ld c, $ff
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
    ld c, $ff
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    ld c, $ff
    rlca
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
    ld c, $ff
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
    inc c
    rst $38
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
    ccf
    inc c
    rst $38
    ld bc, $c0ff
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
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    rlca
    ld a, [de]
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
    db $fc
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
    ld hl, sp-$01
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
    ld bc, $f8ff
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
    ld bc, $f0ff
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
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    db $10
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld [$00ff], sp
    rst $38
    rrca
    rst $38
    ret nz

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
    rra
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    ld b, $ff
    nop
    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    inc bc
    rst $38
    add b
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
    db $e3
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    inc bc
    ld bc, $ffff
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
    ld a, a
    rst $38
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
    ccf
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
    nop
    nop
    ld a, a
    rlca
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
    rrca
    nop
    rst $38
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
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
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
    cp $00
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
    ld a, [de]
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
    ld a, a
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
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
    jr nc, @+$01

    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rrca
    inc bc
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rra
    rlca
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    ld c, $ff
    ld bc, $f8ff
    rst $38
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
    ld a, $ff
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ld a, h
    rst $38
    rlca
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
    ld a, h
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ret nz

    nop
    inc bc
    nop
    rst $38
    db $fc
    rst $38
    rrca
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
    rrca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    ld hl, sp-$01
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
    rrca
    ld bc, $f8ff
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    ld bc, $f0ff
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld bc, $f0ff
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld bc, $f0ff
    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld bc, $f0ff
    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    ld bc, $f0ff
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
    ccf
    ld bc, $e0ff
    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld bc, $e0ff
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
    nop
    rst $38
    ret nz

    rst $38
    rlca
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
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    rlca
    ld a, [de]
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
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    db $fc
    nop
    ccf
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    db $fc
    nop
    rra
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    ld hl, sp+$00
    rra
    inc c
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
    ld hl, sp+$00
    rra
    inc c
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
    ld hl, sp+$00
    rra
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$00
    rrca
    rlca
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
    ldh a, [rP1]
    rrca
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    ld bc, $e0ff
    rst $38
    ld bc, $feff
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
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
    inc bc
    nop
    rst $38
    ld a, [hl]
    rst $38
    rra
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ret nz

    nop
    inc bc
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    rra
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
    nop
    nop
    rst $38
    inc bc
    rst $38
    cp $ff
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
    ld [hl], b
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
    rrca
    nop
    rst $38
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
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
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
    cp $00
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
    ld a, [de]
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
    ld a, a
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
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
    rrca
    nop
    rst $38
    ld h, b
    rst $38
    rlca
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rra
    ld bc, $e0ff
    rst $38
    rrca
    rst $38
    add b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    inc bc
    rst $38
    ldh [rIE], a
    rrca
    rst $38
    ret nz

    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    inc bc
    rst $38
    ldh [rIE], a
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
    ldh [rIE], a
    rra
    rst $38
    ret nz

    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    rrca
    rst $38
    ldh [rIE], a
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
    ldh [rIE], a
    ccf
    rst $38
    ldh [rIE], a
    nop
    ret nz

    nop
    inc bc
    nop
    rst $38
    rrca
    rst $38
    ldh [rIE], a
    ccf
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
    ccf
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
    rra
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    ldh [rIE], a
    nop
    ldh a, [rP1]
    rrca
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
    ldh a, [rP1]
    rra
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    rra
    rst $38
    add b
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    nop
    ld hl, sp+$00
    ccf
    nop
    rst $38
    rra
    rst $38
    add b
    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    rra
    rst $38
    add b
    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld c, $ff
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
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    rlca
    ld a, [de]
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
    rlca
    rst $38
    ldh [$fffc], a
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
    rlca
    rst $38
    ret nz

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
    rrca
    rst $38
    add b
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
    rrca
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld bc, $c0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    nop
    ld hl, sp+$00
    rrca
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    ld bc, $f8ff
    rst $38
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    ld a, $ff
    nop
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    ldh [rP1], a
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
    inc bc
    nop
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    ret nz

    nop
    inc bc
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    ld bc, $ffff
    rst $38
    cp $ff
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
    ccf
    rst $38
    ldh a, [rIE]
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
    rlca
    rst $38
    add b
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
    rrca
    nop
    rst $38
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
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
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
    cp $00
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
    ld a, [de]
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
    ld a, a
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    ld b, $ff
    nop
    rst $38
    ld h, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    ld c, $ff
    nop
    rst $38
    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    ld e, $ff
    nop
    rst $38
    ld a, b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    ld a, $ff
    nop
    rst $38
    ld a, h
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld a, [hl]
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    cp $ff
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
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
    rst $38
    rst $38
    nop
    ret nz

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
    rst $38
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
    nop
    ldh [rP1], a
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
    nop
    ldh [rP1], a
    rrca
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
    nop
    ldh a, [rP1]
    rrca
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
    nop
    ldh a, [rP1]
    rra
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
    nop
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
    rst $38
    rst $38
    nop
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
    rst $38
    rst $38
    nop
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
    ld a, a
    rst $38
    nop
    ld hl, sp+$00
    ccf
    nop
    rst $38
    nop
    rst $38
    ld a, a
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
    nop
    rst $38
    ld a, [hl]
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
    nop
    rst $38
    ld a, $ff
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
    nop
    rst $38
    inc a
    rst $38
    nop
    rst $38
    inc a
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
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    rlca
    ld a, [de]
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
    rst $38
    nop
    db $fc
    nop
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
    rra
    db $fc
    nop
    ccf
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
    ld e, $fc
    nop
    rra
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
    inc a
    ld hl, sp+$00
    rra
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
    ld hl, sp+$00
    rra
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
    ld hl, sp+$00
    rra
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
    ldh a, [$fff8]
    nop
    rrca
    nop
    rst $38
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $f0ff
    ldh a, [rP1]
    rrca
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rlca
    rst $38
    ldh [$fff0], a
    nop
    rlca
    nop
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rrca
    rst $38
    ret nz

    ldh [rP1], a
    rlca
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
    ldh [rP1], a
    inc bc
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    jp $ffff


    rst $38
    nop
    ret nz

    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    rrca
    rst $38
    rst $38
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
    ld bc, $ffff
    rst $38
    ret nz

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
    inc a
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
    rrca
    nop
    rst $38
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
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
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
    cp $00
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
    dec b
    inc d
    nop
    nop
    nop
    nop
    rst $38
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
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
    cp $00
    nop
    nop
    ld bc, $ff01
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
    ldh [rP1], a
    rrca
    ld [$00ff], sp
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
    ldh a, [rP1]
    rra
    db $10
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
    db $fc
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
    ld a, a
    ld b, b
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
    cp $00
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    dec b
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    jr nz, @+$01

    nop
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
    rst $38
    nop
    cp $00
    ld a, a
    jr nz, @+$01

    nop
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
    rst $38
    nop
    cp $00
    ccf
    jr nz, @+$01

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
    ld hl, sp+$00
    rrca
    nop
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
    ldh a, [rP1]
    rlca
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
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    inc d
    nop
    nop
    nop
    nop
    rst $38
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
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
    cp $00
    nop
    nop
    ld bc, $ff00
    add b
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    ld bc, $00ff
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
    ldh [rP1], a
    rrca
    ld b, $ff
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
    ldh a, [rP1]
    rra
    inc e
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
    db $fc
    nop
    ccf
    jr c, @+$01

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
    cp $00
    ld a, a
    ld [hl], b
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
    cp $00
    ld a, a
    ld h, b
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
    ld [bc], a
    dec b
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    inc e
    rst $38
    nop
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
    db $fc
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
    rra
    jr @+$01

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
    ldh a, [rP1]
    rrca
    ld [$00ff], sp
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
    ldh [rP1], a
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    inc d
    nop
    nop
    nop
    nop
    rst $38
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
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
    db $10
    rst $38
    nop
    cp $00
    nop
    nop
    ld bc, $ff00
    ld h, b
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    ld bc, $c0ff
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
    ldh a, [rP1]
    rrca
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
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
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    ld e, [hl]
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
    cp $00
    ld a, a
    inc e
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
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    dec b
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld bc, $c0ff
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld bc, $c0ff
    rst $38
    nop
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
    cp $00
    ccf
    rlca
    rst $38
    add b
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
    db $fc
    nop
    rra
    rra
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
    ldh a, [rP1]
    rrca
    ld c, $ff
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
    ldh [rP1], a
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    inc d
    nop
    nop
    nop
    nop
    rst $38
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
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
    inc b
    rst $38
    nop
    cp $00
    nop
    nop
    ld bc, $ff01
    inc e
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    ld [bc], a
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    inc b
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld [$f8ff], sp
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld [$f8ff], sp
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    ld de, $f0ff
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    ld hl, $f0ff
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc hl
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    ld h, e
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, a
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld b, a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    rst $00
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add a
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    dec b
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    ld e, $ff
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
    cp $00
    ld a, a
    ld b, b
    rst $38
    jr c, @+$01

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
    db $fc
    nop
    ccf
    ld hl, $f0ff
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    rra
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    rrca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    rlca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    ld bc, $00ff
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
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    inc d
    nop
    nop
    nop
    nop
    rst $38
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
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
    add b
    cp $00
    nop
    nop
    ld bc, $ff00
    add e
    rst $38
    add b
    rst $38
    nop
    add b
    nop
    inc bc
    ld bc, $07ff
    rst $38
    add b
    rst $38
    nop
    ret nz

    nop
    rlca
    ld [bc], a
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld b, $ff
    rrca
    rst $38
    add b
    rst $38
    nop
    ldh a, [rP1]
    rrca
    inc c
    rst $38
    rra
    rst $38
    add b
    rst $38
    nop
    ldh a, [rP1]
    rra
    inc e
    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$00
    ccf
    inc e
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr c, @+$01

    ld a, a
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    jr c, @+$01

    ld a, a
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr c, @+$01

    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    jr nc, @+$01

    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    ld [hl], b
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    ld [hl], b
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    dec b
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    nop
    cp $00
    ld a, a
    ld b, b
    rst $38
    ld bc, $e0ff
    rst $38
    nop
    cp $00
    ld a, a
    jr nz, @+$01

    inc bc
    rst $38
    ret nz

    rst $38
    nop
    cp $00
    ccf
    jr nc, @+$01

    rlca
    rst $38
    ret nz

    rst $38
    nop
    db $fc
    nop
    ccf
    jr @+$01

    rra
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    rra
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    rlca
    rst $38
    cp $ff
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    inc bc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    ld h, b
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
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    inc d
    nop
    nop
    nop
    nop
    rst $38
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
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
    jr nz, @+$01

jr_005_5f04:
    jr nc, jr_005_5f04

    nop
    nop
    nop
    ld bc, $ff00
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    ret nz

    rst $38
    ld a, b
    rst $38
    nop
    ret nz

    nop
    rlca
    ld bc, $c0ff
    rst $38
    ld hl, sp-$01
    nop
    ldh [rP1], a
    rrca
    inc bc
    rst $38
    pop bc
    rst $38
    ld hl, sp-$01
    nop
    ldh a, [rP1]
    rrca
    rlca
    rst $38
    add c
    rst $38
    ld hl, sp-$01
    nop
    ldh a, [rP1]
    rra
    rlca
    rst $38
    add e
    rst $38
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    ccf
    rrca
    rst $38
    add e
    rst $38
    ld hl, sp-$01
    nop
    db $fc
    nop
    ccf
    rrca
    rst $38
    add e
    rst $38
    ld hl, sp-$01
    nop
    db $fc
    nop
    ld a, a
    rrca
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    cp $00
    ld a, a
    rrca
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    nop
    cp $00
    ld a, a
    rrca
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    nop
    cp $00
    ld a, a
    rrca
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    nop
    cp $00
    rst $38
    ld c, $ff
    rlca
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    dec b
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    ld a, a
    ld h, b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    add b
    cp $00
    ld a, a
    jr nz, @+$01

    nop
    rst $38
    rlca
    rst $38
    add b
    cp $00
    ld a, a
    jr nc, @+$01

    nop
    rst $38
    rrca
    rst $38
    nop
    cp $00
    ld a, a
    jr @+$01

    nop
    rst $38
    ld e, $ff
    nop
    cp $00
    ccf
    inc e
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    nop
    db $fc
    nop
    ccf
    rrca
    rst $38
    ld bc, $f8ff
    rst $38
    nop
    db $fc
    nop
    rra
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    ld hl, sp+$00
    rrca
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    inc e
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
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    inc d
    nop
    nop
    nop
    nop
    rst $38
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
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
    ld [$06ff], sp
    cp $00
    nop
    nop
    ld bc, $ff00
    jr @+$01

    rlca
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    jr c, @+$01

    rrca
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    ld a, b
    rst $38
    rrca
    rst $38
    add b
    ldh [rP1], a
    rrca
    nop
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    add b
    ldh a, [rP1]
    rrca
    nop
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    add b
    ldh a, [rP1]
    rra
    ld bc, $f8ff
    rst $38
    rra
    rst $38
    add b
    ld hl, sp+$00
    ccf
    ld bc, $f8ff
    rst $38
    rra
    rst $38
    add b
    db $fc
    nop
    ccf
    ld bc, $f8ff
    rst $38
    ccf
    rst $38
    add b
    db $fc
    nop
    ld a, a
    ld bc, $f0ff
    rst $38
    ccf
    rst $38
    add b
    cp $00
    ld a, a
    ld bc, $f0ff
    rst $38
    ccf
    rst $38
    add b
    cp $00
    ld a, a
    ld bc, $f0ff
    rst $38
    ccf
    rst $38
    add b
    cp $00
    ld a, a
    ld bc, $f0ff
    rst $38
    ccf
    rst $38
    nop
    cp $00
    rst $38
    ld bc, $f0ff
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e0ff
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    ld [bc], a
    dec b
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld e, $ff
    nop
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld e, $ff
    nop
    ld a, a
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    inc a
    cp $00
    ld a, a
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_005_617b:
    jr c, jr_005_617b

    nop
    ld a, a
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, b
    cp $00
    ld a, a
    rlca
    rst $38
    nop
    rst $38
    ld bc, $f0ff
    cp $00
    ccf
    inc bc
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    ldh [$fffc], a
    nop
    ccf
    ld bc, $f0ff
    rst $38
    rrca
    rst $38
    ret nz

    db $fc
    nop
    rra
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld hl, sp+$00
    rrca
    nop
    rst $38
    ld a, a
    rst $38
    cp $ff
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    rra
    rst $38
    ld hl, sp-$01
    nop
    ldh a, [rP1]
    rlca
    nop
    rst $38
    ld bc, $c0ff
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
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    inc d
    nop
    nop
    nop
    nop
    rst $38
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
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
    ld bc, $00ff
    cp $80
    nop
    nop
    ld bc, $ff00
    rlca
    rst $38
    nop
    rst $38
    ldh [$ff80], a
    nop
    inc bc
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ldh a, [$ffc0]
    nop
    rlca
    nop
    rst $38
    rrca
    rst $38
    add c
    rst $38
    ldh a, [$ffe0]
    nop
    rrca
    nop
    rst $38
    rra
    rst $38
    add c
    rst $38
    ld hl, sp-$10
    nop
    rrca
    nop
    rst $38
    rra
    rst $38
    add c
    rst $38
    ld hl, sp-$10
    nop
    rra
    nop
    rst $38
    rra
    rst $38
    add c
    rst $38
    ld hl, sp-$08
    nop
    ccf
    nop
    rst $38
    rra
    rst $38
    add c
    rst $38
    ld hl, sp-$04
    nop
    ccf
    nop
    rst $38
    rra
    rst $38
    add c
    rst $38
    db $fc
    db $fc
    nop
    ld a, a
    nop
    rst $38
    rra
    rst $38
    add c
    rst $38
    db $fc
    cp $00
    ld a, a
    nop
    rst $38
    rra
    rst $38
    add c
    rst $38
    db $fc
    cp $00
    ld a, a
    nop
    rst $38
    rra
    rst $38
    add c
    rst $38
    ld hl, sp-$02
    nop
    ld a, a
    nop
    rst $38
    rra
    rst $38
    add c
    rst $38
    ld hl, sp-$02
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ldh a, [rIE]
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
    ld [bc], a
    dec b
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $e0ff
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $e0ff
    ld a, a
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $c0fe
    ld a, a
    ld bc, $c0ff
    rst $38
    nop
    rst $38
    inc bc
    cp $80
    ld a, a
    nop
    rst $38
    ldh [rIE], a
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
    rrca
    cp $00
    ccf
    nop
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    ld e, $fc
    nop
    ccf
    nop
    rst $38
    ccf
    rst $38
    nop
    rst $38
    db $fc
    db $fc
    nop
    rra
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    nop
    rrca
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ldh [$fff0], a
    nop
    rrca
    nop
    rst $38
    ld bc, $ffff
    rst $38
    add b
    ldh a, [rP1]
    rlca
    nop
    rst $38
    nop
    rst $38
    inc e
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
    ret nz

    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld a, a
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld [de], a
    nop
    nop
    nop
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
    ldh [rP1], a
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
    ld a, a
    ld b, b
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
    nop
    nop
    ld bc, $ff01
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
    ldh [rP1], a
    rlca
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
    ldh a, [rP1]
    rrca
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
    ld hl, sp+$00
    rra
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
    ld hl, sp+$00
    ccf
    jr nz, @+$01

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
    db $fc
    nop
    ld [bc], a
    dec b
    ld [de], a
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
    ccf
    jr @+$01

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
    db $fc
    nop
    rra
    jr @+$01

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
    ld hl, sp+$00
    rra
    ld [$00ff], sp
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
    ldh a, [rP1]
    rrca
    ld [$00ff], sp
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
    ldh [rP1], a
    rlca
    inc b
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
    ret nz

    nop
    ld bc, $ff00
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
    nop
    nop
    nop
    nop
    ld a, a
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
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
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld [de], a
    nop
    nop
    nop
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
    ldh [rP1], a
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
    ld a, a
    jr nz, @+$01

    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    ld b, b
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
    add b
    nop
    inc bc
    inc bc
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
    ldh [rP1], a
    rlca
    ld b, $ff
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
    ldh a, [rP1]
    rrca
    inc c
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
    ld hl, sp+$00
    rra
    jr @+$01

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
    ld hl, sp+$00
    ccf
    db $10
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
    db $fc
    nop
    ccf
    jr nc, @+$01

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
    db $fc
    nop
    ld [bc], a
    dec b
    ld [de], a
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
    rra
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld b, $ff
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
    ldh [rP1], a
    rlca
    ld b, $ff
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
    ret nz

    nop
    ld bc, $ff00
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
    nop
    nop
    nop
    nop
    ld a, a
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
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
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld [de], a
    nop
    nop
    nop
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
    ldh [rP1], a
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
    ld a, a
    db $10
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ld h, b
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    ld bc, $c0ff
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    inc bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    rlca
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
    ld hl, sp+$00
    ccf
    ld c, $ff
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
    db $fc
    nop
    ld [bc], a
    dec b
    ld [de], a
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
    ccf
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld bc, $c0ff
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld bc, $c0ff
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
    ldh a, [rP1]
    rlca
    rlca
    rst $38
    add b
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
    ldh [rP1], a
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    ld a, a
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
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
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld [de], a
    nop
    nop
    nop
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
    ldh [rP1], a
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
    ld a, a
    ld b, [hl]
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff01
    inc e
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    inc bc
    ld [bc], a
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    inc b
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rlca
    inc b
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld [$f8ff], sp
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    add hl, bc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    ld de, $f0ff
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld de, $e0ff
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld de, $e0ff
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    ld hl, $c0ff
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld hl, $c0ff
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld hl, $80ff
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
    db $fc
    nop
    ld [bc], a
    dec b
    ld [de], a
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
    ccf
    nop
    rst $38
    rlca
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rra
    nop
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rrca
    nop
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld [$78ff], sp
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
    ldh [rP1], a
    rlca
    rlca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    ld bc, $c0ff
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
    nop
    nop
    nop
    nop
    ld a, a
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
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
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld [de], a
    nop
    nop
    nop
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
    ldh [rP1], a
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
    ld a, a
    ld bc, $80ff
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    jp $80ff


    rst $38
    nop
    nop
    nop
    ld bc, $ff01
    add a
    rst $38
    add b
    rst $38
    nop
    add b
    nop
    inc bc
    inc bc
    rst $38
    rlca
    rst $38
    add b
    rst $38
    nop
    ret nz

    nop
    rlca
    inc bc
    rst $38
    rrca
    rst $38
    add b
    rst $38
    nop
    ldh [rP1], a
    rlca
    ld b, $ff
    rra
    rst $38
    add b
    rst $38
    nop
    ldh [rP1], a
    rrca
    ld b, $ff
    rra
    rst $38
    add b
    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld c, $ff
    rra
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rra
    inc c
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc e
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc e
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    inc e
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr @+$01

    inc a
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr @+$01

    inc a
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    dec b
    ld [de], a
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
    ccf
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

    nop
    rst $38
    ld a, b
    rst $38
    nop
    db $fc
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    nop
    ld hl, sp+$00
    rra
    db $10
    rst $38
    ld bc, $c0ff
    rst $38
    nop
    ld hl, sp+$00
    rrca
    ld [$03ff], sp
    rst $38
    ret nz

    rst $38
    nop
    ldh a, [rP1]
    rrca
    ld c, $ff
    rrca
    rst $38
    add b
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
    ldh [rP1], a
    rlca
    inc bc
    rst $38
    cp $ff
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
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
    nop
    nop
    nop
    nop
    ld a, a
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
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
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld [de], a
    nop
    nop
    nop
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
    ldh [rP1], a
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
    ld a, a
    db $10
    rst $38

jr_005_6aec:
    jr nc, jr_005_6aec

    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    ldh [rIE], a
    ld hl, sp-$01
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    nop
    ret nz

    nop
    rlca
    ld bc, $c1ff
    rst $38
    ld hl, sp-$01
    nop
    ldh [rP1], a
    rlca
    inc bc
    rst $38
    pop bc
    rst $38
    ld hl, sp-$01
    nop
    ldh [rP1], a
    rrca
    inc bc
    rst $38
    pop bc
    rst $38
    ld hl, sp-$01
    nop
    ldh a, [rP1]
    rrca
    inc bc
    rst $38
    jp $f0ff


    rst $38
    nop
    ldh a, [rP1]
    rra
    rlca
    rst $38
    add e
    rst $38
    ldh a, [rIE]
    nop
    ld hl, sp+$00
    rra
    rlca
    rst $38
    add e
    rst $38
    ldh a, [rIE]
    nop
    ld hl, sp+$00
    rra
    rlca
    rst $38
    add e
    rst $38
    ldh a, [rIE]
    nop
    ld hl, sp+$00
    ccf
    rlca
    rst $38
    add e
    rst $38
    ldh [rIE], a
    nop
    db $fc
    nop
    ccf
    rlca
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    nop
    db $fc
    nop
    ccf
    inc bc
    rst $38
    ld bc, $c0ff
    rst $38
    nop
    db $fc
    nop
    ccf
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    dec b
    ld [de], a
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
    ccf
    db $10
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ret nz

    db $fc
    nop
    ccf
    db $10
    rst $38
    nop
    rst $38
    rlca
    rst $38
    add b
    db $fc
    nop
    rra
    jr @+$01

    nop
    rst $38
    rlca
    rst $38
    nop
    ld hl, sp+$00
    rra
    ld [$00ff], sp
    rst $38
    rrca
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc c
    rst $38
    nop
    rst $38
    ld e, $ff
    nop
    ld hl, sp+$00
    rrca
    ld b, $ff
    nop
    rst $38
    inc a
    rst $38
    nop
    ldh a, [rP1]
    rrca
    inc bc
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    nop
    ldh a, [rP1]
    rlca
    ld bc, $ffff
    rst $38
    ldh a, [rIE]
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    ccf
    rst $38
    add b
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
    nop
    nop
    nop
    nop
    ld a, a
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
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
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld [de], a
    nop
    nop
    nop
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
    ldh [rP1], a
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
    ld a, a
    inc c
    rst $38
    ld b, $fe
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc e
    rst $38
    rrca
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    inc a
    rst $38
    rrca
    rst $38
    nop
    add b
    nop
    inc bc
    nop
    rst $38
    inc a
    rst $38
    rra
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    rst $38
    ld a, h
    rst $38
    rra
    rst $38
    add b
    ldh [rP1], a
    rlca
    nop
    rst $38
    ld a, b
    rst $38
    rra
    rst $38
    add b
    ldh [rP1], a
    rrca
    nop
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    add b
    ldh a, [rP1]
    rrca
    nop
    rst $38
    ld hl, sp-$01
    ccf
    rst $38
    add b
    ldh a, [rP1]
    rra
    nop
    rst $38
    ld hl, sp-$01
    ccf
    rst $38
    add b
    ld hl, sp+$00
    rra
    nop
    rst $38
    ld hl, sp-$01
    ccf
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ld hl, sp-$01
    ccf
    rst $38
    nop
    ld hl, sp+$00
    ccf
    nop
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ldh a, [rIE]
    ld e, $ff
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    ld [hl], b
    rst $38
    ld e, $ff
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    jr nz, @+$01

    ld [$00ff], sp
    db $fc
    nop
    ld [bc], a
    dec b
    ld [de], a
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
    ccf
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    db $fc
    nop
    ccf
    ld b, $ff
    nop
    rst $38

jr_005_6d11:
    nop
    rst $38
    jr c, jr_005_6d11

    nop
    rra
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, b
    ld hl, sp+$00
    rra
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    ld hl, sp+$00
    rra
    inc bc
    rst $38
    add b
    rst $38
    ld bc, $e0ff
    ld hl, sp+$00
    rrca
    ld bc, $c0ff
    rst $38
    inc bc
    rst $38
    ret nz

    ldh a, [rP1]
    rrca
    nop
    rst $38
    ld hl, sp-$01
    rrca
    rst $38
    add b
    ldh a, [rP1]
    rlca
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    ldh [rP1], a
    rlca
    nop
    rst $38
    rra
    rst $38
    cp $ff
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    nop
    ret nz

    nop
    ld bc, $ff00
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
    nop
    nop
    nop
    nop
    ld a, a
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
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
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld [de], a
    nop
    nop
    nop
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
    ldh [rP1], a
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
    ld a, a
    ld bc, $80ff
    cp $80
    nop
    nop
    nop
    nop
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ret nz

    nop
    nop
    ld bc, $ff00
    rlca
    rst $38
    add c
    rst $38
    ldh [$ff80], a
    nop
    inc bc
    nop
    rst $38
    rrca
    rst $38
    add c
    rst $38
    ldh a, [$ffc0]
    nop
    rlca
    nop
    rst $38
    rrca
    rst $38
    add c
    rst $38
    ldh a, [$ffe0]
    nop
    rlca
    nop
    rst $38
    rrca
    rst $38
    add c
    rst $38
    ldh a, [$ffe0]
    nop
    rrca
    nop
    rst $38
    rrca
    rst $38
    add c
    rst $38
    ldh a, [$fff0]
    nop
    rrca
    nop
    rst $38
    rrca
    rst $38
    add c
    rst $38
    ld hl, sp-$10
    nop
    rra
    nop
    rst $38
    rra
    rst $38
    add c
    rst $38
    ld hl, sp-$08
    nop
    rra
    nop
    rst $38
    rrca
    rst $38
    add c
    rst $38
    ld hl, sp-$08
    nop
    rra
    nop
    rst $38
    rrca
    rst $38
    add c
    rst $38
    ldh a, [$fff8]
    nop
    ccf
    nop
    rst $38
    rrca
    rst $38
    add c
    rst $38
    ldh a, [$fffc]
    nop
    ccf
    nop
    rst $38
    rrca
    rst $38
    add c
    rst $38
    ldh a, [$fffc]
    nop
    ccf
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ldh [$fffc], a
    nop
    ccf
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, b
    db $fc
    nop
    ld [bc], a
    dec b
    ld [de], a
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
    ccf
    ld bc, $c0ff
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ret nz

    ccf
    ld bc, $c0ff
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    add b
    rra
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rlca
    ld hl, sp+$00
    rra
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rlca
    ld hl, sp+$00
    rra
    nop
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    ld c, $f8
    nop
    rrca
    nop
    rst $38
    inc a
    rst $38
    nop
    rst $38
    inc a
    ldh a, [rP1]
    rrca
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    ld hl, sp-$10
    nop
    rlca
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [$ffe0]
    nop
    rlca
    nop
    rst $38
    inc bc
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
    nop
    ret nz

    nop
    ld bc, $ff00
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
    nop
    nop
    nop
    nop
    ld a, a
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
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
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld c, $00
    nop
    rrca
    nop
    ldh a, [rP1]
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
    rrca
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
    ld hl, sp+$00
    rra
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
    db $fc
    nop
    ccf
    jr nz, @+$01

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
    db $fc
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    inc b
    ld c, $3f
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
    db $fc
    nop
    ccf
    db $10
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
    db $fc
    nop
    rra
    db $10
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
    ld hl, sp+$00
    rrca
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
    rst $38
    nop
    rst $38
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
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    ld c, $00
    nop
    rrca
    nop
    ldh a, [rP1]
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
    rra
    jr @+$01

    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    db $10
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
    db $fc
    nop
    ccf
    jr nz, @+$01

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
    db $fc
    nop
    ld [bc], a
    inc b
    ld c, $3f
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
    db $fc
    nop
    ccf
    ld b, $ff
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
    db $fc
    nop
    rra
    inc c
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc c
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
    ldh a, [rP1]
    rrca
    inc c
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
    rst $38
    nop
    rst $38
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
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    ld c, $00
    nop
    rrca
    nop
    ldh a, [rP1]
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
    add b
    nop
    inc bc
    ld bc, $80ff
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
    rra
    ld c, $ff
    nop
    rst $38
    nop
    ld hl, sp+$00
    ccf
    inc l
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
    db $fc
    nop
    ccf
    ld [$00ff], sp
    rst $38
    nop
    db $fc
    nop
    ccf
    ld [$00ff], sp
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    inc b
    ld c, $3f
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld bc, $c0ff
    rst $38
    nop
    db $fc
    nop
    ccf
    ld bc, $c0ff
    rst $38
    nop
    db $fc
    nop
    ccf
    ld bc, $80ff
    rst $38
    nop
    db $fc
    nop
    rra
    ld bc, $80ff
    rst $38
    nop
    ld hl, sp+$00
    rra
    inc bc
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
    nop
    ldh a, [rP1]
    rrca
    rrca
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
    rst $38
    nop
    rst $38
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
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    ld c, $00
    nop
    rrca
    nop
    ldh a, [rP1]
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
    rst $38
    db $10
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    jr nc, @+$01

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
    add hl, bc
    rst $38
    ldh [rIE], a
    nop
    ldh a, [rP1]
    rrca
    inc bc
    rst $38
    ret nz

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
    rra
    inc de
    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$00
    ccf
    inc hl
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    ccf
    daa
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    inc hl
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    inc b
    ld c, $3f
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
    jr c, @+$01

    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    jr c, @+$01

    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    jr nc, @+$01

    nop
    db $fc
    nop
    rra
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    ld hl, sp+$00
    rra
    nop
    rst $38
    ldh [rIE], a
    nop
    ld hl, sp+$00
    rrca
    ld bc, $e0ff
    rst $38
    nop
    ldh a, [rP1]
    rrca
    rrca
    rst $38
    ret nz

    rst $38
    nop
    ldh a, [rP1]
    rlca
    rlca
    rst $38
    add b
    rst $38
    nop
    ldh [rP1], a
    inc bc
    ld bc, $00ff
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
    rst $38
    nop
    rst $38
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
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    ld c, $00
    nop
    rrca
    nop
    ldh a, [rP1]
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
    rst $38
    add h
    rst $38
    nop
    nop
    nop
    ld bc, $ff01
    inc e
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
    ld b, $ff
    inc a
    rst $38
    nop
    ldh [rP1], a
    rrca
    inc c
    rst $38
    ld a, h
    rst $38
    nop
    ldh a, [rP1]
    rrca
    inc c
    rst $38
    ld a, b
    rst $38
    nop
    ldh a, [rP1]
    rra
    inc c
    rst $38
    ld a, b
    rst $38
    nop
    ld hl, sp+$00
    rra
    jr @+$01

    ld hl, sp-$01
    nop
    ld hl, sp+$00
    ccf
    jr @+$01

    ldh a, [rIE]
    nop
    db $fc
    nop
    ccf
    jr @+$01

    ldh a, [rIE]
    nop
    db $fc
    nop
    ccf
    db $10
    rst $38
    ldh [rIE], a
    nop
    db $fc
    nop
    ccf
    db $10
    rst $38
    ld b, b
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    inc b
    ld c, $3f
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
    inc bc
    rst $38
    add b
    db $fc
    nop
    ccf
    nop
    rst $38
    inc bc
    rst $38
    add b
    db $fc
    nop
    ccf
    jr nz, @+$01

    rlca
    rst $38
    nop
    db $fc
    nop
    rra
    nop
    rst $38
    ld b, $ff
    nop
    ld hl, sp+$00
    rra
    db $10
    rst $38
    ld e, $ff
    nop
    ld hl, sp+$00
    rrca
    ld [$3cff], sp
    rst $38
    nop
    ldh a, [rP1]
    rrca
    rlca
    rst $38
    ld hl, sp-$01
    nop
    ldh a, [rP1]
    rlca
    inc bc
    rst $38
    ldh a, [rIE]
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    ret nz

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
    rst $38
    nop
    rst $38
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
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    ld c, $00
    nop
    rrca
    nop
    ldh a, [rP1]
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
    rst $38
    ld b, c
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    add e
    rst $38
    nop
    add b
    nop
    inc bc
    ld bc, $87ff
    rst $38
    add b
    ret nz

    nop
    rlca
    inc bc
    rst $38
    add a
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
    rrca
    rlca
    rst $38
    rrca
    rst $38
    nop
    ldh a, [rP1]
    rra
    rlca
    rst $38
    rra
    rst $38
    nop
    ld hl, sp+$00
    rra
    rlca
    rst $38
    rra
    rst $38
    nop
    ld hl, sp+$00
    ccf
    ld c, $ff
    rra
    rst $38
    nop
    db $fc
    nop
    ccf
    ld b, $ff
    ld e, $ff
    nop
    db $fc
    nop
    ccf
    ld b, $ff
    ld c, $ff
    nop
    db $fc
    nop
    ccf
    inc b
    rst $38
    inc c
    rst $38
    nop
    db $fc
    nop
    ld [bc], a
    inc b
    ld c, $3f
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    jr nz, @+$01

jr_005_740f:
    nop
    rst $38
    jr nc, jr_005_740f

    nop
    ccf
    db $10
    rst $38
    nop
    rst $38
    ld [hl], b
    db $fc
    nop
    ccf
    db $10
    rst $38
    nop
    rst $38
    ld h, b
    db $fc
    nop
    rra
    jr @+$01

    nop
    rst $38
    ldh [$fff8], a
    nop
    rra
    inc c
    rst $38
    ld bc, $c0ff
    ld hl, sp+$00
    rrca
    ld b, $ff
    rlca
    rst $38
    add b
    ldh a, [rP1]
    rrca
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    ldh a, [rP1]
    rlca
    ld bc, $fcff
    rst $38
    nop
    ldh [rP1], a
    inc bc
    nop
    rst $38
    jr nc, @+$01

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
    rst $38
    nop
    rst $38
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
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    ld c, $00
    nop
    rrca
    nop
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
    ld b, b
    nop
    nop
    ld bc, $ff00
    ld h, b
    rst $38
    ldh [$ff80], a
    nop
    inc bc
    nop
    rst $38
    ldh [rIE], a
    ldh [$ffc0], a
    nop
    rlca
    nop
    rst $38
    pop hl
    rst $38
    ldh a, [$ffe0]
    nop
    rrca
    ld bc, $e1ff
    rst $38
    ldh a, [$fff0]
    nop
    rrca
    ld bc, $e1ff
    rst $38
    ldh a, [$fff0]
    nop
    rra
    ld bc, $e1ff
    rst $38
    ldh a, [$fff8]
    nop
    rra
    ld bc, $e1ff
    rst $38
    ldh [$fff8], a
    nop
    ccf
    ld bc, $c1ff
    rst $38
    ldh [$fffc], a
    nop
    ccf
    ld bc, $c1ff
    rst $38
    ldh [$fffc], a
    nop
    ccf
    ld bc, $c1ff
    rst $38
    ret nz

    db $fc
    nop
    ccf
    nop
    rst $38
    add b
    rst $38
    add b
    db $fc
    nop
    ld [bc], a
    inc b
    ld c, $3f
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    ld [$00ff], sp
    rst $38
    rlca
    db $fc
    nop
    ccf
    inc c

jr_005_74fc:
    rst $38
    nop
    rst $38
    ld b, $fc
    nop
    ccf
    inc c
    rst $38
    nop
    rst $38
    ld c, $fc
    nop
    rra
    ld b, $ff
    nop
    rst $38
    inc e
    ld hl, sp+$00
    rra
    inc bc
    rst $38
    nop
    rst $38
    jr c, @-$06

    nop
    rrca
    ld bc, $c0ff
    rst $38
    ldh a, [$fff0]
    nop
    rrca
    nop
    rst $38
    rst $38
    rst $38
    ldh [$fff0], a
    nop
    rlca
    nop
    rst $38
    ld a, a
    rst $38
    add b
    ldh [rP1], a
    inc bc
    nop
    rst $38
    inc c
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
    rst $38
    nop
    rst $38
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
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc b
    ld c, $00
    nop
    rrca
    nop
    ldh a, [rP1]
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
    rst $38
    ld [$10ff], sp
    nop
    nop
    ld bc, $ff00
    inc e
    rst $38
    jr jr_005_74fc

    nop
    inc bc
    nop
    rst $38
    inc a
    rst $38
    inc a
    ret nz

    nop
    rlca
    nop
    rst $38
    inc a
    rst $38
    inc a
    ldh [rP1], a
    rrca
    nop
    rst $38
    inc a
    rst $38
    inc a
    ldh a, [rP1]
    rrca
    nop
    rst $38
    ld a, h
    rst $38
    ld a, $f0
    nop
    rra
    nop
    rst $38
    ld a, h
    rst $38
    ld a, $f8
    nop
    rra
    nop
    rst $38
    ld a, h
    rst $38
    ld a, $f8
    nop
    ccf
    nop
    rst $38
    inc a
    rst $38
    inc a
    db $fc
    nop
    ccf
    nop
    rst $38
    inc a
    rst $38
    inc a
    db $fc
    nop
    ccf
    nop
    rst $38
    jr c, @+$01

    inc e
    db $fc
    nop
    ccf
    nop
    rst $38
    db $10
    rst $38
    ld [$00fc], sp
    ld [bc], a
    inc b
    ld c, $3f
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
    nop
    rst $38
    nop
    db $fc
    ret nz

    ccf
    inc bc
    rst $38
    nop
    rst $38
    nop
    db $fc
    ret nz

    ccf
    ld bc, $80ff
    rst $38
    ld bc, $c0fc
    rra
    ld bc, $80ff
    rst $38
    ld bc, $80f8
    rra
    nop
    rst $38
    ldh [rIE], a
    rlca
    ld hl, sp+$00
    rrca
    nop
    rst $38
    ld a, b
    rst $38
    ld e, $f0
    nop
    rrca
    nop
    rst $38
    ccf
    rst $38
    db $fc
    ldh a, [rP1]
    rlca
    nop
    rst $38
    rrca
    rst $38
    ldh a, [$ffe0]
    nop
    inc bc
    nop
    rst $38
    ld bc, $80ff
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
    rst $38
    nop
    rst $38
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
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ldh [$ff0a], a
    ld [bc], a
    ld [$0ae0], sp
    dec b
    ld [$0ae0], sp
    ld a, [bc]
    ld [$0ae1], sp
    rrca
    ld [$0ae4], sp
    inc de
    ld [$0ae8], sp
    ld d, $08
    db $ed
    ld a, [bc]
    jr jr_005_7664

    db $f4
    dec bc
    add hl, de
    ld [$08e4], sp
    ld [bc], a
    rlca

jr_005_7664:
    db $e4
    ld [$0705], sp
    db $e4
    ld [$0709], sp
    push hl
    ld [$070d], sp
    rst $20
    ld [$0711], sp
    db $eb
    ld [$0714], sp
    ldh a, [$ff08]
    dec d
    rlca
    or $09
    dec d
    rlca
    and $07
    ld [bc], a
    ld b, $e6
    rlca
    dec b
    ld b, $e6
    rlca
    ld [$e706], sp
    rlca
    inc c
    ld b, $e9
    rlca
    db $10
    ld b, $ec
    rlca
    inc de
    ld b, $f1
    rlca
    inc de
    ld b, $f7
    ld [$0613], sp
    add sp, $07
    ld [bc], a
    ld b, $e8
    rlca
    inc b
    ld b, $e8
    rlca
    ld [$e906], sp
    rlca
    dec bc
    ld b, $eb
    rlca
    ld c, $06
    xor $07
    ld de, $f206
    rlca
    ld [de], a
    ld b, $f7
    ld [$0613], sp
    ld [$0206], a
    dec b
    ld [$0406], a
    dec b
    ld [$0706], a
    dec b
    db $eb
    ld b, $0a
    dec b
    db $ed
    ld b, $0d
    dec b
    rst $28
    ld b, $10
    dec b
    di
    ld b, $11
    dec b
    ld hl, sp+$07
    ld de, $ec05
    dec b
    ld [bc], a
    dec b
    db $ec
    dec b
    inc b
    dec b
    db $ec
    dec b
    rlca
    dec b
    db $ed
    dec b
    add hl, bc
    dec b
    xor $05
    dec c
    dec b
    pop af
    dec b
    rrca
    dec b
    push af
    dec b
    ld c, $05
    ld sp, hl
    ld b, $0f
    dec b
    xor $04
    ld [bc], a
    inc b
    xor $04
    inc b
    inc b
    xor $04
    ld b, $04
    rst $28
    inc b
    ld [$f004], sp
    inc b
    dec bc
    inc b
    di
    inc b
    dec c
    inc b
    or $04
    dec c
    inc b
    ld a, [$0d05]
    inc b
    ldh a, [rDIV]
    ld [bc], a
    inc b
    ldh a, [rDIV]
    inc bc
    inc b
    ldh a, [rDIV]
    ld b, $04
    pop af
    inc b
    ld [$f204], sp
    inc b
    ld a, [bc]
    inc b
    db $f4
    inc b
    inc c
    inc b
    rst $30
    inc b
    inc c
    inc b
    ld a, [$0d05]
    inc b
    ld a, [c]
    inc bc
    ld [bc], a
    inc bc
    ld a, [c]
    inc bc
    inc bc
    inc bc
    ld a, [c]
    inc bc
    dec b
    inc bc
    di
    inc bc
    rlca
    inc bc
    db $f4
    inc bc
    add hl, bc
    inc bc
    or $03
    ld a, [bc]
    inc bc
    ld hl, sp+$03
    dec bc
    inc bc
    ei
    inc b
    dec bc
    inc bc
    db $f4
    ld [bc], a
    ld [bc], a
    inc bc
    db $f4
    ld [bc], a
    inc bc
    inc bc
    db $f4
    ld [bc], a
    dec b
    inc bc
    push af
    ld [bc], a
    ld b, $03
    or $02
    rlca
    inc bc
    rst $30
    ld [bc], a
    add hl, bc
    inc bc
    ld sp, hl
    ld [bc], a
    add hl, bc
    inc bc
    db $fc
    inc bc
    add hl, bc
    inc bc
    or $01
    ld [bc], a
    ld [bc], a
    or $01
    inc bc
    ld [bc], a
    or $01
    inc b
    ld [bc], a
    rst $30
    ld bc, $0205
    rst $30
    ld bc, $0207
    ld sp, hl
    ld bc, $0208
    ei
    ld [bc], a
    rlca
    ld [bc], a
    db $fd
    ld [bc], a
    rlca
    ld [bc], a
    ld hl, sp+$01
    ld [bc], a
    ld [bc], a
    ld hl, sp+$01
    ld [bc], a
    ld [bc], a
    ld hl, sp+$01
    inc b
    ld [bc], a
    ld sp, hl
    ld bc, $0204
    ld sp, hl
    ld bc, $0206
    ld a, [$0701]
    ld [bc], a
    db $fc
    ld [bc], a
    ld b, $02
    db $fd
    ld [bc], a
    rlca
    ld [bc], a
    ld a, [$0200]
    ld bc, $00fa
    ld [bc], a
    ld bc, $00fa
    inc bc
    ld bc, $00fb
    inc bc
    ld bc, $00fb
    inc b
    ld bc, $00fc
    dec b
    ld bc, $01fd
    inc b
    ld bc, $01fe
    dec b
    ld bc, $fffc
    ld [bc], a
    ld bc, $fffc
    ld [bc], a
    ld bc, $fffc
    inc bc
    ld bc, $00fd
    ld [bc], a
    ld bc, $00fd
    inc bc
    ld bc, $00fd
    inc b
    ld bc, $00fe
    inc bc
    ld bc, $00ff
    inc bc
    ld bc, $fefe
    ld [bc], a
    ld bc, $fefe
    ld [bc], a
    ld bc, $fefe
    ld [bc], a
    ld bc, $ffff

jr_005_780e:
    ld bc, $ff01
    rst $38
    ld [bc], a
    ld bc, $ffff
    ld [bc], a
    ld bc, $ffff
    ld [bc], a
    ld bc, $0000
    ld bc, $8001
    add b
    add b
    add b
    add b
    add b

jr_005_7826:
    add b
    add b
    ldh [$ffe6], a
    ld [bc], a
    jr jr_005_780e

    and $03
    jr @-$1a

jr_005_7831:
    and $04
    jr @-$16

    and $05
    jr jr_005_7826

    and $07
    jr jr_005_7831

    push hl
    rlca
    jr @-$7e

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    db $e4
    ld [$1502], a
    push hl
    ld [$1503], a
    rst $20
    ld [$1504], a
    db $eb
    ld [$1505], a
    ldh a, [$ffea]
    ld b, $15
    or $e9
    ld b, $15
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    and $ec
    ld [bc], a
    inc de
    rst $20
    db $ec
    ld [bc], a
    inc de
    jp hl


    db $ec
    inc b
    inc de
    db $ec
    db $ec
    dec b
    inc de
    pop af
    db $ec
    dec b
    inc de
    rst $30
    db $eb
    dec b
    inc de
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add sp, -$13
    ld [bc], a
    ld [de], a
    jp hl


    db $ed
    ld [bc], a
    ld [de], a
    db $eb
    db $ed
    inc bc
    ld [de], a
    xor $ed
    inc b
    ld [de], a
    ld a, [c]
    db $ed
    dec b
    ld [de], a
    rst $30
    db $ec
    ld b, $12
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld [$02ef], a
    db $10
    db $eb
    rst $28
    ld [bc], a
    db $10
    db $ed
    rst $28
    inc bc
    db $10
    rst $28
    rst $28
    dec b
    db $10
    di
    rst $28
    dec b
    db $10
    ld hl, sp-$12
    dec b
    db $10
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    db $ec
    pop af
    ld [bc], a
    rrca
    db $ed
    pop af
    ld [bc], a
    rrca
    xor $f1
    inc bc
    rrca
    pop af
    pop af
    inc b
    rrca
    push af
    pop af
    inc b
    rrca
    ld sp, hl
    ldh a, [rTIMA]
    rrca
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    xor $f3
    ld [bc], a
    dec c
    rst $28
    di
    ld [bc], a
    dec c
    ldh a, [$fff3]
    inc bc
    dec c
    di
    di
    inc bc
    dec c
    or $f3
    inc b
    dec c
    ld a, [$04f2]
    dec c
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ldh a, [$fff4]
    ld [bc], a
    inc c
    pop af
    db $f4
    ld [bc], a
    inc c
    ld a, [c]
    db $f4
    inc bc
    inc c
    db $f4
    db $f4
    inc bc
    inc c
    rst $30
    db $f4
    inc b
    inc c
    ld a, [$04f3]
    inc c
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, [c]
    or $02
    ld a, [bc]
    di
    or $02
    ld a, [bc]
    db $f4
    or $02
    ld a, [bc]
    or $f6
    inc bc
    ld a, [bc]
    ld hl, sp-$0a
    inc b
    ld a, [bc]
    ei
    push af
    inc b
    ld a, [bc]
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    db $f4
    ld hl, sp+$02
    add hl, bc
    push af
    ld hl, sp+$01
    add hl, bc
    or $f8
    ld [bc], a
    add hl, bc
    rst $30
    ld hl, sp+$03
    add hl, bc
    ld sp, hl
    ld hl, sp+$03
    add hl, bc
    db $fc
    rst $30
    inc bc
    add hl, bc
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    or $fa
    ld [bc], a
    rlca
    rst $30
    ld a, [$0701]
    rst $30
    ld a, [$0702]
    ld sp, hl
    ld a, [$0702]
    ei
    ld sp, hl
    ld [bc], a
    rlca
    db $fd
    ld sp, hl
    inc bc
    rlca
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld hl, sp-$05
    ld [bc], a
    ld b, $f9
    ei
    ld bc, $f906
    ei
    ld [bc], a
    ld b, $fa
    ei
    ld [bc], a
    ld b, $fc
    ld a, [$0602]
    db $fd
    ld a, [$0603]
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, [$02fd]
    inc b
    ei
    db $fd
    ld bc, $fb04
    db $fd
    ld [bc], a
    inc b
    db $fc
    db $fd
    ld [bc], a
    inc b
    db $fd
    db $fc
    ld [bc], a
    inc b
    cp $fc
    ld [bc], a
    inc b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    db $fc
    rst $38
    ld [bc], a
    inc bc
    db $fd
    rst $38
    ld bc, $fd03
    rst $38
    ld bc, $fd03
    rst $38
    ld [bc], a
    inc bc
    cp $fe
    ld [bc], a
    inc bc
    rst $38
    cp $02
    inc bc
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_005_79e7:
    add b
    cp $01
    ld [bc], a
    ld bc, $00ff

jr_005_79ee:
    ld bc, $ff01
    nop
    ld bc, $ff01
    nop
    ld bc, $ff01
    nop
    ld [bc], a
    ld bc, $ff00
    ld bc, $e101

jr_005_7a01:
    and $01
    jr jr_005_79e7

    and $03
    jr jr_005_79ee

    and $05
    jr @-$14

    and $06
    jr jr_005_7a01

    push hl
    rlca
    jr @-$07

    push hl
    rlca
    jr @+$01

    push hl
    ld b, $18
    ld b, $e5
    rlca
    jr @-$19

    ld [$1501], a
    and $ea
    inc bc
    dec d
    add sp, -$16
    dec b
    dec d
    db $ed
    ld [$1505], a
    ld a, [c]
    jp hl


    ld b, $15
    ld hl, sp-$17
    rlca
    dec d
    rst $38
    jp hl


    ld b, $15
    dec b
    jp hl


    ld b, $15
    rst $20
    db $ec
    ld bc, $e813
    db $ec
    inc bc
    inc de
    ld [$04ec], a
    inc de
    xor $ec
    dec b
    inc de
    di
    db $eb
    ld b, $13
    ld sp, hl
    db $eb
    ld b, $13
    rst $38
    db $eb
    dec b
    inc de
    dec b
    db $eb
    dec b
    inc de
    jp hl


    db $ed
    ld bc, $ea12
    db $ed
    ld [bc], a
    ld [de], a
    db $ec
    db $ed
    inc b
    ld [de], a
    ldh a, [$ffed]
    inc b
    ld [de], a
    db $f4
    db $ec
    dec b
    ld [de], a
    ld a, [$05ec]
    ld [de], a
    rst $38
    db $ec
    dec b
    ld [de], a
    inc b
    db $ec
    ld b, $12
    db $eb
    rst $28
    ld bc, $eb10
    rst $28
    inc bc
    db $10
    xor $ef
    inc bc
    db $10
    pop af
    rst $28
    inc b
    db $10
    push af
    xor $05
    db $10
    ld a, [$05ee]
    db $10
    rst $38
    xor $05
    db $10
    inc b
    xor $05
    db $10
    db $ed
    pop af
    ld bc, $ed0f
    pop af
    inc bc
    rrca
    rst $28
    pop af
    inc b
    rrca
    ld a, [c]
    pop af
    inc b
    rrca
    or $f0
    dec b
    rrca
    ei
    ldh a, [rTIMA]
    rrca
    nop
    rst $28
    inc bc
    rrca
    inc bc
    ldh a, [rTIMA]
    rrca
    rst $28
    di
    ld bc, $ef0d
    di
    inc bc
    dec c
    pop af
    di
    inc bc
    dec c
    db $f4
    di
    inc bc
    dec c
    rst $30
    ld a, [c]
    inc b
    dec c
    ei
    ld a, [c]
    dec b
    dec c
    nop
    pop af
    inc bc
    dec c
    inc bc
    ld a, [c]
    inc b
    dec c
    pop af
    db $f4
    ld bc, $f10c
    db $f4
    ld [bc], a
    inc c
    di
    db $f4
    inc bc
    inc c
    push af
    db $f4
    inc b
    inc c
    ld hl, sp-$0d
    inc b
    inc c
    db $fc
    di
    inc b
    inc c
    nop
    ld a, [c]
    inc bc
    inc c
    inc bc
    di
    inc b
    inc c
    di
    or $01
    ld a, [bc]
    di
    or $02
    ld a, [bc]
    db $f4
    or $03
    ld a, [bc]
    rst $30
    or $03
    ld a, [bc]
    ld sp, hl
    push af
    inc b
    ld a, [bc]
    db $fc
    push af
    inc b
    ld a, [bc]
    nop
    db $f4
    inc bc
    ld a, [bc]
    ld [bc], a
    push af
    inc b
    ld a, [bc]
    push af
    ld hl, sp+$01
    add hl, bc
    push af
    ld hl, sp+$02
    add hl, bc
    or $f8
    inc bc
    add hl, bc
    ld hl, sp-$08
    inc bc
    add hl, bc
    ld a, [$03f7]
    add hl, bc
    db $fd
    rst $30
    inc bc
    add hl, bc
    nop
    or $02
    add hl, bc
    ld [bc], a
    rst $30
    inc bc
    add hl, bc
    rst $30
    ld a, [$0701]
    rst $30
    ld a, [$0702]
    ld hl, sp-$06
    ld [bc], a
    rlca
    ld sp, hl
    ld a, [$0703]
    ei
    ld sp, hl
    inc bc
    rlca
    cp $f9
    inc bc
    rlca
    nop
    ld hl, sp+$02
    rlca
    ld bc, $03f9
    rlca
    ld sp, hl
    ei
    ld bc, $f906
    ei
    ld bc, $fa06
    ei
    ld [bc], a
    ld b, $fb
    ei
    ld [bc], a
    ld b, $fc
    ld a, [$0603]
    cp $fa
    inc bc
    ld b, $00
    ld sp, hl
    ld [bc], a
    ld b, $01
    ld a, [$0603]
    ei
    db $fd
    ld bc, $fb04
    db $fd
    ld bc, $fb04
    db $fd
    ld [bc], a
    inc b
    db $fc
    db $fd
    ld [bc], a
    inc b
    db $fd
    db $fc
    ld [bc], a
    inc b
    rst $38
    db $fc
    ld [bc], a
    inc b
    nop
    ei
    ld bc, HeaderLogo
    db $fc
    ld [bc], a
    inc b
    db $fd
    rst $38
    ld bc, $fd03
    rst $38
    ld bc, $fd03
    rst $38
    ld [bc], a
    inc bc
    cp $fe
    ld bc, $fe03
    cp $02
    inc bc
    rst $38
    cp $02
    inc bc
    nop
    db $fd
    ld bc, $0003
    db $fd
    ld [bc], a
    inc bc
    rst $38
    nop
    ld bc, $ff01
    nop
    ld bc, $ff01
    nop
    ld bc, $ff01
    nop
    ld bc, $ff01
    nop
    ld [bc], a
    ld bc, $ff00
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
