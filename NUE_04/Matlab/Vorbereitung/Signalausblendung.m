% Shape-Top-Sampling

%% Erzeugen des Quellsignals
f=2000;
A=2;
f_T = 400000;
T_ges=2/f;
t=0:1/f_T:T_ges;

u = sin(2*pi*f.*t);
%FFTshiftplotZP(u, T_ges, f_T, A,'b', 1)

%% Erzeugen des Rechtecksignals
Ar = 2;
alphar =0.2;
fr=10000;

recht = rechteck(Ar,alphar,fr,f_T,T_ges);
FFTshiftplotZP(recht, T_ges, f_T, Ar,'b', 2)