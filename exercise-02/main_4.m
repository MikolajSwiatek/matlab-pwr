file = 'Lena_color_256.tif';
img = imread(file);

[I, map] = rgb2ind(img, 0.1);
[J, map_1] = rgb2ind(img, 32);

figure('Name', 'Quantization');
subplot(1, 3, 1);
imshow(I, map);
title('Uniform Quantization');

subplot(1, 3, 3)
imshow(J, map_1);
title('Minimum Variance Quantization');

imwrite(I, map, 'result1.jpg');
imwrite(J, map_1, 'result2.jpg');