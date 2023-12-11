% Read the input grayscale image
image = imread('corona.jpg');

% Calculate the histogram using the imhist function
histogram = imhist(image);

% Perform histogram equalization using histeq
equalized_image = histeq(image);

% Display the original image, its histogram, and the equalized image
subplot(1, 3, 1), imshow(image), title('Original Image');
subplot(1, 3, 2), imshow(equalized_image), title('Equalized Image');
subplot(1, 3, 3), bar(histogram), title('Histogram');
