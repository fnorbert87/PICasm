delay1s	movlw 	D'6'
	movwf 	CounterC
	movlw 	D'24'
	movwf 	CounterB
	movlw 	D'167'
	movwf 	CounterA
loop 	decfsz 	CounterA,1
	goto 	loop
	decfsz 	CounterB,1
	goto 	loop
	decfsz 	CounterC,1
	goto 	loop
	return