%{
Practical 11-B
Write a MATLAB program that adds Gaussian noise to an image and performs image smoothing using 3×3 and 5×5 box filters.
Use the file 'cameraman.jpeg'.
%}

clc;
clear;
close all;
i = imread('cameraman.tif');  
i = im2double(i);            

i_noisy1 = imnoise(i, 'gaussian', 0, 0.2);  
i_noisy2 = imnoise(i, 'gaussian', 0, 0.5);  

h3 = fspecial('average', [3 3]);
h5 = fspecial('average', [5 5]);

i_noisy1_3 = imfilter(i_noisy1, h3, 'replicate');
i_noisy1_5 = imfilter(i_noisy1, h5, 'replicate');

i_noisy2_3 = imfilter(i_noisy2, h3, 'replicate');
i_noisy2_5 = imfilter(i_noisy2, h5, 'replicate');

figure;
subplot(3,3,1), imshow(i), title('Original Image');

subplot(3,3,2), imshow(i_noisy1), title('Gaussian Noise (var=0.2)');
subplot(3,3,3), imshow(i_noisy1_3), title('var=0.2, 3x3 Box Filter');
subplot(3,3,4), imshow(i_noisy1_5), title('var=0.2, 5x5 Box Filter');

subplot(3,3,5), imshow(i_noisy2), title('Gaussian Noise (var=0.5)');
subplot(3,3,6), imshow(i_noisy2_3), title('var=0.5, 3x3 Box Filter');
subplot(3,3,7), imshow(i_noisy2_5), title('var=0.5, 5x5 Box Filter');
