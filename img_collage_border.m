clc, close all
img1 = imread('colorparrot.jpg');
[rows, cols ,~] = size(img1);
img2 = imresize(imread('colorpowder.jpg'), [rows cols]);
width = rows + cols;
width = round(width./125);

border_cols = cols + width + cols;

%****Creating blue border line****
black = zeros(rows, width, 'uint8');
black2 = zeros(width, border_cols, 'uint8');

blue1= zeros(rows, width, 'uint8') + 255;
blue1 = cat(3, black, black, blue1);

blue2 = zeros(width, border_cols, 'uint8') + 255;
blue2 = cat(3, black2, black2, blue2);
%******Till here******

res1 = cat(2, img1, blue1, img2);
res2 = res1;

t = cat(1, res1, blue2, res2);
imshow(t);







