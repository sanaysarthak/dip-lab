%{
Practical 4-C
Write a MATLAB program for RGB channel separation.
Use the file 'badminton.jpg'
%}

clc;
clear;
close all;

i = imread('badminton.jpg');

r = i(:, :, 1);
g = i(:, :, 2);
b = i(:, :, 3);

[rows, cols, channels] = size(i);
red_channel_img = zeros(rows, cols, 3, class(i));
green_channel_img = zeros(rows, cols, 3, class(i));
blue_channel_img = zeros(rows, cols, 3, class(i));

red_channel_img(:, :, 1) = r;
green_channel_img(:, :, 2) = g;
blue_channel_img(:, :, 3) = b;

figure;
subplot(2,2,1); imshow(i); title('Original Image');
subplot(2,2,2); imshow(red_channel_img); title('Red Channel');
subplot(2,2,3); imshow(green_channel_img); title('Green Channel');
subplot(2,2,4); imshow(blue_channel_img); title('Blue Channel');
