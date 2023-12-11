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

% Apply FFT to the image
fftImage = fft2(double(grayImage));

% Shift the zero-frequency component to the center
fftImage_shifted = fftshift(fftImage);

% Display the magnitude spectrum of the FFT
magnitude_spectrum = log(1 + abs(fftImage_shifted));
figure;
imshow(magnitude_spectrum, []);
title('Magnitude Spectrum (FFT)');

% Define the cutoff frequency for the low-pass filter
cutoff_frequency = 50;

% Create a Gaussian low-pass filter in the frequency domain
[rows, cols] = size(fftImage);
center_x = floor(cols / 2) + 1;
center_y = floor(rows / 2) + 1;
h = fspecial('gaussian', [rows, cols], cutoff_frequency);
lowpass_filter = 1 - h;

% Apply the low-pass filter in the frequency domain
filtered_fftImage = fftImage_shifted .* lowpass_filter;

% Shift back the zero-frequency component
filtered_fftImage_shifted = ifftshift(filtered_fftImage);

% Apply inverse FFT (IFFT) to reconstruct the image
reconstructed_image_lowpass = ifft2(filtered_fftImage_shifted);

% Display the reconstructed low-pass filtered image
figure;
imshow(abs(reconstructed_image_lowpass), []);
title('Reconstructed Low-Pass Filtered Image');

% Define the cutoff frequency for the high-pass filter
cutoff_frequency_high = 50;

% Create a Gaussian high-pass filter in the frequency domain
highpass_filter = fspecial('gaussian', [rows, cols], cutoff_frequency_high);

% Apply the high-pass filter in the frequency domain
filtered_fftImage_highpass = fftImage_shifted .* highpass_filter;

% Shift back the zero-frequency component
filtered_fftImage_highpass_shifted = ifftshift(filtered_fftImage_highpass);

% Apply inverse FFT (IFFT) to reconstruct the image
reconstructed_image_highpass = ifft2(filtered_fftImage_highpass_shifted);

% Display the reconstructed high-pass filtered image
figure;
imshow(abs(reconstructed_image_highpass), []);
title('Reconstructed High-Pass Filtered Image');
