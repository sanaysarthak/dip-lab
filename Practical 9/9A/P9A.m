%{
Practical 9-A
Write a MATLAB program to perform bit-level slicing of an image.
Use the in-built command 'bitget()' to get individual bits.
Showcase the output in a 2x4 grid.
Use the files 'cameraman.jpeg'
%}

clc;
clear;
close all;

i = imread('cameraman.jpeg');

if size(i, 3) == 3
    i = rgb2gray(i);
end

figure;
for bit = 1:8
    bit_plane = bitget(i, bit);
    subplot(2, 4, bit);
    imshow(logical(bit_plane)); 
    title(['Bit Plane ', num2str(bit)]);
end
