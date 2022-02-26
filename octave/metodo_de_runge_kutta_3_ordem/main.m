clear all, clc all

x0 = [0];, y0 = [1];

quantidade = 30;, passo = .5;

for i = 1:1:quantidade
    x0(i+1) = x0(i) + passo;
    y0(i+1) = metodo_de_runge_kutta_3_ordem(x0(i), y0(i), passo);
end

# plotando o gráfic o solução

t=0:.1:10;

plot(
    t, -t-1+2*exp(t), 'linewidth', 2,
    x0, y0, 'linewidth', 2
);

legend(
    'Curva solução',
    'Método de Runge Kutta de 3ª ordem',

    'location', 'northwest'
);

legend('boxoff');

ylim ([0, 40000]);
xlim ([0, 10]);

# h = input('Press ENTER for exit: ');
