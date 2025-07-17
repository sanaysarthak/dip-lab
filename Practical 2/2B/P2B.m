%{
Practical 2-B
Write a MATLAB program for Histogram Processing of Grayscale Image.
Use the file 'badminton.jpg' 
%}

clc;
clear;
close all;

rgb = imread('badminton.jpg');
gray = rgb2gray(rgb);

figure;

subplot(1,3,1);
imshow(rgb);
title('Original');

subplot(1,3,2);
imshow(gray);
title('Gray-Scale Image');

subplot(1,3,3);
(imhist(gray));
title('Histogram');
