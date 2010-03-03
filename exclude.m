function out = exclude(in,kgb)

out=in;
for i=1:length(kgb)
  ii=find(in==kgb(i));
  out(ii)=NaN;
end;
ok=find(~isnan(out));
out=in(ok);
