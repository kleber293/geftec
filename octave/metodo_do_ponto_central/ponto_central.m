function y1 = ponto_central(x0, y0, h)
    f = funcao(x0, y0);
    y1 = y0 + h*funcao(x0+h/2, y0 + h/2*f);
end
