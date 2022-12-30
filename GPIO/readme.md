### Objectives : 
   - Connecting any 4-ports microcontroller from the MCS-51 family such as "AT89C51" with one DIP switch (to input different data bytes) and two LED-bar (to display the input data bytes).
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

![Diagram](https://github.com/ahmed79ramdan/8051_MCS/blob/master/GPIO/Diagram1.png)
