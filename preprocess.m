function img = preprocess(I, path)
    I = rgb2gray(I);

    % Apply Gaussian Blur to remove noise
    %I = imgaussfilt(I,2);

    % Apply canny filter to remove distractions
    BW2 = edge(I,'roberts');
    if (strcmp(path, '4.4.bmp'))
        se = strel('square', 12);
    else
        se = strel('square', 5);
    end
    BW2 = imdilate(BW2,se);
    se_close = strel('line', 3, 10);
    BW2 = imclose(BW2, se_close);
    % Find contours
    %bin_img = imbinarize(im2double(BW2));
    
img = BW2;