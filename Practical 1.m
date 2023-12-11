% a. Reading and displaying an image
img = imread('ngc6543a.jpg');
figure;
imshow(img);
title('Original Image');

% b. Resize given image
new_height = 200; % Specify new height
new_width = 300; % Specify new width
resized_img = imresize(img, [new_height, new_width]);
figure;
imshow(resized_img);
title('Resized Image');

% c. Convert given color image into gray-scale image
gray_img = rgb2gray(img);
figure;
imshow(gray_img);
title('Gray-Scale Image');

% d. Convert given color/gray-scale image into black & white image
threshold = 128; % Adjust threshold value as needed
bw_img = gray_img > threshold;
figure;
imshow(bw_img);
title('Black & White Image');

% e. Draw image profile
profile = img(:, round(size(img, 2) / 2)); % Vertical profile (adjust as needed)
figure;
plot(profile);
title('Image Profile');

% f. Separate color image in three R G & B planes
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

figure;
subplot(1, 3, 1);
imshow(R);
title('Red Plane');
subplot(1, 3, 2);
imshow(G);
title('Green Plane');
subplot(1, 3, 3);
imshow(B);
title('Blue Plane');

% g. Create color image using R, G and B three separate planes
reconstructed_img = cat(3, R, G, B);
figure;
imshow(reconstructed_img);
title('Reconstructed Image');


