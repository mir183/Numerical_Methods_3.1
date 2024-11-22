f=@(x) x^3-2*x+1; %Function f(x)
dx=@(x) 3*x^2-2; %d/dx or f'(x)
g=@(x)(x^3+1)/2; %g(x)
a=0.25; %Lower limit or first value
b=0.75; %Upper limit or second value
e=0.01; %Tolerance
n=5;


fprintf("Secant Method: \n");
x0=a;
x1=b;
for i=1:n
    x2=x1-f(x1)*(x0-x1)/(f(x0)-f(x1));
    fprintf("Itr %d c=%.2f\n",i,x2);
    if abs(x2-x1)<e
        break
    end
    x0=x1;
    x1=x2;
    end