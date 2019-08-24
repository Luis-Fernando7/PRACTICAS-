close all %sirve para cerra cualquier comando.

angle_rad= deg2rad(90);

for t=0:0.01:angle_rad
    clf
%line([x_i x_f],[y_i y_f],[z_i z_f])
line([-1 1],[0 0],[0 0], 'color',[1 0 0 ],'linewidth',2.5); %Establece el eje X rojo 
line([0 0],[-1 1],[0 0], 'color',[0 1 0],'linewidth',2.5);  %Establece el eje Y verde
% A' 
p1=[0 0];
p2=[6 0];
p3=[6 3];
p4=[0 3];
%rectangulo
line ([p1(1) p2(1)],[p1(2) p2(2)],[0 0]);
line ([p2(1) p3(1)],[p2(2) p3(2)],[0 0]);
line ([p3(1) p4(1)],[p3(2) p4(2)],[0 0]);
line ([p4(1) p1(1)],[p4(2) p1(2)],[0 0]);

%rotacion de 90° en el eje Z

angle_rad = deg2rad(90);
Rz=[cos(t) -sin(t);sin(t) cos(t)];

p1r=Rz*p1';
p2r=Rz*p2';
p3r=Rz*p3';
p4r=Rz*p4';

line ([p1r(1) p2r(1)],[p1r(2) p2r(2)],[0 0]);
line ([p2r(1) p3r(1)],[p2r(2) p3r(2)],[0 0]);
line ([p3r(1) p4r(1)],[p3r(2) p4r(2)],[0 0]);
line ([p4r(1) p1r(1)],[p4r(2) p1r(2)],[0 0]);

pause (0.01);
end