%Jibin Mathews
%10/25/2019
%This program helps identify DTMF tones via recording or prerecorded file

clear

Fs = 48000;
dur = 3;

% Asks user whether they would like to record a tone or use a .wav file
r = input('Record? , Enter 1 if not enter 0-->'); 

% User chose to record a tone
if r ==1 
    r= audiorecorder (Fs,16,1) ;
    uiwait(msgbox('Press OK to start'))
    recordblocking(r,dur);
    play(r)
    signal = getaudiodata(r, 'double');
%User chose to use a pre recorded tone    
elseif r == 0
    [signal,Fs]= audioread(input(" Type a .wav file-->"));
    
end

%Recorded Signal 
duration = length(signal)/Fs;

samp_period = 1/Fs;
t = 0:samp_period:duration-samp_period;
% FFT( Blackbox)
deltaU=1/(length(t)*samp_period);
f=-0.5*Fs:deltaU:0.5*Fs-deltaU;
sfft=abs(fftshift(fft(signal)));

%Plotting the frequency vs amplitude
figure
plot(f,sfft)

xlabel('Hz (Frequency)')
ylabel( 'Spectrum Amplitude' )
grid on;

detected_f= f(sfft > 2000);
detected_pos_f= detected_f(detected_f > 0);

% Frequencies w/ range of 6 to detect individual tones
if (sum(sfft(f<1212 & f>1206))>60&&sum(sfft(f<700 & f>694))>60), disp('The Tone pressed is 1'), end

if (sum(sfft(f<1339 & f>1333))>60&&sum(sfft(f<700 & f>694))>60), disp('The Tone pressed is 2'), end

if (sum(sfft(f<1480 & f>1474))>60&&sum(sfft(f<700 & f>694))>60), disp('The Tone pressed is 3'), end

if (sum(sfft(f<1212 & f>1206))>60&&sum(sfft(f<773 & f>767))>60), disp('The Tone pressed is 4'), end

if (sum(sfft(f<1339 & f>1333))>60&&sum(sfft(f<773 & f>767))>60), disp('The Tone pressed is 5'), end

if (sum(sfft(f<1480 & f>1474))>60&&sum(sfft(f<773 & f>767))>60), disp('The Tone pressed is 6'), end

if (sum(sfft(f<1212 & f>1206))>60&&sum(sfft(f<855 & f>849))>60), disp('The Tone pressed is 7'), end

if (sum(sfft(f<1339 & f>1333))>60&&sum(sfft(f<855 & f>849))>60), disp('The Tone pressed is 8'), end

if (sum(sfft(f<1480 & f>1474))>60&&sum(sfft(f<855 & f>849))>60), disp('The Tone pressed is 9'), end

if (sum(sfft(f<1339 & f>1333))>60&&sum(sfft(f<944 & f>938))>60), disp('The Tone pressed is 0'), end

if (sum(sfft(f<1212 & f>1206))>60&&sum(sfft(f<944 & f>938))>60), disp('The Tone pressed is *'), end

if (sum(sfft(f<1480 & f>1474))>60&&sum(sfft(f<944 & f>938))>60), disp('The Tone pressed is #'), end

















