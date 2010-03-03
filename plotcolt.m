function out = plotcolt(in,sty)

[r,c]=size(in);

if nargin==1
  plotcol(in(:,1:c-1),in(:,c))
else
  plotcol(in(:,1:c-1),in(:,c),sty);
end;


