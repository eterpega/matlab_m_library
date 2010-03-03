function [out,se] = moving_window(in,wsize,wmov)

len=length(in);

out=[];
se=[];

w1=1;
w2=wsize;
while w2<=len
    out=[out nanmean(in(w1:w2))];
    se=[se nanstd(in(w1:w2))./sqrt(wsize)];
    w1=w1+wmov;
    w2=w2+wmov;
end;

