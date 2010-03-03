function [E,D] = pca(data)

%  function [E,D] = pca(data)
%
%	E = the eigenvectors
%	D = the eigenvalues
%	data = data matrix where
%		rows are repetitions and cols are variables
%       note: data should be z-scores

data=zscore(data);
dd = cov(data);

[u,s,v]=svd(dd);

D = diag(s)';
E = v;
