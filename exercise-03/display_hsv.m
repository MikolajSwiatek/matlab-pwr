function[] = display_hsv(h, s, v)
    size = 256;
    hsv = zeros(size, size, 3);

    hsv(:,:,1) = h;
    hsv(:,:,2) = s;
    hsv(:,:,3) = v;
    
    rgb = hsv2rgb(hsv);
    
    figure('Name', 'hsv2rgb');
    subplot(2, 1, 1);
    imshow(hsv);
    title('HSV image');
    
	subplot(2, 1, 2);
    imshow(rgb);
    title('RGB image');
    
    x = 100;
    y = 100;
    
    impixel(rgb, x, y)
