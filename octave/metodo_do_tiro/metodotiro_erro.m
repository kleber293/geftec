## Subrotina para o cálculo da função erro
function erro = metodotiro_erro(W,u0,y0,yf,Wf)
[y,Z] = ode45(@(y,Z) metodotiro(y,Z), [y0,yf], [u0,W]);
erro = ((Z(end,2)) - Wf); # Análise do erro em função da derivada W

# Z(end, 2) = derivada du/dy (W) calculada;
# Wf = du/dy no ponto final do intervalo. Valor em que queremos
# alcançar no método do tiro.
# Neste problema, faz-se a análise do erro em função da derivada,
# Obedecendo a condição do contorno no ponto final. Por isso, toma-se
# Z(end, 2), valor correspondente á derivada no último ponto.
