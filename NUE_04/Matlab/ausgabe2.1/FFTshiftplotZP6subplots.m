function FFTshiftplotZP6subplots(a,b,c,d,e,g,farbe, fignum)
%% Infos
% y         - Zeitvektor
% f_T       - Abtastfrequenz
% A         - Amplitude
% farbe     - Farbe des Graphen
% fignum    - Nummer der figure

%% Zeropadding ersmal ungenutzt

zpf = 1;

%% plot
figure(fignum);

subplot(2,3,1);
    %Berechnung des Spektrums
    % Zeropadding Faktor
     

     temp = zeros(length(a.A)*zpf,1);
     temp(1:length(a.A)) = a.A;

     aA = temp;

     %T_ges = a.Tinterval*a.Length;
     %T_ges = T_ges * zpf;
     
     
    a_DFT = fftshift(fft(aA));
    Na = length(aA);
    %Betragsspektrum
    a_DFT_abs = 10*LOG10(abs(a_DFT)/(Na/zpf));
    %Frequenzachse
    f_Ta = 1/a.Tinterval;
    f_DFTa = f_Ta/(Na-1)*((-Na/2):(Na/2-1));

    plot(f_DFTa,a_DFT_abs);
%    axis tight;
    AXIS([0 300*10^3 -60 0])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
subplot(2,3,2);
    %Berechnung des Spektrums
    b_DFT = fftshift(fft(b.A));
    Nb = length(b.A);
    %Betragsspektrum
    b_DFT_abs = 10*LOG10(abs(b_DFT)/Nb);
    %Frequenzachse
    f_Tb = 1/b.Tinterval;
    f_DFTb = f_Tb/(Nb-1)*((-Nb/2):(Nb/2-1));

    plot(f_DFTb,b_DFT_abs);
%    axis tight;
%    AXIS(-1*10^6 1*10^6 0 5*10^-3])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
subplot(2,3,3);
    %Berechnung des Spektrums
    c_DFT = fftshift(fft(c.A));
    Nc = length(c.A);
    %Betragsspektrum
    c_DFT_abs = 10*LOG10(abs(c_DFT)/Nc);
    %Frequenzachse
    f_Tc = 1/c.Tinterval;
    f_DFTc = f_Tc/(Nc-1)*((-Nc/2):(Nc/2-1));

    plot(f_DFTc,c_DFT_abs);
%    axis tight;
%    AXIS(-1*10^6 1*10^6 0 5*10^-3])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
subplot(2,3,4);
    %Berechnung des Spektrums
    d_DFT = fftshift(fft(d.A));
    Nd = length(d.A);
    %Betragsspektrum
    d_DFT_abs = 10*LOG10(abs(d_DFT)/Nd);
    %Frequenzachse
    f_Td = 1/d.Tinterval;
    f_DFTd = f_Td/(Nd-1)*((-Nd/2):(Nd/2-1));

    plot(f_DFTd,d_DFT_abs);
%    axis tight;
%    AXIS(-1*10^6 1*10^6 0 5*10^-3])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
subplot(2,3,5);
    %Berechnung des Spektrums
    e_DFT = fftshift(fft(e.A));
    Ne = length(e.A);
    %Betragsspektrum
    e_DFT_abs = 10*LOG10(abs(e_DFT)/Ne);
    %Frequenzachse
    f_Te = 1/e.Tinterval;
    f_DFTe = f_Te/(Ne-1)*((-Ne/2):(Ne/2-1));

    plot(f_DFTe,e_DFT_abs);
%    axis tight;
%    AXIS(-1*10^6 1*10^6 0 5*10^-3])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
subplot(2,3,6);
    %Berechnung des Spektrums
    g_DFT = fftshift(fft(g.A));
    Ng = length(g.A);
    %Betragsspektrum
    g_DFT_abs = 10*LOG10(abs(g_DFT)/Ng);
    %Frequenzachse
    f_Tg = 1/g.Tinterval;
    f_DFTg = f_Tg/(Ng-1)*((-Ng/2):(Ng/2-1));

    plot(f_DFTg,g_DFT_abs);
%    axis tight;
%    AXIS(-1*10^6 1*10^6 0 5*10^-3])
    title('Amplitudenspektrum');
    xlabel('f/Hz');
    ylabel('A(f)[dB]');
