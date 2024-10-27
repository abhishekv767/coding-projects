% ECE 10 - Fundamentals of Robot Kinematics and Dynamics
% Prof. Dejan Milutinovic
%
% The matlab script simulates the motion of the Dubins vehicle given by 
% \dot{x} = v cos \theta
% \dot{y} = v cos \theta
% \dot{\theta} = u  
%
% The vehicle's posture is (x, y, \theta) and u is the turning 
% rate. The turning rate u can be changed every dt=0.1s 
% 
% xRec - stores x, y and theta 
% tRec - stores the corresponding time points
% u=0.5 rad/s and every 100*dt it changes the sign
% 
clear all
close all
global u
dt=0.1;
xRec=[];
tRec=[];
u=0.5;
x0=[0;0;0]; %the initial pose (0,0,0)
for i=1:1000,
 if floor(i/100)*100==i,
   u=-u;
 end    
 [tsol xsol]=ode45(@dubins,[0 dt],x0);
 xRec=[xRec,xsol'];
 tRec=[tRec, (i-1)*dt+tsol'];
 x0=xsol(end,:)';
end

% FIGURE 1
figure(1)
plot(xRec(1,:),xRec(2,:)), hold on
plot(xRec(1,1),xRec(2,1),'r.')
title('Position')
xlabel('x');
ylabel('y');
axis equal

% FIGURE 2
figure(2)
subplot(3,1,1),plot(tRec,xRec(1,:))
title('x vs. time')
xlabel('time');
ylabel('x');
subplot(3,1,2),plot(tRec,xRec(2,:))
title('y vs. time')
xlabel('time');
ylabel('y');
subplot(3,1,3),plot(tRec,xRec(3,:))
title('\theta vs. time')
xlabel('time');
ylabel('\theta (rad)');

% FIGURE 3
figure(3)
for i=1:length(tRec),
  dist(i)=sqrt(xRec(1,i)^2+xRec(2,i)^2);
end
plot(tRec,dist)
title('The distance from the (0,0)')
xlabel('time');
ylabel('distance');

