function[] = display_rgb(r, g, b)
    size = 256;
    img = zeros(size, size, 3);

    img(:,:,1) = r;
    img(:,:,2) = g;
    img(:,:,3) = b;
    
    figure('Name', 'RGB');
    subplot(1, 1, 1);
    imshow(img);
    title('RGB image');