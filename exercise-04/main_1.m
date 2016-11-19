fileName = 'Lena_gray_8.tif';

img = imread(fileName);
imgDouble = im2double(img);

valueB = 0.5;
valueC = 0.1;

imgB = brightness(imgDouble, valueB);
imgC = contrast(imgDouble, valueC);

imgB = im2uint8(imgB);
imgC = im2uint8(imgC);

figure
subplot(2, 2, 1) ;
imshow(img) ;
title('Input image');

subplot(2, 2, 2) ;
imshow(imgB) ;
title('brightness');

subplot(2, 2, 3) ;
imshow(imgC) ;
title('contrast');

figure
x = (0: 0.1: 1);
y1 = x + valueB;
y2 = valueC * x + (1 - valueC)/2;

figure
subplot(2, 2, 1);
plot(x, y1, 'LineWidth',1,'Color','red'); 
hold on;
plot(x, x, 'LineWidth',1,'Color','red'); 
hold on;
subplot(2, 2, 3);
plot(x, x, 'LineWidth',1,'Color','red'); 
hold on;
plot(x, y2, 'LineWidth',1,'Color','red'); 
hold on;
