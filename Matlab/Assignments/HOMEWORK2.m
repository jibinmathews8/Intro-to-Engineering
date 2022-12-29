clear 
clc

A=[-3,1,1 ; 5,-2,6 ; -7,8,-4];
Nrows=3;
Mcolumns=3;
for m=1: Mcolumns
for n=1: Nrows
temp=m+n;
ratio=fix(temp/2);
diff=temp-2*ratio;
if(diff~=0)
A(n,m)=-A(n,m);
end
end
end
disp(A);
