img = imread('pics/5.jpg');
%converting this img to gray
gimg = rgb2gray(img);
%Now converting this gray img to 3 channel gray img
gimg = cat(3, gimg, gimg, gimg);
%Now we can concatenate RGB and Gray img
res = [img, gimg];
subplot(1,3,1), imshow(img);
subplot(1,3,2), imshow(gimg);
subplot(1,3,3), imshow(res);