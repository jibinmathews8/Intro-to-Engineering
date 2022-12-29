clc
clear

repeat='y';
while(repeat=='y'|| repeat=='Y');
    
    num=input('Enter an Integer Number');
    if(rem(num,2)==0)
        disp([num2str(num),'IS EVEN']);
    else
        disp([num2str(num),'IS ODD']);
    end
    
    repeat=input('Do you want to continue?(Y/y continues, any other quits','s');
    disp('')
end