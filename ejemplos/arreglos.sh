# !/bin/bash

listadoNumero=(1 2 3 4 5 6 )
listadoNombres=(Diego, Juan, Rosa)
listadoConjunto=({1..100} {a..z})

# Imprimir los numeros del list
echo "Datos de listado de numeros:  ${listadoNumero[*]}"
echo "Nombre 1 de listado de nombre: ${listadoNombres[1]}"
echo "Datos de listado de conjuntos: ${listadoConjunto[*]}"

for  i in "${!listadoNumero[@]}"; do
    echo "Iteracion $i: Numero = ${listadoNumero[$i]}"
done

for  i in ${listadoNumero[*]}
do
    echo "Iteracion $i"
done

echo "---"
numeroUsuario=0
read -p "Numero: " numeroUsuario
for i in ${listadoNumero[*]}; do
    echo "tabla mulplicar: $numeroUsuario * $i =" $((i*numeroUsuario))
done