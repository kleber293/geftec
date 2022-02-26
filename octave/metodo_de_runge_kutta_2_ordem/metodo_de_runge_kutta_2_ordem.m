function y1 = metodo_de_runge_kutta_2_ordem(x0, y0, h)
    c1 = 1/2;
    c2 = 1/2;

    a2 = 1;

    b21 = 1;

    f1 = funcao(x0, y0);
    f2 = funcao(x0 + a2*h, y0 + b21*f1*h);
    
    y1 = y0 + h*( c1*f1 + c2*f2 );
      
end
