clc
clear all

%complex signal
A1=1;
A2=2;
F1=2;
F2=4;
T=1/F1;
t=[0:0.001:T*5];
xt=A1*sin(2*pi*F1*t)+A2*sin(2*pi*F2*t);
subplot(221);
plot(t,xt,'r');
xlabel('time');
ylabel('Amplitude');
title('Complex sine wave');

%exact sampling
Fs=2*F2;
n=[0:1/Fs:T*5];
xn=A1*sin(2*pi*F1*n)+A2*sin(2*pi*F2*n);
subplot(222);
plot(t,xt);
hold all
stem(n,xn);
xlabel('time');
ylabel('Amplitude');
title('exact sampling');

%over sampling
Fo=10;
n=[0:1/Fo:T*5];
xn=A1*sin(2*pi*F1*n)+A2*sin(2*pi*F2*n);
subplot(223);
plot(t,xt);
hold all
stem(n,xn);
xlabel('time');
ylabel('Amplitude');
title('over sampling');

%under sampling
Fu=3;
n=[0:1/Fu:T*5];
xn=A1*sin(2*pi*F1*n)+A2*sin(2*pi*F2*n);
subplot(224);
plot(t,xt);
hold all
stem(n,xn);
xlabel('time');
ylabel('Amplitude');
title('under sampling');
