function [x,y] = ComputeXY(t,a,b,c)
%Computes the values of x=cos(at)+b and y=|x|+c
% t,x,y Vectors
% a,b,c Constants
x=cos(a*t)+b;
y=abs(x)+c;
end

