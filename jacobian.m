function J = jacobian(Q,l1,l2)

% function J = jacobian(Q,l1,l2)
%
% J' * [Fx; Fy] = [Ts; Te];
% [Fx; Fy] = inv(J') * [Ts; Te];

J = [-l1*sin(Q(1)) - l2*sin(Q(1)+Q(2)), - l2*sin(Q(1)+Q(2)); ...
      l1*cos(Q(1)) + l2*cos(Q(1)+Q(2)), l2*cos(Q(1)+Q(2))];

