function [p]=plotm(x,y,clr,mt,ms,lt,lw)
% Function to line with markers
% Written: Gerard O'Reilly
% [p]=plotm(x,y,clr,mt,ms,lt,lw)


if nargin<6
    p=plot(x,y,mt,'markersize',ms,'markerfacecolor',clr,'markeredgecolor',clr);
else
    p=plot(x,y,strcat(lt,mt),'color',clr,'linewidth',lw,'markersize',ms,'markerfacecolor',clr,'markeredgecolor',clr);
end
