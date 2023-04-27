clear all
clc
A = [4.63,-1.21,3.22;-3.07,5.48,2.11;1.26,3.11,4.57];
B = [2.22 -3.17 5.11];
tol = 0.001;
Xo = [0,0,0];
X1 = [0,0,0];
n = size(A,1);
max = 200;
count = 1;
while count < max
for i = 1:n 
    sum1 = 0;
    sum2 = 0;
    for j = 1:i-1
        sum1 = sum1+A(i,j)*X1(j);
    end
    
    for j = i+1:n
        sum2 = sum2 +A(i,j)*Xo(j);
    end
    
    X1(i) = (B(i)-sum1-sum2)/A(i,i);

    if norm(X1-Xo) < tol
        break;
    end
    
    Xo = X1;
end
count = count+1;
end
display(X1);