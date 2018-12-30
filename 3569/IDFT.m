clc;
clear all;
N=input('Enter the no. of points in IDFT');
k=[0:1:N-1];
n=[0:1:N-1];
xk=input('Enter the element array');
L=length(xk);

if(N<L)           %validate length of IDFT
    disp('"error,please verify no. of elements in IDFT"')
    return;
  else if(N==L)
        disp(xk)
    else
      xk=[xk,zeros(1,N-L)];
      end
end

xn=[zeros(1,N)];   %create array xn of all zeros
for k=0:1:N-1
for n=0:1:N-1
    xn(n+1)=xn(n+1)+(xk(k+1)*exp((j*2*pi*n*k)/N));          %Equation of DFT
end
end
xn=xn/N;
disp('calculated IDFT is:')
xn
disp('calculated IDFT by using inbuilt function is:')
yn=ifft(xk,N)


disp('Magnitude plot of IDFT is:')   %Amplitude plot
m=abs(xn)
subplot(121)
plot(m)
hold all
stem(m)
xlabel('time');
ylabel('Amplitude');
title('Amplitude plot');


disp('Phase plot of DFT is:')        %phase plot
subplot(122)
p=angle(xn)     
plot(p)
hold all
stem(p)
xlabel('time');
ylabel('Phase');
title('Phase plot');