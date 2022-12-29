% ECE-1304-001 Spring 2020
%Project 1 
%Jibin Mathews
%01/22/2020
%Project Description

clear;

%Assign Alpha
alpha= input( 'Assign a coefficent for Alpha-->');

Xmin=0;, Xmax=80;, Npts=1000;
%Create the x-axis limits Xmin & Xmax
x= linspace( Xmin,Xmax,Npts);

%Define Functions to plot
y1= cos(x);
y2= exp(alpha*x);
y3= exp(-alpha*x);
y4= y1.*y2;
y5= y1.*y3;

%Plot Functions y1-y5

plot( x,y1, x,y2, x,y3, x,y4,x,y5)


