 clear all;
 close all;
 clc
 
 t = 3/1024:3/1024:60;
 A =  dlmread('24.txt');
 x = A(:,1);
% plot (x);
 Sf = fft(x);
 plot(t, Sf)
 y = hilbert(x);
 env = abs (y);
 plot_param = {'Color', [0.6 0.1 0.2], 'Linewidth', 2};
 
% plot(t, x)
% hold on
% plot(t, env, plot_param{:})
% hold off
% xlim([0 1])
 title('Hilbert Envelope')
 
 