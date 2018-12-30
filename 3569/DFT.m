clc;
clear all;
N=input('Enter the no. of points in DFT');
k=(0:1:N-1);
n=(0:1:N-1);
xn=input('Enter the element array');
L=length(xn);

if(N<L)           %validate length of DFT
    disp('"error,please verify no. of elements in DFT"')
    return;
  else if(N==L)
        disp(xn)
    else
      xn=[xn,zeros(1,N-L)];
      end
end

xk=(zeros(1,N));   %create array xk of all zeros as initial value
for k=0:1:N-1
for n=0:1:N-1
    xk(k+1)=xk(k+1)+(xn(n+1)*exp((-j*2*pi*n*k)/N));          %Equation of DFT
end
end
disp('calculated DFT is:')
xk
disp('calculated DFT by using inbuilt function is:')
yk=fft(xn,N)


disp('Magnitude plot of DFT is:')   %Amplitude plot
m=abs(xk)
subplot(1,2,1)
plot(m)
hold all
stem(m)
xlabel('time');
ylabel('Amplitude');
title('Amplitude plot');


disp('Phase plot of DFT is:')        %phase plot
subplot(122)
p=angle(xk)     
plot(p)
hold all
stem(p)
xlabel('time');
ylabel('Phase');
title('Phase plot');