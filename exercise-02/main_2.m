fileName = 'Spectrum.tif';
spectrumImage = imread(fileName);
[n, m] = size(spectrumImage);

figure('Name', 'RGB');
subplot(2,2,1);
imshow(spectrumImage);
title('Input image');

R = spectrumImage(:,:,1);
G = spectrumImage(:,:,2);
B = spectrumImage(:,:,3);
        
subplot(2,2,2);
imshow(R);
title('Red component (R)');

subplot(2,2,3);
imshow(G);
title('Green component (G)');

subplot(2,2,4);
imshow(B);
title('Blue component (B)');
