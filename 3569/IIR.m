clc;
clear all;
%design second order digital IIR filter
%Problem Step 1:
b=1
a=[1, sqrt(2),1]
disp('Hs=');
tf(b,a)
T=1;
%impulse invariance method
[bz,az]=impinvar(b,a,T);%H(z)
tf(bz,az,T)
[Ha,Wa]=freqs(b,a,512);
[Hz,Wz]=freqz(bz,az,512);
subplot(2,2,1);
plot((Wa/(2*pi)),(20*log(abs(Ha))));
hold all;
plot((Wz/(2*pi)),(20*log(abs(Hz))));
legend('analog','digital','southeast');
xlabel('W');
ylabel('gain in db');
title('impulse invariance transformation');
subplot(2,2,2);
zz=roots(bz);
pp=roots(az);
zplane(zz,pp);


%Bilinear Transformation
[bz,az]=bilinear(b,a,T);%H(z)
tf(bz,az,T)
[Ha,Wa]=freqs(b,a,512);
[Hz,Wz]=freqz(bz,az,512);
subplot(2,2,3);
plot((Wa/(2*pi)),(20*log(abs(Ha))));
hold all;
xlabel('W'); ylabel('gain in db');
plot((Wz/(2*pi)),(20*log(abs(Hz))));
legend('analog','digital','southeast');
title('Bilinear transformation');
subplot(2,2,4);
zz=roots(bz);
pp=roots(az);
zplane(zz,pp);

%Problem Step 2:
%design for Wn and N

N=2
wc=0.7
%impulse invariance method
[b,a]=butter(N,wc);
tf(b,a)
[bz,az]=impinvar(b,a,T);%H(z)
tf(bz,az,T)
[Ha,Wa]=freqs(b,a,512);
[Hz,Wz]=freqz(bz,az,512);
figure(2);
subplot(2,2,1);
plot((Wa/(2*pi)),(20*log(abs(Ha))));
hold all;
xlabel('W'); ylabel('gain in db');
plot((Wz/(2*pi)),(20*log(abs(Hz))));
legend('analog','digital','southeast');
title('impulse invariance transformation');
subplot(2,2,2);
zz=roots(bz);
pp=roots(az);
zplane(zz,pp);


%Bilinear Transformation
[bz,az]=bilinear(b,a,T);%H(z)
tf(bz,az,T)
[Ha,Wa]=freqs(b,a,512);
[Hz,Wz]=freqz(bz,az,512);
subplot(2,2,3);
plot((Wa/(2*pi)),(20*log(abs(Ha))));
hold all;
xlabel('W'); ylabel('gain in db');
plot((Wz/(2*pi)),(20*log(abs(Hz))));
legend('analog','digital','southeast');
title('Bilinear transformation');
subplot(2,2,4);
zz=roots(bz);
pp=roots(az);
zplane(zz,pp);


%Problem Step 3:
wp=0.4
ws=0.6
Ap=2
As=3


%impulse invariance method
Wp=wp/T;
Ws=ws/T;
[N,wc]=buttord(Wp,Ws,Ap,As);

[b,a]=butter(N,wc);
tf(b,a)
[bz,az]=impinvar(b,a,T);%H(z)
tf(bz,az,T)
[Ha,Wa]=freqs(b,a,512);
[Hz,Wz]=freqz(bz,az,512);
figure(3);
subplot(2,2,1);
plot((Wa/(2*pi)),(20*log(abs(Ha))));
hold all;
xlabel('W'); ylabel('gain in db');
plot((Wz/(2*pi)),(20*log(abs(Hz))));
legend('analog','digital','southeast');
title('impulse invariance transformation');
subplot(2,2,2);
zz=roots(bz);
pp=roots(az);
zplane(zz,pp);



%Bilinear Transformation
Wp=(2/T)*(tan(wp/2));
Ws=(2/T)*(tan(ws/2));
[N,wc]=buttord(Wp,Ws,Ap,As);


[bz,az]=bilinear(b,a,T);%H(z)
tf(bz,az,T)
[Ha,Wa]=freqs(b,a,512);
[Hz,Wz]=freqz(bz,az,512);
subplot(2,2,3);
plot((Wa/(2*pi)),(20*log(abs(Ha))));
hold all;
xlabel('W'); 
ylabel('gain in db');
plot((Wz/(2*pi)),(20*log(abs(Hz))));
legend('analog','digital','southeast');
title('Bilinear transformation');
subplot(2,2,4);
zz=roots(bz);
pp=roots(az);
zplane(zz,pp);

