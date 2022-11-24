// affine transformations

image = imread('cartoon.jpg');

// translation - displacement along x&y directions :: x=20, y=20
x=20; y=20;
mat = [1,0,0; 
       0,1,0;
       x,y,1];
       
newImg = imtransform(image,mat,'affine');
subplot(2,2,1); imshow(image); title('Before Transformation');
subplot(2,2,2); imshow(newImg); title('After Translation');

// rotation - rotate the image by some angle q :: q=15 degree
q=15;
newImg = imrotate(image,q);
subplot(2,2,3); imshow(newImg); title('After Rotation');

// scaling - to change the scale of the image

x=1; y=1.5;
mat = [x,0,0; 
       0,y,0;
       0,0,1];
       
newImg = imtransform(image,mat,'affine');
subplot(2,2,4); imshow(newImg); title('After Scaling');
