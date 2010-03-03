function [t,data] = load_tms(fname)

fid=fopen(fname,'r');
startline=fgets(fid);
i=findstr(startline,'=');
startline=str2num(startline(i+1:length(startline)));
fgets(fid);
fgets(fid);
fgets(fid);
ncols=fgets(fid);
i=findstr(ncols,'=');
ncols=str2num(ncols(i+1:length(ncols)));
ncols=length(ncols);
srate=fgets(fid);
i=findstr(srate,'=');
srate=str2num(srate(i+1:length(srate)));
fgets(fid);
data=[];
while ~feof(fid)
    tmp=fgets(fid);
    tmp=str2num(tmp);
    data = [data; tmp];
end;
fclose(fid);

n=size(data,1);
t=[0:(1000/srate):n/srate*1000];
t=t(1:n)';
