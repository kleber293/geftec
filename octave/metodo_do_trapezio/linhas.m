function [x1, y1] = linhas(x, y, c);
	x1=[];, y1=[y(1)];
	
	for i = 1:1:length(x)-1;
		x1 = [x1, x(i), x(i), x(i)];
		y1 = [y1, 0, y(i), y(i+1)];
	end
	x1 = [x1, x(end), x(end)];
	y1 = [y1, 0];
end
