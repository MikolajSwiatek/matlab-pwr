fileName = 'Lena_color_256.tif';

img = imread(fileName);

g = prepareFilter([2 4 2; 4 8 4; 2 4 2]);
u = prepareFilter([-1 -1 -1; -1 9 -1; -1 -1 -1]);
e = prepareFilter([-1 -1 -1; -1 8 -1; -1 -1 -1]);
l = prepareFilter([0 -1 0; -1 4 -1; 0 -1 0]);

figure;
subplot(2, 3, 1);
imshow(img);
title('Input image');

subplot(2, 3, 2);
imshow(imfilter(img, g)); 
title('Gaussian');

subplot(2, 3, 3);
imshow(imfilter(img, u)); 
title('Upper');

subplot(2, 3, 4);
imshow(imfilter(img, e));
title('Edge');

subplot(2, 3, 5);
imshow(imfilter(img, l));
title('Laplacian');