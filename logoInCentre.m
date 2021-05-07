picture = imread('colorboats.jpg');
[imgrows, imgcols, imgc] = size(picture);
logo_rows = imgrows./3;
logo_cols = imgcols./3;

%Causing an error in some images (solved)
sqr_logo_rows = logo_rows - logo_cols;
s_l_r_positive = abs(sqr_logo_rows);

sqr_logo_cols = logo_cols - logo_rows;
s_l_c_positive =  abs(sqr_logo_cols);

logo = imread('logo1.png');

resize_logo = imresize(logo, [s_l_r_positive  s_l_c_positive]);
[rows, cols, clogo] = size(resize_logo)
half_rows = rows./2;
half_cols = cols./2;



imgrows = imgrows./2 - half_rows
imgcols = imgcols./2 - half_cols

img = picture;

img(imgrows: imgrows+rows-1, imgcols: imgcols+cols-1, :) = resize_logo;

imshow(img);




