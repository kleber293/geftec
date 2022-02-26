function y1 = Euler(x0, y0, h)
    f = funcao(x0, y0);
    y1 = funcao(x0+h, y0 + h*f); # método de Euler
end
