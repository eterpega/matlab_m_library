function ANGS = xy_to_joints(H,L)

l1 = L(1);
l2 = L(2);	% get segment lengths

ANGS(:,2) = acos(((H(:,1).*H(:,1))+(H(:,2).*H(:,2))-(l1*l1)-(l2*l2))./(2*l1*l2));
a = atan2(H(:,2),H(:,1)) - atan2((l2.*sin(ANGS(:,2))),(l1+(l2.*cos(ANGS(:,2)))));

[row,col] = size(ANGS);
for i=1:row
	if a(i,1) < 0 a(i,1) = pi+a(i,1); elseif a(i,1) > pi a(i,1) = a(i,1)-pi; end;
end;

ANGS(:,1) = a;
