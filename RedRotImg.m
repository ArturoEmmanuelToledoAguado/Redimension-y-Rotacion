clc;
clear all;
close all;

%Extraccion de la imagen
img=imread('IMG/1.jpg');

%Rotamos 5° en sentido contrario de las manecillas del reloj
imgRot=imrotate(img,5);

%Dimensiones de la imagen rotada y normal
[fr cr]=size(imgRot);
[f c]=size(img);

%Mostramos imagenes
figure()
imshow(img)
title('Imagen Original')
figure()
imshow(imgRot)
title('Imagen Rotada 5°')

%Comparamos
if (f<fr) || (c<cr)
    imgr=imresize(img,[fr cr/3]);
    imgSum=imadd(imgr,imgRot);
    figure()
    imshow(imgSum)
    title('Suma de Original y rotada 5°')
else
    imgr=imresize(img,[f c/3]);
    imgSum=imadd(imgr,imgRot);
    figure()
    imshow(imgSum)
    title('Suma de Original y rotada 5°')
end