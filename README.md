# 8051_MCS
> AT89C51 Based Projects Using 8051 Assembly


## [1- Dealing With MCS-51 GPIO] (https://github.com/ahmed79ramdan/8051_MCS/tree/master/GPIO)
### Objectives : 
Connecting any 4-ports microcontroller from the MCS-51 family such as "AT89C51" with one DIP switch (to input different data bytes) and two LED-bar (to display the input data bytes).
### Code :
```
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

```
### Diagram : 
