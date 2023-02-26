.data:
A: .word 0, 0, 0, 0, 0, 0
.text:
fibonacci:
MOV r0, #0
MOV r6, #1
MOV r2, #0
MOV r3, #0
MOV r4, #6
LDR r5 ,= A;
loop:
CMP r4, r3
BEQ end
MOV r2, r6
ADD r6, r6, r0
MOV r0, r2
STMIA r5!, {r6}
ADD r3, r3, #1
B loop
end:
MOV r0, r6