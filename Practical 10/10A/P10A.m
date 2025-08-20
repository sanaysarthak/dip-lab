%{
Practical 10-A
Write a MATLAB program to demonstrate and compare different distance metrics 
(Euclidean, Cityblock, and Chessboard distances) between two points on an image.
The program takes input coordinates from the user, calculates the distances, 
and visually displays the points and the connecting line on the image.
Use the file 'cameraman.jpeg'.
%}

clc;
clear; 
close all;
img = imread('cameraman.jpeg');
if size(img,3) == 3
    img = rgb2gray(img);
end

x1 = input('Enter x1: ');
y1 = input('Enter y1: ');
x2 = input('Enter x2: ');
y2 = input('Enter y2: ');

euclidean_dist = sqrt((x2 - x1)^2 + (y2 - y1)^2);
cityblock_dist = abs(x2 - x1) + abs(y2 - y1);
chessboard_dist = max(abs(x2 - x1), abs(y2 - y1));

disp(['Euclidean Distance: ', num2str(euclidean_dist)]);
disp(['Cityblock Distance: ', num2str(cityblock_dist)]);
disp(['Chessboard Distance: ', num2str(chessboard_dist)]);

imshow(img);
hold on;
plot(x1, y1, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
plot(x2, y2, 'go', 'MarkerSize', 8, 'LineWidth', 2);
line([x1 x2], [y1 y2], 'Color', 'y', 'LineWidth', 2);
hold off;
title('Selected Points and Connecting Line');