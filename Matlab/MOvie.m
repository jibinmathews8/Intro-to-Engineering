clear 
clc

Xmin= -5*pi;
Xmax= 5*pi;
Npts= 1000;
t=linspace(Xmin,Xmax,Npts);
for Phase=0.025*pi:pi
    for w1=t:7
        for w2=1:7
            x=cos(w1*t+Phase)
            y=sin(w2*t)
            plot(x,y)
            pause(0.5);
        end
    end
end



