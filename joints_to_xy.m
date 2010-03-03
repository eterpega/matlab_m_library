function H = joints_to_xy(angs,L)

l1 = L(1);
l2 = L(2);

[row,col] = size(angs);

E = [];
H = [];
for i=1:col/2
	E = [E,l1.*cos(angs(:,((2*i)-1))),l1.*sin(angs(:,((2*i)-1)))];
	H = [H,E(:,((2*i)-1))+(l2.*cos(angs(:,((2*i)-1))+angs(:,(2*i)))),E(:,(2*i))+(l2.*sin(angs(:,((2*i)-1))+angs(:,(2*i))))];
end;
