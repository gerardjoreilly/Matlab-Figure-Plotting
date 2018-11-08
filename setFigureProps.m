function []=setFigureProps(h,fs,fh,fw)
% function []=setFigureProps(h,fs,fh,fw)
% fs=12;      % Font size (pt)
% fh=16;       % Figure height (cm)
% fw=20;      % Figure width (cm)


set(h,'PaperType','<custom>');
set(h,'PaperUnits','centimeters');  
set(h,'PaperPosition',[0 0 fw fh]);
set(h,'PaperSize',[fw,fh]);
set(h,'Units','centimeters');      % Set the units to cm
set(h,'Position',[0 0 fw fh]);    % Set the size and position of the plot windows (Screenzise is 50.8000   31.7500 for MacBook)
set(h,'DefaultAxesFontSize',fs);                % Set font size
set(h,'DefaultAxesFontName','times');           % Set axes font type to times
set(h,'DefaultTextFontName','times');           % Set title font type to times