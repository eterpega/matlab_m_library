function dum = setpaper(orn)

h = gcf;
set(h,'units','inches');
pos = get(h,'position');
if orn == 'p'
	set(h,'paperorientation','portrait');
	disp('paper size now set to current window size : portrait orientation.');
	pp = [(8.5-pos(3))/2 (11.5-pos(4))/2 pos(3) pos(4)];
else
	set(h,'paperorientation','landscape');
	disp('paper size now set to current window size : landscape orientation.');
	pp = [(11.5-pos(3))/2 (8.5-pos(4))/2 pos(3) pos(4)];
end;

set(h,'paperposition',pp);
set(h,'units','pixels');

