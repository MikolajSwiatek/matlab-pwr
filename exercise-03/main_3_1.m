fileName = 'Lena_color_256.tif';

img = imread(fileName);

YCBCR = rgb2ycbcr(img);

Y = YCBCR(:, :, 1);
CB = YCBCR(:, :, 2);
CR = YCBCR(:, :, 3);

howMuch = 16;

CB = down_sampling2(CB, howMuch);
CR = down_sampling2(CR, howMuch);
CB = up_sampling2(CB, howMuch);
CR = up_sampling2(CR, howMuch);

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

result(:, :, 1) = Y;
result(:, :, 2) = CB;
result(:, :, 3) = CR;
result = ycbcr2rgb(result);

figure
subplot(1, 2, 1);
imshow(img);
axis tight;
title('Original');

subplot(1, 2, 2)
imshow(result);
axis tight;
title('Result');
