clc 
clear

Fs=2^13;
freq=500;
t=(0:1/Fs:1);
for k=1:10
    y=cos(2*pi*freq*t*k);
    sound(y,Fs);
    pause(1);
end