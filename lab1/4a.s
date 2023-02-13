.data
	A: .word 5,10,15,20,25
.text
	MOV R2,#15
	MOV R3,#5
	LDR R0,=A
	MOV R4,#0
LOOP:
	ADD r4, r4,#1
	LDR R1,[R0],#4
	CMP R1,R2
	BEQ Label1
	SUBS R3,R3,#1
	BNE LOOP
	BEQ NF
Label1:
	MOV R7,R4
	SWI 0x011
NF:
	MOV R6,#-1
	SWI 0x011
.end
