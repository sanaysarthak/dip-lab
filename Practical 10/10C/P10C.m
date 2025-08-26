%{
Practical 10-C
Write a MATLAB program to perform convolution and correlational operations on 1D and 2D arrays.
%}

clc;
clear;
close all;

% 1D signals
signal1D = [1 2 3 4 5];
kernel1D = [1 0 -1];

% 1D convolution (full)
conv1D_result = conv(signal1D, kernel1D, 'full');

% 1D correlation
corr1D_result = xcorr(signal1D, kernel1D);

disp('1D Convolution Result:');
disp(conv1D_result);

disp('1D Correlation Result:');
disp(corr1D_result);

% 2D signals
image2D = [1 2 3; 4 5 6; 7 8 9];
kernel2D = [1 0 -1; 1 0 -1; 1 0 -1];

% 2D convolution (same size as input)
conv2D_result = conv2(image2D, kernel2D, 'same');

% 2D correlation (same size as input)
corr2D_result = imfilter(image2D, kernel2D, 'same', 'corr');

disp('2D Convolution Result:');
disp(conv2D_result);

disp('2D Correlation Result:');
disp(corr2D_result);
