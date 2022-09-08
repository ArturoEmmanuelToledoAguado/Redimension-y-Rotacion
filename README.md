# Introducción
Se propone usar la función imfuse de matlab para sumar una imágen consigo misma rotada un grado, después a ese resultado sumarle la imágen original rotada dos grados, y así sucesivamente hasta 5 grados, pero antes es necesario saber:

## ¿Qué es el procesamiento digital de imagenes (PDI)?
PDI se puede definir como el conjunto de procesamientos que se realizan sobre una imagen digital ya sea para realizar su almacenamiento, transmisión o tratamiento.

## Lectura de imágenes en matlab
Para leer una imágen en matlab se utiliza la función <a href="https://la.mathworks.com/help/matlab/ref/imread.html"> **imread**</a> y se asigna a una variable que representara a la imágen.

<code>imagen = imread('ruta/nombre de la imágen.extensión');</code>

## Girar una imágen
La función <a href="https://la.mathworks.com/help/images/ref/imrotate.html?searchHighlight=imrotate&s_tid=srchtitle_imrotate_1">**imrotate**</a> gira la imágen por grados en sentido contrario a las agujas del reloj alrededor de su punto central. Para girar la imágen en el sentido de las agujas del reloj; especifica un valor negativo.

<code>imgrotada=imrotate(img,ángulo)</code>

## Suma de dos imágenes
Con la función <a href="https://la.mathworks.com/help/images/ref/imadd.html">**imadd**</a> se pueden sumar dos imágenes, pero para que la suma se pueda realizar, *las dos imágenes deben ser del mismo tamaño*

<code>sum=imadd(img1,img2)</code>

Recuerde que el valor maximo que puede tener un pixel es de 255 y el valor minimo es 0, esto para cada uno de los tres planos de la imágen (RGB)

## Cambiar el tamaño de una imágen
Matlab puede redimensionar una imagen mediante la funcion <a href= "https://la.mathworks.com/help/matlab/ref/imresize.html">**imresize**</a>, la imágen sera de menor tamaño que la original si el valor asignado es menor a 1, por el contrario para aumentar el tamaño, se necesita un factor de ampliación mayor que 1.

<code>nuevaimagen=imresize(imagen,escala)</code>

## Mostrar una imágen
La función <a href="https://la.mathworks.com/help/images/ref/imshow.html?searchHighlight=imshow&s_tid=srchtitle_imshow_1">**imshow**</a> permite mostrar una imágen abierta, modificada o creada desde matlab (la imagen se visualiza en una ventana de matlab)

<code>imshow(imagen)</code>

## Guardar una imágen
Para guardar el contenido de una imagen la cual ha sido modificada o creada en matlab se utiliza la función <a href="https://la.mathworks.com/help/matlab/ref/imwrite.html?s_tid=doc_ta">**imwrite**</a>

<code>imwrite(variable,'nombre del arvhivo.extención')</code>

En donde 'variable' representa la variable que contiene a la imágen, 'nombre del archivo', el nombre con el que se desea guardar seguido de un punto se indica el tipo de formato deseado

<a href="https://github.com/ArturoEmmanuelToledoAguado/Uso-de-imfuse">Código</a>