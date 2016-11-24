fileName = 'Lena_color_256.tif';

img = imread(fileName);

gamma_r = 2.2;
gamma_g = 2.2;
gamma_b = 2.2;

result = gamma_correction(gamma_r, gamma_g, gamma_b);

imshow(Y);
