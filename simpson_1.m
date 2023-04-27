clc
f=@(x)(cos(x).*cos(x));
a=-0.25;
b=0.25;
n=4;
sum=0;
h=(b-a)/n;
for i=1:n-1
    x=a+h*i;
    if rem(i,2)==0
        sum=sum+2*f(x);
    else
        sum=sum+4*f(x);
    end
end
sum=sum+f(a)+f(b);
sum=sum*h/3;
disp(' sum is: ')
disp(sum)