%Jibin Mathews
%10/12/2019
% Code involves user input and plots a Sinusoidal function

clear all;

%Duration
D_1= input (' Set a duration for the Signal-->');

% Signal Frequency
SignalFreq= input (' Set a Signal Frequency-->');

% Sample Frequency 
SampleFreq= input (' Set a Sample Frequency-->');
if SampleFreq < 2 
    disp([ ' Sample Frequency of 2 or more increases accuracy'])
    SampleFreq= input (' Set a Sample Frequency-->');
end

%Ball Size
Ballsize= input(' Set a Ball size-->');

%Assigning Colors for each peak
c = 1;
Colorpalette = ['r','g','b','m'];

% Amplitude
Ampl = 1;

SampPeriod = 1 / SampleFreq;



for t=(0:SampPeriod:D_1 - SampPeriod)
 
    if t >= Ampl/SignalFreq
        c = c+1;
        Ampl = Ampl+1;
    end
   
    %Only 4 colors are used so after the last color c must start at the
    %first color 
    if c > 4
        c = 1;
    end
   
   
    %f'(x)
    d = -2.*pi.*SignalFreq.*sin(2.*pi.*SignalFreq.*t);
    
    %f(x)
    f = cos(2*pi*SignalFreq*t);
   
    %The following if statements causes the "ball" to move faster when the
    %slope is downward, and faster when moving upward.
    if d < 1
        pause(0.1)
    else
        pause(0.25)
    end
   
    hold on
   
    %Titles for the graph:
    xlabel('Duration (Seconds)');
    ylabel('Amplitude');
    title(['Oscilating Ball given Signal Frequency and Sampling Frequency (Hz)'])
   
   
    %The followings sets the graph's boundaries.
    xlim ([0 D_1])
    ylim ([-1 1])
   
   
    %Finally, the following will graph our function.
    plot(t,f,'.', 'MarkerSize', Ballsize, 'color', Colorpalette(c))
end

