//negative image of a colored image

colorImage = imread('URL');
negativeImage = imcomplement(colorImage);
imshow(negativeImage);
