%{
Practical 8-A
Write a MATLAB program to perform contrast stretching.
Don't use any built-in functions. Use the mathematical equations or formula accordingly.
Use the files 'low.tif', 'pout.tif', and 'spine.tif'
%}

clc;
clear;
close all;

i = imread('spine.tif');
i = double(i);

r1 = min(i(:));
r2 = max(i(:));

s1 = 0;    
s2 = 255; 

% Apply the contrast stretching formula:
out = s1 + ((i - r1) / (r2 - r1)) * (s2 - s1);
out = uint8(out);

figure;
subplot(1, 2, 1); imshow(uint8(i)); title('Original Image');
subplot(1, 2, 2); imshow(out); title('Contrast Stretched Image');