%{ 
Write a MATLAB program to display and access pixel intensity values in grayscale image.
Use the file 'cameraman.jpeg' 
%}

clc;
clear;
close all;

i=imread('cameraman.jpeg');

figure;
imshow(i);
title('Grayscale Image');