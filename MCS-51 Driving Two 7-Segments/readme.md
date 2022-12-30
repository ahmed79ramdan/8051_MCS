## Objecyives: 

- Connecting a microcontroller from the MCS-51 family such as "AT89C51" with two seven-segment displays (with internal BCD to 7-segment decoder) through one of their ports.
- Editing and loading a program code into the microcontroller to display counting-up decimal values from "00" to "99" with approximate rates 1count/sec.

## Code:
```
; Processor: 80C51
; Compiler:  ASEM-51 (Proteus)
;====================================================================

$NOMOD51
$INCLUDE (8051.MCU)

;====================================================================
; DEFINITIONS
;====================================================================

;====================================================================
; VARIABLES
;====================================================================

;====================================================================
; RESET and INTERRUPT VECTORS
;====================================================================
; Reset Vector
ORG  0000h
JMP MAIN
ORG 030h
MAIN: 
MOV P2,#00h
CLR A

LOOP: 
          DA A
          MOV P2,A 
          ADD a,#01h
          CALLl Delay
JMP LOOP

Delay:
          MOV R2,#0ffh
          wait2: MOV R1,#0ffh
          wait1: 
          NOP 
          NOP 
          NOP
          DJNZ R1, wait1
          DJNZ R2, wait2
RET
END



```

## Diagram:
![Diagram](https://github.com/ahmed79ramdan/8051_MCS/blob/master/MCS-51%20Driving%20Two%207-Segments/7%20seg.png)
