%Edição: marcelianooliveira@gmail.com
%Distribuição Livre

%============================================================================================================================
% Considerações iniciais
%============================================================================================================================

% No octave ou matlab, para comentar uma linha, é necessário introduzir um símbolo %.

% Arquivos que podem ser usados como programas no octave, são arquivos terminados em .m,
%da seguinte forma, program.m, onde program.m deve conter uma sequência de comandos em 
%seu interior.

% Para executar um programa m-file, por exemplo o program1.m, é necessário abrir o terminal
%na pasta que contém o arquivo referido e digitar o comando, para o caso octave:
marceliano@laptop:~$ octave program1.m
%e o prgrama será executado. 

%============================================================================================================================
% Entrando no octave
%============================================================================================================================

marceliano@laptop:~$ octave
GNU Octave, version 3.2.3
Copyright (C) 2009 John W. Eaton and others.
This is free software; see the source code for copying conditions.
There is ABSOLUTELY NO WARRANTY; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  For details, type `warranty'.

Octave was configured for "x86_64-pc-linux-gnu".

Additional information about Octave is available at http://www.octave.org.

Please contribute if you find this software useful.
For more information, visit http://www.octave.org/help-wanted.html

Report bugs to <bug@octave.org> (but first, please read
http://www.octave.org/bugs.html to learn how to write a helpful report).

For information about changes from previous versions, type `news'.

%============================================================================================================================
% Formatação das variáveis na tela
%============================================================================================================================

octave:1> pi
ans =  3.1416
octave:2> format long
octave:3> pi
ans =  3.14159265358979
octave:4> x=pi
x =  3.14159265358979
octave:5> format short
octave:6> x=pi
x =  3.1416
octave:7> disp(x)
 3.1416

%============================================================================================================================
% Calculadora
%============================================================================================================================

octave:8> 3+5
ans =  8
octave:9> 8-3
ans =  5
octave:10> 5*6
ans =  30
octave:11> 20/4
ans =  5
octave:12> 2^3
ans =  8
octave:13> sqrt(-25)
ans =  0 + 5i
octave:14> sin(pi/4)
ans =  0.70711
octave:15> x=4*atan(1)
x =  3.1416

%============================================================================================================================
% Workspace
%============================================================================================================================

octave:16> x=2.3
x =  2.3000
octave:17> y=1+2i
y =  1 + 2i
octave:18> z=[1,0.4,-2]
z =

   1.00000   0.40000  -2.00000

octave:19> who
Variables in the current scope:

ans  x    y    z

octave:20> whos
Variables in the current scope:

  Attr Name        Size                     Bytes  Class
  ==== ====        ====                     =====  ===== 
       ans         1x1                          8  double
       x           1x1                          8  double
       y           1x1                         16  double
       z           1x3                         24  double

Total is 6 elements using 56 bytes

%============================================================================================================================
%O comando clear: clear sozinho apaga todo o workspace
%============================================================================================================================

octave:21> clear x
octave:22> who
Variables in the current scope:

ans  y    z

octave:23> whos
Variables in the current scope:

  Attr Name        Size                     Bytes  Class
  ==== ====        ====                     =====  ===== 
       ans         1x1                          8  double
       y           1x1                         16  double
       z           1x3                         24  double

Total is 5 elements using 48 bytes

%============================================================================================================================
% O octave é case sensitive, ou seja, a e A são distintos 
%============================================================================================================================

octave:24> A=2
A =  2
octave:25> a=3
a =  3
octave:26> who
Variables in the current scope:

A    a    ans  y    z

octave:27> whos
Variables in the current scope:

  Attr Name        Size                     Bytes  Class
  ==== ====        ====                     =====  ===== 
       A           1x1                          8  double
       a           1x1                          8  double
       ans         1x1                          8  double
       y           1x1                         16  double
       z           1x3                         24  double

Total is 7 elements using 64 bytes

%============================================================================================================================
% Variáveis especiais
%============================================================================================================================

octave:28> pi
ans =  3.1416
octave:29> eps
ans =  2.2204e-16
octave:30> i
ans =  0 + 1i
octave:31> ans
ans =  0 + 1i
octave:32> Inf
ans = Inf
octave:33> 1/0
warning: division by zero
ans = Inf
octave:34> 0/0
warning: division by zero
ans = NaN

%============================================================================================================================
% Tipos de variáveis: escalar, vetor, matriz e caracter
%============================================================================================================================

octave:35> A=[1 2 3 10; 4 5 6 11; 7 8 9 12]
A =

    1    2    3   10
    4    5    6   11
    7    8    9   12

octave:36> t='eis uma variável tipo caracter'
t = eis uma variável tipo caracter

%============================================================================================================================
% Dimensões de matrizes
%============================================================================================================================

octave:37> size(A)
ans =

   3   4

octave:38> length(A)
ans =  4

%============================================================================================================================
% Matrizes especiais
%============================================================================================================================

octave:39> zeros(3)
ans =

   0   0   0
   0   0   0
   0   0   0

octave:40> zeros(2,3)
ans =

   0   0   0
   0   0   0

octave:41> ones(2,3)
ans =

   1   1   1
   1   1   1

octave:42> ones(3)
ans =

   1   1   1
   1   1   1
   1   1   1

octave:43> rand(3)
ans =

   0.65476   0.57767   0.94971
   0.77227   0.20905   0.90017
   0.37565   0.96150   0.46515

octave:44> rand(3)
ans =

   0.667220   0.065397   0.119959
   0.104600   0.426561   0.808072
   0.568023   0.161999   0.493627

octave:45> rand(3,2)
ans =

   0.71088   0.32815
   0.51515   0.79047
   0.99634   0.18677

octave:46> eye(2)
ans =

Diagonal Matrix

   1   0
   0   1

octave:47> eye(3)
ans =

Diagonal Matrix

   1   0   0
   0   1   0
   0   0   1

octave:48> randn(3,2)
ans =

  -1.075834   0.351177
  -1.508208   0.039276
  -1.483660  -0.434581

octave:49> randn(3)
ans =

  -0.428013   0.027787   0.689602
  -1.112205  -0.146814  -1.046883
   0.041954   0.577338   0.261325

%============================================================================================================================
% Funções elementares
%============================================================================================================================

octave:50> sin(30)
ans = -0.98803
octave:51> cos(30)
ans =  0.15425
octave:52> sqrt(30)
ans =  5.4772
octave:53> exp(30)
ans =  1.0686e+13
octave:54> log(30)
ans =  3.4012
octave:55> atan(30)
ans =  1.5375
octave:56> abs(30)
ans =  30
% Note que se x é uma matriz, y=f(x) é aplicar a função em cada elemento de x para obter um correspondente na matriz y
octave:57> x=[1 15 30;45 60 90]
x =

    1   15   30
   45   60   90

octave:58> y=sin(x)
y =

   0.84147   0.65029  -0.98803
   0.85090  -0.30481   0.89400

%============================================================================================================================
% Funções especiais do octave
%============================================================================================================================

%OBS: Caso os valores x ou y abaixo forem matrizes as operações ocorrerão elemento por elemento.

% ceil(x) : Arredonda x para cima.
octave:59> ceil(3.0015)
ans =  4

% floor(x) : Arredonda x para baixo.
octave:60> floor(3.0015)
ans =  3

% fix(x) : Arredonda para inteiro mais próximo de zero.
octave:61> fix(6.0235)
ans =  6

% round(x) : Arredondamento para o inteiro mais próximo.
octave:62> round(3.175)
ans =  3

% conj(x) : Complexo conjugado de x.
octave:63> conj(3+2i)
ans =  3 - 2i

% imag(x) : Parte imaginária da variável complexa x.
octave:64> imag(3+2i)
ans =  2

% real(x) : Parte real de x.
octave:65> real(3+2i)
ans =  3

% sign(x) : Pegar sinal de x.
octave:66> sign(+4)
ans =  1

% sign(x) : Pegar sinal de x.
octave:67> sign(-4)
ans = -1

% gcd(x,y) : Máximo divisor comum entre x e y.
octave:68> gcd(4,12)
ans =  4

% lcm(x,y) : Mínimo múltiplo comum.
octave:69> lcm(4,12)
ans =  12

% rem(x,y) : Resto da divisão de x/y.
octave:70> rem(7,3)
ans =  1

%============================================================================================================================
% Funções matriciais
%============================================================================================================================

octave:71> A=[1 2 3;3 3 1;4 5 6]
A =

   1   2   3
   3   3   1
   4   5   6

% det(A) : Calcula o determinante de A.
octave:72> det(A)
ans = -6
octave:73> eig(A)
ans =

   9.51324
  -0.58724
   1.07401

% [V,D]=eig(A) : Pega a matriz dos autovetores de A em V, onde cada coluna de V é um autovetor, e a forma diagonal D pega
% os autovalores na diagonal da matriz D.
octave:74> [V,D]=eig(A)
V =

   0.379832   0.763158   0.325953
   0.308829  -0.645661  -0.782878
   0.871981   0.026669   0.529959

D =

Diagonal Matrix

   9.51324         0         0
         0  -0.58724         0
         0         0   1.07401

% expm(A) : É a exponencial matricial de A.
octave:75> expm(A)
ans =

   2839.8   3497.2   3421.4
   2310.9   2846.8   2779.8
   6518.5   8029.1   7854.6

% logm(A) : logaritmo matricial de A.
octave:76> logm(A)
ans =

  -0.14129 + 3.48809i   0.49797 + 0.34179i   0.86644 - 1.64045i
   0.93917 - 2.95106i   0.58525 - 0.28917i   0.18145 + 1.38789i
   1.02712 + 0.12189i   1.29169 + 0.01194i   1.34780 - 0.05733i

octave:77> exp(A)
ans =

     2.7183     7.3891    20.0855
    20.0855    20.0855     2.7183
    54.5982   148.4132   403.4288

octave:78> log(A)
ans =

   0.00000   0.69315   1.09861
   1.09861   1.09861   0.00000
   1.38629   1.60944   1.79176

% inv(A) : Matriz inversa de A.
octave:79> inv(A)
ans =

  -2.16667  -0.50000   1.16667
   2.33333   1.00000  -1.33333
  -0.50000  -0.50000   0.50000

% trace(A) : Soma dos elementos da diagonal de A.
octave:80> trace(A)
ans =  10

% sum(A) : Vetor fila cujos elementos são somas dos elementos das colunas de A.
octave:11> sum(A)
ans =

    8   10   10

% norm(V) : Norma do vetor V.
octave:81> norm(V)
ans =  1.3742

% sort(V) : Ordena os elementos do vetor V em ordem crescentes.
octave:82> sort(V)
ans =

   0.308829  -0.645661  -0.782878
   0.379832   0.026669   0.325953
   0.871981   0.763158   0.529959

% Exemplo de uso do sort(x).
octave:83> x=[{'joão'}; {'luiza'}; {'ana'}; {'pedro'}; {'zeca'}; {'paulo'};{'beto'}; {'carlos'}; {'silvio'}]
x =

{
  [1,1] = joão
  [2,1] = luiza
  [3,1] = ana
  [4,1] = pedro
  [5,1] = zeca
  [6,1] = paulo
  [7,1] = beto
  [8,1] = carlos
  [9,1] = silvio
}

octave:84> sort(x)
ans =

{
  [1,1] = ana
  [2,1] = beto
  [3,1] = carlos
  [4,1] = joão
  [5,1] = luiza
  [6,1] = paulo
  [7,1] = pedro
  [8,1] = silvio
  [9,1] = zeca
}

%============================================================================================================================
% As instruções (;) e (:)
%============================================================================================================================

% A instrução dois pontos é usada para marcar uma sequência, início:passo:fim.
octave:85> x=1:3:10
x =

    1    4    7   10

% O passo pode inclusive ser negativo.
octave:86> x=10:-2:5
x =

   10    8    6

% Ponto e virgula serve para agrupar vários comandos sem a saída no display.
octave:87> x=3;y=4;z=x^2+y^2;
octave:88> z
z =  25
octave:89> x=3;y=4;z=x^2+y^2
z =  25

% As vezes é útil que algumas expressões sejam mostradas na tela, neste caso, não deverá ser usado o (;) no comando de inte_
%resse.
% Por padrão do OCTAVE, a impressão na tela só ocorre no final da execução, para forçar a impressão imediata de um programa.m
%que esteja rodando, para forçar uma impressão imediata o comando fflush(stdout) deve ser usado abaixo da linha a ser impressa.   

%============================================================================================================================
% Exemplo de m-file : "modulo.m"
%============================================================================================================================

%Calcula o módulo de um vetor de n componentes,
%que o operador fornece
x=input('de o vetor [x1, x2, ..., xn] \n'); %Forma de entrar dados
%O símbolo \n ordena que o cursor mude de linha.
%Note também que o texto entre parênteses vem entre "..."
%este texto aparecerá na tela e o operador deverá fornecer
%o vetor, na sua forma usual
x2=x*x; % vetor fila vezes vetor coluna (escalar)
mod_x=sqrt(x2)% Note que não se deve usar como variável a mesma palavra usada no nome do programa (modulo).

resultado do programa acima:

de o vetor [x1, x2, ..., xn] \n 
a=[1 2 3;4 5 6;7 8 9]
mod_x =

    3.7417    5.6569    7.0711
    5.6569    8.7750   11.0454
    7.0711   11.0454   13.9284

%============================================================================================================================
% Controle de arquivos
%============================================================================================================================

% Alguns comandos usuais de manejo de arquivos, tanto do LINUX como do DOS são entendidos pelo OCTAVE. Por exemplo, pode-se 
%escrever, na linha de comando: dir, ls, delete, cd. Usa-se "save A" para salvar todas as variáveis do "workspace" no arquivo
%A.mat em formato binário, ou "save A X Y Z" para salvar as variáveis X, Y e Z, no arquivo A.mat. O comando "load A" carrega   
%o conteúdo de A.mat no "workspace".

%============================================================================================================================
% Construção de sequências
%============================================================================================================================

%linspace(a,b,n) : Constrói a sequência linear de a até b com n pontos igualmente espaçados. 
octave:90> linspace(1,20,5)
ans =

    1.0000    5.7500   10.5000   15.2500   20.0000

%logspace(a,b,n) : Constrói a sequência logarítmica de a até b com n pontos igualmente espaçados.
octave:91> logspace(1,20,5)
ans =

   1.0000e+01   5.6234e+05   3.1623e+10   1.7783e+15   1.0000e+20

%============================================================================================================================
% Operações matriciais e elemento a elemento
%============================================================================================================================

% Definindo a matriz X.
octave:92> X=[1 2 3;4 5 6;7 8 9]
X =

   1   2   3
   4   5   6
   7   8   9

% Definindo a matriz Y.
octave:93> Y=[9 8 7;6 5 4;3 2 1]
Y =

   9   8   7
   6   5   4
   3   2   1

% Soma entre X e Y.
octave:94> X+Y
ans =

   10   10   10
   10   10   10
   10   10   10

% Subtração entre Y e X.
octave:95> Y-X
ans =

   8   6   4
   2   0  -2
  -4  -6  -8

% Produto matricial entre as matrizes X e Y.
octave:96> X*Y
ans =

    30    24    18
    84    69    54
   138   114    90

% Divisão matricial, X/Y significa X*Y^(-1)
octave:97> X/Y
warning: matrix singular to machine precision, rcond = 0
warning: attempting to find minimum norm solution
warning: dgelsd: rank deficient 3x3 matrix, rank = 2
ans =

   0.83333  -0.33333  -1.50000
   1.33333  -0.33333  -2.00000
   1.83333  -0.33333  -2.50000

% Divisão matricial, X\Y significa X^(-1)*Y
octave:98> X\Y
warning: matrix singular to machine precision, rcond = 3.08471e-18
warning: attempting to find minimum norm solution
warning: dgelsd: rank deficient 3x3 matrix, rank = 2
ans =

  -5.83333  -5.33333  -4.83333
  -0.33333  -0.33333  -0.33333
   5.16667   4.66667   4.16667

% Produto matricial X*X
octave:99> X^2
ans =

    30    36    42
    66    81    96
   102   126   150

% Matriz X multiplicada por sua transposta X'
octave:100> X*X'
ans =

    14    32    50
    32    77   122
    50   122   194

% Cada elemento será elevado ao cubo, a notação (.) serve para indicar a operação elemento a elemento.
octave:101> X.^3
ans =

     1     8    27
    64   125   216
   343   512   729

% Produto de cada elemento da matriz X por cada elemento da matriz Y.
octave:102> X.*Y
ans =

    9   16   21
   24   25   24
   21   16    9

% Cada elemento de X será dividido por cada elemento de Y.
octave:103> X./Y
ans =

   0.11111   0.25000   0.42857
   0.66667   1.00000   1.50000
   2.33333   4.00000   9.00000

% Cada elemento de X é elevado a cada elemento de Y.
octave:104> X.^Y
ans =

      1    256   2187
   4096   3125   1296
    343     64      9

% Funções transcendentais são quando aplicadas em matrizes, serão executadas elemento a elemento.
octave:105> sin(X)
ans =

   0.84147   0.90930   0.14112
  -0.75680  -0.95892  -0.27942
   0.65699   0.98936   0.41212

%============================================================================================================================
% Referenciamento a partes de matrizes
%============================================================================================================================

octave:106> A=[1 2 3;4 4 3;5 6 7]
A =

   1   2   3
   4   4   3
   5   6   7

% A(:,x) : Significa pegue em todas as linhas (:), os elementos da coluna x.
octave:107> A(:,2)
ans =

   2
   4
   6

%  A(Li:Lf,Ci:Cf) : Pegar da linha Li até a linha Lf, e as colunas de Ci até Cf.
octave:108> A(1:2,2:3)
ans =

   2   3
   4   3

%============================================================================================================================
% Variáveis relações e operações lógicas
%============================================================================================================================

octave:109> a=2
a =  2

octave:110> b=3
b =  3

% x=(a<b) : Variável lógica que testará se a relação a<b, caso seja x assume valor 1, do contrário, x assume o valor 0.
octave:111> x=(a<b)
x =  1

% y=(b<a) : Variável lógica que testará se a relação b<a, caso seja y assume valor 1, do contrário, y assume o valor 0.
octave:112> y=(b<a)
x = 0

% Outros operadores relacionais:
% x >  y  : x é maior do que y;
% x == y  : x é igual a y;
% x ~= y  : x é diferente de y;
% x <= y  : x é menor ou igual a y;
% x >= y  : x é maior ou igual a y;

% Operações Lógicas

% A&B      : Resulta em 1 se A e B forem verdadeiros. (operador AND - símbolo &).
octave:113> x&y
ans = 0

octave:114> x&x
ans =  1

octave:115> y&y
ans = 0

octave:116> y&x
ans = 0

% A|B      : Resulta em 1 se A ou B forem verdadeiros. (operador OR - símbolo |).
octave:117> x|x
ans =  1

octave:118> y|y
ans = 0

octave:119> y|x
ans =  1

octave:120> x|y
ans =  1

% ~A       : Resulta no valor contrário, se x vale 1, not x valerá 0 e vice-versa. (operador NOT - símbolo ~).
octave:121> ~x
ans = 0

octave:122> ~y
ans =  1

% xor(A,B) : Resulta em 1 quando uma e apenas uma das variáveis é verdadeira. (operador XOR - símbolo xor).
octave:123> xor(x,x)
ans = 0

octave:124> xor(x,y)
ans =  1

octave:125> xor(y,x)
ans =  1

octave:126> xor(y,y)
ans = 0

%============================================================================================================================
% Uso de condicionais: for, while, if, else, switch
%============================================================================================================================

% Uso do for
octave:127> for n=1:0.5:10
> n
> end
n =  1
n =  1.5000
n =  2
n =  2.5000
n =  3
n =  3.5000
n =  4
n =  4.5000
n =  5
n =  5.5000
n =  6
n =  6.5000
n =  7
n =  7.5000
n =  8
n =  8.5000
n =  9
n =  9.5000
n =  10
octave:128>

% Uso do condicional while
octave:129> fat=1;N=input("Entre com um inteiro N \n");while(N>1);fat=fat*N;N=N-1;end;disp(fat)Entre com um inteiro N 
4
 24

% Uso do condicional if
octave:129> n=2
n =  2

octave:130> m=-2
m = -2

octave:131> if(n>1)
> n+n
> else
> m+m
> end
ans =  4

octave:132> if(n<1)
> n+n
> else
> m+m
> end
ans = -4

%Exemplo : m-file "seleciona.m"
%gera N números aleatórios Gaussianos
%e conta quantos estão em cada um dos seguintes intervalos:
%a=(-infty,],b=(-1,0],c=(0,1],d=(1,infty)
a=0;b=0;c=0;d=0;
N=input("Entre com um número inteiro N \n")
x=randn(1,N);%gera vetor de N numeros aleatórios Gaussianos
for j=1:N;
   y=x(j);
   if(y<=-1)
      a=a+1;
   elseif(y<=0)%note que a condição
               %y>-1 já está satisfeita devido ao if anterior
      b=b+1;
   elseif(y<=1)%
      c=c+1;
   else
      d=d+1;
   endif
end
disp([a b c d])

Entre com um número inteiro N 
8
N =  8
   2   2   1   3


% Uso do switch
% Exemplo: sw_case.m
variavel=round(5*rand);
switch variavel
   case{2,4},    disp("a variável é par")
   case{1,3,5},  disp("a variável é ímpar")
   otherwise, disp("a variável é zero")
end

a variável é par

%============================================================================================================================
% Função como m-file, ou função diretamente no octave
%============================================================================================================================

% Função como m-file

% Exemplo fgravitacional.m
function f=fgravitacional(x,y,z,K);
% calcula as três componentes cartesianas da força gravitacional
% sobre um corpo quando o atrator está na origem e o corpo
% na posição r(x,y,z); O produto GMm é representado por K.
r=[x,y,z];
nr=norm(r);
nr3=nr^3;
f=K*r/nr3;
return

% Arquivo fgrav.m
fgravitacional(2,3,5,10)

% Resultado do comando: fgrav.m
ans =

   0.085380   0.128070   0.213449

% Função direto no octave

octave:133> function X=baskara(a,b,c);
> x1=(-b+sqrt(b.^2-4.*a.*c))./(2.*a);
> x2=(-b-sqrt(b.^2-4.*a.*c))./(2.*a);
> X=[x1 x2];
> return
> end

octave:134> baskara(2,-10,4)
ans =

   4.56155   0.43845

octave:135> function [sin,cos,tan,cot]=trigonometric(b,c)
> a=sqrt(b^2+c^2)
> sin=b/a
> cos=c/a
> tan=sin/cos
> cot=cos/sin
> endfunction

% Neste tipo de chamada a função trigonometric(b,c) apenas apresenta o valor calculado e depois este é destruido
octave:136> trigonometric(3,4)
a =  5
sin =  0.60000
cos =  0.80000
tan =  0.75000
cot =  1.3333
ans =  0.60000

% Deste modo, os valores calculados serão armazenados nas funções que você criou respeitando-se a posição dentro dos colchetes, por exemplo
%[variável1,variável2,variável3,variável4]
octave:137> [sin,cos,tan,cot]=trigonometric(3,4)
a =  5
sin =  0.60000
cos =  0.80000
tan =  0.75000
cot =  1.3333
% Agora sim a variável sin vale sempre sin = 0.60000 ...

% Armazenando em variáveis diferentes: Você pode colocar diferentes variáveis e será feita uma correspondência entre a posição, por exemplo,
%ao invés de [sin,cos,tan,cot] use [a,b,c,d], assim o valor de sin será armazenado na variável a o de cos em b e sucessivamente 
octave:138> [a,b,c,d]=trigonometric(3,4)
a =  5
sin =  0.60000
cos =  0.80000
tan =  0.75000
cot =  1.3333
a =  0.60000
b =  0.80000
c =  0.75000
d =  1.3333
% Note que se você digitar posteriormente "octave:139> sin" o octave não saberá o valor de sin, pois este valor foi armazenado na variável a.


%============================================================================================================================
% Gráficos em duas e três dimensões
%============================================================================================================================
%Comandos help para gráficos
%help plot
%help polar
%help mesh
%help hist

%============================================================================================================================
% Tempo de CPU
%============================================================================================================================
octave:135> tic
octave:136> toc
Elapsed time is 6.748 seconds.

octave:137> tic;x=0:0.1:1000;y=x.*x;plot(y);toc
Elapsed time is 0.01717 seconds.

%============================================================================================================================
% Referências
%============================================================================================================================

% Scherer, Cláudio: Métodos Computacionais da Física; 1 ed. São Paulo; Livraria da Física; Ano 2005.

