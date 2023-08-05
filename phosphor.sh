## Programa para que el salvapantallas phosphor muestre una web
## correctamente codificada al castellano.
## hecho por peron.
#-------------------------------------------------------------

## usa en navegador lynx para volcar el contenido de una web a un archivo oculto 
## codificado en utf8 en la carpeta temporal de sistema.
w3m -dump -cols 60 -I 8859-1 ubuntuperonista.blogspot.com.ar > /tmp/.phosphor_utf8.txt

##convierte el archivo oculto desde utf8 a 8859-1
iconv -f UTF-8 -t ISO-8859-1 /tmp/.phosphor_utf8.txt > /tmp/.phosphor_8859-1.txt

## Esto muestra el archivo (será leído por Phospor)
cat /tmp/.phosphor_8859-1.txt

# Estas líneas opcionales borrarían los archivos temporales.
#rm /tmp/.phosphor_8859-1.txt 
#rm /tmp/.phosphor_utf8.txt
