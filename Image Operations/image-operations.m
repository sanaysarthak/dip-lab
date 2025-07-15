%{
Practical - Image Operations
Write a MATLAB program to perform operations on two images using switch-case.
Perform addition, subtraction, multiplication, and division of two images.
%}

clc;
clear;
close all;

i = imread('cameraman.jpeg');
j = imread('badminton.jpg');

[r, c, channel] = size(i);
j = imresize(j, [r, c]);

fprintf("Enter 1 for addition. \nEnter 2 for subtraction. \nEnter 3 for multiplication. \nEnter 4 for division. \n");
ch = input("Enter choice: ");

figure;

switch ch
    case 1
        re = imadd(i, j);
        subplot(1,3,1); imshow(i); title("Image 1");
        subplot(1,3,2); imshow(j); title("Image 2");
        subplot(1,3,3); imshow(re); title("Resultant Image");

    case 2
        re = imsubtract(i, j);
        subplot(1,3,1); imshow(i); title("Image 1");
        subplot(1,3,2); imshow(j); title("Image 2");
        subplot(1,3,3); imshow(re); title("Resultant Image");

    case 3
        re = immultiply(i, j);
        subplot(1,3,1); imshow(i); title("Image 1");
        subplot(1,3,2); imshow(j); title("Image 2");
        subplot(1,3,3); imshow(re); title("Resultant Image");

    case 4
        re = imdivide(i, j);
        subplot(1,3,1); imshow(i); title("Image 1");
        subplot(1,3,2); imshow(j); title("Image 2");
        subplot(1,3,3); imshow(re); title("Resultant Image");

    otherwise
        fprintf("Please choose the correct option (1-4).");

end
