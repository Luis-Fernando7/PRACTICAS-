function printAxis()
%line([x_i x_f],[y_i y_f],[z_i z_f])
line([-1 1],[0 0],[0 0], 'color',[1 0 0 ],'linewidth',2.5); %Establece el eje X rojo 
line([0 0],[-1 1],[0 0], 'color',[0 1 0],'linewidth',2.5);  %Establece el eje Y verde
end