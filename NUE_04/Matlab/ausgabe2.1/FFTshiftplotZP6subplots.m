function FFTshiftplotZP6subplots(a,farbe, fignum)
%% Infos
% y         - Zeitvektor
% f_T       - Abtastfrequenz
% A         - Amplitude
% farbe     - Farbe des Graphen
% fignum    - Nummer der figure

%% Zeropadding ersmal ungenutzt
% Zeropadding Faktor
% zpf = 1;
% 
% temp = zeros(length(a)*zpf,1);
% temp(1:length(a)) = a;
%  
% a. = temp;
% 
% T_ges = T_ges * zpf;



%Berechnung des Spektrums
a_DFT = fftshift(fft(a.B));
%y_DFT = fftshift(y_DFT);
N = length(a.B);
%Betragsspektrum
%y_DFT_abs = 10*LOG10(abs(y_DFT)/N);
a_DFT_abs = abs(a_DFT)/N;
%Frequenzachse
f_T = 1/a.Tinterval;
f_DFT = f_T/(N-1)*((-N/2):(N/2-1));

%% plot
figure(fignum);

subplot(2,3,1);
    plot(f_DFT,a_DFT_abs);
%    axis tight;
%    AXIS(-1*10^6 1*10^6 0 5*10^-3])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
