fileName = 'Lena_color_256.tif';

img = imread(fileName);

gamma_r = 2.2;
gamma_g = 2.2;
gamma_b = 2.2;
C = 1;

result = gamma_correction(gamma_r, gamma_g, gamma_b, C);

figure;
subplot(1, 2, 1);
imshow(img);
title('Input image');

subplot(1, 2, 2);
imshow(result);
title('Result image');