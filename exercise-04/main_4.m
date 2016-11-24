fileName = 'Lena_color_256.tif';

img = imread(fileName);

gamma_r = 1.8;
gamma_g = 2.0;
gamma_b = 2.2;
C = 1;

Y = gamma_correction(X, gamma_r, gamma_g, gamma_b, C);
Z = gamma_correction(X, 1/gamma_r, 1/gamma_g, 1/gamma_b, C);
R = gamma_correction(Z, gamma_r, gamma_g, gamma_b, C);

figure;
subplot(2, 2, 1);
imshow(img);
title('Input image');

subplot(2, 2, 2);
imshow(Y);
title('No gamma correction');

subplot(2, 2, 1);
imshow(Z);
title('Input image');

subplot(2, 2, 2);
imshow(R);
title('Gamma correction');

x = (0: 0.01: 1);
yR = C*x.^gamma_r;
yG = C*x.^gamma_g;
yB = C*x.^gamma_b;

figure;
subplot(1, 2, 1) 
plot(x, yR, 'LineWidth', 1, 'Color', 'red');  
hold on;
plot(x, yG, 'LineWidth', 1, 'Color', 'green');
hold on;
plot(x, yB, 'LineWidth', 1, 'Color', 'blue');

yR = C*x.^1/gamma_r;
yG = C*x.^1/gamma_g;
yB = C*x.^1/gamma_b;

figure;
subplot(1, 2, 2) 
plot(x, yR, 'LineWidth', 1, 'Color', 'red');  
hold on;
plot(x, yG, 'LineWidth', 1, 'Color', 'green');
hold on;
plot(x, yB, 'LineWidth', 1, 'Color', 'blue');
