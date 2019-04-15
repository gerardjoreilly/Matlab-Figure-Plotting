function [h]=textplot(x,y,str,pos,bc,ec,fs,int,units,rot)
% Function to insert text to a plot
% Written: Gerard O'Reilly
% [h]=textplot(x,y,str,pos,bc,ec,fs,int,units,rot)
% 
% Input ------
% x:        x position
% y:        y position
% str:      text (string)
% pos:      location within (x,y) left/centered/top etc. (string)
%           Options: lt, lm, lb, ct, cm, cb, rt, rm, rb
% bc:       background color (string)
% ec:       edge color (string)
% units:    in normalized or absolute units
% rot:      rotation of the text in degrees counterclockwise

if nargin<7
    fs=16;
end
if nargin<8
    int='none';
end
if nargin<9
    units='data';
end
if nargin<10
    rot=0;
end

if pos=='lt'
    ha='left';
    va='top';
elseif pos=='lm'
    ha='left';
    va='middle';
elseif pos=='lb'
    ha='left';
    va='bottom';
elseif pos=='ct'
    ha='center';
    va='top';
elseif pos=='cm'
    ha='center';
    va='middle';
elseif pos=='cb'
    ha='center';
    va='bottom';
elseif pos=='rt'
    ha='right';
    va='top';
elseif pos=='rm'
    ha='right';
    va='middle';
elseif pos=='rb'
    ha='right';
    va='bottom';
end

h=text(x,y,str,'HorizontalAlignment',ha,'VerticalAlignment',va,'edgecolor',ec,'backgroundcolor',bc,'fontsize',fs,'interpreter',int,'units',units,'rotation',rot);