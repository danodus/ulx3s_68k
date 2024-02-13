	ORG	$0000

	DC.L	$20000		; Set stack to top of RAM
	DC.L    START		; Set PC to start

START
; Clear the screen
	LEA	$10000,A0	; VRAM address of top half
	MOVE.W  #$1FFF,D0	; Clear too half of  screen to cyan
CLEAR	MOVE.W  #$5555, (A0)+	; Write to VRAM
        DBRA    D0, CLEAR	; Loop until done
        LEA     $14000,A0       ; VRAM address of bottonm half
	MOVE.W  #$1FFF,D0	; Clear bottom half of screen to yellow
CLEAR1	MOVE.W  #$6666, (A0)+	; Write to VRAM
        DBRA    D0, CLEAR1	; Loop until done
	BRA	*
