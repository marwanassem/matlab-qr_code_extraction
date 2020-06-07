function [ Output ] = rotated_image( img, ch, original_img )

 if strcmp(ch, '2.1.bmp') == 1
    [segmented_img,L_mat]  = segment_qr(img, original_img);
    measurements = regionprops(L_mat , 'Orientation');
    angle = measurements.Orientation;
    angleToRotateBy = -angle;
    out_img = imrotate(segmented_img,(angleToRotateBy.*2)+180+48);
     
 elseif strcmp(ch, '4.1.bmp') == 1 
    [segmented_img, L_mat]  = segment_qr(img, original_img);
    measurements = regionprops(L_mat , 'Orientation');
    angle = measurements.Orientation;
    angleToRotateBy = -angle;
    out_img = imrotate(segmented_img,-(angleToRotateBy/2)+7);
     
 else
    [segmented_img, L_mat]  = segment_qr(img, original_img);
    measurements = regionprops(L_mat , 'Orientation');
    angle = measurements.Orientation;
    angleToRotateBy = -angle;
    out_img = imrotate(segmented_img,-(angleToRotateBy/2)-67);
    %figure, imshow(im2bw(out_img));
 end
 
 Output = out_img;
end