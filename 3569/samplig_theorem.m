clc
clear all

%sine signal
A=1;
F=5;                 %signal freq.
T=1/F;
t=(0:0.001/F:T*2);
xt=A*cos(2*pi*F*t);
subplot(221);
plot(t,xt,'r');
xlabel('time');
ylabel('Amplitude');
title('sine wave');

%exact sampling
Fs=2*F;               %sampling freq.(Fs=2W)
n=(0:1/Fs:T*2);
xn=A*cos(2*pi*F*n);
subplot(222);
plot(t,xt,'r');
hold all
stem(n,xn);
xlabel('time');
ylabel('Amplitude');
title('exact sampling');

%over sampling
Fo=50;               %sampling freq.(Fs>2W)
n=(0:1/Fo:T*2);
xn=A*cos(2*pi*F*n);
subplot(223);
plot(t,xt);
hold all
stem(n,xn);
xlabel('time');
ylabel('Amplitude');
title('over sampling');

%under sampling
Fu=5;                 %sampling freq.(Fs<2W)
n=(0:1/Fu:T*2);
xn=A*cos(2*pi*F*n);
subplot(224);
plot(t,xt);
hold all
stem(n,xn);
xlabel('time');
ylabel('Amplitude');
title('under sampling');