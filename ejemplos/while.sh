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