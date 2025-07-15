%{
Practical 3-B
Write a MATLAB program to display image metadata.
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