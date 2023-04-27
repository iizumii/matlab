clc
clear all
g=@(x) (x^3+2)/7;
tol=10^-3
N=100
x0=0.2
i=1;
while(i<=N)
    x1=g(x0);
    if(abs(x1-x0)<=tol)
        x1
        break;
    else
        x0=x1;
        i=i+1;
    end
end
