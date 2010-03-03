function Atbl = anova_2w(data)

% Atbl = anova_2w(data)
%
% assumes 2-way anova repeated measures
% factors are in first 2 columns
% subjects are in 3rd column
% data is in 4th column
%
% use anovadisp2w.m to display output

% find out levels of each factor
L1 = unique(data(:,1));
L2 = unique(data(:,2));
L3 = unique(data(:,3));
a=length(L1);
b=length(L2);
c=length(L3);

% compute ABS matrix (cell means)
ABSm=[];
for i=1:length(L1)
for j=1:length(L2)
for k=1:length(L3)
	fi=find(data(:,1)==L1(i) & data(:,2)==L2(j) & ...
	        data(:,3)==L3(k));
	if length(fi)>0
		ABSm(i,j,k)=nanmean(data(fi,4));
	else
		ABSm(i,j,k)=NaN; % *** this is probably not correct
	end;
end;
end;
end;

% compute AB matrix
ABm=squeeze(sum(ABSm,3));
ASm=squeeze(sum(ABSm,2))';
BSm=squeeze(sum(ABSm,1))';

% compute [T]
T = (sum(sum(ABm)).^2)./(a*b*c);

% compute [A] [B] [C] [AB] [AC] [BC] [ABC]
A = sum(sum(ASm).^2)./(b*c);
B = sum(sum(BSm).^2)./(a*c);
S = sum(sum(ASm')'.^2)./(a*b);
AB = sum(ABm(:).^2)./(c);
BS = sum(BSm(:).^2)./(a);
AS = sum(ASm(:).^2)./(b);

% compute [Y]
Y = nansum(data(:,4).^2);

% compute sums of squares
SSA = A-T;
SSB = B-T;
SSS = S-T;
SSAB = AB-A-B+T;
SSAS = AS-A-S+T;
SSBS = BS-B-S+T;
SSABS = Y-AB-AS-BS+A+B+S-T;

% compute df
dfA = a-1;
dfB = b-1;
dfS = c-1;
dfAB = (a-1)*(b-1);
dfAS = (a-1)*(c-1);
dfBS = (b-1)*(c-1);
dfABS = (a-1)*(b-1)*(c-1);

% compute MS
MSA = SSA/dfA;
MSB = SSB/dfB;
MSS = SSS/dfS;
MSAB = SSAB/dfAB;
MSAS = SSAS/dfAS;
MSBS = SSBS/dfBS;
MSABS = SSABS/dfABS;

% compute F values
FA = MSA/MSAS;
FB = MSB/MSBS;
FAB = MSAB/MSABS;

% compute probabilities
pA = 1-fcdf(FA,dfA,dfAS);
pB = 1-fcdf(FB,dfB,dfBS);
pAB = 1-fcdf(FAB,dfAB,dfABS);


Atbl= [SSA dfA MSA FA pA; ...
       SSB dfB MSB FB pB; ...
       SSAB dfAB MSAB FAB pAB; ...
       SSS dfS MSS NaN NaN; ...
       SSAS dfAS MSAS NaN NaN; ...
       SSBS dfBS MSBS NaN NaN; ...
       SSABS dfABS MSABS NaN NaN];



