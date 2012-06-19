%plotten des Zeitsignals 6 subplot

function Zeitplot2(a,b,c,d,e,g,formsig, formab, Kanal, fignum)
%% Info
% Signal a-g    gemessene Zeitsignale je zwei Kanäle
% % Kanal A:    pulsamplitudenmoduliertes Signal
% % Kanal B:    demoduliertes Signal
% wahl des Kanals
%
% formsig       Form des Quellsignals (Sinus,Rechteck, TP Rechteck)
% formab        Form der Abtastung (Shape-Top, Flat-Top)
% fignum        Nummer der Figure
%

%% Kanal wählen
if Kanal == 'A'
    aKanal = a.A;
    bKanal = b.A;
    cKanal = c.A;
    dKanal = d.A;
    eKanal = e.A;
    gKanal = g.A;
    farbe = 'b';
end

if Kanal == 'B'
    aKanal = a.B;
    bKanal = b.B;
    cKanal = c.B;
    dKanal = d.B;
    eKanal = e.B;
    gKanal = g.B;
    farbe = 'r';
end

%% Variablen
xmin = 0;
xmax = 2*10^-3;
ymin = -2.7;
ymax = -ymin;

%% plot
figure(fignum);
%titel ([formsig 'förmiges Signal' formab 'abgetastet')];
subplot(2,3,1)
    % Variablen, Achse
    interval = a.Tinterval; % Aufgenommenens Intervall
    N = length(aKanal);
    t = 0:interval:interval*(N-1); % Zeitachse
    f_c = 10000;
    % plot
    plot(t, aKanal,farbe);
    hold on
    plot(t,a.B, 'r');
    hold off
    axis ([xmin xmax ymin ymax]);
    xlabel('t in s');
    ylabel('Amplitude in V');
    title(['Shape-Top \alpha = 0,2 und f_T =' num2str(f_c) ]);

subplot(2,3,2)
    % Variablen, Achse
    interval = b.Tinterval; % Aufgenommenens Intervall
    N = length(bKanal);
    t = 0:interval:interval*(N-1); % Zeitachse
    % plot
    plot(t, bKanal,farbe);
    hold on
    plot(t,b.B, 'r');
    hold off
    axis ([xmin xmax ymin ymax]);
    xlabel('t in s');
    ylabel('Amplitude in V');
    title(['Shape-Top \alpha = 0,5 und f_T =' num2str(f_c)]);

subplot(2,3,3)
    % Variablen, Achse
    interval = c.Tinterval; % Aufgenommenens Intervall
    N = length(cKanal);
    t = 0:interval:interval*(N-1); % Zeitachse
    % plot
    plot(t, cKanal,farbe);
    hold on
    plot(t,c.B, 'r');
    hold off
    axis ([xmin xmax ymin ymax]);
    xlabel('t in s');
    ylabel('Amplitude in V');
    title(['Shape-Top \alpha = 0,7 und f_T =' num2str(f_c)]);

subplot(2,3,4)
    % Variablen, Achse
    interval = d.Tinterval; % Aufgenommenens Intervall
    N = length(dKanal);
    t = 0:interval:interval*(N-1); % Zeitachse
    f_c = 10000;
    % plot
    plot(t, dKanal,farbe);
    hold on
    plot(t,d.B, 'r');
    hold off
    axis ([xmin xmax ymin ymax]);
    xlabel('t in s');
    ylabel('Amplitude in V');
    title(['Shape-Top \alpha = 0,2 und f_T = 20000']);

subplot(2,3,5)
    % Variablen, Achse
    interval = e.Tinterval; % Aufgenommenens Intervall
    N = length(eKanal);
    t = 0:interval:interval*(N-1); % Zeitachse
    % plot
    plot(t, eKanal,farbe);
    hold on
    plot(t,e.B, 'r');
    hold off
    axis ([xmin xmax ymin ymax]);
    xlabel('t in s');
    ylabel('Amplitude in V');
    title(['Shape-Top \alpha = 0,5 und f_T = 20000']);

subplot(2,3,6)
    % Variablen, Achse
    interval = g.Tinterval; % Aufgenommenens Intervall
    N = length(gKanal);
    t = 0:interval:interval*(N-1); % Zeitachse
    %plot
    plot(t, gKanal,farbe);
    hold on
    plot(t,g.B, 'r');
    hold off
    axis ([xmin xmax ymin ymax]);
    xlabel('t in s');
    ylabel('Amplitude in V');
    title(['Shape-Top \alpha = 0,7 und f_T = 20000']);
    
figure(fignum);    
SUPTITLE(['\bf Shape-Top-Sampling mit Rekonstruktion bei TP-gefiltertem Rechteckquellsignal',10]);