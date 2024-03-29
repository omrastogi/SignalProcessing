clc;
clear;
N = 64;
a0 = 0.42;
a1 = 0.5;
a2 = 0.08;
n = 1:N;
w = a0 - a1 * cos((2*%pi*n)/(N-1)) + a2 * cos((4*%pi*n)/(N-1));
subplot(2,1,1);
title ('Time domain of Blackman Window Output');
xlabel ('samples');
ylabel ('Amplitude');
plot (n,w);
W = fft(w);
W = 20* log(abs(W))
subplot(2,1,2);
title ('Frequency domain of Blackman Window Output');
xlabel ('samples');
ylabel ('Amplitude');
plot (W);
