---
tags:
  - bash
  - script
---

[inicio](../../README.md)
# Aplicando lo aprendido
Proyecto final

## Menú
```bash
# !/bin/bash
# Proyecto de cursos scripting desde cero EdTeam

#variables
opcion=0

while : 
do
    clear
    # mostrar menu
    echo "---"
    echo "Bienvenido al menú principal"
    echo "Seleccione la opcion"
    echo "1. Calcular IMC"
    echo "2. Calcular área de figura geométricas"
    echo "3. Operaciones aritmeticas"
    echo "4. Salir del sistema"
    read -p "1-4" opcion
    
    # validar la opcion
    case $opcion in
    1) clear; imc;;
    2) clear; area_figuras;;
    3) clear; operaciones;;
    4) 
        sleep 1
        exit 0;;
    esac
done
```

##  Opción para calcular IMC
```bash
calcular_imc() {
    peso=0
    estatura=0
    read -p  "Ingrese su peso (kg): " peso
    read -p "Ingrese su estatura (m): " estatura
    # scale es para el punto flotante
    imc=$(echo "scale=2; $peso / ($estatura * $estatura)" | bc)  
    echo "Tu IMC es: $imc"
    sleep 2  
}
```

## Opción para calcular las figuras geometricas
```bash

rectangulo() {
    alt=0
    bas=0
    read -p "Ingrese la altura del rectangulo: " alt
    read -p "Ingrese el ancho del rectangulo: " bas
    echo "La area del rectangulo es: $((alt * bas))"
}

triangulo(){
    base=0
    altu=0
    read -p "Ingrese la base del triangulo: " base
    read -p "Ingrese la altura del triangulo: " altu
    echo "La area del rectangulo es: $(((alt * bas)/2))"
}

circulo (){
    radio=0
    read -p "Ingrese el radio del circulo: " radio
    pi="3.14159"
    area=$(echo "scale=4; $pi * $radio^2"|bc )
    echo  "El area del circulo es: $area"
}

area_figuras() {

    figura=""
    read -p "Figura a calcular (a.Triangulo, b.Circulo o c.Rectangulo): " figura
    case $figura in
        a) triangulo;;
        b) circulo;; 
        c) rectangulo;;
    esac
    sleep 2  
}
```

## Opción para operaciones aritméticas
```bash
operaciones(){
    a=0
    b=0
    opcion=""
    read  -p "Digite un numero: " a
    read   -p "Digite otro numero: " b
    echo "eliga una  operacion:"
    echo "(a).Suma"
    echo "(b).Resta"
    echo "(c).Multiplicacion"
    echo "(d).Division"
    read   -p "a-b " opcion
    case $opcion in
        a) echo  "Suma: [$a + $b] = [$(($a + $b))] ";;
        b) echo  "Resta: [$a - $b] = [$(($a - $b))] ";;
        c) echo   "Multiplicacion: [$a \* $b] = [$(($a * $b))] ";;
        d) echo   "Division: [$a / $b] = [$(($a / $b))] ";;
    esac
    sleep 2
}
```
[inicio](../../README.md)