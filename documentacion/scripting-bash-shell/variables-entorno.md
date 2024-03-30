---
tags:
- bash
- shell
aliases: 'Variables de entorno'
---
[incio](../../README.md)
# Variables de entorno

Valor que cambia dinamicamente y se alamcena en el servidor como configuracion y aplicaciones

## Unix
HOME: Ruta de la carpeta HOME del usuario
PATH: Secuencia de rutas de archivos ejecutables
SHELL: Nombre del interprete de ordenes
LOGNAME: Login del usuario
ENV: lista de las variables de entorno usadas en la sesi6n actual

## Operacion
Instanciacion `$VARIABLE`
Creacion: `export VARIABLE = VALOR`
echo `$VARIABLE`
> Las varibles de entorno son en mayúscula

## Entendiendo ENV y variables de entorno
`env` es la variable que muesra  la mayoria de las variables de entorno
 
## Entendiendo PATH
PATH es una variable de entorno que almacena todas las rutas de los archivos ejecutables.

Para buscar el binario: 
`which ls`
Para saber que la ubicaciones guardas en ls
`echo $PATH | tr : \\n`

## Mi primer hola mundo

Creación de archivo, solo agregar el importante los permisos de ejecición
``` bash
mkdir script
vim holaMundo.sh
ls -lsh
chmod +x holaMundo.sh
```

Archivo Hola Mundo
```bash
# !/bin/bash
# description: Imprime un hola mundo
# autor: @julioclavijo

echo 'Mi primer script'
```

## Exit
Todos los programas deben tener *input, output, error*
la respuesta en el flujo no esperado

### Código de respuesta
`exit 0` correcto
`exit 1` error general (a/0)
`exit 2` error shell

## Comentarios y declarando variables
### Variable en .bashrc
Las variables de entorno son temporales
De acuerdo a la tipo de shell, en este caso se puede colocar
`.bashrc`

```bash
export NOMBRE='Julio Clavijo'
```
### Declaración
Cuidado con la sintaxis
Durante la declaracion se debe omitir los espacios para evitar un error

## Operando y manipulando las variables

### Operaciones aritméticas 
Se usa parantesis para ser enviado como una operacion aritméticas
```bash
# !bin/bash
a=2
b=3
echo 'Operaciones aritmeticas'
echo $((a+b))
echo $((a-b))
echo $((a*b))
echo $((a/b))
```

### Operaciones lógicas
Para bash funciona:
`true 1`
`false 0`

**Ejemplo**
```bash
# !bin/bash
a=2
b=3
echo 'Operaciones logicas'
echo $((a>b))
echo $((a<b))
```

## Concatenación
Unificar en una sola oracion
```bash
a=2
b=3
echo 'Contatenar'
echo "a $a"
echo "b $b"
```

> ⚠️ En la declación de variables hay un diferencias entre "" y '':
> Las comillas dobles " " se usan en expandirlos valores reales de $, \ y " 
> Las comilas sencillas '' no realizan ningna expansion, como texto literal

**Ejemplo propuesto**
![[adjuntos/Pasted image 20230604143013.png]]

## Definición e importancia de la programación interactiva
El usuario debe sar el script o interactuar con el mismo, al momento de ingresar sus propios datos aplicando los estandares.(input, output, error)

## Read y parámetros
Declarar las variables, para la lectura se usa `read -p`
```bash
a=2
b=3
echo 'lectura'
read -p "Ingrese a (numero)" a
read -p "Ingrese b (numero)" b
echo "a $a"
echo "b $b"
```

### Otros usos
La opción `-s` hará que la entrada del usuario no sea visible en la pantalla mientras se escribe.
```bash
read -s -p "Ingrese su contraseña: " contraseña
```
La opción `-t` para especificar el tiempo de espera en segundos.
```bash
read -t 5 -p "Ingrese su respuesta en 5 segundos: " respuesta
```