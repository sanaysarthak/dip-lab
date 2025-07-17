%{
Practical 4-B
Write a MATLAB program for Image Bitwise Operations using switch case (AND, OR, NOT, XOR) and explain the results findings.
Use the files 'badminton.jpg' and 'basketball.jpeg' 
%}

clc;        
clear;      
close all;

i = imread('badminton.jpg');
j = imread('basketball.jpeg');

if size(i, 3) == 3
    i_gray = rgb2gray(i);
else
    i_gray = i;
end

if size(j, 3) == 3
    j_gray = rgb2gray(j);
else
    j_gray = j;
end

[r, c] = size(i_gray);
j_gray = imresize(j_gray, [r, c]);

i_thresh = graythresh(i_gray);
i_binary = imbinarize(i_gray, i_thresh);
j_thresh = graythresh(j_gray);
j_binary = imbinarize(j_gray, j_thresh);

fprintf("Select a bitwise operation:- \n");
fprintf("1. Bitwise AND. \n");
fprintf("2. Bitwise OR. \n");
fprintf("3. Bitwise NOT. \n");
fprintf("4. Bitwise XOR. \n");
ch = input("Enter your choice (1-4): ");

figure; 

switch ch
    case 1
        result = i_binary & j_binary;
        subplot(1,3,1); imshow(i_binary); title("Binary Image 1");
        subplot(1,3,2); imshow(j_binary); title("Binary Image 2");
        subplot(1,3,3); imshow(result); title("Bitwise AND");

    case 2 
        result = i_binary | j_binary;
        subplot(1,3,1); imshow(i_binary); title("Binary Image 1");
        subplot(1,3,2); imshow(j_binary); title("Binary Image 2");
        subplot(1,3,3); imshow(result); title("Bitwise OR");

    case 3 
        result = ~i_binary; 
        subplot(1,2,1); imshow(i_binary); title("Binary Image 1");
        subplot(1,2,2); imshow(result); title("Bitwise NOT");

    case 4
        result = xor(i_binary, j_binary);
        subplot(1,3,1); imshow(i_binary); title("Binary Image 1");
        subplot(1,3,2); imshow(j_binary); title("Binary Image 2");
        subplot(1,3,3); imshow(result); title("Bitwise XOR");

    otherwise
        fprintf("Invalid choice. Please enter a number between 1 and 4. \n");
end
