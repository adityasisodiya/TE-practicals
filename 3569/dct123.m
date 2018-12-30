clc;
clear all;
close all;
 
N=input('enter the value of N');
xn=input('enter xn');
xk=(zeros(1,N));
ak=(zeros(1,N));
ak(1)=sqrt(1/N);
for n=1:1:N-1
    ak(n+1)=sqrt(2/N);
end
 
for k=0:1:N-1
    for n=0:1:N-1
        xk(k+1)=xk(k+1)+ak(k+1)*xn(n+1)*(cos(((pi*((2*n)+1)*k)/(2*N))));
    end
end
xkf=dct(xn);
disp('DCT Using Computation');
disp(xk);
disp('DCT Using Inbuit function');
disp(xkf);
%IDCT
xki=xk;
xni=(zeros(1,N));
xk_ib=idct(xk);
for n=0:1:N-1
    for k=0:1:N-1
        xni(n+1)=xni(n+1)+ak(k+1)*xki(k+1)*(cos(((pi*((2*n)+1)*k)/(2*N))));
    end
end
disp('IDCT Using Computation');
disp(xni);
disp('IDCT Using Inbuit function');
disp(xk_ib);

