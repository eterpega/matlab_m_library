function out = plote(x,y,c)

% plote(x,y,c)
% x,y vectors, will plot means +/- 1 s.e. of mean using color/symb c
% e.g. c='b.'

if nargin==2 c='b.'; end;

xm=nanmean(x); ym=nanmean(y);
plot(xm,ym,c)
xe=nanstd(x)./sqrt(length(find(~isnan(x))));
ye=nanstd(y)./sqrt(length(find(~isnan(y))));
hold on;
line([xm xm],[ym-ye ym+ye],'color',c(1))
line([xm-xe xm+xe],[ym ym],'color',c(1))
hold off;


