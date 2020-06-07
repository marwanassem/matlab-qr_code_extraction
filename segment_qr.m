function [img,L_mat] = segment_qr(BW, original_img)
    %[B, L] = bwboundaries(bin_img,'noholes');

    %L =imclearborder(bin_img);
      L = bwareafilt(BW,1);
     [L, num] = bwlabel( L);
     h = regionprops(L,'Boundingbox');
     I2 = uint8(L) .*original_img;    
     X= uint64(h. BoundingBox(1));
     Y= uint64(h. BoundingBox(2));
     W= h. BoundingBox (3);
     H= h. BoundingBox (4);
     img =imcrop(I2,[X,Y,W,H]);
     %figure, imshow(img);
 L_mat=L;
    
    
%     
%     I2 = original_img .* uint8(L);
%     I2 = uint8(I2);
    
   
%     figure, imshow(I2);
%     [L_mat, num] = bwlabel(I2);
%     figure, imshow(L_mat);
%     h = regionprops(I2,'Boundingbox');
%     X= uint64(h.BoundingBox(1));
%     Y= uint64(h.BoundingBox(2));
%     W= h. BoundingBox (3);
%     H= h. BoundingBox (4);
%     Output=imcrop(I2,[X,Y,W,H]);
    
