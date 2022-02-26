
function [y] = CentralDifferences(f,x,y)

 ny=rows(y);

 for i=1:(ny-1)

 dx=x(i+1)-x(i);
 
  if (i==1)
   y(i+1)=y(i)+dx*f(i);
  else
   y(i+1)=y(i-1)+2*dx*f(i);
  endif
  
 endfor

endfunction
