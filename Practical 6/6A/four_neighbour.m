%{
Practical 6-A
Write a MATLAB program to find 4-neighbour of any row, column value given from the user.
Use the file 'cameraman.jpeg'.
%}

clc;
clear;
close all;

i = imread('cameraman.jpeg');
i = rgb2gray(i);

[row, column, ch] = size(i);

fprintf("Image has the following Dimensions:-\n");
fprintf("Rows: %d\n", row);
fprintf("Columns: %d\n", column);

fprintf("\nEnter Pixel values to get its 4-neighbour:-\n");
r = input("Enter row: ");
c = input("Enter column: ");

if r < 1 || r > row || c < 1 || c > column
    fprintf("Error: The entered pixel (%d, %d) is out of image bounds.\n", r, c);
    return;  % terminate the script
end

fprintf("\nThe 4-neighbours are as follows:-\n");
fprintf("Top:    (%d, %d)\n", r-1, c);
fprintf("Bottom: (%d, %d)\n", r+1, c);
fprintf("Left:   (%d, %d)\n", r, c-1);
fprintf("Right:  (%d, %d)\n", r, c+1);
