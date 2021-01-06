addi x12, x0, 3
addi x13, x0, -3
jal x1, multiplica
addi x12, x0, -3 #a
mv x13, x10 #b
jal x1, multiplica
jal x1, END

multiplica:
    addi x5, x0, 0 # int  resul = 0;

    beq x12, x0, RETURN # if( a == 0| |b == 0)
    beq x13, x0, RETURN 

    bge x12, x0, LOOP2 # if(a < 0)
    
    LOOP1:
        beq x12, x0, RETURN
        sub x5, x5, x13 # resul = resul - b 
        addi x12, x12, 1 # a++
        beq x0, x0, LOOP1 #loop
    
    
    LOOP2:
        beq x12, x0, RETURN
        add x5, x5, x13 # resul = resul + b 
        addi x12, x12, -1 # a--
        beq x0, x0, LOOP2 #loop
    
    RETURN:    
        mv x10, x5
        jalr x0, 0(x1)
    
END:
