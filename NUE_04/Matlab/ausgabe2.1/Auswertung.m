%Auswertung
clear;clc;close all;
%% einlesen der gemessenen Daten
a = load('flat-top-sin-a02_10kHz+rekon');
b = load('flat-top-sin-a05_10kHz+rekon');
c = load('flat-top-sin-a07_10kHz+rekon');
d = load('flat-top-sin-a02_20kHz+rekon');
e = load('flat-top-sin-a05_20kHz+rekon');
g = load('flat-top-sin-a07_20kHz+rekon');
%% Konstanten, Achsen etc

f = 2000; %Quellsignal mit 2kHz

%% plotten des Zeitsignals
% PAM moduliert
%Zeitplot2(a,b,c,d,e,g, 'Sinus', 'Shape_Top', 'A',1)

% PAM demoduliert
% Zeitplot2(a,b,c,d,e,g, 'Sinus', 'Shape_Top', 'B',2)

%% Plotten des frequenzsignals

FFTshiftplotZP6subplots(a, b, c, d, e, g,'b','Flat', 'sinusförmiges', 3);

h = load('flat-top-recht-a02_10kHz+rekon');
i = load('flat-top-recht-a05_10kHz+rekon');
j = load('flat-top-recht-a07_10kHz+rekon');
k = load('flat-top-recht-a02_20kHz+rekon');
l = load('flat-top-recht-a05_20kHz+rekon');
m = load('flat-top-recht-a07_20kHz+rekon');

%Zeitplot2(h,i,j,k,l,m, 'Sinus', 'Shape_Top', 'A',4)
FFTshiftplotZP6subplots(h, i, j, k, l, m,'b', 'Flat', 'rechteckförmiges', 5);


n = load('flat-top-tp-recht-a02_10kHz+rekon');
o = load('flat-top-tp-recht-a05_10kHz+rekon');
p = load('flat-top-tp-recht-a07_10kHz+rekon');
q = load('flat-top-tp-recht-a02_20kHz+rekon');
r = load('flat-top-tp-recht-a05_20kHz+rekon');
s = load('flat-top-tp-recht-a07_20kHz+rekon');

%Zeitplot2(n,o,p,q,r,s, 'Sinus', 'Shape_Top', 'A',6)
FFTshiftplotZP6subplots(n, o, p, q, r, s,'b','Flat', ' tiefpassgefilteres, rechteckförmiges', 7);

t = load('shape-top-sin-a02_10kHz+rekon');
u = load('shape-top-sin-a05_10kHz+rekon');
v = load('shape-top-sin-a07_10kHz+rekon');
w = load('shape-top-sin-a02_20kHz+rekon');
x = load('shape-top-sin-a05_20kHz+rekon');
y = load('shape-top-sin-a07_20kHz+rekon');

%Zeitplot2(t,u,v,w,x,y, 'Sinus', 'Shape_Top', 'A',8)
FFTshiftplotZP6subplots(u, u, v, w, x, y,'b','Shape',  'sinusförmiges', 9);

aa = load('shape-top-recht-a02_10kHz+rekon');
bb = load('shape-top-recht-a05_10kHz+rekon');
cc = load('shape-top-recht-a07_10kHz+rekon');
dd = load('shape-top-recht-a02_20kHz+rekon');
ee = load('shape-top-recht-a05_20kHz+rekon');
gg = load('shape-top-recht-a07_20kHz+rekon');

%Zeitplot2(aa,bb,cc,dd,ee,gg, 'Sinus', 'Shape_Top', 'A',10)
FFTshiftplotZP6subplots(aa, bb, cc, dd, ee, gg,'b', 'Shape', 'rechteckförmiges', 11);

hh = load('shape-top-tp-recht-a02_10kHz+rekon');
ii = load('shape-top-tp-recht-a05_10kHz+rekon');
jj = load('shape-top-tp-recht-a07_10kHz+rekon');
kk = load('shape-top-tp-recht-a02_20kHz+rekon');
ll = load('shape-top-tp-recht-a05_20kHz+rekon');
mm = load('shape-top-tp-recht-a07_20kHz+rekon');

%Zeitplot2(hh,ii,jj,kk,ll,mm, 'Sinus', 'Shape_Top', 'A',12)
FFTshiftplotZP6subplots(hh, ii, jj, kk, ll, mm,'b', 'Shape', 'tiefpassgefilteres, rechteckförmiges', 13);