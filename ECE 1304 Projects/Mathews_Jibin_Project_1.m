% ECE-1304-001 Spring 2020
%Project 1 
%Jibin Mathews
%01/29/2020
%Project allows to User to insert a wave length or frequency in which the
%program returns the region it is located in

clear
clc
x='y';

%While loop that allows user to restart program without rerunning
while (x=='y' || x=='Y');    

%Menu program that includes 2 switches for the user to select between
%(Frequency and Wavelength)
reg= menu('Select Input Method','Wavelength','Frequency');
switch reg
    case 1
        Region=input('Enter the Wavelength (cm)-->');
        
        % If and End statements that determine which region the entered wavelength is in
        if (Region >10)
            disp('Electromagnetic Region is: Radio') 
        end
        
        if (Region <=10 && Region >=0.01)
            disp('Electromagnetic Region is: Microwave')
        end
        
        if (Region <0.01 && Region>= .00007)
            disp('Electromagnetic Region is: Infrared')
        end
        
        if (Region <.00007 && Region >= .00004)
            disp('Electromagnetic Region is: Visible')
        end
        
        if (Region >=.0000001 && Region <.00004 )
            disp('Electromagnetic Region is: Ultraviolet')
        end
        
        if (Region >= .000000001 && Region <.0000001 )
            disp('Electromagnetic Region is: X-Ray')
        end
        
        if (Region < .000000001)
            disp('Electromagnetic Region is: Gamma Ray')
        end
        
%If User selects the Frequency option this case will run        
    case 2 
        Region=input('Enter the Frequency (Hz)');
        
        if (Region < 3e9 )
            disp('Electromagnetic Region is: Radio')
        end
        
        if (Region >= 3e9 && Region <= 3e12 )
            disp('Electromagnetic Region is: Microwave')
        end
        
        if (Region > 3e12 && Region <= 4.3e14 )
            disp('Electromagnetic Region is: Infrared')
        end
        
        if (Region > 4.3e14 && Region <=7.5e14 )
            disp('Electromagnetic Region is: Visible')
        end
        
        if (Region >7.5e14 && Region <= 3e17 )
            disp('Electromagnetic Region is: Ultraviolet')
        end
        
        if (Region > 3e17 && Region <= 3e19 )
            disp('Electromagnetic Region is: X-Ray')
        end
        
        if (Region > 3e19 )
            disp('Electromagnetic Region is: Gamma Ray')
        end
        
end

% This allows the user to loop and run the program again
       x=input('Want to Identify another Region? (y/Y continues any other quits) ' , 's');
        disp(' '); 
end