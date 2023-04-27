clc
clear
x=[1950,1960,1970,1980,1990,2000];
f=[151326,179323,203302,226542,249633,281422];
n=length(x);
p=1975;
for i=1:n
    l(i)=1.0;
    for j=1:n
        if (j~=i)
            l(i)=((p-x(j))*l(i))/(x(i)-x(j));
        end
    end
end
    sum=0.0;
    for k=1:n
        sum=sum+l(i)*f(i);
    end
    fprintf('The value at this point is %f',sum)