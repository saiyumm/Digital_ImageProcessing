// low pass filter

image = imread('school.jpg');

a = double(image);

[m,n]=size(a);

w = [1,1,1;1,1,1;1,1,1];

for i=2:m-1
    for j=2:n-1
        L(i,j)=[w(1)*a(i-1,j+1)+w(2)*a(i,j+1)+w(3)*a(i+1,j+1)+w(4)*a(i-1,j)+w(5)*a(i,j)+w(6)*a(i+1,j)+w(7)*a(i-1,j-1)+w(8)*a(i,j-1)+w(9)*a(i+1,j-1)]/9;
    end
end

L = uint8(L);
subplot(1,2,1); imshow(image); title('Normal Image');
subplot(1,2,2); imshow(L); title('After Low-Pass Filter');
