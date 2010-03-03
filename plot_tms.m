function out = plot_tms(t,d,ft)

figure
for i=1:4
    subplot(4,1,i)
    plot(t,d(:,i))
    set(gca,'ylim',[-.8 .8])
end;
xlabel('TIME (ms)')
if nargin==3
    subplot(4,1,1)
    title(ft)
end;
