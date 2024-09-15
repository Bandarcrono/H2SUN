% Leer archivo .xls
filename = 'ascii-flux.xlsx';  % Nombre del archivo
data = readtable(filename);  % Leer datos en formato de tabla

% Extraer columnas de la tabla
x = data.x_m_;  % Columna de coordenadas X
y = data.y_m_;  % Columna de coordenadas Y
flux = data.Flux_W_m2_;  % Columna de flujo

% Crear una malla de valores para X, Y y el flujo
[Xq, Yq] = meshgrid(unique(x), unique(y));  % Crear una cuadrícula
Fq = griddata(x, y, flux, Xq, Yq);  % Interpolar los datos en la cuadrícula

% Graficar el mapa de calor
figure;
contourf(Xq, Yq, Fq, 20, 'LineColor', 'none');  % Graficar con contornos suavizados
colorbar;  % Mostrar la barra de colores
title('Incident Flux Distribution');
xlabel('X (m)');
ylabel('Y (m)');
colormap('jet');  % Escoger paleta de colores