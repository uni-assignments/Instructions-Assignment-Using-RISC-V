multiplica:
    beq x10, x0, END # if( a == 0| |b == 0)
    beq x11, x0, END 

    addi x5, x0, 0 # int  resul = 0;
    blt x5, x0, L1 # if(a < 0)
    
    LOOP1:
        beq x10, x0, L1
        sub x5, x5, x11 # resul = resul - b 
        addi x10, x10, 1 # a++
        beq x0, 0, LOOP1
    
    L1:
        LOOP2:
            beq x10, x0, L2
            add x5, x5, x11 # resul = resul + b 
            addi x10, x10, -1 # a--
            beq x0, 0, LOOP2
    
    L2:
        jalr x0, 0(x1)



END:
    jalr x0, 0(x1)
