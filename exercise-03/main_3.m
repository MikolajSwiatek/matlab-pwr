fileName = 'Lena_color_256.tif';

img = imread(fileName);

YCBCR = rgb2ycbcr(img);

Y = YCBCR(:, :, 1);
CB = YCBCR(:, :, 2);
CR = YCBCR(:, :, 3);

figure
subplot(2, 2, 1);
imshow(img);
title('Input Image');

subplot(2, 2, 2);
imshow(Y);
title('Luminance Y');

subplot(2, 2, 3);
imshow(CB);
title('Chroma CB');

subplot(2, 2, 4);
imshow(CR);
title('Chroma CR');

CB = down_sampling(CB);
CR = down_sampling(CR);
CB = up_sampling(CB);
CR = up_sampling(CR);

figure
subplot(2, 2, 1);
imshow(img);
title('Input Image');

subplot(2, 2, 2);
imshow(Y);
title('Luminance Y');

subplot(2, 2, 3);
imshow(CB);
title('Chroma CB Reconstructed');

subplot(2, 2, 4);
imshow(CR);
title('Chroma CR Reconstructed');
