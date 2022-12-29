clc 
clear

Tpts=10000;
Npts=10000;
DC=1/2;
coeff=-1/pi;
t=linspace(-3,3,Tpts);
for k=1:Tpts
    sum=0;
    for n=1:Npts
        sum=sum+sin(2*pi*n*t(k))/n;
    end
    AC(k)=sum
end
        funct=DC+coeff*AC
        plot(t,funct,'r','LineWidth',2);
        grid;
        
