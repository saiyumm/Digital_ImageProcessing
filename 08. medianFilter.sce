//removal of noise using median filter - applying 3*3 filter

a = imread('man.jpg');

[m,n]=size(a);

for i=2:m-1
    for j=2:n-1
        p(i,j) = median([ a(i-1,j-1), a(i,j-1), a(i+1,j-1), a(i-1,j), a(i,j), a(i+1,j), a(i-1,j+1), a(i,j+1), a(i+1,j+1)]);
    end
end

subplot(1,2,1); imshow(a); title('Noisy Image');
subplot(1,2,2); imshow(p); title('Applying Median Filter');
