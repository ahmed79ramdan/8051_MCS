# Microcontroller 8051 
AT89C51 Based Projects Using 8051 Assembly 

## 1- MCS-51 Driving Parallel Input-Output Data
    ### Devolped Code
    
    ```
$NOMOD51
$INCLUDE (8051.MCU)

ORG 0000h
MOV P1, #0ffh
loop:

      JMP loop
END

```
    ### Schematic Diagram
