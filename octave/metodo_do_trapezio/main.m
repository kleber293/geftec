clear all, clc all

b = 3;, a = 0.000000000000001;, n = 10;

x = [a];, y = [funcao(a)];

h = (b-a)/n;

for i = 1:1:n;
    x(i+1) = x(i)+h;
    y(i+1) = funcao(x(i+1));
end

trapezio(h, y);
[x1, y1] = linhas(x, y);

t = a:.001:b;

	plot(
		t, funcao(t), 'g', 'linewidth', 2,
		x, y, 'ro',
		x1, y1, 'k'
	);
	
legend(
    'Curva Original'
);

legend(
	'boxoff'
);
