clc
clear

x=linspace(0.5,5,1000);
y1=log10(x);
y2=1./x;
y3=y1-y2;
plot(x,y1,x,y2);
grid

funct=@(x)log10(x)-1./x;
root=fzero(funct,[0.5,5]);
%Fzero solves equations numerically
disp(root)
fprintf(1,'root=%3.15f\n',root);



