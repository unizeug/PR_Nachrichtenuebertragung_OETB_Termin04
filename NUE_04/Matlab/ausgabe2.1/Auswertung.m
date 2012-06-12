%Auswertung
clear;clc;close all;
%% einlesen der gemessenen Daten
a = load('shape-top-tp-recht-a02_10kHz+rekon');
b = load('shape-top-tp-recht-a05_10kHz+rekon');
c = load('shape-top-tp-recht-a07_10kHz+rekon');
d = load('shape-top-tp-recht-a02_20kHz+rekon');
e = load('shape-top-tp-recht-a05_20kHz+rekon');
g = load('shape-top-tp-recht-a07_20kHz+rekon');
%% Konstanten, Achsen etc

f = 2000; %Quellsignal mit 2kHz

%% plotten des Zeitsignals
% PAM moduliert
Zeitplot2(a,b,c,d,e,g, 'Sinus', 'Shape_Top', 'A',1)

% PAM demoduliert
% Zeitplot2(a,b,c,d,e,g, 'Sinus', 'Shape_Top', 'B',2)

%% Plotten des frequenzsignals

% FFTshiftplotZP6subplots(a, 'b', 3)


%% infos

% Quellsignal
% Frequenz: 2kHz