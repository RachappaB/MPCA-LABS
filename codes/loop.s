MOV R0, #10
ANDS R1, R0, #1
BEQ EVEN
MOV R2, #0XFF
B END
EVEN: MOV R2, #0X00
END: SWI 0X011
