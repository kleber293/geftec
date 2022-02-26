import matplotlib.pyplot as plt
import numpy as np

def f(x):
    funcao =  x**3/(np.exp(x)-1)
    return funcao

b, a, n = 1, 0.000000000000001, 100

x, y = [a], [f(a)]

h = (b-a)/n

for i in range(n):
    x.append(x[i]+h)
    y.append(f(x[i+1]))

def trapezio(h, y):
    soma = 0
    for i in range(len(y)-2):
        soma += y[i+1]
    
    integral = h/2*(y[0]+2*soma+y[len(y)-1])
    return integral

trapezio(h, y)

t = np.linspace(a, b)

plt.plot(t, f(t))
plt.plot(x, y, 'ro')
