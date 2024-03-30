#!/bin/bash
nota1=0
nota2=0
nota3=0
promedio=0

read -p "Ingrese la primera nota: " nota1
read -p "Ingrese la segunda nota: " nota2
read -p "Ingrese la tercera nota: " nota3

promedio=$(((nota1+nota2+nota3)/3))
echo "---"
echo "El promedio de las tres notas es $promedio"

if [ $promedio -ge 7 ];then
    echo "Promocionado"
else
    if [ $promedio -gt 4 ] && [ $promedio -le 6 ]; then
        echo  "regular"
    else
        echo "No promocionado"
    fi
fi
exit 0