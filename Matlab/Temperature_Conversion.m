clc 

conv=menu('Select Temperature Conversion','Fahrenheit==> Celsius','Celsius==> Fahrenheit');
switch conv
    case 1
        Temperature=input ('Enter the Temperature in Farenheit units');
        TC=(9/5)*(Temperature-32);
        disp([num2str(Temperature),'F=',num2str(TC),'C'])
    case 2
         Temperature=input ('Enter the Temperature in Celsius units');
        TF=(5/9)*(Temperature+32);
        disp([num2str(Temperature),'C=',num2str(TF),'F'])
end
