fileName = 'Lena_color_256.tif';

img = imread(fileName);

gamma_r = 1.8;
gamma_g = 2.0;
gamma_b = 2.2;
C = 1;

result = gamma_correction(gamma_r, gamma_g, gamma_b, C);

figure;
subplot(1, 2, 1);
imshow(img);
title('Input image');

subplot(1,2,2);
imshow(result);
title('Result image');

x = (0: 0.01: 1);
yR = C*x.^gamma_r;
yG = C*x.^gamma_g;
yB = C*x.^gamma_b;

figure;
subplot(1, 1, 1) 
plot(x, yR, 'LineWidth', 1, 'Color', 'red');  
hold on;
plot(x, yG, 'LineWidth', 1, 'Color', 'green');
hold on;
plot(x, yB, 'LineWidth', 1, 'Color', 'blue');
