# !/bin/bash

# Programa de ejemplo creacion archivos y directorio

echo "Creacion de archivo y directorio"

if [ $1 = 'd' ];then
    mkdir -p $2
    echo "Directorio creado:: $2"
elif [ $1 = 'f' ]; then 
    touch $2
    echo "Este es el contenido del archivo" > $2.txt
    echo "Archivo creado $2"
fi
exit 0 