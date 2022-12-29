%Plotting Sin(x)

clc; clear; 

xmin=10*pi;
xmax=10*pi;

Npts=1000;
sinc=zeros(1,Npts);
x=linspace(xmin,xmax,Npts);
for k=1:Npts
    if(x(k)~=0)
        sinc(k)=sin(x(k))/x(k);
    else
        sinc(k)=1;
    end
end
plot(x,sinc)
    
    