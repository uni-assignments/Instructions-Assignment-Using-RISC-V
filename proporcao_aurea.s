# n = x10
# i = x5
# res = x30 

addi x5, x0, 0  #inicializar i
addi x29, x0, 1 # registrador com valor 1
addi x30, x0, 1 #inicializar res
addi x10, x0, 4

LOOP:
    bge x5, x10, EXIT
    addi x30, x30, 1
    div x30, x29, x30
    addi x5, x5, 1
    beq x0,x0 LOOP

EXIT:

addi x30, x30, 1 