clear

a = arduino('com3','uno');

V = readVoltage( a, 'A0')

%Degrees in terms of C
Temp_C = (V-.5)*100;
%Degrees in terms of F

Temp_F = 9/5*Temp_C + 32;

fprintf('Temperature Reading:\n  %.1f °C\n  %.1f °F\n',Temp_C,Temp_F)


s= Servo( a, D9)


