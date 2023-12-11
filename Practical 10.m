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

% Apply different edge detection masks

% Sobel horizontal edge detection mask
sobel_h = fspecial('sobel')';
edge_sobel_h = imfilter(double(grayImage), sobel_h);

% Sobel vertical edge detection mask
sobel_v = fspecial('sobel');
edge_sobel_v = imfilter(double(grayImage), sobel_v);

% Prewitt horizontal edge detection mask
prewitt_h = fspecial('prewitt')';
edge_prewitt_h = imfilter(double(grayImage), prewitt_h);

% Prewitt vertical edge detection mask
prewitt_v = fspecial('prewitt');
edge_prewitt_v = imfilter(double(grayImage), prewitt_v);

% Roberts cross edge detection masks
roberts_h = [1 0; 0 -1];
edge_roberts_h = imfilter(double(grayImage), roberts_h);

roberts_v = [0 1; -1 0];
edge_roberts_v = imfilter(double(grayImage), roberts_v);

% Display the edge-detected images
figure;
subplot(2, 3, 1);
imshow(edge_sobel_h, []);
title('Sobel Horizontal');

subplot(2, 3, 2);
imshow(edge_sobel_v, []);
title('Sobel Vertical');

subplot(2, 3, 3);
imshow(edge_prewitt_h, []);
title('Prewitt Horizontal');

subplot(2, 3, 4);
imshow(edge_prewitt_v, []);
title('Prewitt Vertical');

subplot(2, 3, 5);
imshow(edge_roberts_h, []);
title('Roberts Horizontal');

subplot(2, 3, 6);
imshow(edge_roberts_v, []);
title('Roberts Vertical');
