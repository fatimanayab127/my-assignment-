 inputDir='images.jpg';
outputDir= 'fatimagry';
loadJPG=dir([inputDir '*.jpg']);
for i =1:length(loadJPG)
img= imread([inputDir loadJPG(i).namr]);
name=loadJPG(i).name;
fprintf('%d) loading%\t',i,name);
img=rgb2gray(img);
imwrite(img,[ourputDir name '.png'])'
inputDir='images.jpg';
outputDir= 'fatimagry';
loadJPG=dir([inputDir '*.jpg']);
for i =1:length(loadJPG)
img= imread([inputDir loadJPG(i).namr]);
name=loadJPG(i).name;
fprintf('%d) loading%\t',i,name);
img=rgb2gray(img);
imwrite(img,[ourputDir name '.png']);
fprinf('%d) writing %s .png \n',i,name);
end