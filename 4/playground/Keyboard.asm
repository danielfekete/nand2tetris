(LOOP)
    @KBD
    D=M
    @KEY_PRESS
    D;JNE
    @LOOP
    0;JMP
(KEY_PRESS)
    D=M
    @R2
    M=D
    @LOOP
    0;JMP
(END)
    @END
    0;JMP
