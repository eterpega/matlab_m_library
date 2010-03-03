function [Pcross,Ncross] = zerocross(data)

% [Pcross,Ncross] = zerocross(data)
%
% given a data stream, zerocross returns the indices of places where the
% stream changes from positive to negative values and vice-versa

if nargout == 2

Pcross = [];
Ncross = [];
for i=1:length(data)-1
	if data(i)*data(i+1) < 0 & data(i)<=data(i+1)
		[y,mini]=min(abs(data(i:i+1)));
		Pcross = [Pcross,i+mini-1];
	end;
	if data(i)*data(i+1) < 0 & data(i)>data(i+1)
		[y,mini]=min(abs(data(i:i+1)));
		Ncross = [Ncross,i+mini-1];
	end;
end;

else
	
Pcross = [];
for i=1:length(data)-1
	if (data(i)*data(i+1) < 0 & data(i)<=data(i+1)) | ...
	   (data(i)*data(i+1) < 0 & data(i)>data(i+1))
		[y,mini]=min(abs(data(i:i+1)));
		Pcross = [Pcross,i+mini-1];
	end;
end;

end;
