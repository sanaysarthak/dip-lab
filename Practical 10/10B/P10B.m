%{
Practical 10-B
Write a MATLAB program to perform histogram equalisation without using
in-built functions.
Use the file 'foosball.png'.
%}

clc;
clear;
close all;

i = imread("foosball.png");

if size(i, 3) == 3
    i = rgb2gray(i);
end

[counts, ~] = imhist(i);
numPixels = sum(counts);
pdf = counts / numPixels;

cdf = cumsum(pdf);
cdf = cdf * 255; 

equalizedImage = uint8(zeros(size(i)));
for pixelValue = 0:255
    equalizedImage(i == pixelValue) = cdf(pixelValue + 1);
end

figure;
subplot(2,2,1);
imshow(i);
title('Original Image');

subplot(2,2,2);
imhist(i);
title('Original Histogram');

subplot(2,2,3);
imshow(equalizedImage);
title('Equalized Image');

subplot(2,2,4);
imhist(equalizedImage);
title('Equalized Histogram');