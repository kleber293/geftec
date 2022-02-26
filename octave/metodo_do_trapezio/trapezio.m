function integral = trapezio(h, y)
    
    soma = 0;
    for i = 1:1:length(y)-2;
        soma = soma + y(i+1);
    end

    integral = h/2*(y(1)+2*soma+y(length(y)-1));
end
