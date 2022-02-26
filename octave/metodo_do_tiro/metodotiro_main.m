## PROBLEMA TRABALHO:
# Escoamento de um fluido sobre um plano inclinado

clear all; close all; clc;

## Condições iniciais
# ---
u0 = 0; # Valocidade do fluido
W0 = 0.1; # dudy em y = 0 (Estimativa inicial do metodo de tiro)
Wf = 0; # dudy em y = 0.01

## Intervalo da variável independente
# ---
y0 = 0;
yf = 0.01;

## Resolução pelo metodo de tiro
# ---
F = @(W) metodotiro_erro(W,u0,y0,yf,Wf); # Cálculo da função erro em função da derivada W
W = fsolve(F,W0); # Zerando a funcao erro com a estimativa inicial W0
[y,Z] = ode45(@(y,Z) metodotiro(y,Z), [y0,yf], [u0,W]); # Resolução dos dois PVIs

## Resultado em forma gráfica
# ---
plot (y,Z(:, 1)); grid on;
xlabel('Altura, h (m)'); ylabel('Velocidade, u (m/s)');
title('Gráfico da velocidade, u (m/s) vs Altura, h (m)');
