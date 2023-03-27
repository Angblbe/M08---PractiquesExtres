#!/bin/bash

#Exe1
# verificar que hi hagin tres paràmetres

if [ $# -eq 3 ]; then
echo parametros correcto
else
echo Error: parametros incorrectos
exit
fi

echo siguiente

#compruebo ficheros
for fichero in  $1 $2 $3; 
do
if [ ! -f $fichero  ]; then
echo Error: El fichero $fichero no existe
exit 1
fi
done

echo $1 $2 $3 existen
#comprobamos la extension de los ficheros
#sacar extensiones
ext1=`echo $1 | cut -d "." -f2-`
ext2=`echo $2 | cut -d "." -f2-`
ext3=`echo $3 | cut -d "." -f2-`

#comparar 
if [ $ext1 == 'tar.gz' ] && [ $ext2 == 'pdb' ] && [ $ext3 == 'txt' ]; then
echo extensiones correctas
else
echo error en extensiones 
exit
fi

#Exe2

carpeta_docking=`date +"docking-%Y-%m-%d-%H-%M-%S"`
mkdir $carpeta_docking
mkdir $carpeta_docking/proteina
mkdir $carpeta_docking/farmacs
mkdir $carpeta_docking/resultats

ls -la $carpeta_docking

