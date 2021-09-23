ATTR    EQU 0
SPEED   EQU 1

        ORG #6000
        LD HL,#5800
        LD DE,#5B00
        LD BC,#200C
        IFN ATTR
        LD A,ATTR
        ELSE 
        XOR A
        ENDIF 
ATRDEL1
        EI 
        DUP SPEED
        HALT 
        EDUP 
        PUSH BC
        PUSH BC
ATRDEL2 LD (HL),A
        INC HL
        DJNZ ATRDEL2
        POP BC
ATRDEL3 DEC DE
        LD (DE),A
        DJNZ ATRDEL3
        POP BC
        DEC C
        JR NZ,ATRDEL1
        RET 
