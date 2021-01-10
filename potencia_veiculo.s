#potencia = x10, torque = x11, rotacao = x12, resultado = x28

addi x28, x0, 3 # carrega valor pra 3
addi x29, x0, 225 # carrega valor pra 2250

# addi x10, x0, 2 #valores para teste
# addi x11, x0, 2
# addi x12, x0, 0

beq x10, x0, CALCULA_POTENCIA
beq x11, x0, CALCULA_TORQUE
beq x12, x0, CALCULA_ROTACAO

CALCULA_POTENCIA:

    mul x10, x11, x28  # res = to * 3
    mul x10, x10, x12   # res = to * 3 * n
    div x10 x10, x29   # res = to * 3 * n / 2250
    j EXIT


CALCULA_TORQUE:

    mul x11, x10, x29   # res = potencia * 2250
    div x11, x11, x28   # res = potencia * 2250 / pi
    div x11, x11, x12   # res = ( potencia * 2250 ) / ( pi * n )   
    j EXIT

CALCULA_ROTACAO:

    mul x12, x10, x29  #res = potencia * 2250
    div x12, x12, x28  # res = ( potencia * 2250 ) / pi
    div x12, x12, x11  # res = ( potencia * 2250 ) / ( pi * torque )
    j EXIT


EXIT: