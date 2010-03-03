function C = circle(origin,radius,pts);

x = linspace(0,2*pi,pts+1)';
y = x;

x = cos(x).*radius + origin(1);
y = sin(y).*radius + origin(2);

C = [x y];
