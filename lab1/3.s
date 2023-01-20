    .data
        number: .word 4
        result: .word 1
    .text
        LDR R0, =number
        LDR R1, [R0]
        MOV R2, #1
        LDR R3, =result
        LOOP:
            CMP R1, #0
            BEQ END
            MUL R5, R2, R1
            MOV R2,R5
            SUBS R1, R1, #1
            BNE LOOP
        END:
            STR R2, [R3]
            SWI 0
