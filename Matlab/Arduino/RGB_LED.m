clear

%changing colors
%D11 Blue
%D6 Red
%D3 Green

a = arduino('com3','uno');

writePWMDutyCycle(a, 'D11', .5);
writeDigitalPin(a, 'D6', 0);
writeDigitalPin(a, 'D3', 0);


