fileName = 'Lena_color_256.tif';

img = imread(fileName);

YCBCR = rgb2ycbcr(img);

figure('Name', '');
subplot(2, 2, 1);
imshow(img);
title('Input Image');

subplot(2, 2, 2);
imshow(YCBCR);
title('YCBCR Image');