function pdfUI(fname,handle,flag)
% pdfUI(fname,handle,flag)
% Gerard O'Reilly
% EUCENTRE/IUSSPavia
% October 2015
% Function to print a figure after teh plottools window opens
% fname - filename of pdf 
% hande - figure handle
% flag - put 1 if you want to print to pdf straight away, otherwise, input
% nothing and you will be prompted for a value. When prompted, a value of 1
% and hitting return will print the figure as it is currently displayed in
% the plottools window, which can be edited prior to hitting return 

% fs=16;      % Font size (pt)
% fh=14;       % Figure height (cm)
% fw=20;      % Figure width (cm)
set(gca,'GridLineStyle','-');

if nargin <3
    % Prompt the User When ready 
    plottools;
    input('Hit return to undock and reposition: ');
    undockfig(handle);
    flag=input('Hit 1 to Print to PDF: ');
end

if flag==1
    print(handle,'-dpdf',fname,'-r600');
end

close all;
