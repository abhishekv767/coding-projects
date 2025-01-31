function [F1,F2,F3,T1,T2,T3,A1,A2,A3] = ExpFlagellumFullTubeMatrix(Sep,Fila_Radius,Radius,Length,Lambda_in)
% compute the force on a rotating helix by regularized Stokeslets.

% clean code / nov. 7
% compute torque and drag coefficient
%%%%%%%%%%%%%%%%%%%%%%%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%55
% Sep: distance from boundary;
% Fila_Radius: radius of the filament;
% Radius: radius of the helix;
% Length: total length of the helix;
% Lambda_in: wavelength of the helix;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  the Kernal Matrix as the global variable
global A

% regularization parameter and grid spacing
Reg = Fila_Radius*0.25;
PointsPerCross = 12;

% filament radius
F_r = Fila_Radius;


% construct a flagellum
Omega = -1;
h = Radius;
Lambda = Lambda_in;
K = 2*pi/Lambda;
KE = 1;
Phi = atan(2*pi*h/Lambda);

% s is the paramter along axis
s = 0:Fila_Radius*cos(Phi)*0.5:Length;
TotalPoints = length(s);

% Ensure enough memory is available by checking architecture
mem_required = 8*(3*TotalPoints)^2;
hard_type=ispc;
mat_version = version;
    mat_version=mat_version(length(mat_version)-5:length(mat_version)-2);
    mat_version=str2num(mat_version);

if hard_type==0
    if mat_version>2012
        max_array=memory;
        if max_array.MaxPossibleArrayBytes<mem_required
            userchoice=input('You do not have enough memory for this simulation.  The program will now end with errors.');
        end
    end
else
    max_array=memory;
    if max_array.MaxPossibleArrayBytes<mem_required
        userchoice=input('You do not have enough memory for this simulation.  The program will now end with errors.');
    end
   
end

E_x = s-s + 1;

% displacement from the boundary
Dz = Sep;

% up-right flagellum along z axis
Grid_z = s;
Grid_x = E_x.*cos(-K*Grid_z)*h;
Grid_y = E_x.*sin(-K*Grid_z)*h;

%%% construct mesh
[x_o,y_o,z_o]=tubeplot(Grid_x,Grid_y,Grid_z,F_r,Grid_z,PointsPerCross);
x_o = x_o';
y_o = y_o';
z_o = z_o';

% cap points
cap1_x = mean(x_o(:,1));
cap1_y = mean(y_o(:,1));
cap1_z = mean(z_o(:,1));
cap2_x = mean(x_o(:,end));
cap2_y = mean(y_o(:,end));
cap2_z = mean(z_o(:,end));

x_o1 = x_o(1:PointsPerCross,:);
x_o1 = x_o1(:)';
y_o1 = y_o(1:PointsPerCross,:);
y_o1 = y_o1(:)';
z_o1 = z_o(1:PointsPerCross,:);
z_o1 = z_o1(:)';
ttt = length(y_o1);

x_o = [];y_o = [];z_o = [];

% add cap points
y_o(1) = cap1_y;
y_o(2:1+ttt) = y_o1;
y_o(ttt+2) = cap2_y;

x_o(1) = cap1_x;
x_o(2:1+ttt) = x_o1;
x_o(ttt+2) = cap2_x;

z_o(1) = cap1_z;
z_o(2:1+ttt) = z_o1;
z_o(ttt+2) = cap2_z;


PointsOnAFlagellum = length(x_o);

% loop over time axis
Time_Steps = 3;
Time_i = linspace(0,2*pi/abs(Omega),Time_Steps);
for ijk = 1:length(Time_i)-1
    
    % rotate along z axis by a phase determined by time
    Angle = - Time_i(ijk)*Omega;
    Grid_z = z_o;
    Grid_x =  x_o*cos(Angle) + y_o*sin(-Angle);
    Grid_y =  x_o*sin(Angle) + y_o*cos(Angle);
    
    V_x = Grid_y*Omega;
    V_y = -1*Grid_x*Omega;
    V_z = V_y - V_y;

    % rotate the flagellum along y axis
    Angle = -pi/2;
    Grid_x_r =  Grid_x*cos(Angle) + Grid_z*sin(-Angle);
    Grid_z_r =  Grid_x*sin(Angle) + Grid_z*cos(Angle);
    Grid_y_r = Grid_y;

    V_x_r = V_x*cos(Angle) + V_z*sin(-Angle);
    V_z_r = V_x*sin(Angle) + V_z*cos(Angle);
    V_y_r = V_y;

        
    % move to upspace
    % displace flagella and make an array
    
    Dx = 4.5;
    Dy = 2;
    % set PairsX, PairsY to be 1
    PairsX = 1;
    PairsY = 1;
    % displace Grid_z
    Grid_z_r = Grid_z_r + Dz;

    Grid_x = [];
    Grid_y = [];
    Grid_z = [];
    V_x = [];
    V_y = [];
    V_z = [];

    for ij = 1:PairsX
        for kk = 1:PairsY
            Grid_x = [Grid_x,Grid_x_r];
            Grid_y = [Grid_y,Grid_y_r];
            Grid_z = [Grid_z,Grid_z_r];

            V_x = [V_x,V_x_r];
            V_y = [V_y,V_y_r];
            V_z = [V_z,V_z_r];

            Grid_y_r = Grid_y_r + Dy;    
        end
        Grid_y_r = Grid_y_r - PairsY*Dy; 
        Grid_x_r = Grid_x_r + Dx;    
    end


    Grid = [Grid_x; Grid_y; Grid_z]';
    TotalPoints = length(Grid_x);
    
    V_All = zeros(TotalPoints*3,1);
    V_All(1:3:end) = V_x;
    V_All(2:3:end) = V_y;
    V_All(3:3:end) = V_z;

    
    % construct the Kernal Matrix
    if (ijk==1)
        A = zeros(3*TotalPoints,3*TotalPoints);
    end
    
    BuildMatrixRegStokes3D(Grid,Grid,TotalPoints,TotalPoints,Reg);
    
    tmp1 = gmres(A,V_All,10,1e-10,100);
    tmp1 = tmp1';
    
    FX(ijk)= sum(tmp1(1:3:end));
    FY(ijk)= sum(tmp1(2:3:end));
    FZ(ijk)= sum(tmp1(3:3:end));
    
    Grid_z = Grid_z - Dz;
    % compute torque r x F
    TX(ijk) = sum(Grid_y.*tmp1(3:3:end) - Grid_z.*tmp1(2:3:end));
    TY(ijk) = sum(Grid_z.*tmp1(1:3:end) - Grid_x.*tmp1(3:3:end));
    TZ(ijk) = sum(Grid_x.*tmp1(2:3:end) - Grid_y.*tmp1(1:3:end));
    
    % compute translation 
    V_All(1:3:end) = 1;
    V_All(2:3:end) = 0;
    V_All(3:3:end) = 0;
    
    %tmp1 = qmr(A,V_All,1e-10,500);%L1,U1);
    tmp1 = gmres(A,V_All,10,1e-10,100);
    AX(ijk)= sum(tmp1(1:3:end));
    AY(ijk)= sum(tmp1(2:3:end));
    AZ(ijk)= sum(tmp1(3:3:end));
    
    
    ijk  % Put loop count out to terminal 
    
end

F1 = mean(FX);
F2 = mean(FY);
F3 = mean(FZ);

T1 = mean(TX);
T2 = mean(TY);
T3 = mean(TZ);

A1 = mean(AX);
A2 = mean(AY);
A3 = mean(AZ);

clear global A







