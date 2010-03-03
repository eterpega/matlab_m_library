function out = closeto(in,wrange)

% out = closeto(in,wrange)
%
% returns boolean out 1 if input in is
% within bounds of wrange, which is a 2-vector [min max]

if in >=wrange(1) & in <=wrange(2)
  out=1;
else
  out=0;
end;
