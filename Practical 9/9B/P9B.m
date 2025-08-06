%{
Practical 9-B
Write a MATLAB program to perform LSB watermarking, using 'bitset()'
function.
Use the cameraman.jpeg file as input file.
Use the 'tire.tif' file for watermarking on the 3rd and 7th bit.
Use the files 'cameraman.jpeg'
%}

clc;
clear;
close all;

host = imread('cameraman.jpeg'); % input image
wm = imread('tire.tif'); % watermark image

% Convert both images to grayscale
if size(host, 3) == 3
    host = rgb2gray(host);
end
if size(wm, 3) == 3
    wm = rgb2gray(wm);
end

% Resize watermark image's size as per host image's size
wm = imresize(wm, size(host));
wm_binary = imbinarize(wm);

% Embed watermark in 3rd and 7th bits
watermarked_3 = bitset(host, 3, wm_binary);
watermarked_7 = bitset(host, 7, wm_binary);

figure;
subplot(2, 2, 1); imshow(host); title('Original Image');
subplot(2, 2, 2); imshow(wm_binary); title('Binary Watermark');
subplot(2, 2, 3); imshow(watermarked_3); title('Watermark in 3rd Bit');
subplot(2, 2, 4); imshow(watermarked_7); title('Watermark in 7th Bit');
