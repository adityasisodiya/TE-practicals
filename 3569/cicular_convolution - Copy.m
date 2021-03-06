clc;
clear all;
p=input('Enter the no. of points in xn ');   %length of first sequence
xn=input('Enter the element array in xn'); 
q=input('Enter the no. of points in hn ');   %length of second sequence
hn=input('Enter the element array in hn');
N=max(p,q);                %length of cicular convolution sequence

%Circular convolution:-
disp('calculated circular convolution using inbuilt function is:')
cconv(xn,hn,N)                %circular  conv. command

%Linear convolution by circular convolution:-
disp('calculated linear convolution using inbuilt function is:')
conv(xn,hn)                    %linear conv. command

%Verifying Property:-
disp('dft of xn is:')
xk=fft(xn,N)             %DFT of first sequence
disp('dft of hn is:')
hk=fft(hn,N)             %DFT of second sequence
yk=(xk.*hk)
disp('calculated circular convolution is:')
yn=ifft(yk)               %inbuilt function/command for IDFT



%matrix method for circular convolution
if(p>q)
    hn=[hn,zeros(1,p-q)];
else
    xn=[xn,zeros(1,q-p)];
end

X=transpose(xn);
H=transpose(hn);
temp=H;
for i=1:N-1
    temp=circshift(temp,1);
    H=horzcat(H,temp);
end
X
H
disp('circular convolution by matrix method is Y=H*X : ')
Y=H*X
