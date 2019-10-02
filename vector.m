close all
clear
clc
%---------------INTRODUCIR VALORES-----------------------------
%           BRAZO 1
prompt='introduce el valor grados de un angulo:';
angDeg=input(prompt);
angRad=deg2rad(angDeg)
prompt='introduce el valor de l1:';
l1=input(prompt);
%           BRAZO 2
prompt='introduce el valor grados de un angulo2:';
angDeg2=input(prompt);
angRad2=deg2rad(angDeg2)
prompt='introduce el valor de l2:';
l2=input(prompt);

%-------------------------------------------------------------

%impresion de los ejes
printAxis()
%Definicion del punto inicial
p1=[0 0 0]';
%verificacion del angulo y creacion del angulo 
%PREGUNTAR EL SIGNO DEL BRAZO 1
if angDeg>=0
    angVec=0:0.1:angRad
else
    angVec=0:-0.1:angRad
end
%--------------------------------------------------------------------

%length tamaño del vector 

for i=1:length(angVec)
clf
printAxis();
 %---------------------------------------------------------------------
 %       MATRIZ DE ROTACION EN EL EJE ¨Z¨
 TRz1=[   cos(angVec(i))  -sin(angVec(i))   0           0;
        sin(angVec(i))  cos(angVec(i))      0           0;
           0                0               1           0;
           0                0               0            1];
 %--------------------------------------------------------------------- 
 %      MATRIZ DE TRANSLACION
 TTx1=[1 0 0 l1;
    0 1 0 0;
    0 0 1 0;
    0 0 0 1];
 %----------------------------------------------------------------------
 T1= TRz1*TTx1;
 p2=T1(1:3,4);
 line([p1(1) p2(1)],[p1(2) p2(2)],[p1(2) p2(2)])
  %---------------------------------------------------------------------
 %       MATRIZ DE ROTACION EN EL EJE ¨Z¨
 TRz2=[   cos(0)  -sin(0)   0           0;
        sin(0)  cos(0)      0           0;
           0                0               1           0;
           0                0               0            1];
 %--------------------------------------------------------------------- 
 %      MATRIZ DE TRANSLACION
 TTx2=[1 0 0 l2;
       0 1 0 0;
       0 0 1 0;
       0 0 0 1];
 %----------------------------------------------------------------------
 
 T2= TRz2*TTx2;
 TF=T1*T2;
 p3=TF(1:3,4);
 line([p2(1) p3(1)],[p2(2) p3(2)],[p2(2) p3(2)])
 pause(0.1)
 
 

end
%------------SEGEMENTO 2----------------------------------------------
%PREGUNTAR EL SIGNO DEL BRAZO 2
if angDeg2>=0
    angVec2=0:0.1:angRad2
else
    angVec2=0:-0.1:angRad2
end
%--------------------------------------------------------------------
for i=1:length(angVec2)
  
clf
printAxis();
 T1= TRz1*TTx1;
 p2=T1(1:3,4);
 line([p1(1) p2(1)],[p1(2) p2(2)],[p1(2) p2(2)])
 %---------------------------------------------------------------------
 %       MATRIZ DE ROTACION EN EL EJE ¨Z¨
 TRz2=[   cos(angVec2(i))  -sin(angVec2(i))   0           0;
        sin(angVec2(i))  cos(angVec2(i))      0           0;
           0                0               1           0;
           0                0               0            1];
 %--------------------------------------------------------------------- 
 %      MATRIZ DE TRANSLACION
 TTx2=[1 0 0 l2;
       0 1 0 0;
       0 0 1 0;
       0 0 0 1];
 %----------------------------------------------------------------------
 
 T2= TRz2*TTx2;
 TF=T1*T2;
 p3=TF(1:3,4);
 line([p2(1) p3(1)],[p2(2) p3(2)],[p2(2) p3(2)])
 pause(0.1)
 end
