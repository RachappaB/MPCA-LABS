.data
 num1: .word 6 
num2: .word 32 
result: .word 0 
.text 
LDR R1, =num1 
LDR R2, =num2 
LDR R1, [R1] 
LDR R2, [R2] 
loop: 
CMP R1, R2;
SUBGT R1, R1, R2; 
SUBLT R2, R2, R1; 
BNE loop 
BEQ EX 
EX: SWI 0x011