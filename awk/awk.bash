#!/usr/bin/env bash

hbar() { printf %.s- {0..79}; printf \\n; }



######
hbar #-------------------------------------------------------------------------
######

##
# Introducción breve a GNU awk (gawk)
##

gawk '
# Este es un comentario, no se ejecuta.

# El código de gawk tiene la siguiente forma:
#
#   patrón   { acción }
#
# `patrón`: Es una operación, que tiene un resultado y por lo tanto
#           puede evaluarse.
#
# `acción`: Un grupo de operaciones y comandos.

##
# Ejercicio 1.
#   Buscar el texto `hola` en la línea, e imprimirla si se encuentra.
##

# 1) Larga pero simple.

$0 ~ /hola/ { print $0 }

# 2) Corta.

/hola/ { print }

# 3) Aún más corta

/hola/


##
# Ejercicio 2.
#   Buscar el texto `sol` e imprimir las últimas dos palabras de la
#   línea
##

/sol/ { print $(NF-1), $NF }

##
# Ejercicio 3.
#   Suma de dos números.
##

($1+0) > 0 && ($3+0) > 0 { $5 = $1 + $3; print }


#<< Entrada
' <<\:
hola soy paquito no haré travesuras
juan visita a su mamá
el sol salió por la mañana
15 + 19 = ?
:
#>>
: <<\[
hola soy paquito no haré travesuras
hola soy paquito no haré travesuras
hola soy paquito no haré travesuras
la mañana
15 + 19 = 34
[



######
hbar #-------------------------------------------------------------------------
######

##
# Introducción a los patrónes BEGIN y END
##

gawk '
# $1 : nombre
# $2 : materia
# $3 : calificación
# $4 : faltas

BEGIN {
  print "alumno", "promedio", "faltas"
}

$1 == "biker" {
  calificacion += $3
  evaluaciones +=  1      # También puede escribirse como
  faltas       += $4      # evaluaciones++
}

END {
  promedio = calificacion/evaluaciones
  print "biker", promedio, faltas
}

#<< Entrada
' <<\:
alvarezp matemáticas 10 0
alvarezp historia 10  0
alvarezp física 9 0
alvarezp geografía  10  0
dualbus matemáticas 3.14  1
dualbus historia  5 1
dualbus física  9.81  2
dualbus geografía 5 3
biker matemáticas 9 1
biker historia  9 2
biker física  6 6
biker geografía 9 24
:
#>>
: <<\[
alumno promedio faltas
biker 8.25 33
[



######
hbar #-------------------------------------------------------------------------
######

##
# Variables RS, FS, ORS, OFS
##

gawk '
BEGIN {

  FS  = ","     # Field separator: Separador de los campos (columnas)
                # de entrada

  RS  = ";"     # Register separator: Separador de los registros
                # (filas) de entrada.

  OFS = " "     # Output field separator: Separador de los campos de
                # salida.

  ORS = "\n"    # Output register separator: Separador de los
                # registros de salida.
}

# Este truco nos permite reconstruir `$0`, utilizando OFS como el
# nuevo separador. El `1` del final es `verdadero`, por lo que
# siempre ejecuta la acción predeterminada (imprimir).

{$1=$1}1

#<< Entrada
' <<\:
1,2,3;4,5,6;7,8,9
:
#>>
: <<\[
1 2 3
4 5 6
7 8 9

[



######
hbar #-------------------------------------------------------------------------
######

##
# Extracción de información de un log de Apache. Versión ``UNIX
# style''.
##

gawk -vRS='\r\n' '

# Se guarda la cuenta de ocurrencias del primer campo en un arreglo.
{ arreglo[$1]++ }

# Al final, recorremos el arreglo, e imprimimos la cuenta total, y el
# campo.
END {
  for(llave in arreglo) {
    print arreglo[llave], llave
  }
}' muestras/apache-access_log | sort -rn | head -n 10 | cat -n
#>>
: <<\[
     1	452 64.242.88.10
     2	270 10.0.0.153
     3	51 h24-71-236-129.ca.shawcable.net
     4	44 cr020r01-3.sac.overture.com
     5	32 h24-70-69-74.ca.shawcable.net
     6	29 market-mail.panduit.com
     7	28 ts04-ip92.hevanet.com
     8	23 mail.geovariances.fr
     9	22 ip68-228-43-49.tc.ph.cox.net
    10	20 207.195.59.160
[



######
hbar #-------------------------------------------------------------------------
######

##
# Extracción de información de un log de Apache. Versión gawk puro.
##

gawk -vRS='\r\n' '

# El patrón BEGIN tiene un valor `verdadero` al inicio del programa.

BEGIN {
  lineas_max = 10
}

# `$1` contiene el valor del primer campo (columna) del primer
# registro (fila).

{ arreglo[$1]++ }

END {
  
  arreglo_lon = asorti(arreglo, arreglo_ordenado, "@val_num_desc")

  limite_superior = ( arreglo_lon < lineas_max ) ?
                      arreglo_lon : lineas_max

  for(i = 1; i <= limite_superior; i++) {
    llave = arreglo_ordenado[i]

    print i, arreglo[llave], llave
  }
}
' muestras/apache-access_log
#>>
: <<\[
1 452 64.242.88.10
2 270 10.0.0.153
3 51 h24-71-236-129.ca.shawcable.net
4 44 cr020r01-3.sac.overture.com
5 32 h24-70-69-74.ca.shawcable.net
6 29 market-mail.panduit.com
7 28 ts04-ip92.hevanet.com
8 23 mail.geovariances.fr
9 22 ip68-228-43-49.tc.ph.cox.net
10 20 207.195.59.160
[



######
hbar #-------------------------------------------------------------------------
######

##
# Secuencia de números de fibonacci.
#   Definición de funciones y recursividad.
##

gawk '
function fibonacci(n) {
  if(n <  0) return 0
  if(n == 0) return 1
  if(n == 1) return 1
  else return fibonacci(n - 1) + fibonacci(n - 2);
}

BEGIN {
  for(i = 0; i < 10; i++) {
    print i, fibonacci(i)
  }
}
'
#>>
: <<\[
0 1
1 1
2 2
3 3
4 5
5 8
6 13
7 21
8 34
9 55
[



######
hbar #-------------------------------------------------------------------------
######

##
# ...
##
