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
