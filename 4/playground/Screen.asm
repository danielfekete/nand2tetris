    @i
    M=0
    @8192
    D=A
    @n
    M=D

(LOOP)
    @i
    D=M
    @n
    D=D-M
    @END
    D;JGE
    
    @i
    D=M
    @SCREEN
    A=A+D
    M=-1

    @i
    M=M+1
    @LOOP
    0;JMP

(END)
    0;JMP