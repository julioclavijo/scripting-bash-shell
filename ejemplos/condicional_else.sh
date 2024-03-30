#!/bin/bash
edad=0
year=0

read -p "Ingrese su edad: " edad
read -p "Ingrese el año: " year
if (($edad >= 18)); then
    echo "Eres mayor de edad."
else
	echo "No eres una persona mayor de edad"
fi
if [ $edad -ge 18 ]; then
    echo "Eres menor de edad."
fi
if [ $edad -ge 18 ] && [ $year -eq 2023 ]; then
    echo "Puedes votar en $year."
else
	echo "No puedes sufragar"
fi