%{
Practical
Write a MATLAB program to perform Power Law Transformation.
Use the file 'spine.tif', 'tire.tif', and 'spine.tif'
%}

img = imread('tire.tif');
img_double = double(img);

c = 1; 
values = [0.4, 2.0, 2.5];

figure;

subplot(2, 2, 1);
imshow(img);
title('Original Image');

for k = 1:length(values)
    gamma = values(k);
    img_power = c * (img_double .^ gamma);
    img_power = mat2gray(img_power) * 255;
    img_power = uint8(img_power);

    subplot(2, 2, k+1);
    imshow(img_power);
    title(['Gamma: ', num2str(gamma)]);
end
