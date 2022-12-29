clear
duration = 2;
amplitude = 1;
frequency = 1;
samp_freq = 10;
samples_per_period = samp_freq / frequency;
samp_period = 1/samp_freq;
t = 0:samp_period:duration-samp_period;
s = amplitude*cos(2*pi*frequency*t);
plot(t,s,'rx')
xlabel('t (sec)')
ylabel('amplitude')
grid