---
tags:
  - bash
  - shell
  - script
  - funcion
aliases:
  - Funciones
---

[inicio](../../README.md)
# Funciones

## Definición
Acción dentro del programa, para darle orden al programa, donde se debe declarar y llamar
```bash
function name(){}
```

## Creación de funciones
Ejemplo de creación de funciones
```bash
# !/bin/bash

# Declaración esta funcion imprime Hola Mundo
hola_mundo() {
    echo "Hola mundo"    
}

hola_mundo
```

Se puede llamar las variables fuera de la función

## Funciones con parametros
Funciones que reciben variables
```bash
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
```

## Resolviendo problemas con funciones
Calulos del area de un rectangulo
```bash
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
```

Cálculo de si un número es mayor
```bash
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
```

Cálculo de tablas de multiplicar
```bash
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
```