% Read the input image
image = imread('corona.jpg');

% Define translation parameters (tx and ty)
tx = 30; % Translate 30 pixels in x-direction
ty = 50; % Translate 50 pixels in y-direction

% Perform the translation using imtranslate
translated_image = imtranslate(image, [tx, ty]);

% Display the original and translated images
subplot(1, 2, 1), imshow(image), title('Original Image');
subplot(1, 2, 2), imshow(translated_image), title('Translated Image');


% Define scaling factors (scalex and scaley)
scalex = 1.5; % Scale factor in x-direction
scaley = 2.0; % Scale factor in y-direction

% Perform the scaling using imresize
scaled_image = imresize(image, [round(scaley*size(image,1)), round(scalex*size(image,2))]);

% Display the original and scaled images
figure;
subplot(1, 2, 1), imshow(image), title('Original Image');
subplot(1, 2, 2), imshow(scaled_image), title('Scaled Image');

% Define rotation angle (theta in degrees)
theta = 30; % Rotation angle (clockwise)

% Perform the rotation using imrotate
rotated_image = imrotate(image, theta, 'bilinear', 'crop');

% Display the original and rotated images
figure;
subplot(1, 2, 1), imshow(image), title('Original Image');
subplot(1, 2, 2), imshow(rotated_image), title('Rotated Image');

% Define scaling factors (scalex and scaley) for shrinking
scalex = 0.5; % Scale factor in x-direction
scaley = 0.5; % Scale factor in y-direction

% Perform the shrinking using imresize
shrunk_image = imresize(image, [round(scaley*size(image,1)), round(scalex*size(image,2))]);

% Display the original and shrunken images
figure;
subplot(1, 2, 1), imshow(image), title('Original Image');
subplot(1, 2, 2), imshow(shrunk_image), title('Shrunk Image');

% Define scaling factors (scalex and scaley) for zooming
scalex = 1.5; % Scale factor in x-direction
scaley = 1.5; % Scale factor in y-direction

% Perform the zooming using imresize
zoomed_image = imresize(image, [round(scaley*size(image,1)), round(scalex*size(image,2))]);

% Display the original and zoomed images
figure;
subplot(1, 2, 1), imshow(image), title('Original Image');
subplot(1, 2, 2), imshow(zoomed_image), title('Zoomed Image');
