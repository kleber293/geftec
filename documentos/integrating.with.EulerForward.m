# Solving example using Euler Forward Method

# dy/dx = -sin(x);

# 1 Creating x range as vector

  h=pi/10;
  xi=0; xf=3*2*pi;
  x=[xi:h:xf]';

# 2 Creating y as empty vector

  ny=rows(x);
  y=zeros(ny,1);
  y(1)=1;

# 3 Definining f(x,y) function

  f=-sin(x);

# 4 Integrating

  y=EulerForward(f,x,y);

# 5 Saving Result

  result=[x,y];
  save result.EulerForward result

# 6 Plot Result

#  plot(x,y);
#  pause();
