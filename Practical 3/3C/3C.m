%{
Practical 3-C
Write a MATLAB program to peform uniform quantization.
Use the file 'cameraman.jpeg' 
%}

clc;
clear;
close all;

i = imread('cameraman.jpeg');
ad = im2double(i);
nbits = 2;
levels = 2^nbits;
steps = 1/levels;

bins = floor(ad*steps);
qv = (bins*steps) + (steps/2);
qvimg = im2uint8(qv);