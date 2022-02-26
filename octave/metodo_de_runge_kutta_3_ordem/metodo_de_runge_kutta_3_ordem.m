function y1 = metodo_de_runge_kutta_3_ordem(x0, y0, h)
    c1 = 1/6;
    c2 = 4/6;
    c3 = 1/6;

    a2 = 1/2;
    a3 = 1;

    b21 = 1/2;

    b31 = -1;
    b32 = 2;

    f1 = funcao(x0, y0);
    f2 = funcao(x0 + a2*h, y0 + b21*f1*h);
    f3 = funcao(x0 + a3*h, y0 + b31*f1*h + b32*f2*h);

    y1 = y0 + h*( c1*f1 + c2*f2 + c3*f3 );

end
