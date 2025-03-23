#!/bin/bash
## Programa para que el salvapantallas phosphor muestre una web
## correctamente codificada al castellano.
## hecho por peron.
#--------------------------------------------------------------

## Crea directorios de trabajo
rm -r /tmp/.phosphor/;
mkdir -p /tmp/.phosphor/ ;
mkdir -p /tmp/.phosphor/$USER/ ;
touch /tmp/.phosphor/$USER/phosphor_8859-1.txt ;
doctrina | cowsay -f hippie > /tmp/.phosphor/$USER/cowsay.txt ;

## Presentación de encabezado (opcional)
#cat /home/$USER/Documentos/ans/cpm.txt ;
cat /tmp/.phosphor/$USER/cowsay.txt >> /tmp/.phosphor/$USER/phosphor_utf8.txt ;

## Usa en navegador lynx para volcar el contenido de una web a un archivo oculto
## codificado en utf8 en la carpeta temporal de sistema.
echo 'Descargando contenido...' ;
w3m -dump -cols 50 -I 8859-1 tilde.club/~peron/blog >> /tmp/.phosphor/$USER/phosphor_utf8.txt ;

## Convierte el archivo oculto desde utf8 a 8859-1 y lo agrega
iconv -f UTF-8 -t ISO-8859-1 /tmp/.phosphor/$USER/phosphor_utf8.txt >> /tmp/.phosphor/$USER/phosphor_8859-1.txt

## Esto muestra el archivo (será leído por Phospor)
cat /tmp/.phosphor/$USER/phosphor_8859-1.txt

## Estas líneas opcionales borrarían los archivos temporales.
#rm /tmp/.phosphor_8859-1.txt 
#rm /tmp/.phosphor_utf8.txt
