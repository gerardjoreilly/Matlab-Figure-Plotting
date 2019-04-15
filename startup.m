%% Startup files for Matlab
% Gerard O'Reilly
% EUCENTRE/IUSSPavia
% October 2015

%% Clean Up
close all; 
clear; clc;

%% Figure Dimensions and Properties
fs1=9;      % Font size (pt)
fs2=7.5;      % Font size (pt)
fs3=6;      % Font size (pt)
fh1=7;       % Figure height (cm)
fh2=14;       % Figure height (cm)
fw1=10;      % Figure width (cm)
fw2=16;      % Figure width (cm)
% fh=15;       % Figure heright (cm)
% fw=25;      % Figure width (cm)
dpi=600;    % Dots per inch, 600 is ok


set(0,'DefaultFigurePaperType','<custom>');
set(0,'DefaultFigurePaperUnits','centimeters');  
set(0,'DefaultFigurePaperPosition',[0 0 fw1 fh1]);
set(0,'DefaultFigurePaperSize',[fw1,fh1]);
set(0,'DefaultFigureUnits','centimeters');      % Set the units to cm
set(0,'DefaultFigurePosition',[20 10 fw1 fh1]);    % Set the size and position of the plot windows (Screenzise is 50.8000   31.7500 for MacBook)
set(0,'DefaultAxesFontSize',fs1);                % Set font size
set(0,'DefaultAxesFontName','times');           % Set axes font type to times
set(0,'DefaultTextFontName','times');           % Set title font type to times

%% Plotting Parameters
% Linewidths
lw1=0.5; 
lw2=0.8; 
lw3=1.0; 
lw4=1.2;
lw5=1.5;
lw6=2.0;

% Markersize
ms1=1;
ms2=2;
ms3=5;

%% Colour Map Properties
gry=[0.75, 0.75, 0.75];
cmap(1,:)=[0 0 0];
cmap(2,:)=rgb('red');
cmap(3,:)=rgb('green');
cmap(4,:)=rgb('blue');
cmap(5,:)=rgb('purple');
cmap(6,:)=rgb('orange');
cmap(7,:)=rgb('magenta');
cmap(8,:)=rgb('maroon');
cmap(9,:)=rgb('teal');
cmap(10,:)=rgb('deepskyblue');
cmap(11,:)=rgb('lime');
cmap(12,:)=rgb('olive');
cmap(13,:)=rgb('indigo');
cmap(14,:)=rgb('sienna');
cmap(15,:)=rgb('tan');
cmap(16,:)=rgb('brown');
cmap(17,:)=rgb('gold');
cmap(18,:)=rgb('thistle');
cmap(19,:)=rgb('fuchsia');
cmap(20,:)=rgb('turquoise');
cmap(21,:)=gry;



ltype={'-','-.','--',':','.-'};
mtype={'o','d','s','^','<','>'};
