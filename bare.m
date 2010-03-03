function out = bare(datam,datae,leg)

% bare(datam,datae,leg)

ebw=0.8; % proportion of size of bar widths for error bars
h=bar(datam); hold on
for i=1:length(h)
  hi=h(i);
  hix=get(hi,'xdata');
  hiy=get(hi,'ydata');
  for j=1:size(datam,1)
    bc=mean(hix(2:3,j));
    bw=hix(3,j)-hix(2,j);
    if datam(j,i)>0
      line([bc-(bw*ebw/2) bc+(bw*ebw/2)],[datam(j,i)+datae(j,i) datam(j,i)+datae(j,i)])
      line([bc bc],[datam(j,i) datam(j,i)+datae(j,i)]);
    else
      line([bc-(bw*ebw/2) bc+(bw*ebw/2)],[datam(j,i)-datae(j,i) datam(j,i)-datae(j,i)])
      line([bc bc],[datam(j,i) datam(j,i)-datae(j,i)]);
    end;
  end;
end;
hold off
if nargin==3
  legend(h,leg);
end;
