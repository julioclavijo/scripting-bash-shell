# !/bin/bash

topping=""
helado=1.9
precioTotal=0 

read -p "Quieres acompañar tu helado con topping (oreo, kikat, brownie, lacasitos)" topping
case $topping in
    "oreo") precioTopping=1;;
    "kikat") precioTopping=1.5;;
    "brownie") precioTopping=0.75;;
    "lacasitos") precioTopping=0.95;;
esac

# bc para el calculo de flotantes
precioHeladoBash=$(echo "$helado" | bc -l)
precioTotal=$(echo "${precioTopping} + ${precioHeladoBash}" | bc -l)
echo "Tu helado cuesta: $precioTotal"
exit