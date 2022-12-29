close all;
clear all;

%eos elements are the elements of the signal; hence, the term eos.
eos = input('Provide duration, frequency, sampling frequency, and ball size like this [_ _ _ _]--> ');

%The following attributes the values of the array input to their respective
%labels.
dur = eos(1);
freq = eos(2);
samp = eos(3);
bsize = eos(4);

%c and Color will be used to make color change possible in the coming "for"
%loop.
c = 1;
Colorpalette = ['r','g','b','m'];

%"peak" is the variable that, when multiplied by 1/freq, equals the first
%peak of the graph after the beginning.
peak = 1;




for t=(0:(1/samp):dur)
   
    %When the t/time/x value is equivelant to, or greater than, the current
    %peak variable divided by frequency, then the c must have one added to
    %it to change the color and the peak variable must be raised by one so
    %that the color can keep changing.
    if t >= peak/freq
        c = c+1;
        peak = peak+1;
        if c > 4;
            c = 1;
        end   
    end
    
   
   
    %WaveSig and deriv are basically the f(x) and the f'(x) of the signal
    %provided.
    deriv = -2.*pi.*freq.*sin(2.*pi.*freq.*t);
   
    WaveSig = cos(2*pi*freq*dur);
   
    %The following if statements causes the "ball" to move faster when the
    %slope is downward, and faster when moving upward.
    if deriv < 1
        pause(0.1)
    else
        pause(0.25)
    end
   
    hold on
   
    %Titles for the graph:
    xlabel('t-values/time (measured in seconds)');
    ylabel('Voltage/Amp Value');
    title(['Wave= cos(2pi*f*t); Samp. Freq.= ',num2str(samp), ' and Freq./f= ',num2str(freq),'. (Both measured in Hz)'])
   
   
    %The followings sets the graph's boundaries.
    xlim ([0 dur])
    ylim ([-1 1])
   
   
    %Finally, the following will graph our function.
    plot(t,WaveSig,'.', 'MarkerSize', bsize, 'color', Colorpalette(c));
end