function y1 = modificado(x0, y0, h)
    f1 = funcao(x0, y0);
    f2 = funcao(x0+h, y0 + h*f1);
    y1 = y0 + h/2*( f1 + f2 ); # metodo de euler modificado
end