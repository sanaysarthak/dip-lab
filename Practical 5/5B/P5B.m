%{
Practical 5-A
Write a MATLAB program to crop Images. Make a 2x2 grid and showcase
original image, top-left crop, bottom-right crop, and center-crop Image.
Use the file 'car.jpeg'
%}

clc;
clear;
close all;

i = imread('car.jpeg');
[r, c, ch] = size(i);

topLeftCrop = imcrop(i, [0, 0, round(c/2), round(r/2)]);
bottomRightCrop = imcrop(i, [round(c/2), round(r/2), round(c/2), round(r/2)]);
centerCrop = imcrop(i, [round(c/4), round(r/4), round(c/2), round(r/2)]);

figure;

subplot(2,2,1); imshow(i); title("Original Image");
subplot(2,2,2); imshow(topLeftCrop); title("Top-Left Crop");
subplot(2,2,3); imshow(bottomRightCrop); title("Bottom-Right Crop");
subplot(2,2,4); imshow(centerCrop); title("Center-Crop");