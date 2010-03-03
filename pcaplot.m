function dum = pcaplot(D,col)

if nargin==1
	col='b-';
end;

dd = D./sum(D);

hold on

plot(dd,[col,'.'],'markersize',18)
plot(dd,[col,'-'])
ptone = ones(length(dd)+1,1)*0.1;
plot(0:length(dd),ptone,'b--');
drawnow
xlabel('number of factors');
ylabel('prop. variance');

hold off
