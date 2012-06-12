%Ausgeben
clear;

%a = load('shape-top-tp-recht-a02_10kHz+rekon.mat');
%a = load('flat-top-tp-recht-a07_10kHz+rekon.mat');
a = load('shape-top-tp-recht-a02_10kHz+rekon.mat');

clf;
%plot(a.A);
hold on
plot(a.B, 'r');
hold off
