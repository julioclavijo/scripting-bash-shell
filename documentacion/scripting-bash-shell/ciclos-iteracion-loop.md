---
tags:
  - bash
  - script
aliases:
  - Ciclos iteracion loop
---

[inicio](../../README.md)
# Ciclos iteracion loop

## Definición de ciclos, listas y arrays
Un arreglo es una lista de datos
Loop infinitos y loop finitos

```bash
# !/bin/bash

listadoNumero=(1 2 3 4 5 6 )
listadoNombres=(Diego Juan Rosa)
listadoConjunto=({1..100} {a..z})

# Imprimir los numeros del list
echo "Datos de listado de numeros:  ${listadoNumero[*]}"
echo "Nombre 1 de listado de nombre: ${listadoNombres[1]}"
echo "Datos de listado de conjuntos: ${listadoConjunto[*]}"
```

## Loop for
Ciclo hasta se cumpla la condición
```bash
for  i in ${listadoNumero[*]}
do
    echo "Iteracion $i"
done

```

otro ejemplo de uso
```bash
echo "---"
numeroUsuario=0
read -p "Numero: " numeroUsuario
for i in ${listadoNumero[*]}; do
    echo "tabla mulplicar: $numeroUsuario * $i =" $((i*numeroUsuario))
done
```

## Loop While
Ciclo que se repite hasta cumplir una condicion
```bash
# !/bin/bash

numero=1

numeroUsuario=0
read -p "Numero: " numeroUsuario

while [ $numero -ne  10 ]
do
    echo "tabla $numero * $numeroUsuario =" $((numeroUsuario*numero))
    numero=$((numero+1))
done
exit 0
```

## Loop Anidado
Tambien se puede usar los comando tambien de la terminal
```bash
# !/bin/bash
# programa si determina si un numero es primo
n=0
i=1
c=1

read -p "Ingrese un numero para determinar si es primo: " n
while [ $i -le $n ]
do
    i=$(expr $i + 1)
    r=$(expr $n % $i)
    if [ $r -eq 0 ];then
        c=$(expr $c + 1)
    fi
done

if  [ $c -eq 2 ]; then
    echo "Número es primo"
else
    echo "Número no es primo"
fi

exit 0
```


## Ejercicios con ciclos
```bash
# !/bin/bash
# ejericio suma numeros 1 al 4000
# imprimir hola 150 veces

numeros_4000=({1..4000})
f=0

for i in $(printf '%s\n' {1..150}); do
  echo "$i Hola"
done

for i in ${numeros_4000[*]}; do
    f=$( expr $f + $i)
done
echo "La sumatoria de los numeros del 1 al 4000 es: $f"

exit 0

```
[inicio](../../README.md)