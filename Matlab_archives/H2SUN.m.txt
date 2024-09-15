% Parámetros del generador termoeléctrico
S = 0.00436; % Coeficiente de Seebeck en V/K
R = 0.00436; % Resistencia en ohmios
T_H = 300; % Temperatura de la unión caliente en C
T_C = 25; % Temperatura de la unión fría en C

% Cálculo de la tensión generada
V = S * (T_H - T_C);

% Cálculo de la corriente generada
I = V / R;

% Cálculo de la potencia eléctrica
P = V * I;

% Mostrar resultados
fprintf('Tensión generada: %.2f V\n', V);
fprintf('Corriente generada: %.2f A\n', I);
fprintf('Potencia eléctrica: %.2f W\n', P);

% Graficar resultados
T = linspace(300, 500, 100); % Rango de temperaturas
V = S * (T - T_C);
I = V / R;
P = V .* I;

figure;
subplot(3,1,1);
plot(T, V);
title('Tensión generada vs Temperatura');
xlabel('Temperatura (C)');
ylabel('Tensión (V)');

subplot(3,1,2);
plot(T, I);
title('Corriente generada vs Temperatura');
xlabel('Temperatura (C)');
ylabel('Corriente (A)');

subplot(3,1,3);
plot(T, P);
title('Potencia generada vs Temperatura');
xlabel('Temperatura (C)');
ylabel('Potencia (W)');
