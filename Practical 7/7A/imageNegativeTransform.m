%{
Practical
Write a MATLAB program to perform image negative transformation.
Use the file 'cameraman.jpeg' 
%}

clc;
clear;
close all;

img = imread('cameraman.jpeg');

if size(img, 3) == 3
    img = rgb2gray(img);
end

img_negative = 255 - img;

figure;
subplot(1, 2, 1); imshow(img); title('Original Image');
subplot(1, 2, 2); imshow(img_negative); title('Negative Image');
