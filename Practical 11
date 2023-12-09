% Read the original image
originalImage = imread('corona.jpg'); 

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

% Create a binary image for demonstration purposes
binaryImage = imbinarize(grayImage);

% Structuring element (SE) for morphological operations
se = strel('square', 5); % Define a square structuring element of size 5x5

% Perform erosion and dilation
erodedImage = imerode(binaryImage, se);
dilatedImage = imdilate(binaryImage, se);

% Display the eroded and dilated images
figure;
subplot(1, 3, 1);
imshow(binaryImage);
title('Binary Image');

subplot(1, 3, 2);
imshow(erodedImage);
title('Eroded Image');

subplot(1, 3, 3);
imshow(dilatedImage);
title('Dilated Image');
