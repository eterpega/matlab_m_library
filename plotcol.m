function dum = plotcol(coldata,time,sty)

[r,c] = size(coldata);

if nargin == 2
	if isstr(time)
		sty=time;
		time = (1:1:r)';
	else
		sty = '-';
	end;
end;

if nargin==1
	time = (1:1:r)';
	sty = '-';
end;

for i=1:c
	subplot(c,1,i);
	hold on
	plot(time,coldata(:,i),sty);
	xt = get(gca,'xtick');
	set(gca,'xtick',[])
	axis tight
end;

subplot(c,1,c)
set(gca,'xtick',xt)
