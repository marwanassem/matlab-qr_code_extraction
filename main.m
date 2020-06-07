path = '4.1.bmp';
I = imread(path);
I2 = I;
figure, imshow(I); title('Original Test case');

I = preprocess(I, path);

if ( strcmp(path, '1.1.bmp') || strcmp(path, '3.1.bmp') || strcmp(path, '3.3.bmp') ) == 1
    [SegmentedImage, L_mat] = segment_qr(I, I2);
    figure, imshow(SegmentedImage); title('Final QR code');
else
    FinalQR = rotated_image(I, path, I2);
    figure, imshow(FinalQR); title('Final QR code');  
end


