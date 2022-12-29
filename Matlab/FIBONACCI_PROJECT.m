% ECE-1304-001 Spring 2020
%Project 2 
%Jibin Mathews
%01/29/2020
%Project allows User to select the number of units of the Fibonacci
%Sequence to be displayed and also allow the user to see the precision
%acording to the number of decimal places that is selected by the user.


clear 
clc
%This operation allows the program to restart without having the user rerun
%the program
repeat='y';
while(repeat=='y'|| repeat=='Y');

%num1 signifies the number of elements chosen from the sequence
num1= input('Insert an Integer Greater than 2--> ');

while num1<=2 && fix(num1)-num1==0
     i=input('The given number is either not an integer or greater than 2. Insert another number-->');
     num1=i;

end

%Fibonacci Structure:The equation involves num1(N) being the total number of
%terms in the sequence. Therefore, we have to find a way to implement an
%equation
% Ex. F(N)=F(N-1)+F(N-2)


n2 = 0:num1-1;
%Implementing the magic number (1+sqrt(5))/2
r = sqrt(5);
pos = (1+r)/2;
neg = (1-r)/2;
f = (pos.^n2 - neg.^n2)./r;
disp(f)




%Part 2 of project
%num2 identifies the precision of that decimal point
num2= input('Insert a number that is greater than or equal to 2 or less than or equal to 15-->');
if num2< 2|| num2>15 , mod(num1,1)=0;
    disp(num2==input('The given number is either not within the bounds of 2 and 15 or is not an Integer. Insert another number-->'));
end

%Set values for PHI and precision 
Pres= 10^-(num2);
PHI= (1+sqrt(5))/2;


diff= 1;
Nterms=0;
a=1;
b=1;

%This loop identifies how many instances are needed to reach a certain
%precision
 while( diff>10^-num2)
     
     ratio=b/a;
     diff = abs(ratio-PHI);
     sum=a+b;
     a=b;
     b=sum;
    Nterms=Nterms+1;
 
 
    
 end

disp(['The total number of units required is ',num2str(Nterms)])

repeat=input('Do you want to try another integer?(Y/y continues, any other quits)-->','s');
    disp('')
end











    