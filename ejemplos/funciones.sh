# !/bin/bash

# Declaración esta funcion imprime Hola Mundo
hola_mundo() {
    echo "Hola mundo"    
}


# Funcion de suma de dos numero
realizar_suma() {
    numero1=1
    numero2=3
    echo "---"
    echo "La suma de $numero1 + $numero2 =" $((numero1+numero2)) 
}



hola_mundo
realizar_suma
