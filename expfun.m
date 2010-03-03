function out = expfun(c,x,ydes)

x=x(:); ydes=ydes(:);

y = c(1)+ (c(2)./(exp(c(3).*x)));

err = ydes-y;
err=err(find(~isnan(err)));
out=sum(err.^2);

