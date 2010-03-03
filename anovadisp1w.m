function out = anovadisp1w(in)

fprintf('\n');
fprintf('Source     SS      df     MS       F        p\n');
fprintf('----   --------    --  -------    -----    -----\n');
s=str2mat('A','S','AxS');
for i=1:size(in,1)
	if i<=3
	fprintf('%s %11.3f %5.0d %8.3f %8.3f %8.3f\n', ...
		s(i,:),in(i,1),in(i,2),in(i,3),in(i,4),in(i,5));
	else
	fprintf('%s %11.3f %5.0d %8.3f\n', ...
		s(i,:),in(i,1),in(i,2),in(i,3));
	end;
end;
fprintf('\n');
