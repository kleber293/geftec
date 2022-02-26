
% 1 Model Equations:

 % 1.1 Original Model:
 % d2x/dt2 = -kx/m

 % 1.2 Reduced Order Model:
 % dv/dt = -kx/m
 % dx/dt = v


% 2 Initial Values and Parameters

 % 2.1 Simulation Parameters
   nx=500; nt=500;
   ti=0; tf=1.5;
   dt=(tf-ti)/(nt-1);

 % 2.2 Model Parameters (SI Units)
   A=0.25; k=40; m=0.1;

 % 2.3 Initial Values
   xi=-A; vi=0; 



% 3 Creating and Initializing Vectors

 % 3.1 Creating Vectors
   v=zeros(nx,1);
   x=zeros(nx,1);
   t=zeros(nt,1);

 % 3.2 Initializing Vectors
   v(1)=vi;
   x(1)=xi;


% 4 Solver Method Implementation

 % 4.1 Euler Method
 % y(i+1) = y(i) + h*f(x(i),y(i))
 % h : step between two points of independent variable
 % f : derivation of dependent variable, often x(i) and y(i) relation

 % 4.2 Find [v(2) from v(1)], [v(3) from v(2)] and so on
 % v(2) = v(1) + dt*(-k*x(1)/m)
 % v(3) = v(2) + dt*(-k*x(2)/m)       
 % ...
 % v(i+1) = v(i) + dt*(-k*x(i)/m)
 % We see that v(3) need x(2), we must calculate x(2) after v(2)

 % 4.3 Complete Euler Method for this Model Problem (Pseudo Code)
 % loop start ...
 % v(i+1) = v(i) + dt*(-k*x(i)/m)
 % x(i+1) = x(i) + dt*v(i)
 % loop end ...
 % Another option is assume v(i+1) when calculate x(i+1)
 % Inside loop we can advance time vector elements too


% 5 The Core of Solver Code 
  for i=1:nt
   v(i+1)=v(i)+dt*(-k/m*x(i));
   x(i+1)=x(i)+dt*v(i+1);
   t(i+1)=t(i)+dt; 
  endfor


% 6 Plot Results 

 % 6.1 Plot for Velocity Vector v(i)
   subplot(1,2,1)
   plot(t,v,"linewidth",4)
   xlabel("TIME","fontweight","bold")
   ylabel("VELOCITY","fontweight","bold")


 % 6.2 Plot for Velocity Vector v(i)
   subplot(1,2,2)
   plot(t,x,"linewidth",4)
   xlabel("TIME","fontweight","bold")
   ylabel("HEIGHT","fontweight","bold")

   print -dpng -color "-S800,600" subplots.png
   pause
% Refferences
% [1] https://www.cyberphysics.co.uk/topics/forces/hooke.htm
% [2] https://en.wikipedia.org/wiki/Harmonic_oscillator
% [3] https://emboliform.wordpress.com/2014/01/08/printing-plots-in-octave/	
