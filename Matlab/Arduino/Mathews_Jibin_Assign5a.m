% Temperature Controlled LED and Servo 
% Jibin Mathews
% 11/19/2019

clear
clear s a

a = arduino('COM3', 'Uno', 'Libraries', 'Servo');
cmap=5-colormap('jet')*5;


MinPulseDuration = .001
MaxPulseDuration = .002

s = servo( a, 'D10','MaxPulseDuration',.0025,'MinPulseDuration',.0005);



x=0;
n=5;

for k = 1:n;
    for i=1:length(cmap)
        %Measuring Voltage
        V = readVoltage( a, 'A0');
        %Converter for Voltage to Temperature Celcius
        Temp_C = (V-.5)*100;
%         Temp_K = (1/(1/298.15))+(1/3435)+(log(1000/(5/(V-1)))/1000)
        %Convert Kelvin into Celcius
        x = [x Temp_C];
        plot(x);
        xlabel('Time')
        ylabel('Temperature')
        yline(230)
        yline(180)
        grid;
        pause(0);
        
       if Temp_C >= 230
            writePWMVoltage(a,'D5',cmap(i,1)); %Red
%             writeposition = (s,0);
%             current_position = (s)
            
            
            
        elseif Temp_C <= 180
            writePWMVoltage(a,'D3',cmap(i,2));%Blue
%             writeposition = (s,0);
            
        else
            writePWMVoltage(a,'D6',cmap(i,3));%Green
            
       
        end
        
        
          
    end
end



        
        



% 
% MaxPulseDuration = .001
% MinPulseDuration = .002
% 
% s = servo(a,'D4','MaxPulseDuration',25e-4,'MinPulseDuration',5e-3);