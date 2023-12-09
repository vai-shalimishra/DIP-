% Read the original image
originalImage = imread('corona.jpg'); 

% Display the original image
figure;
imshow(originalImage);
title('Original Image');

% Image Restoration
restoredImage = im2double(originalImage);

% You can apply various filters or techniques here to restore the image.
% For example, median filtering, Gaussian filtering, or other denoising techniques.

% Display the restored image
figure;
imshow(restoredImage);
title('Restored Image');
% Remove Salt and Pepper Noise
noisyImage_sp = imnoise(originalImage, 'salt & pepper', 0.1); % Add salt and pepper noise

% Convert the noisy image to grayscale
grayImage_sp = rgb2gray(noisyImage_sp);

% Remove noise using a median filter
cleanedImage_sp = medfilt2(grayImage_sp);

% Display the cleaned grayscale image without salt and pepper noise
figure;
imshow(cleanedImage_sp);
title('Salt and Pepper Noise Removal');

% Minimize Gaussian Noise
noisyImage_gaussian = imnoise(originalImage, 'gaussian', 0, 0.02); % Add Gaussian noise

% Apply Gaussian filter to minimize noise
smoothedImage_gaussian = imgaussfilt(noisyImage_gaussian, 1); % Change the standard deviation as needed

% Display the smoothed image
figure;
imshow(smoothedImage_gaussian);
title('Gaussian Noise Minimization');

% Median Filter
noisyImage_median = imnoise(originalImage, 'gaussian', 0, 0.02); % Add Gaussian noise

% Convert the noisy image to grayscale
grayImage_median = rgb2gray(noisyImage_median);

% Apply median filter
filteredImage_median = medfilt2(double(grayImage_median));

% Display the filtered image using median filter
figure;
imshow(uint8(filteredImage_median));
title('Median Filter Applied');
