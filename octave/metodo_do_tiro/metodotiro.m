## Subrotina para a obtenção de Z, onde Z(1) = u e Z(2) = du/dy.
# Esta subrotina realizada no PVC em dois PVIs

function dZdy = metodotiro(y,Z)
# Constantes da equação
p = 995.7; g = 10; mi = 0.798e3; teta = pi/4;

# definindo Z
u = Z(1); # Função que queremos obter
W = Z(2); # W = du/dy

# Divisão do PVC em dois PVIs
dudy = W;
dWdy = -(p*g*cos(teta))/mi;

dZdy = [dudy; # du/dy = devirada primeira
        dWdy]; # dW/dy = derivada segunda
