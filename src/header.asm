; rst vectors (called through the rst instruction)

SECTION "rst0", ROM0[$0000]
	jp Boot

    db $00, $FF, $FE, $00, $00

SECTION "rst8", ROM0[$0008]
    jp Boot

    db $00, $F6, $BF, $00, $00

SECTION "rst10", ROM0[$0010]
    jp Boot

    db $00, $9B, $74, $00, $00

SECTION "rst18", ROM0[$0018]
    jp Boot

    db $00, $99, $B3, $00, $00

SECTION "rst20", ROM0[$0020]
    jp Boot

    db $FF, $FF, $FF, $FF, $FF

SECTION "rst28", ROM0[$0028]
    jp Boot

    db $FF, $FF, $FF, $FF, $FF

SECTION "rst30", ROM0[$0030]
    jp Boot

    db $FF, $FF, $FF, $FF, $FF

SECTION "rst38", ROM0[$0038]
    jp Boot

    db $FF, $FF, $FF, $FF, $FF

SECTION "vblank", ROM0[$0040]
    ei
	jp UpdateGameplayStuff

SECTION "lcd", ROM0[$0048]
    ei
    push af
    ld a, $91
    ldh [rLCDC], a
    pop af
    reti

SECTION "timer", ROM0[$0050]
    ei
    jp Timer

SECTION "serial", ROM0[$0058]
    di
	jp Serial

SECTION "joypad", ROM0[$0060]
    ei
	jp Joypad

REPT 28
    db $FF
ENDR
