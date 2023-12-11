% Read the input grayscale image
image = imread('corona.jpg');

% Initialize an array for the histogram
histogram = zeros(256, 1);

% Initialize arrays for cumulative distribution function (CDF) and equalized image
cdf = zeros(256, 1);
equalized_image = zeros(size(image));

% Calculate the histogram manually
[rows, cols] = size(image);
num_pixels = rows * cols;

for i = 1:rows
    for j = 1:cols
        intensity = image(i, j);
        histogram(intensity + 1) = histogram(intensity + 1) + 1;
    end
end

% Calculate the cumulative distribution function (CDF)
cdf(1) = histogram(1);
for i = 2:256
    cdf(i) = cdf(i - 1) + histogram(i);
end

% Perform histogram equalization
for i = 1:rows
    for j = 1:cols
        intensity = image(i, j);
        equalized_image(i, j) = uint8((cdf(intensity + 1) / num_pixels) * 255);
    end
end

% Display the original image and its histogram
subplot(1, 3, 1), imshow(image), title('Original Image');
subplot(1, 3, 3), bar(histogram), title('Histogram');
subplot(1, 3, 2), imshow(equalized_image), title('Equalized Image');




