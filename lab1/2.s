; this code check an element from an arry from some memory address if there then at end alll the r0,r1,r2  set to 1

.TEXT
LDR R0, =A
LDR R1, =B
LDR R4, [R1]
MOV R3, #5
LOOP:
LDR R2, [R0]
ADD R0, R0, #4
SUBS R3, R3, #1
SUBS R5, R2, R4
CMP R2, R4
BEQ END
BNE LOOP
SWI 0X011

END:
MOV R3,#1
MOV R0,#1
MOV R2,#1
SWI 0X011



.DATA
A: .WORD 1, 2, 3, 4, 5

B: .WORD 3

