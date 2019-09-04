close all;
clear;
clc;
%------------------------------------------------------------------------------------------
disp('                    ROTACION EN 3D');
prompt ='INTRODUSCA EL VALOR (GRADOS )DE LA ROTACION EN X(ALPHA):';
ALPHA=input(prompt);
prompt ='INTRODUSCA EL VALOR (GRADOS )DE LA ROTACION EN Y(BETA):';
BETA=input(prompt);
prompt ='INTRODUSCA EL VALOR (GRADOS )DE LA ROTACION EN Z(THETA):';
THETA=input(prompt);


%------------------------------------------------------------------------------------------

ALPHA2 = deg2rad(ALPHA);
BETA2 = deg2rad(BETA);
THETA2 = deg2rad(THETA);

for ALPHA2 = 0:0.01:ALPHA2
    clf;
    for BETA2 = 0:0.01:BETA2
        clf;
        for THETA2 = 0:0.01:THETA2
            clf;

    
line([-2 2],[0 0],[0 0],'color',[1 0 0],'linewidth',2.5);   %establece el Eje x rojo
line([0 0],[-2 2],[0 0],'color',[0 1 0],'linewidth',2.5);   %establece el Eje y verde
line([0 0],[0 0],[-2,2],'color',[0 0 1],'linewidth',2.5);   %establece el Eje z azul

p1=[0 0 0];
p2=[7 0 0];
p3=[7 3 0];
p4=[0 3 0];
p5=[0 0 2];
p6=[0 3 2];
p7=[7 0 2];
p8=[7 3 2];

print(p1,p2,p3,p4,p5,p6,p7,p8)

grid on

view(120,30)

%---------------------------------------------------------------------
%       MATRIZ DE ROTACION EN EL EJE ¨X¨
Rx=[    1       0               0   ;
        0   cos(ALPHA2)    -sin(ALPHA2);
        0   sin(ALPHA2)    cos(ALPHA2)];
%----------------------------------------------------------------------
%       MATRIZ DE ROTACION EN EL EJE ¨Y¨
 Ry=[cos(BETA2)      0       sin(BETA2);
        0           1           0   ;
     -sin(BETA2)     0       cos(BETA2)];
 %---------------------------------------------------------------------
 %       MATRIZ DE ROTACION EN EL EJE ¨Z¨
 Rz=[   cos(THETA2)  -sin(THETA2)     0;
        sin(THETA2)  cos(THETA2)      0;
            0              0        1];
 %---------------------------------------------------------------------    
% OPERACIONES.
%ROTACION EN EJE 'X'
Rt=Rz*Ry*Rx;

p1=Rt*p1';
p2=Rt*p2';
p3=Rt*p3';
p4=Rt*p4';
p5=Rt*p5';
p6=Rt*p6';
p7=Rt*p7';
p8=Rt*p8';

print(p1,p2,p3,p4,p5,p6,p7,p8)

 grid on
  pause(0.01)
        end
    end
end

