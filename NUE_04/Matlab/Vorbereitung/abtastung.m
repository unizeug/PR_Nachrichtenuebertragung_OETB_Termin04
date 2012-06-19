% Technische Universität Berlin, Fachgebiet Nachrichtenübertragung
% Praktikum Nachrichtenübertragung im SS 2012
% 4. Termin: Pulsamplitudenmodulation und nichtideale Abtastung

clc;clear;close all;

T_ges = 1;                  % Simulationsdauer in Sekunden

f_T_sim = 400000;           % Abtastfrequenz der Simulation

N = round(f_T_sim*T_ges);   % Anzahl der Werte der Simulation

n = 0:N-1;                  % n-ter Abtastwert
t = n ./ f_T_sim;           % Zeitpunkte der Abtastung
nf = n .* N ./ f_T_sim;     % physikalische Frequenzen für N-Punkte FFT an der Stelle n

% Sinus-Signal mit 2 kHz und 2 V Amplitude

f_sin = 2000;
Omega_sin = 2*pi*f_sin./f_T_sim;
A_sin = 2;

u_sin = A_sin*sin(Omega_sin.*n);

% Variation für alpha_c und f_c

f_vis = 250000;             % Darstellung der Frequenzen von 0 bis f_vis Hz
n_U_vis = f_vis / f_T_sim * N;
n_u_vis = 2*N*1 / f_sin;
Nc = 2;
Na = 3;
i = 1;
for f_c = [10000 20000] % in kHz
    for alpha_c = [0.2 0.5 0.7]
        
        % unipolares Rechtecksignal mit 0..3 V Spannung als Abtastsignal mit f_c als Frequenz
        % function res = rechteck(A,alpha,f,f_T,T_ges)
        c = rechteck(0.5, alpha_c, f_c, f_T_sim, T_ges)+0.5;
        
        % Signalausblendung (Shape-Top-Sampling);
        u_sin_pam = u_sin.*c;                       % Zeitsignal nach Abtastung mit Signalausblendung
        U_sin_pam = abs(fft(u_sin_pam)./N);         % Betragsfrequenzgang nach Abtastung mit Signalausblendung
        
        % Si-Funktion erstellen
        N = length(c);
        zero_padded = zeros(1,N);
        zero_padded(1:N/f_c) = c(1:N/f_c);
        
        zero_padded = zero_padded;
        u_si = abs(fft(zero_padded)./(N/f_c));
 
%             %Plot-Befehle shape-top sampling
%             figure(1);
%             subplot(Nc,Na,i);
%             stem(t(1:n_u_vis),u_sin_pam(1:n_u_vis));
%             axis tight;
%             xlabel('t in s');
%             ylabel('Amplitude in V');
%             title(['Shape-Top \alpha = ' num2str(alpha_c) ' und f_T = ' num2str(f_c)]);
%             hold on
%             plot(t(1:n_u_vis), 3*u_sin(1:n_u_vis), 'r');
%             hold off
%             figure(2);
%             subplot(Nc,Na,i);
%             plot(nf(1:n_U_vis)./1000,U_sin_pam(1:n_U_vis)./N);
%             axis tight;
%             xlabel('f in kHz');
%             title(['Shape-Top \alpha = ' num2str(alpha_c) ' und f_T = ' num2str(f_c)]);
%             hold on
%             plot(nf(1:n_U_vis)./1000, u_si(1:n_U_vis)./N, 'r');
%             hold off

%        figure(1);
%        subplot(Nc,Na,i);
%        stem(t(1:n_u_vis),u_sin_pam(1:n_u_vis));
%        axis tight;
%        xlabel('t [s]');
%        ylabel('Amplitude [V]');
%        title(['\alpha = ' num2str(alpha_c) ' und f_T = ' num2str(f_c)]);
%        hold on
%        plot(t(1:n_u_vis), 3*u_sin(1:n_u_vis), 'r');
%        hold off
%        
%        figure(2);
%        subplot(Nc,Na,i);
%        plot(nf(1:n_U_vis)./1000,U_sin_pam(1:n_U_vis));
%        hold on
%        plot(nf(1:n_U_vis)./1000, u_si(1:n_U_vis),'r');
%        hold off
%        axis tight;
%        xlabel('f [kHz]');
%        title(['\alpha = ' num2str(alpha_c) ' und f_T = ' num2str(f_c),10]);
%        
       
        % Signalverbreiterung (Flat-Top-Sampling);
        % function res = halteglied(x,f,f_T,T_ges);
        h = halteglied(u_sin, f_c, f_T_sim, T_ges);

          % Zeitsignal nach Halteglied (Sample&Hold)
          u_sin_sh = h;     
          % Zeitsignal nach Abtastung mit Signalverbreiterung
          u_sin_sh_pam = h.*c;      
          % Betragsfrequenzgang nach Abtastung mit Signalverbreiterung
          U_sin_sh_pam = abs(fft(u_sin_sh_pam)./N);    

            %Plot-Befehle flat-top sampling
            figure(3);
            subplot(Nc,Na,i);
            stem(t(1:n_u_vis),u_sin_sh_pam(1:n_u_vis));
            axis tight;
            xlabel('t in s');
            ylabel('Amplitude in V');
            title(['Flat-Top \alpha = ' num2str(alpha_c) ' und f_T = ' num2str(f_c)]);
            hold on
            plot(t(1:n_u_vis), 1*u_sin(1:n_u_vis), 'r');
            hold off
            figure(4);
            subplot(Nc,Na,i);
            plot(nf(1:n_U_vis)./1000,U_sin_sh_pam(1:n_U_vis));
            axis tight;
            xlabel('f in kHz');
            title(['Flat-Top \alpha = ' num2str(alpha_c) ' und f_T = ' num2str(f_c)]);
            hold on
            plot(nf(1:n_U_vis)./1000, u_si(1:n_U_vis), 'r');
            hold off
            
        i = i + 1;
    end
end

% figure(1)
% SUPTITLE(['\bf Shape-Top Abtastung'])
% figure(2)
% SUPTITLE(['\bf Shape-Top Abtastung',10,10])
figure(3)
SUPTITLE(['\bf Flat-Top Abtastung',10])
figure(4)
SUPTITLE(['\bf Flat-Top Abtastung',10,10])

