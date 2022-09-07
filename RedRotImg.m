clc;
clear all;
close all;

%Extraccion de la imagen
img=imread('IMG/1.jpg');

%Rotamos 5° en sentido contrario de las manecillas del reloj
imgRot=imrotate(img,5);
