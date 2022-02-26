import matplotlib.pyplot as mat
import numpy as n

def g(x, y):
    FUNCTION = x+y 
    return FUNCTION

def euler(x0, y0, h): 
    t1 = g(x0, y0)
    y1 = y0 + h*t1
    return y1

x = 0 
y = 1

x0, y0 = [x], [y]

QUANTIDADE = 530
PASSO = 0.11 

for i in range(QUANTIDADE):
    x0.append(x0[i]+PASSO)
    y0.append(euler(x0[i], y0[i], PASSO))

mat.ylim(0, 40000)
mat.xlim(0, 10)

t = n.arange(0, 10, 0.1)

mat.plot(t, -t-1+2*n.exp(t), color='g', label='Curva solução')

mat.plot(x0, y0, color='k', label='Euler')

mat.legend()
mat.show()

