# Microcontroller 8051 
AT89C51 Based Projects Using 8051 Assembly 

## 1- MCS-51 Driving A DC-Motor
### Ojectives:
- Connecting a microcontroller from the MCS-51 family such as "AT89C51" with 20-voltage DC-motor through chip driver L293D.

- Editing and loading a program code into the microcontroller to control the direction of rotation (clockwise and anticlockwise) by pressing the switches "RIGHT" or "LEFT" respectively.

### Devolped Code
    
```
$NOMOD51
$INCLUDE (8051.MCU)

ORG 0000h
MOV P1, #0ffh
loop:

Right: MOV A,P1
       CJNE A,#01H,Left
       SETB P2.0
       CLR P2.1
       JMP loop
       
Left:
       SETB P2.1
       CLR P2.0

      JMP loop
END
```
### Schematic Diagram
