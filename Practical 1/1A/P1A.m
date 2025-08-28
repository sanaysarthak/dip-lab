%{
Practical 1-A
Write a MATLAB program to Display and Access Pixel Intensity Values in Grayscale Image.
Use the file 'cameraman.jpeg' 
%}

clc;
clear;
close all;

i = imread('cameraman.jpeg');

figure;
imshow(i);
title('Grayscale Image');

%disp(i);
ad = im2double(i);
%disp(ad);

row = 61;
col = 132;
intensity = i(row,col);
fprintf("Intensity at %d row and %d col is %d",row, col, intensity);