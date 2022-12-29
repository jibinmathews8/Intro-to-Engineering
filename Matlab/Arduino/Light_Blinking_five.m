clear

a = arduino('com3','uno');

for i = 1:10
    writeDigitalPin(a,'D9',1)
    pause(0.5);
    writeDigitalPin(a,'D9',0)
    pause(0.5);
end

clear a

