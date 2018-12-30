clc;
clear all;
p=input('Enter the no. of points in xn ');
x=input('Enter the element array in xn');
q=input('Enter the no. of points in hn ');
h=input('Enter the element array in hn');
 xn=[x,zeros(1,q-1)];
 hn=[h,zeros(1,p-1)];
 N=p+q-1;
disp('dft of xn is:')
xk=fft(xn,N)
disp('dft of hn is:')
hk=fft(hn,N)
yk=(xk.*hk)
disp('calculated linear convolution is:')
yn=ifft(yk)
disp('calculated linear convolution using inbuilt function is:')
conv(x,h)
