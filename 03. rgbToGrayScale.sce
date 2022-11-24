//convert a color(rgb)image to grayscale

colorImage = imread(URL);
gray = rgb2gray(colorImage);
imshow(gray);
