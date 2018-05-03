% This function adjusts the colorbar properly in relation to the axes
function adjust_colorbar(ax,c)
% ax: the axes handle
% c: colorbar handle

colormap(ax,'bone');
set(ax,'units','pixels');
if ax.Position(4)/ax.Position(3)>1.2
    set(c,'location','eastoutside','color','w',...
        'tickdirection','both','units','pixels',...
        'position',[ax.Position(1)+ax.Position(3)+20,...
        ax.Position(2),20 ax.Position(4)]);
else
    set(c,'location','southoutside','color','w',...
        'tickdirection','both','units','pixels',...
        'position',[ax.Position(1) ax.Position(2)-40,...
        ax.Position(3) 20]);
end
set(ax,'units','normalized');
axis(ax,'normal');