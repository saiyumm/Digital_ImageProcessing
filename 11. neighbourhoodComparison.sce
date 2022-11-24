//effect of the size of neighborhood on the result of processing

I = imread('man.jpg');

[m,n]=size(I);

for i=2:m-1
    for j=2:n-1
        I2(i,j) = median([ a(i-1,j-1), a(i,j-1), a(i+1,j-1), a(i-1,j), a(i,j), a(i+1,j), a(i-1,j+1), a(i,j+1), a(i+1,j+1)]);
    end
end

for i=3:m-2
    for j=3:n-2
        I3(i,j) = median([ a(i-2,j-2), a(i-1,j-2), a(i,j-2), a(i+1,j-2), a(i+2,j-2), a(i-2,j-1), a(i-1,j-1), a(i,j-1), a(i+1,j-1), a(i+2,j-1), a(i-2,j),a(i-1,j), a(i,j), a(i+1,j), a(i+2,j), a(i-2,j+1), a(i-1,j+1), a(i,j+1), a(i+1,j+1), a(i+2,j+1), a(i-2,j+2), a(i-1,j+2), a(i,j+2), a(i+1,j+2), a(i+2,j+2)]);
    end
end

subplot(1,3,1); imshow(a); title('Noisy Image');
subplot(1,3,2); imshow(I2); title('Applying 3*3 Mask');
subplot(1,3,3); imshow(I3); title('Applying 5*5 Mask');
