clc;
clear all;
N=input('Enter the no. of points in xn ');
xn=input('Enter the sequence xn');
disp('xn is:')
xn
disp('DFTof xn is:')
xk=fft(xn,N)
 
%Time Reversal
disp('1)Time Reversal')
xf=fliplr(xn)
xp=circshift(xf,[1 1])
 
disp('DFT of reversed xn is:')
LHS1=fft(xp)
 
disp('reversed DFT is:')
xm=fliplr(xk)
RHS1=circshift(xm,[1 1])
 
%time shift
disp('2)time shift')
a=input('enter the no. by which xn to be shifted')
xz=circshift(xn,[1 a])
 
disp('DFT of shifted xn is:')
LHS2=fft(xz)
 
disp('shifted DFT is:')
for k=1:1:N
RHS2(k)=(exp((-1*j*2*pi*a*(k-1)/N))*xk(k));
end
RHS2
 
%Frequency Shift
disp('3)Frequency Shift')
for n=1:N
LHS3(n)=xn(n)*exp((j*2*pi*2*(n-1))/N);
end
LHS3
 
Xtsh=circshift(xk,[1,2]);%RHS
RHS3=ifft(Xtsh,N);%IDFT of RHS
RHS3

