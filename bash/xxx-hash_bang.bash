#!/usr/bin/env bash

# ^... Esa cosa de ahí tiene una razón de ser. No es sólo un adorno
# para que se vean más chulos nuestros programas.



# Tema de hoy: Hash-bang!


# Agenda:
#
# * Razón del hash-bang
# * Tips para los hash-bangs


# La maravillosa línea que ponemos al inicio de nuestros scripts, ya
# sea de bash, python, perl, ruby... existe por una razón. Y la razón
# es que es el mecanismo que permite al sistema operativo saber qué
# rayos es este archivo de texto que quieres ejecutar. ¿Quieres
# ejecutar un poema? ¿Quieres que te cante el himno nacional? Bueno,
# dime lo que quieres -- diría el buen sistema operativo, con gran
# libertad.

# El hash-bang nos permite indicar el programa encargado de ejecutar
# nuestro programa. Por ejemplo, si nuestro programa es un script de
# bash, queremos indicar al SO que utilice bash para leer,
# interpretar y ejecutar nuestro programa. Si nuestro programa es un
# script de gawk, queremos que sea gawk el que lo ejecute, no bash!

# ¿Cómo se forma un hash-bang?
#
# Sencillo: Solo pon los caracteres #! (gato-admiración/hash-bang) --
# en ASCII eso es algo como:

printf %s '#!' | od -tx1 -An # -> 23 21

# Osea, en hexadecimal 0x23 0x21. Es muy importante que esos dos
# caracteres sean los primeros. No espacios antes, no corazoncito,
# no nada. Para los archivos UTF-x que tienen BOM, lo siento, pero no
# pueden usarlos -- según lo que yo recuerdo.

# Bueno, pero, ¿qué sigue de la admiración del gatito?
# Una ruta *absoluta* al programa que interpretará nuestro programa.
#
# Bash tradicionalmente está en /bin/bash para los sistemas
# GNU/Linux. Si usas FreeBSD, sabrás que bash está en
# /usr/local/bin/bash. El bash que yo uso está en:
# /home/dualbus/local/bin/bash.

# ¿Tengo que cambiar el hash-bang cada que quiera usar un bash
# distinto? En teoría sí. Un truco que se usa es llamar al programa
# `env'. Como usualmente no estamos moviendo de lugar a `env',
# podemos asumir una ruta fija, y dejar que `env' llame al bash que
# tenemos en nuestra variable `PATH' por nosotros.

# Un hash-bang con `env' se vería así:
# #!/usr/bin/env bash

# Por lo que el SO tomaría la ruta a nuestro programa, y lo llamaría
# así:

# /usr/bin/env bash /ruta/a/nuestro/programa

# `env' busca a bash en el PATH, toma nuestra versión preferida de
# bash, y lo llama así:

# /nuestra/version/preferida/bash /ruta/a/nuestro/programa

# Resultado:
#
# /ruta/a/nuestro/programa: line 2: syntax error: unexpected end of file
#
# Ush, pero al menos ya lo llamó!

# Entonces, tienes dos opciones:
#
# - Asumir una ruta, /bin/bash
# - Usar `env' para que este determine la versión de bash a usar
#   según tu PATH.
