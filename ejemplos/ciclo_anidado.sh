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