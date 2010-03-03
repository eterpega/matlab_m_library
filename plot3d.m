function dum = plot3d(in,lt)

[r,c]=size(in);

if nargin==1
  lt='.';
end;

plot3(in(:,[1:3:c]),in(:,[2:3:c]),in(:,[3:3:c]),lt)
xlabel('X');
ylabel('Y');
zlabel('Z');
axis equal
rotate3d
