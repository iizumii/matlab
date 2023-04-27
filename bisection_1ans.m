clc;
clear all;
f = @(x) 3*x-exp(x);
tol=0.0001
N=10
for(i=-N:N)
a=i;
b=a+1;
if(f(a) * f(b)<0)
break;
end
end
a
b

while (abs(a-b)>=tol)
c=(a+b)/2
if(f(c)==0)
    c
    break
elseif(f(a) * f(c) <0)
b=c;
else
a=c;

end
end
fprintf('Root is %f',c)