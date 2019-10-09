close all;
clear;
clc;
%******************** VALORES DE BRAZO 1***************************
prompt=('Ingrese el valor del primer angulo:');
angDeg=input(prompt);
angRad=deg2rad(angDeg);
prompt=('Ingrese el valor de l1:');
l1=input(prompt);
%******************** VALORES DE BRAZO 2***************************
prompt=('Ingrese el valor del segundo angulo:');
angDeg2=input(prompt);
angRad2=deg2rad(angDeg2);
prompt='Ingrese el valor de l2:';
l2=input(prompt);
%******************************************************************
%******************** VALORES DE BRAZO 3***************************
prompt=('Ingrese el valor del segundo angulo:');
angDeg3=input(prompt);
angRad3=deg2rad(angDeg3);
prompt='Ingrese el valor de l3:';
l3=input(prompt);
%******************************************************************
p1=[0 0 0]';
%****************   BRAZO 1 SIGNO *********************************
if angDeg>=0
    angVec=0:0.1:angRad;
else
    angVec=0:-0.1:angRad;
end
for i=1:length(angVec) 
    clf
    printAxis();
    view(120,30)
    TRz= [cos(angVec(i)) -sin(angVec(i)) 0 0 ;sin(angVec(i)) cos(angVec(i)) 0 0 ; 0 0 1 0; 0 0 0 1];
        Tx=[1 0 0 0; 0 1 0 0; 0 0 1 l1;0 0 0 1];
        
        T1=TRz*Tx;
        p2=T1(1:3,4);
         
        line([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)],'color',[0 0 0],'linewidth',1.5);
%*****************************  EJES COORDENADOS BRAZO 1******************
        eje_x=T1(1:3,1);
        eje_y=T1(1:3,2);
        line([p1(1) eje_x(1)],[p1(2) eje_x(2)],[p1(3) eje_x(3)],'color',[1 0 0],'linewidth',2.5);
        line([p1(1) eje_y(1)],[p1(2) eje_y(2)],[p1(3) eje_y(3)],'color',[0 1 0],'linewidth',2.5);
        
 %****************   BRAZO 2 *****************************************
   TRz2=[1 0 0 0;0 cos(0) -sin(0) 0 ;0 sin(0) cos(0) 0; 0 0 0 1];
   Tx2=[1 0 0 0; 0 1 0 l2; 0 0 1 0;0 0 0 1];
   T2=TRz2*Tx2;
   Tf=T1*T2;
   p3=Tf(1:3,4); 
%*****************************  EJES COORDENADOS BRAZO 2****************** 
   eje_x2=p2+Tf(1:3,1);
   eje_y2=p2+Tf(1:3,2);

 line([p2(1) p3(1)],[p2(2) p3(2)],[p2(3) p3(3)],'color',[0 0 0],'linewidth',1.5);
 line([p2(1) eje_x2(1)],[p2(2) eje_x2(2)],[p2(3) eje_x2(3)],'color',[1 0 0],'linewidth',2.5);
 line([p2(1) eje_y2(1)],[p2(2) eje_y2(2)],[p2(3) eje_y2(3)],'color',[0 1 0],'linewidth',2.5);
   %****************   BRAZO 3 *****************************************
 TRz3=[1 0 0 0;0 cos(0) -sin(0) 0 ;0 sin(0) cos(0) 0; 0 0 0 1];
   Tx3=[1 0 0 0; 0 1 0 l3; 0 0 1 0;0 0 0 1];
   T3=TRz3*Tx3;
   Tf=T1*T2*T3;
   p4=Tf(1:3,4); 
  line([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)],'color',[0 0 0],'linewidth',1.5);
%*****************************  EJES COORDENADOS BRAZO 3****************** 
 %****************   BRAZO 3 *****************************************
   TRz3=[1 0 0 0;0 cos(0) -sin(0) 0 ;0 sin(0) cos(0) 0; 0 0 0 1];
   Tx3=[1 0 0 0; 0 1 0 l3; 0 0 1 0;0 0 0 1];
   T3=TRz3*Tx3;
   Tf=T1*T2*T3;
   p4=Tf(1:3,4); 
%*****************************  EJES COORDENADOS BRAZO 3****************** 
   eje_x4=p3+Tf(1:3,1);
   eje_y4=p3+Tf(1:3,2);

 line([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)],'color',[0 0 0],'linewidth',1.5);
 line([p3(1) eje_x4(1)],[p3(2) eje_x4(2)],[p3(3) eje_x4(3)],'color',[1 0 0],'linewidth',2.5);
 line([p3(1) eje_y4(1)],[p3(2) eje_y4(2)],[p3(3) eje_y4(3)],'color',[0 1 0],'linewidth',2.5);
 
 
 pause(0.1)
end
%****************   BRAZO 2 SIGNO *********************************
if angDeg2>=0
    angVec2=0:0.1:angRad2;
else
    angVec2=0:-0.1:angRad2;
end
for i=1:length(angVec2) 
 clf
 printAxis();
 view(120,30)
 %****************************  BRAZO 1**********************************
        T1=TRz*Tx;
        p2=T1(1:3,4);
        line([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)],'color',[0 0 0],'linewidth',1.5);
%*****************************  EJES COORDENADOS BRAZO 1******************
        eje_x=T1(1:3,1);
        eje_y=T1(1:3,2);
        line([p1(1) eje_x(1)],[p1(2) eje_x(2)],[p1(3) eje_x(3)],'color',[1 0 0],'linewidth',2.5);
        line([p1(1) eje_y(1)],[p1(2) eje_y(2)],[p1(3) eje_y(3)],'color',[0 1 0],'linewidth',2.5);
 %****************   BRAZO 2 *****************************************
   TRz2=[1 0 0 0;0 cos(angVec2(i)) -sin(angVec2(i)) 0 ;0 sin(angVec2(i)) cos(angVec2(i)) 0; 0 0 0 1];
   Tx2=[1 0 0 0; 0 1 0 l2; 0 0 1 0;0 0 0 1];
   T2=TRz2*Tx2;
   Tf=T1*T2;
   p3=Tf(1:3,4); 
%*****************************  EJES COORDENADOS BRAZO 2****************** 
   eje_x2=p2+Tf(1:3,1);
   eje_y2=p2+Tf(1:3,2);

 line([p2(1) p3(1)],[p2(2) p3(2)],[p2(3) p3(3)],'color',[0 0 0],'linewidth',1.5);
 line([p2(1) eje_x2(1)],[p2(2) eje_x2(2)],[p2(3) eje_x2(3)],'color',[1 0 0],'linewidth',2.5);
 line([p2(1) eje_y2(1)],[p2(2) eje_y2(2)],[p2(3) eje_y2(3)],'color',[0 1 0],'linewidth',2.5);
   %****************   BRAZO 3 *****************************************
 TRz3=[1 0 0 0;0 cos(0) -sin(0) 0 ;0 sin(0) cos(0) 0; 0 0 0 1];
   Tx3=[1 0 0 0; 0 1 0 l3; 0 0 1 0;0 0 0 1];
   T3=TRz3*Tx3;
   Tf=T1*T2*T3;
   p4=Tf(1:3,4); 
  line([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)],'color',[0 0 0],'linewidth',1.5);
 %*****************************  EJES COORDENADOS BRAZO 3****************** 
   T3=TRz3*Tx3;
   Tf=T1*T2*T3;
   p4=Tf(1:3,4); 
%*****************************  EJES COORDENADOS BRAZO 3****************** 
   eje_x4=p3+Tf(1:3,1);
   eje_y4=p3+Tf(1:3,2);

 line([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)],'color',[0 0 0],'linewidth',1.5);
 line([p3(1) eje_x4(1)],[p3(2) eje_x4(2)],[p3(3) eje_x4(3)],'color',[1 0 0],'linewidth',2.5);
 line([p3(1) eje_y4(1)],[p3(2) eje_y4(2)],[p3(3) eje_y4(3)],'color',[0 1 0],'linewidth',2.5);
  
 pause(0.1)
end
%****************   BRAZO 3 SIGNO *********************************
if angDeg3>=0
    angVec3=0:0.1:angRad3;
else
    angVec3=0:-0.1:angRad3;
end
for i=1:length(angVec3) 
 clf
 printAxis();
 view(120,30)
 
  %****************************  BRAZO 1**********************************
        T1=TRz*Tx;
        p2=T1(1:3,4);
        line([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)],'color',[0 0 0],'linewidth',1.5);
%*****************************  EJES COORDENADOS BRAZO 1******************
        eje_x=T1(1:3,1);
        eje_y=T1(1:3,2);
        line([p1(1) eje_x(1)],[p1(2) eje_x(2)],[p1(3) eje_x(3)],'color',[1 0 0],'linewidth',2.5);
        line([p1(1) eje_y(1)],[p1(2) eje_y(2)],[p1(3) eje_y(3)],'color',[0 1 0],'linewidth',2.5);
 %****************   BRAZO 2 *****************************************
   T2=TRz2*Tx2;
   Tf=T1*T2;
   p3=Tf(1:3,4);  
 line([p2(1) p3(1)],[p2(2) p3(2)],[p2(3) p3(3)],'color',[0 0 0],'linewidth',1.5); 
%*****************************  EJES COORDENADOS BRAZO 2****************** 
   eje_x2=p2+Tf(1:3,1);
   eje_y2=p2+Tf(1:3,2);
 line([p2(1) eje_x2(1)],[p2(2) eje_x2(2)],[p2(3) eje_x2(3)],'color',[1 0 0],'linewidth',2.5);
 line([p2(1) eje_y2(1)],[p2(2) eje_y2(2)],[p2(3) eje_y2(3)],'color',[0 1 0],'linewidth',2.5);
 
 %****************   BRAZO 3 *****************************************
   TRz3=[1 0 0 0;0 cos(angVec3(i)) -sin(angVec3(i)) 0 ;0 sin(angVec3(i)) cos(angVec3(i)) 0; 0 0 0 1];
   Tx3=[1 0 0 0; 0 1 0 l3; 0 0 1 0;0 0 0 1];
   T3=TRz3*Tx3;
   Tf=T1*T2*T3;
   p4=Tf(1:3,4); 
%*****************************  EJES COORDENADOS BRAZO 3****************** 
   eje_x4=p3+Tf(1:3,1);
   eje_y4=p3+Tf(1:3,2);

 line([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)],'color',[0 0 0],'linewidth',1.5);
 line([p3(1) eje_x4(1)],[p3(2) eje_x4(2)],[p3(3) eje_x4(3)],'color',[1 0 0],'linewidth',2.5);
 line([p3(1) eje_y4(1)],[p3(2) eje_y4(2)],[p3(3) eje_y4(3)],'color',[0 1 0],'linewidth',2.5);
 pause(0.1)
end