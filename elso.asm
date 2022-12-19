	list p=16F628 
 
 	include	"p16f628.inc"
 	__config  _INTRC_OSC_NOCLKOUT & _LVP_OFF & _WDT_OFF & _PWRTE_ON & _BODEN_ON
 
 	ORG	0x0000 
 
 	CLRF	PORTA		; clear porta 
 	CLRF	PORTB		; clear portb 
 	MOVLW	0x07		; value to set CMCON for porta i/o 
 	MOVWF	CMCON		; set cmcon 
 	BCF	STATUS, RP1	; select bank1 
 	BSF	STATUS, RP0	; 
 	MOVLW	0x00		; set trisa for all output on porta 
 	MOVWF	TRISA 
 	MOVLW	0x00 		; set trisb for all output on portb 
 	MOVWF	TRISB 
 	BCF	STATUS, RP1 	; go back to bank0 
 	BCF	STATUS, RP0 

LABEL	MOVLW	0xFF		; all high! 
 	MOVWF	PORTA		; put it on the port 
 	MOVLW	0xFF		; same thing with portb 
 	MOVWF	PORTB 
 	GOTO	LABEL 
 	END 