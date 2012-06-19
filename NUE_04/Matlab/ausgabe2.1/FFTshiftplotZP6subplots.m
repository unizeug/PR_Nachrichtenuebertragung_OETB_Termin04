function FFTshiftplotZP6subplots(a,b,c,d,e,g,farbe, Form, Signal, fignum)
%% Infos
% y         - Zeitvektor
% f_T       - Abtastfrequenz
% A         - Amplitude
% farbe     - Farbe des Graphen
% fignum    - Nummer der figure

%% Zeropadding ersmal ungenutzt

% Zeropadding Faktor
zpf = 10;


%% plot
figure(fignum);

subplot(2,3,1);
    %Berechnung des Spektrums
     tempa = zeros(length(a.A)*zpf,1);
     tempa(1:length(a.A)) = a.A;

     aA = tempa;
     
    a_DFT = fftshift(fft(aA));
    Na = length(aA);
    %Betragsspektrum
    a_DFT_abs = (abs(a_DFT)/(Na/zpf));
    %Frequenzachse
    f_Ta = 1/a.Tinterval;
    f_DFTa = f_Ta/(Na-1)*((-Na/2):(Na/2-1));
    
    plot(f_DFTa,a_DFT_abs);
%    axis tight;
    AXIS([0 300000 0 0.5])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
subplot(2,3,2);
    %Berechnung des Spektrums
     tempb = zeros(length(b.A)*zpf,1);
     tempb(1:length(b.A)) = b.A;

     bA = tempb;
     
    b_DFT = fftshift(fft(bA));
    Nb = length(bA);
    %Betragsspektrum
    b_DFT_abs = (abs(b_DFT)/(Nb/zpf));
    %Frequenzachse
    f_Tb = 1/b.Tinterval;
    f_DFTb = f_Tb/(Nb-1)*((-Nb/2):(Nb/2-1));

    plot(f_DFTb,b_DFT_abs);
%    axis tight;
    AXIS([0 300000 0 0.6])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
subplot(2,3,3);
    %Berechnung des Spektrums
     tempc = zeros(length(c.A)*zpf,1);
     tempc(1:length(c.A)) = c.A;

     cA = tempc;
     
    c_DFT = fftshift(fft(cA));
    Nc = length(cA);
    %Betragsspektrum
    c_DFT_abs = (abs(c_DFT)/(Nc/zpf));
    %Frequenzachse
    f_Tc = 1/c.Tinterval;
    f_DFTc = f_Tc/(Nc-1)*((-Nc/2):(Nc/2-1));

    plot(f_DFTc,c_DFT_abs);
%    axis tight;
    AXIS([0 300000 0 1])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
subplot(2,3,4);
    %Berechnung des Spektrums
     tempd = zeros(length(d.A)*zpf,1);
     tempd(1:length(d.A)) = d.A;

     dA = tempd;
     
    d_DFT = fftshift(fft(dA));
    Nd = length(dA);
    %Betragsspektrum
    d_DFT_abs = (abs(d_DFT)/(Nd/zpf));
    %Frequenzachse
    f_Td = 1/d.Tinterval;
    f_DFTd = f_Td/(Nd-1)*((-Nd/2):(Nd/2-1));

    plot(f_DFTd,d_DFT_abs);
%    axis tight;
    AXIS([0 300000 0 0.5])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
subplot(2,3,5);
    %Berechnung des Spektrums
     tempe = zeros(length(e.A)*zpf,1);
     tempe(1:length(e.A)) = e.A;

     eA = tempe;
     
    e_DFT = fftshift(fft(eA));
    Ne = length(eA);
    %Betragsspektrum
    e_DFT_abs = (abs(e_DFT)/(Ne/zpf));
    %Frequenzachse
    f_Te = 1/e.Tinterval;
    f_DFTe = f_Te/(Ne-1)*((-Ne/2):(Ne/2-1));

    plot(f_DFTe,e_DFT_abs);
%    axis tight;
    AXIS([0 300000 0 0.6])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
subplot(2,3,6);
    %Berechnung des Spektrums
     tempg = zeros(length(g.A)*zpf,1);
     tempg(1:length(g.A)) = g.A;

     gA = tempg;
     
    g_DFT = fftshift(fft(gA));
    Ng = length(gA);
    %Betragsspektrum
    g_DFT_abs = (abs(g_DFT)/(Ng/zpf));
    %Frequenzachse
    f_Tg = 1/g.Tinterval;
    f_DFTg = f_Tg/(Ng-1)*((-Ng/2):(Ng/2-1));

    plot(f_DFTg,g_DFT_abs);
%    axis tight;
    AXIS([0 300000 0 1])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
    
    SUPTITLE(['\bf '  Form   '-Top-Sampling bei '  Signal   'Quellsignal',10]);