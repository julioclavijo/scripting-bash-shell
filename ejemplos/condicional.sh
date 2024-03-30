#!/bin/bash
edad=0
read -p "Ingrese su edad: " edad
if (($edad >= 18)); then
	echo "Eres mayor de edad."
fi
if [ $edad -lt 18 ]; then
	echo "Eres menor de edad."
fi
