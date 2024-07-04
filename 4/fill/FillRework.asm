    @8192
    D=A

    @n
    M=D
(LOOP1)
    @KBD
    D=M

    @i
    M=0

    @FILL
    D;JNE

    @END
    0;JMP
(CLEAR)

    @i
    D=M
    @n
    D=D-M
    @LOOP1
    D;JGE

    @SCREEN
    D=A
    @i
    A=M+D
    M=0

    @i
    M=M+1
    @CLEAR
    0;JMP



(FILL)
    @i
    D=M
    @n
    D=D-M
    @LOOP1
    D;JGE

    @SCREEN
    D=A
    @i
    A=M+D
    M=-1

    @i
    M=M+1
    @FILL
    0;JMP

(END)
    0;JMP
