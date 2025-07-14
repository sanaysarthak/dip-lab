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