%{
Practical 8-B
Write a MATLAB program to perfrom contrast stretching.
Use in-built functions like imadjust() and stretchlimit().
Use the files 'low.tif', 'pout.tif', and 'spine.tif'
%}

clc;
clear;
close all;

i = imread('spine.tif');

% Using function 'stretchlim()' to get upper and lower limits
low_high = stretchlim(i); 

% Using function 'imadjust()' to perform contrast stretching
out = imadjust(i, low_high, []);

figure;
subplot(1, 2, 1); imshow(i); title('Original Image');
subplot(1, 2, 2); imshow(out); title('Contrast Stretched Image');
