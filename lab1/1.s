; this code copy an array from one address from other memory address 
.TEXT
LDR R0, =A
LDR R1, =B
MOV R3, #5
LDR R5,=B;
LOOP:
LDR R2, [R0]
STR R2, [R1]
ADD R0, R0, #4
ADD R1, R1, #4
SUBS R3, R3, #1
BNE LOOP



MOV R3, #5
LOOP1:
LDR R2, [R5]
ADD R5, R5, #4
SUBS R3, R3, #1
BNE LOOP1
SWI 0X011

.DATA
A: .WORD 1, 2, 3, 4, 5
B: .WORD 0
