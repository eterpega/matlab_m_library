function ang = getangle(v1)

% ang = getangle(v1)
%
% given v1 [x,y] n x 2 matrix (n>=1)
% getangle will return the angle (in radians) between the vector(s)
% and the (1,0) x-axis
% (note: 3pm is 0, 12noon is 90, 9am is 180, 6am is 270 deg)

ang=atan2(v1(:,2),v1(:,1));
z=find(ang<0);
ang(z)=ang(z)+(2*pi);

