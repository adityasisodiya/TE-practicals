clc
clear all

A=input('Enter Amplitude of original signal to be sampled ');
F=input('Enter Frequency of original signal to be sampled ');
Fo=input('Enter The Oversampling Frequency ');
Fu=input('Enter The Undersampling Frequency ');

%sine signal          
T=1/F;
t=[0:0.001/F:T*2];
xt=A*cos(2*pi*F*t);
subplot(221);
plot(t,xt,'r');
xlabel('time');
ylabel('Amplitude');
title('sine wave');

%exact sampling
Fs=2*F;               %sampling freq.(Fs=2W)
n=[0:1/Fs:T*2];
xn=A*cos(2*pi*F*n);
subplot(222);
plot(t,xt);
hold all
stem(n,xn);
xlabel('time');
ylabel('Amplitude');
title('exact sampling');

%over sampling
n=[0:1/Fo:T*2];
xn=A*cos(2*pi*F*n);
subplot(223);
plot(t,xt);
hold all
stem(n,xn);
xlabel('time');
ylabel('Amplitude');
title('over sampling');

%under sampling
n=[0:1/Fu:T*2];
xn=A*cos(2*pi*F*n);
subplot(224);
plot(t,xt);
hold all
stem(n,xn);
xlabel('time');
ylabel('Amplitude');
title('under sampling');