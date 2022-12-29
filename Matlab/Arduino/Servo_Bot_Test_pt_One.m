clc, close all
a = arduino('com3','uno') 
servo_motor = servo(a,'D4')
tic
x = 0;
y = 0;
while toc < 30
    voltage1 = a.readVoltage('A0');
    voltage2 = a.readVoltage('A1');
    angle1 = 180/(voltage1*204.6);
    angle2 = 180/(voltage2*204.6);
    x = [x, voltage1*36];
    y = [y, voltage2*36];
    subplot(1,2,1), plot(x,'LineWidth',2), grid on, axis([0,length(x),0,180]), ylabel('Servo 1')
    subplot(1,2,2), plot(y,'r','LineWidth',2), grid on, axis([0,length(y),0,180]), ylabel('Servo 2')
    title('MATLAB pre Studentov')
    if angle1 > 1 
           angle1 = 1;
           writePosition(servo_motor1,angle1);            
        else
            writePosition(servo_motor1,angle1);            
    end
    if angle2 > 1 
           angle2 = 1;
           writePosition(servo_motor2,angle2);            
        else
            writePosition(servo_motor2,angle2);            
    end
    drawnow;
end