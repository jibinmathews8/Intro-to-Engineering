%Homework 3

clear
clc


%1.
%a

% strA='Product';
% N=length(strA);
% for k=1:N
%  strB(k)=strA(N-k+1);
% end
% disp(strB);

%b

% A='hcetsaxet';
% N=length(A);
% for k=1:fix(N/2)
%  x=A(k);
%  A(k)=A(N-k+1);
%  A(N-k+1)=x;
% end
% disp(A);

%2
%a

% A=char('test', 'pest', 'fest');
% x=A(1,1);
% A(1,1)=A(2,1);
% A(2,1)=A(3,1);
% A(3,1)=x;
% disp(A);

%b

% A=char('12$42&2', '987*5');
% A(1,4)='%';
% A(2,4)='^';
% disp(A);

%3

% strA='The pencil, the cell phone, the book, and the calculator were all dropped on the floor!';
% N=length(strA);
% var=0;
% for k=1:N
%  if(strA(k)=='a' || strA(k)=='e' || strA(k)=='o')
%  var=var+1;
%  end
% end
% disp(var)

%4

% A = 'ABC1X2ZW' ;
% M=4;
% for k=1 : M
% B(2*k)=A(k) ;
% B(2*k-1)=A(M+k) ;
% end
% disp(B) ;

%5

% s=0; strA = 'aeiou';
% NA=length(strA);
% strB = 'Not everybody from the office attended the meeting last week' ;
% NB=length(strB);
% for k=1:NA
% for m=1: NB
% if(strB(m)==strA(k))
% s=s+1;
% end
% end
% end
% disp(s);


%6

% a='rotor' ;
% b=[1, 2, 3, 4, 4, 2, 1] ;
% c='racecar' ;
% var1=Funct(a) ;
% var2=Funct(b) ;
% var3=Funct(c) ;
% disp([var1 , var2, var3]) ;
% 
% 
% function [ y ] =Funct(x)
% % x: input
% % y: output
% N=length(x) ;
% H=fix(N/2) ;
% y=0 ;
% for k=1: H
%  if(x(k) == x(N-k+1))
%  y = y+1 ;
%  end
% end
% end


%7

% A=[3, 12, 7 ; 6, 5, 24 ; 18, 9, 10];
% Z=Funct2(A);
% disp(Z);
% 
% 
% function [X] = Funct2(M)
% % M: input
% % X: output
% N=length(M);
% for m=1:N
%  for n=1:N
%  X(m,n)=M(N-m+1,N-n+1);
%  if(rem(X(m,n),2)==0 && rem(X(m,n),3) ==0)
%  X(m,n)=X(m,n)/3;
%  else
%  X(m,n)=X(m,n)*3;
%  end
%  end
% end
% end


%8
clear 
clc

a=input('Coefficent of a-->');
if a==0
  disp('a can not be 0')
  a=input('Coefficent of a-->');
end
b=input('Coefficent of b-->');
c=input('Coefficent of c-->');

x= QE_Function(a,b,c);

disp(x)




function [Root1,Root2] = QE_Function(a,b,c)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
Root1 = (-b - sqrt(b^2 - 4 * a * c))/(2*a);
Root2 = (-b + sqrt(b^2 - 4 * a * c))/(2*a);

end


