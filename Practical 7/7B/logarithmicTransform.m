%{
Practical
Write a MATLAB program to perform image logarithmic transformation.
Use the file 'pout.tif', 'chestXray.tif', and 'spine.tif'
%}

clc;
clear;
close all;

files = {'pout.tif', 'chestXray.tif', 'spine.tif'};

figure;

for k = 1:length(files)
    img = imread(files{k});
    img_double = double(img);
    img_log = log(1 + img_double);
    img_log = mat2gray(img_log) * 255;
    img_log = uint8(img_log);
    
    subplot(3, 2, 2*k-1);
    imshow(img);
    title(files{k});

    subplot(3, 2, 2*k);
    imshow(img_log);
    title('Logarithmic Transformed');
end
