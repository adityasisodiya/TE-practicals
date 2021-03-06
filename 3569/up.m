t = 0:0.001:1;     % Time vector
x = sin(2*pi*30*t) + sin(2*pi*60*t);           %signal

%upsampling
y = upsample(x,4);
subplot(321)
stem(x(1:30)); 
title('Original Signal');
subplot(322)
stem(y(1:120)); 
title('upsampled Signal');

%downsampling
y = downsample(x,4);
subplot(323)
stem(y(1:15)); 
title('Downsample Signal');

%interpolation
y = interp(x,4);
subplot(324)
stem(y(1:120)); 
title('Interpolated Signal');

%decimation
y = decimate(x,4);
subplot(325)
stem(y(1:30))                        % Decimated signal
title('Decimated Signal')


y = interp(x,4);
y = decimate(y,4);
subplot(326)
stem(y(1:30))                        % Decimated signal
title('I/D Signal')



