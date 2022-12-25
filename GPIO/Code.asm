$NOMOD51
$INCLUDE (8051.MCU)

ORG 0000h
MOV P1, #0ffh
loop:
      MOV A, P1
      MOV P0, A
      CPL A
      MOV P3,A
      JMP loop
END
