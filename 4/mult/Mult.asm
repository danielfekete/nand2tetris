// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.


    @i
    M=0     // i = 0

    @R2
    M=0     // mult = 0

(LOOP)
    @i
    D=M     // D = i
    @R0
    D=D-M   // D = i - R0
    @END
    D;JGE   // if i >= R0 GOTO END

    @R2
    D=M
    @R1
    D=D+M
    @R2
    M=D     // mult = mult + R1

    @i
    M=M+1   // i = i + 1

    @LOOP
    0;JMP

(END)
    @END
    0;JMP




