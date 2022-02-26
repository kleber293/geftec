clear all, clc all

x0 = [0];, y0 = [1];, y1 = [1];, y2 = [1];, y3 = [1];, y4 = [1];, y5 = [1]; 

quantidade = 30;, passo = 0.5;

for i = 1:1:quantidade;
	x0(i+1) = x0(i) + passo;

	y0(i+1) = Euler(x0(i), y0(i), passo);
	y1(i+1) = Modificado(x0(i), y1(i), passo);
	y2(i+1) = PontoCentral(x0(i), y2(i), passo);
	y3(i+1) = MetodoDeRungeKuttaSegundaOrdem(x0(i), y3(i), passo);
	y4(i+1) = MetodoDeRungeKuttaTerceiraOrdem(x0(i), y4(i), passo);
	y5(i+1) = MetodoDeRungeKuttaQuartaOrdem(x0(i), y5(i), passo);
 
end
# plotando o gráfic o solução

t=0:.1:10;

# Line Styler:|'-'|'--'|'-.'|'o'|
# marker: | '*' | '+' | '.' | '<' | '>' | '^' | 'd' | 'diamond' | 'h'| 'hexagram' |
#         | {'none'} | 'o' | 'p' | 'pentagram' | 's' | 'square' | 'v' | 'x'|
# more in < https://octave.org/doc/v4.2.1/Line-Properties.html#Line-Properties >

plot(
	t,-t-1+2*exp(t), 'linewidth',2,
	x0,y0, 'linewidth',2, ':', 
	x0,y1, 'linewidth',2, ':', 
	x0,y2, 'linewidth',2, ':', 
	x0,y3, 'linewidth',2, ':', 
	x0,y4, 'linewidth',2, ':', 
	x0,y5, 'linewidth',2, ':' 
);
	
legend(
	'Curva solução',
	'Euler',
	'Euler aproximado',
	'Ponto central',
	'Método de Runge Kutta de 2ª ordem',
	'Método de Runge Kutta de 3ª ordem',
	'Método de Runge Kutta de 4ª ordem',
    'location', 'northwest'
);

legend('boxoff'); 

ylim ([0, 40000]);
xlim ([0, 10]);

# h = input('Press ENTER for exit: ');

