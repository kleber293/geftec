
function [y] = EulerForward(f,x,y)

 ny=rows(y);

 for i=1:(ny-1)

   dx=x(i+1)-x(i);
   y(i+1)=y(i)+dx*f(i);

 endfor

endfunction
