//histogram and histogram equalization of any image

image = imread('img.jpg');
gray = rgb2gray(image);

[y,x] = imhist(gray);

grayeq = imhistequal(gray);

[y1,x1] = imhist(grayeq);

subplot(2,2,1); imshow(gray); 
subplot(2,2,2); plot2d3(x,y); 
title('Before Equalization');
subplot(2,2,3); imshow(grayeq); 
subplot(2,2,4); plot2d3(x1,y1);
title('After Equalization');


//imhist(image,[],)
