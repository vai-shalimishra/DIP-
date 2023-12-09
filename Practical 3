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

% Perform the addition of images
sum_image = imadd(image1, image2);

% Display the original images and the addition result
subplot(1, 3, 1), imshow(image1), title('Image 1');
subplot(1, 3, 2), imshow(image2), title('Image 2');
subplot(1, 3, 3), imshow(sum_image), title('Sum of Images');


% Perform the subtraction of images
subtracted_image = imsubtract(image1, image2);

% Display the original images and the subtraction result
figure;
subplot(1, 3, 1), imshow(image1), title('Image 1');
subplot(1, 3, 2), imshow(image2), title('Image 2');
subplot(1, 3, 3), imshow(subtracted_image), title('Image 1 - Image 2');


% Read the input image
image = imread('ngc6543a.jpg');

% Convert the image to double precision for accurate calculations
image_double = double(image);

% Calculate the mean value of the image
mean_value = mean(image_double(:));

% Display the mean value
fprintf('The mean value of the image is: %.2f\n', mean_value);

