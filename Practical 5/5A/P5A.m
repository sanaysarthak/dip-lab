%{
Practical 5-A
Write a MATLAB program for Image Rotation. Show the original image, 30, 60 and 90 degree image rotation in a 2x2 grid.
Use the file 'car.jpeg'
%}

clc;
clear;
close all;

i = imread('car.jpeg');

figure;

subplot(2,2,1); imshow(i); title("Original Image");
subplot(2,2,2); imshow(imrotate(i,30)); title("30 Degrees");
subplot(2,2,3); imshow(imrotate(i,60)); title("60 Degrees");
subplot(2,2,4); imshow(imrotate(i,90)); title("90 Degrees");