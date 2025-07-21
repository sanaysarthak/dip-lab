%{
Practical 5-C
Write a MATLAB program to perform histogram equalization to improve image
contrast.
Make a 3x2 grid as follows:-
Original Image -> Original Histogram
HistEQ Image -> HistEQ Histogram
AdaptiveHistEQ Image -> AdaptiveHistEQ Histogram
Use the file 'foosball.png'
%}

i = imread('foosball.png');

if size(i,3) == 3
    grayImage = rgb2gray(i);
else
    grayImage = i;
end

histeqImage = histeq(grayImage);
adapthisteqImage = adapthisteq(grayImage);

figure;

% Original Image 
subplot(3, 2, 1); imshow(grayImage); title('Original Image');
subplot(3, 2, 2); imhist(grayImage); title('Original Histogram');

% Histogram Equalized Image
subplot(3, 2, 3); imshow(histeqImage); title('Histogram Equalized Image');
subplot(3, 2, 4); imhist(histeqImage); title('Histogram of Equalized Image');

% Adaptive Histogram Equalized Image
subplot(3, 2, 5); imshow(adapthisteqImage); title('Adaptive Histogram Equalized Image');
subplot(3, 2, 6); imhist(adapthisteqImage); title('Histogram of Adaptive Histogram Equalized Image');
