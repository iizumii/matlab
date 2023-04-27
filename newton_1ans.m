clc
clear all
f = @(x) x^2-17;
df= @(x) 2*x;
tol=0.005
N=100
x0=4.5;
i=1;
while(i<=N)
    if(df(x0)~=0)
        x1=x0-(f(x0)/df(x0))
        if(abs(x1-x0)<=tol)
            x1
            break;
        else
            x0=x1;
            i=i+1;
        end
    else
        disp('change initial approx')
    end
end
x1

        