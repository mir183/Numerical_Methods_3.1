f=@(x) x^3-2*x+1; %Function f(x)
dx=@(x) 3*x^2-2; %d/dx or f'(x)
g=@(x)(x^3+1)/2; %g(x)
a=0.25; %Lower limit or first value
b=0.75; %Upper limit or second value
e=0.01; %Tolerance
n=5;

fprintf("Regular Falsi: \n");
    if f(a)*f(b)<0
        for i=1:n
            c=(a*f(b)-b*f(a))/(f(b)-f(a));
            fprintf("Itr %d c=%.2f\n",i,c);
            if abs(b-a)<e
                break
            end
            if f(c)<0
                a=c;
            else 
                b=c;
            end
        end
    else
        fprintf("No Root\n");
    end