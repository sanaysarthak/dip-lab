%{
Practical 1-B
Write a MATLAB program to display RGB image along with its dimensions (rows, columns, and channels).
Use the file 'badminton.jpg' 
%}

clc;
clear;
close all;

i = imread('badminton.jpg');
figure;
imshow(i);

[r,c,ch] = size(i);
fprintf("No. of rows is %d\n", r);
fprintf("No. of columns is %d\n", c);
fprintf("No. of channels is %d", ch);