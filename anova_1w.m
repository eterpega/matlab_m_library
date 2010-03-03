function Atbl = anova_1w(data)

% Atbl = anova_1w(data)
%
% assumes 1-way anova repeated measures
% data is matrix, rows=subjects, cols=levels of factor

Av=nansum(data);
Sv=nansum(data');
Tsum=nansum(data(:));

a=size(data,2);
n=size(data,1);
Aq=sum(Av.^2)/n;
Sq=sum(Sv.^2)/a;
Tq=(Tsum.^2)/(a*n);
Yq=nansum(data(:).^2);

SSA=Aq-Tq; dfA=a-1;
SSS=Sq-Tq; dfS=n-1;
SSAS=Yq-Aq-Sq+Tq; dfAS=(a-1)*(n-1);

MSA=SSA/dfA;
MSS=SSS/dfS;
MSAS=SSAS/dfAS;
FA=MSA/MSAS;


% compute probabilities
pA = 1-fcdf(FA,dfA,dfAS);


Atbl= [SSA dfA MSA FA pA; ...
       SSS dfS MSS NaN NaN; ...
       SSAS dfAS MSAS NaN NaN];


