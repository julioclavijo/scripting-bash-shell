---
tags:
  - bash
  - script
---

[inicio](../../README.md)
# Archivos
Manejo de ficheros
## Creando y escribiendo archivos
Usando los programas con bash
```bash
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
```

en bash se puede enviar el parametro
```bash
./archivo.sh f example 
```

## Analizando el contenido
El uso de archivo y la combinación

```bash
# !/bin/bash
# Script que permite escribir y leer un archivo

echo "Escribiendo en el archivo..."
echo $2 >> $1
```

```bash
./escribir.sh text.md "Archivo"
```
[inicio](../../README.md)