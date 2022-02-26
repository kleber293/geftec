
function [y] = EulerBackward(f,x,y)

 ny=rows(y);

 for i=2:(ny)

   dx=x(i)-x(i-1);
   y(i)=y(i-1)+dx*f(i);

 endfor

endfunction
