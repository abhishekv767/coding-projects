% CMPE 10 - Fundamentals of Robot Kinematics and Dynamics
% Prof. Dejan Milutinovic
%
% The matlab script defines the ODE  
% \dot{x} = v cos \theta
% \dot{y} = v cos \theta
% \dot{\theta} = u  
%
% The time varying u is passed to the function as a global variable
%
function dx=dubins(t,x)
  global u;
  v=1;
  theta=x(3,1);
  dx(1,1)=v*cos(theta);
  dx(2,1)=v*sin(theta);
  dx(3,1)=u;
end