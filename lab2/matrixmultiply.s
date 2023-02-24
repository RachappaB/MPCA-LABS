
.TEXT

LDR R1, =A
LDR R2, =B
LDR R3, =c
MOV R4, #4

LOOP:
CMP R4,#0
JE END
MOV R5 ,#0 ; R5 is temp value for storing the data
ADD R5,[R1],[R2]
ADD R1,R1,#4
ADD R2,R2,#4
ADD R3,R3,#4
SUB R4,R4,#1
J LOOP:



END:
SWI 0X011


.DATA
A: .WORD 1, 2, 3, 4
B: .WORD 2, 3, 4, 5
B: .WORD 0,0,0,0
