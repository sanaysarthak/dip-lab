%{
Practical 3-B
Write a MATLAB program to perform Uniform Quantization.
Use the file 'cameraman.jpeg' 
%}

clc;
clear;
close all;

i = imread("cameraman.jpeg");
ad = im2double(i);

nbits = 4; % see the change in quantized histogram after tweaking the value of nbits
levels = 2^nbits;
steps = 1/levels;

bins = floor(ad/steps);
qv = (bins*steps)+(steps/2);
qvimg = im2uint8(qv);

subplot(2,2,1);
imshow(i);
title("Original Image");

subplot(2,2,2);
(imhist(i));
title("Original Histogram")

subplot(2,2,3);
imshow(qvimg);
title("Quantized Image");

subplot(2,2,4);
(imhist(qvimg));
title("Quantized Histogram")
