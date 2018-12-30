clc
close all
clear all
x=(1:100)+50*cos((1:100)*2*pi/40);
X = dct(x)
[XX,ind] = sort(abs(X),'descend');
i = 1;
while (norm([X(ind(1:i)) zeros(1,100-i)])/norm(X)<.99)
   i = i + 1;
end
needed=i;
X(ind(needed+1:end))=0;
xx=idct(X);
subplot(1,2,1)
plot([x;xx]')
legend('Original',['Reconstructed,N=' ,int2str(needed)],'location','SouthEast')
title('Signal reconstrution using DCT')


y=(1:100)+50*cos((1:100)*2*pi/40);
Y = fft(y);
[YY,ind] = sort(abs(Y),'descend');
i = 1;
while (norm([Y(ind(1:i)) zeros(1,100-i)])/norm(Y)<.99)
   i = i + 1;
end
needed=i;
Y(ind(needed+1:end))=0;
yy=ifft(Y);
subplot(1,2,2)
plot([y;yy]')
legend('Original',['Reconstructed,N=' ,int2str(needed)],'location','SouthEast')
title('Signal reconstrution using FFT')

