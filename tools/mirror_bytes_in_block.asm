        DISPLAY "MIRROR BYTES IN BLOCK ROUTINES"

        ORG #5B00

ADDR    EQU #5C00       ;ADDR OF BLOCK
LEN     EQU #A400       ;LENGHT OF BLOCK

        LD HL,ADDR
        LD BC,LEN

MIR_L   LD A,(HL)
        DUP 8
        SRL A
        RL E
        EDUP 
        LD (HL),E
        INC HL
        DEC BC
        LD A,B
        OR C
        JR NZ,MIR_L
        RET 