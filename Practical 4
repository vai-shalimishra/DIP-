% Read the two input images
image1 = imread('ngc6543a.jpg');
image2 = imread('corona.jpg');

% Check and adjust image sizes to match
if size(image1, 1) ~= size(image2, 1) || size(image1, 2) ~= size(image2, 2)
    % Resize the larger image to match the size of the smaller image
    max_height = max(size(image1, 1), size(image2, 1));
    max_width = max(size(image1, 2), size(image2, 2));

    image1 = imresize(image1, [max_height, max_width]);
    image2 = imresize(image2, [max_height, max_width]);
end

% Perform the AND operation
result_image = bitand(image1, image2);

% Display the original images and the result
subplot(1, 3, 1), imshow(image1), title('Image 1');
subplot(1, 3, 2), imshow(image2), title('Image 2');
subplot(1, 3, 3), imshow(result_image), title('AND Operation Result');



% Perform the OR operation
result_image1 = bitor(image1, image2);

% Display the original images and the result
figure;
subplot(1, 3, 1), imshow(image1), title('Image 1');
subplot(1, 3, 2), imshow(image2), title('Image 2');
subplot(1, 3, 3), imshow(result_image1), title('OR Operation Result');


% Calculate the intersection (bitwise AND operation)
intersection_image = bitand(image1, image2);

% Display the original images and the intersection result
figure;
subplot(1, 3, 1), imshow(image1), title('Image 1');
subplot(1, 3, 2), imshow(image2), title('Image 2');
subplot(1, 3, 3), imshow(intersection_image), title('Intersection Result');


% Read the input image
original_image = imread('fly.jpg');

% Convert the image to grayscale if it's in color
if size(original_image, 3) == 3 % Check if it's a color image
    gray_image = rgb2gray(original_image);
else
    gray_image = original_image; % Image is already grayscale
end

% Calculate the maximum pixel value based on the image type
max_value = double(intmax(class(gray_image)));

% Calculate the negative image (NOT operation)
negative_image = max_value - gray_image;

% Display the original image, grayscale image, and its negative
figure;
subplot(1, 3, 1), imshow(original_image), title('Original Image');
subplot(1, 3, 2), imshow(gray_image), title('Grayscale Image');
subplot(1, 3, 3), imshow(negative_image), title('Negative Image');

