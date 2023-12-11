% Read the original image
originalImage = imread('fly.jpg'); 
% Display the original image
figure;
imshow(originalImage);
title('Original Image');

% Convert the image to grayscale if it's a color image
if size(originalImage, 3) == 3
    grayImage = rgb2gray(originalImage);
else
    grayImage = originalImage; % If already grayscale
end

% Apply a simple averaging filter for low-pass filtering
filterSize = 3; % Define the size of the filter (3x3 in this case)
filter = ones(filterSize) / filterSize^2; % Create an averaging filter

% Apply the filter using convolution
filteredImage_lowpass = conv2(double(grayImage), filter, 'same');

% Display the low-pass filtered image
figure;
imshow(uint8(filteredImage_lowpass));
title('Low-Pass Filtered Image');


% Apply a high-pass filter (high-boost filtering)
filterSize = 3; % Define the size of the filter (3x3 in this case)
highpassFilter = fspecial('laplacian', 0.2); % Create a Laplacian filter

% Apply the high-pass filter
filteredImage_highpass = imfilter(double(grayImage), highpassFilter);

% Add the high-pass filtered image to the original to create high-boost filtering
k = 1.5; % Define a constant for boosting
boostedImage = double(grayImage) + k * filteredImage_highpass;

% Display the high-boost filtered image
figure;
imshow(uint8(boostedImage));
title('High-Boost Filtered Image');
