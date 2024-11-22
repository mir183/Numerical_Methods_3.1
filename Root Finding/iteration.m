f=@(x) x^3-2*x+1; %Function f(x)
dx=@(x) 3*x^2-2; %d/dx or f'(x)
g=@(x)(x^3+1)/2; %g(x)
a=0.25; %Lower limit or first value
b=0.75; %Upper limit or second value
e=0.01; %Tolerance
n=5;

fprintf("Fixed Point Iteratin: \n");
x0=a;
for i=1:n
    x1=g(x0);
    fprintf("Itr %d c=%.2f\n",i,x1);
    if abs(x1-x0)<e
        break
    end
    x0=x1;
end