%{
Practical 3-A
Write a MATLAB program to Display Image metadata information.
Use the file 'badminton.jpg' 
%}

clc;
clear;
close all;

i = imfinfo("badminton.jpg");

fprintf("MetaData Information:-\n");
fprintf("Filename is %s\n", i.Filename);
fprintf("Bit Depth is %d\n", i.BitDepth);
fprintf("Format is %s\n", i.Format);
fprintf("Color Type is %s\n", i.ColorType)
fprintf("File Size is %d\n", i.FileSize);
