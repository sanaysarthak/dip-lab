%{
Practical 3-A
Write a MATLAB program to display the histogram of a gray-scale image.
Use the file 'cameraman.jpg' 
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
