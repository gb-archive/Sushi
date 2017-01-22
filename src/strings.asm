INCLUDE "macros.asm"

STRING: MACRO
.start\@:
	DB \1
.end\@:

	IF ((.end\@ - .start\@) % LineLength) > 0

	REPT (18 - ((.end\@ - .start\@) % LineLength))
	DB 32 ; Pad with spaces
	ENDR

	ENDC
	ENDM



stringWon:
	STRING "You won! Time to  move on to the    next challenge!"
stringWonEnd:
stringLost:
	STRING "You and your bloodline lost. Better luck next time... Oh wait."
stringLostEnd:
stringVictory:
	STRING "You won! Everything is awesome if you are an overweight fish who ate a whole ocean worth of other fishes"
stringVictoryEnd:
