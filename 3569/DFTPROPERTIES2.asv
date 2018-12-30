clear all
clc
 
x=input('enter the input values:');
N=input('enter the N:');
L=length(x);
 
disp('1)Time Reversal')
disp('x((-n))N--DFT-->X((-k))')
xr=fliplr(x);
xs=circshift(xr,[1,1]);%x((-n))N-LHS
y=fft(xs,N); %DFT[LHS]=RHS
disp('DFT of LHS')
disp(y)
 
X=fft(x,N);
Xr=fliplr(X);
Xs=circshift(Xr,[1,1]);%X((-k))N-RHS
disp('RHS')
disp(Xs)
 
 
disp('2)Time Shift')
disp('x((n-a))N--DFT-->exp(-j2piak/N)*X(k)')
xtsh=circshift(x,[1,2]);%LHS
xtd=fft(xtsh,N); %DFT of LHS
disp('DFT of LHS')
disp(xtd)
 
for k=1:N
Xtsh(k)=X(k)*exp(((-1)*j*2*pi*2*(k-1))/N);%RHS
end
disp('RHS')
disp(Xtsh)
 
disp('3)Frequency Shift')
disp('x(n)*exp(j2pian/N)--DFT-->X((k-a))N')
for n=1:N
xtsh(n)=x(n)*exp((j*2*pi*2*(n-1))/N);%LHS
end
disp('LHS')
xtsh
 
Xtsh=circshift(X,[1,2]);%RHS
Xtd=ifft(Xtsh,N);%IDFT of RHS
disp('IDFT of RHS')
disp(Xtd)
 
