%{
Practical 2-A
Write a MATLAB program to convert RGB to different color spaces.
Use the file 'badminton.jpg' 
%}

clc;
clear;
close all;

rgb = imread("badminton.jpg");
gray = rgb2gray(rgb);
BlackAndWhite = imbinarize(gray);
CyanMagentaYellow = 1 - im2double(rgb);

figure;

subplot(2,2,1);
imshow(rgb)
title("Original");

subplot(2,2,2);
imshow(gray);
title("Gray scale");

subplot(2,2,3);
imshow(BlackAndWhite);
title("Black and White")

subplot(2,2,4);
imshow(CyanMagentaYellow);
title("Cyan Magenta Yellow");