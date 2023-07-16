.org $080D
.segment "STARTUP"
.segment "INIT"
.segment "ONCE"
.segment "CODE"

SCREEN = $ff5f
BSOUT = $ffd2

start:
	lda #03		; 40x30 text mode
	jsr SCREEN
	ldx #0		; initialize print index

print:
 	lda text_hello_world, x
	beq end
	jsr BSOUT
	inx
	jmp print

text_hello_world:
	.asciiz "hello, world!"

end:
	rts
