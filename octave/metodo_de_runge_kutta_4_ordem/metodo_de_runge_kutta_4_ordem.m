function y1 = metodo_de_runge_kutta_4_ordem(x0, y0, h)
    c1 = 1/6;
    c2 = 2/6;
    c3 = 2/6;
    c4 = 1/6;    

    a2 = 1/2;
    a3 = 1/2;
    a4 = 1;

    b21 = 1/2; 

    b31 = 0;
    b32 = 1/2; 

    b41 = 0;
    b42 = 0;
    b43 = 1;

    f1 = funcao(x0, y0);
    f2 = funcao(x0 + a2*h, y0 + b21*f1*h);
    f3 = funcao(x0 + a3*h, y0 + b31*f1*h + b32*f2*h);
    f4 = funcao(x0 + a4*h, y0 + b41*f1*h + b42*f2*h + b43*f3*h);

    y1 = y0 + h*( c1*f1 + c2*f2 + c3*f3 + c4*f4 );
end
