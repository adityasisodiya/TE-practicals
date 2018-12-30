t = 0:0.001:1;     % Time vector
x = sin(2*pi*30*t) + sin(2*pi*60*t);
y = interp(x,4);
stem(x(1:30)); 
title('Original Signal');
figure
stem(y(1:120)); 
title('Interpolated Signal');