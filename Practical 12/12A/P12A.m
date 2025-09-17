%{
Practical 12-A
Write a MATLAB program that adds Gaussian noise to an image and performs image smoothing using 3×3 and 5×5 box filters.
Use the file 'cameraman.jpeg'.
%}

i = imread('cameraman.jpeg');
i = rgb2gray(i);

noise_density = 0.05;
noisyImage = imnoise(i, 'salt & pepper', noise_density);

kernel = [1 2 3 2 1;
          2 4 6 4 2;
          3 6 9 6 3;
          2 4 6 4 2;
          1 2 3 2 1] / 35;

smoothedImage = imfilter(noisyImage, kernel, 'replicate');

figure;
subplot(1, 3, 1);
imshow(i);
title('Original Image');

subplot(1, 3, 2);
imshow(noisyImage);
title('Noisy Image');

subplot(1, 3, 3);
imshow(smoothedImage);
title('Smoothed Image');
