%{
Practical 12-B
Write a MATLAB program that adds Gaussian noise to an image and performs image smoothing using Weighted Average filters.
Use the file 'cameraman.jpeg'.
%}

i = imread('cameraman.jpeg');
i = rgb2gray(i);

noise_mean = 0;
noise_var = 0.01;
noisyImage = imnoise(i, 'gaussian', noise_mean, noise_var);

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
title('Gaussian Noisy Image');

subplot(1, 3, 3);
imshow(smoothedImage);
title('Smoothed Image');

