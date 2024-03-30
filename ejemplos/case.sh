# !/bin/bash
# Dado un mes determinaar el numero de mes el usario
mes=""
echo "---"
read -p "Ingrese  el nombre del mes: " mes 

echo "---"

case $mes  in
    "enero") echo "El mes 1";;
    "febrero") echo "El mes 2";;
    "marzo") echo "El mes 3";;
    "abril") echo "El mes 4";;
    "mayo") echo "El mes 5";;
    "junio") echo "El mes 6";;
    "julio") echo "El mes 7";;
esac
