function dum = axesequal(r,c)

xlim=[0 0];
ylim=[0 0];
for i=1:r*c
    subplot(r,c,i)
    xl=get(gca,'xlim');
    yl=get(gca,'ylim');
    xlim(1)=min(xlim(1),xl(1));
    xlim(2)=max(xlim(2),xl(2));
    ylim(1)=min(ylim(1),yl(1));
    ylim(2)=max(ylim(2),yl(2));
end;

for i=1:r*c
    subplot(r,c,i)
    set(gca,'xlim',xlim)
    set(gca,'ylim',ylim)
end;
