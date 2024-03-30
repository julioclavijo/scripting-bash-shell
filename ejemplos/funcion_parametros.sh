# !/bin/bash

num_1=0
num_2=0
# Funcion de suma de dos numero
realizar_suma() {
    numero1=$1
    numero2=$2
    echo "---"
    echo "La suma de $numero1 + $numero2 =" $((numero1+numero2)) 
}

read -p "Ingrese numero 1"  num_1
read -p "Ingrese numero 2"  num_2

realizar_suma $num_1 $num_2