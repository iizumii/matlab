clc
clear
i=0;
N=100;
x0=1;
tol=0.01;
g=@(x) (asin(-x/2) + 2*pi)/pi;

while i<N
    x1=g(x0);
    if abs(x1-x0)<=tol
        fprintf('Solution of the given eqn. is %f',x1)
        break
    end
    x0=x1;
    i=i+1;
end

if i==N
    fprintf('Solution not found')
end