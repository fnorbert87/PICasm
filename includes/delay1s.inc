delay1s	movlw	0x47
	movwf	d1
	movlw	0x71
	movwf	d2
	movlw	0x12
	movwf	d3
Delay_0	decfsz	d1, f
	goto	$+2
	decfsz	d2, f
	goto	$+2
	decfsz	d3, f
	goto	Delay_0
	goto	$+1
	goto	$+1
	goto	$+1
	return