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