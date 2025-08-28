%{
Practical 1-C
Write a MATLAB program to convert RGB Image into Grayscale Image.
Use the file 'badminton.jpg' 
%}

clc;
clear;
close all;

i = imread('badminton.jpg');
j = rgb2gray(i);

figure;

subplot(1,2,1);
imshow(i);
title('Original Image');

subplot(1,2,2);
imshow(j);
title('Grayscale Image');
