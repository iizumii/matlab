clc
clear all
a=[10 8 -3 1 16;2 10 1 -4 9;3 -4 10 1 10;2 2 -3 10 11]
p=0;
n=4;
for j=1:n-1
 for p=j:n
 if(a(p,j)~=0)
 P=p;
 break;
 end
end
if(P==0)
 disp('No unique solution exists')
 break;
 else
 if(P~=j)
 t=a(j,:);
 a(j,:)=a(P,:);
 a(P,:)=t;
 end
end
for i=j+1 :n
 m(i,j)=a(i,j)/a(j,j);
 a(i,:)=a(i,:)-m(i,j)*a(j,:)
end
end
disp(a)
if(a(n,n)==0)
 disp('No unique solution exist')
else
 x(n)=a(n,n+1)/a(n,n)
 for i=n-1:-1:1
 sum=0
 for j= 1+1
 sum=sum+a(i,j)*x(j);
 end 
 x(i)=(a(i,n+1)-sum)/a(i,i)
 end
end
 disp(x)