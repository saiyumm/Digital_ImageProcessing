// high pass filter

image = imread('school.jpg');

a = double(image);

[m,n]=size(a);

w = [-1,-1,-1;-1,8,-1;-1,-1,-1];

for i=2:m-1
    for j=2:n-1
        H(i,j)=[w(1)*a(i-1,j+1)+w(2)*a(i,j+1)+w(3)*a(i+1,j+1)+w(4)*a(i-1,j)+w(5)*a(i,j)+w(6)*a(i+1,j)+w(7)*a(i-1,j-1)+w(8)*a(i,j-1)+w(9)*a(i+1,j-1)]/9;
    end
end

H = uint8(H);
subplot(1,2,1); imshow(image); title('Normal Image');
subplot(1,2,2); imshow(H); title('After High-Pass Filter');
