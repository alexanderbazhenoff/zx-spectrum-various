00
        DISPLAY "TEXT>SCROLLER converter for lamergy #KIDS"
        DISPLAY "save [filename],#C000,IX
        LD IX,0
        LD HL,TEXT_SRC
        LD DE,TEXT_DEST
        LD BC,TXT_END-TEXT_SRC
LOOP    LD A,(HL)
        CP #0D
        JR Z,CONV
        CP #0A
        JR NZ,NO_CONV
CONV    INC HL
        DEC BC
        LD A,B
        OR C
        JR NZ,LOOP
        RET 
NO_CONV LD (DE),A
        INC DE
        INC IX
        JR CONV

TEXT_SRC
        INCBIN "lameKsc1.W"
TXT_END
