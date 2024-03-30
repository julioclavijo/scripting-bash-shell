# !/bin/bash

# Funcion calcula area de un rectangulo
alt=0
bas=0
area_rectangulo() {
    altura=$1
    base=$2
    echo "La area del rectangulo es: $((altura * base))"
}

read -p "Ingrese  la altura del rectangulo: " alt
read -p "Ingrese el ancho del rectangulo: " bas
area_rectangulo $alt $bas
echo "---"

# Determinar si un numero es mayor
numero_1=0
numero_2=0

es_mayor(){
    if [ $1 -gt $2 ]; then
        echo  "$1 es mayor que $2"
    else
        echo "$2 es mayor o igual a $1"
    fi
}
read -p "Ingresar un numero: " numero_1
read -p "Ingresar otro numero  " numero_2  
es_mayor  $numero_1 $numero_2
echo "---"

# Tablas de multiplicar
tabla=0

tabla_mutiplicar() {
    tablas=({1..10})
    for i in ${tablas[@]};do
        echo "$1 x $i = $(($1*$i))\t"
    done 
}

read -p  "Ingrese el numero para ver su tabla de multiplicar: " tabla
echo "Tabla de multiplicar de $1:"
tabla_mutiplicar $tabla
echo "---"