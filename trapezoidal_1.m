clc
f=@(x)(cos(x).^2);
a=-0.25;
b=0.25;
n=4;
sum=0;
h=(b-a)/n;
for i=1:n-1
    x=a+h*i;
    sum=sum+2*f(x);
end
sum=sum+f(a)+f(b);
sum=sum*h/2;
disp(' sum is: ')
disp(sum);
