function[] = display_hsv(h, s, v)
    size = 256;
    rgb = zeros(size, size, 3);
    hsv = zeros(size, size, 3);

    hsv(:,:,1) = h;
    hsv(:,:,2) = s;
    hsv(:,:,3) = v;
    
    rgb = hsv2rgb(hsv);
    
    disp('HSV (100, 100):');
    disp(hsv(100, 100, 1));
    disp(hsv(100, 100, 2));
    disp(hsv(100, 100, 3));
    disp('RGB (100, 100):');
    disp(rgb(100, 100, 1));
    disp(rgb(100, 100, 2));
    disp(rgb(100, 100, 3));
    
    figure('Name', 'hsv2rgb');
    subplot(2, 1, 1);
    imshow(hsv);
    title('HSV image');
    
	subplot(2, 1, 2);
    imshow(rgb);
    title('RGB image');