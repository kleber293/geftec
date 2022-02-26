function y1 = euler(x0, y0, h)
    f = funcao(x0, y0);
    y1 = funcao(x0+h, y0 + h*f);
end
