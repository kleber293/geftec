import matplotlib.pyplot as mat
import numpy as n
import sympy as s

x1 = s.Symbol('x1')
f = s.exp(-x1)*(x1**4-10*x1**2)+1 

f1 = s.lambdify(x1, f, 'numpy')
f2 = s.lambdify(x1, f.diff(x1), 'numpy')

p = 1
q = 100 

for i in range(q):
    p = p-f1(p)/f2(p)

mat.axhline()

x = n.arange(0, 10, 0.1)
    
mat.plot(x, f1(x), color='g', label='Função f(x, y)')
mat.plot(p, 0, 'o', color='m', label=f'Raiz da função f(x, y) em ~ {round(p, 2)}x')

mat.legend()
mat.show()

if VALOR_DA_RAIZ:
    print(f"O valor de uma das raizes é aproximadamente {p}x")

