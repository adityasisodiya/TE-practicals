clc;
clear all;
N=input('Enter the order of filter');
Pb=input('Enter passband frequency');
Sb=input('Enter stopband frequency');
fs=input('Sampling frquency');
wc=(Pb/2*Sb);
fc=wc*2/fs;

%for rectwin
h1=fir1((N-1),fc,rectwin(N));
[hn1,fn]=freqz(h1,2,512,fs);
display(hn1);
subplot(3,2,1);
plot(20*log(abs(hn1)));
title('rectangular window');
xlabel('frequency');
ylabel('magnitude');


%for hanning
h2=fir1((N-1),fc,hann(N));
[hn2,fn]=freqz(h2,1,512,fs);
display(hn2);
subplot(3,2,2);
plot(20*log(abs(hn2)));
title('hanning window');
xlabel('frequency');
ylabel('magnitude');

%for hamming
h3=fir1((N-1),fc,hamming(N));
[hn3,fn]=freqz(h3,1,512,fs);
display(hn3);
subplot(3,2,3);
plot(20*log(abs(hn3)));
title('hamming window');
xlabel('frequency');
ylabel('magnitude');
hold all;

%for blackmann window
h4=fir1((N-1),fc,blackman(N));
[hn4,fn]=freqz(h4,1,512,fs);
display(hn4);
subplot(3,2,4);
plot(20*log(abs(hn4)));
title('blackmann window');
xlabel('frequency');
ylabel('magnitude');
hold all;

%for bartlett window
h5=fir1((N-1),fc,bartlett(N));
[hn5,fn]=freqz(h5,1,512,fs);
display(hn5);
subplot(3,2,5);
plot(20*log(abs(hn5)));
title('bartlett window');
xlabel('frequency');
ylabel('magnitude');
hold all;

%for kaiser window
h6=fir1((N-1),fc,kaiser(N,2));
[hn6,fn]=freqz(h6,1,512,fs);
display(hn6);
subplot(3,2,6);
plot(20*log(abs(hn6)));
title('kaiser window');
xlabel('frequency');
ylabel('magnitude');
hold all;

wvtool(rectwin(N),hann(N),hamming(N),blackman(N),bartlett(N),kaiser(N,2));