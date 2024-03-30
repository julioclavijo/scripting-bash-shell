# !bin/bash
a=2
b=3

# Operaciones
echo 'Suma de variables'
echo $((a+b))
echo $((a-b))
echo $((a*b))
echo $((a/b))

# Operaciones logicas
echo 'Operaciones logicas'
echo $((a>b))
echo $((a<b))

# Concatenar
echo 'Concatenar'
echo "a: $a"
echo "b: $b"

# Lectura
echo 'lectura'
read -p "Ingrese a (numero)" a
read -p "Ingrese b (numero)" b
echo "a $a"
echo "b $b"
