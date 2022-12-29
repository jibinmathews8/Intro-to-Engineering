clear 
clc

num1= input('Insert an Integer Greater than 2--> ');

while num1<=2 && fix(num1)-num1==0
     i=input('The given number is either not an integer or greater than 2. Insert another number-->');
     num1=i;

end

f0=0;
f1=1;
Fn= 3:num1;
disp(f0,f1,Fn)

