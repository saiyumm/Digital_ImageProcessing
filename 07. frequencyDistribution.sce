//frequency distribution of an image

image = imread('bhabha.jpg');

subplot(1,2,1); imshow(image); title('Image');
subplot(1,2,2); imhist(image,[],); title('Frequency Distribution of Image');
