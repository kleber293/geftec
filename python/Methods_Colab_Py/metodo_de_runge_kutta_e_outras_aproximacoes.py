import matplotlib.pyplot as mat
import numpy as n


def g(x, y):
    FUNCTION = x+y   
    return FUNCTION

APROXIMACOES = True 

def euler(x0, y0, h): 
    t1 = g(x0, y0)
    y1 = y0 + h*t1
    return y1
    
def euler_modificado(x0, y0, h):
    t1 = g(x0, y0)
    t2 = g(x0+h, y0 + h*g(x0, y0))
    y1 = y0 + h/2*( t1 + t2 )
    return y1
    
def metodo_do_ponto_central(x0, y0, h):
    t1 = g(x0, y0)
    y1 = y0 + h*g(x0+h/2, y0 + h/2*t1) 
    return y1

def metodo_de_runge_kutta_2_ordem(x0, y0, h):
    c1, c2 = 1/2, 1/2
    a2 = 1 
    b21 = 1 

    k1 = g(x0, y0)
    k2 = g(x0 + a2*h, y0 + b21*k1*h)

    y1 = y0 + h*( c1*k1 + c2*k2 )
    return y1

def metodo_de_runge_kutta_3_ordem(x0, y0, h):
    c1 = 1/6 
    c2 = 4/6 
    c3 = 1/6 

    a2 = 1/2 
    a3 = 1 

    b21 = 1/2 

    b31 = -1 
    b32 = 2 

    k1 = g(x0, y0)
    k2 = g(x0 + a2*h, y0 + b21*k1*h)
    k3 = g(x0 + a3*h, y0 + b31*k1*h + b32*k2*h)

    y1 = y0 + h*( c1*k1 + c2*k2 + c3*k3 )
    return y1

def metodo_de_runge_kutta_4_ordem(x0, y0, h):
    c1 = 1/6 
    c2 = 2/6 
    c3 = 2/6 
    c4 = 1/6     

    a2 = 1/2 
    a3 = 1/2 
    a4 = 1 

    b21 = 1/2 

    b31 = 0 
    b32 = 1/2 

    b41 = 0 
    b42 = 0 
    b43 = 1 

    k1 = g(x0, y0)
    k2 = g(x0 + a2*h, y0 + b21*k1*h)
    k3 = g(x0 + a3*h, y0 + b31*k1*h + b32*k2*h)
    k4 = g(x0 + a4*h, y0 + b41*k1*h + b42*k2*h + b43*k3*h)

    y1 = y0 + h*( c1*k1 + c2*k2 + c3*k3 + c4*k4 )
    return y1

x = 0 
y = 1 

x0 = [x]

if APROXIMACOES:
    y0, y1, y2 = [y], [y], [y]

y3, y4, y5 = [y], [y], [y]

QUANTIDADE = 30 
PASSO = 0.51 

for i in range(QUANTIDADE):
    x0.append(x0[i]+PASSO)

if APROXIMACOES:
    for i in range(QUANTIDADE):
        y0.append(euler(x0[i], y0[i], PASSO))
        y1.append(euler_modificado(x0[i], y1[i], PASSO))
        y2.append(metodo_do_ponto_central(x0[i], y2[i], PASSO))

for i in range(QUANTIDADE):
    y3.append(metodo_de_runge_kutta_2_ordem(x0[i], y3[i], PASSO))
    y4.append(metodo_de_runge_kutta_3_ordem(x0[i], y4[i], PASSO))
    y5.append(metodo_de_runge_kutta_4_ordem(x0[i], y5[i], PASSO))

mat.ylim(0, 40000)
mat.xlim(0, 10)

t = n.arange(0, 10, 0.1)
    
mat.plot(t, -t-1+2*n.exp(t), color='g', label='Curva solução')

mat.plot(x0, y0, color='k', label='Euler') 
mat.plot(x0, y1, color='m', label='Euler modificado')
mat.plot(x0, y2, color='b', label='Ponto central')

mat.plot(x0, y3, color='darkorange', label='Runge kutta de 2ª ordem')
mat.plot(x0, y4, color='red', label='Runge kutta de 3ª ordem')
mat.plot(x0, y5, color='maroon', label='Runge kutta de 4ª ordem')

mat.legend()
mat.show()

