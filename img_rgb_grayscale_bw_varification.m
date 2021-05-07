clc, clear
img = imread('colorparrot.jpg');


if size(img,3) == 3
    fprintf('Its an RGB image');
    %imshow(img);
elseif size(img,3)==1 && isinteger(img)
    fprintf('Its a GrayScale image');
    %imshow(img);
elseif islogical(img)
    fprintf('its black and white image');
    %imshow(img);
else
    fprintf('unknown');
    
end