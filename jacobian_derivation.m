% to derive the jacobian using the symbolic toolbox

x='l1*cos(q1) + l2*cos(q1+q2)';
y='l1*sin(q1) + l2*sin(q1+q2)';

J = [diff(x,'q1'), diff(x,'q2'); ...
     diff(y,'q1'), diff(y,'q2')];
     
% J' * [Fx; Fy] = [T1; T2];

%J = [-l1*sin(Q(1)) - l2*sin(Q(1)+Q(2)), - l2*sin(Q(1)+Q(2)); ...
%        l1*cos(Q(1)) + l2*cos(Q(1)+Q(2)), l2*cos(Q(1)+Q(2))];
