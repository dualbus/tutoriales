#!/usr/bin/env bash

# ^.. Esa primera línea es muy importante. Favor de revisar el
# archivo `xxx-hash_bang.bash' para entender su propósito. Es
# *fundamental*.



# Esto es un comentario. No necesariamente deben de ser al inicio de
# la línea. Cualquier caracter de gato, antecedido de un espacio,
# cancela el resto de la línea.



# El primer programa tradicional en todo lenguaje de programación
# (excepto en los funcionales), consiste en imprimir a pantalla un
# "Hello, World"/"Hola, Mundo!". Iniciemos.



# La agenda:
#
# * Revisar el tema de los comandos y sus argumentos
# * Separación de palabras
# * Comandos para imprimir a pantalla



# Iniciemos!


# El shell bash -- ojo, bash y sh *no* son lo mismo, veremos las
# diferencias en `xxx-posix_sh.bash' -- cuenta con al menos dos
# formas de imprimir a pantalla. La tradicional, es usar el comando
# `echo'. Aunque una mejor práctica es usar printf. En un momento les
# platico la razón.

# Esta línea imprime: "Hola, Mundo!" (sin las dobles comillas)
echo Hola, Mundo!

# Un shell es un programa que inicia programas (yo, dawg). Así es. Su
# función principal no es hacer aritmética. Tampoco soportar
# funciones recursivas, o variables locales. La idea de un shell es
# poder lanzar otros programas desde él. Es necesario que esto quede
# muy claro, ya que en ocasiones queremos que el shell haga cosas
# maravillosas, cuando resulta que es solo un simple lanza-programas
# de modo de texto. En fin, para ver más a detalle qué es un shell, y
# las diferencias entre shell y terminal, ver: `xxx-shell.bash'.

# Después del breve comercial, veamos cómo funciona un comando en el
# shell. Un comando es el análogo de un verbo. Por ejemplo, si yo te
# digo: brinca! tú sabes que el verbo indica que te levantes del
# suelo, una acción. Algunos verbos requieren de complemento
# indirecto, otros se modifican con adverbios, etc. Lo mismo ocurre
# en los comandos. En el caso de los comandos, los adverbios se
# denominan `argumentos opcionales', y los complementos indirectos
# son `argumentos posicionales'.

# Veamos una analogía. Si yo te digo: imprime!, probablemente no
# tenga mucho sentido para ti (a menos de que previamente hayamos
# acordado que debías imprimir algo). Tiene más sentido si te indico
# lo que quiero que imprimas. Intentemos de nuevo: imprime la tarea!
# Mucho mejor. `imprime' es nuestro verbo, y `la tarea' nuestro
# complemento indirecto. `imprime' es nuestro comando, `la tarea'
# nuestro primer argumento posicional. `echo' es nuestro comando, `la
# tarea' nuestro primer argumento posicional. Intentemos:

echo 'la tarea' # -> la tarea

# Bravo! Ya entendimos que un comando es una acción, y que las
# acciones en ocasiones requieren de una cosa sobre la cual actuar,
# en este caso, los argumentos posicionales.

# Sin embargo, introduje algo que no había mencionado antes: las
# comillas sencillas. El asunto de las comillas es todo un tema,
# `xxx-escape.bash', sin embargo, explicaré brevemente su uso. El
# shell, para saber quién es el comando, quiénes los argumentos
# opcionales, y quienes los argumentos posicionales, toma el comando
# completo, y corta en los espacios. Ya sean espacios normales,
# tabuladores, nuevas líneas. Corta en los espacios.

# Es decir, el siguiente comando, lo corta así:

#   v---v-v----|
echo ola k ase
#   ^---^-^----> Ahí cortamos.

# Por lo que el shell ve:
#
# - <echo>: acción/comando
# - <ola>: primer argumento posicional
# - <k>: segundo argumento posicional
# - <ase>: tercer argumento posicional

# En este caso particular no se nota el efecto, porque lo que hace
# `echo' es tomar sus argumentos posicionales, concatenarlos
# (pegarlos) con un espacio sencillo, e imprimirlos. Sin embargo,
# echo recibe *tres* argumentos posicionales. Denominemos a este
# comportamiento del shell: "separación de palabras" -- en inglés le
# llaman "word-splitting". Será muy importante para temas
# posteriores.

# Si yo quiero imprimir con más de un espacio, e intento lo
# siguiente:

echo ola          k    ase

# Funcionará?
# La respuesta: no
# La razón:

#   v---v----------v------|
echo ola          k    ase
#   ^---^----------^------|
#
# `echo' ve:
# <echo> <ola> <k> <ase> -- Los símbolos son solo notación para
# expresar que son "palabras" o argumentos diferentes.
#
# Entonces, `echo' construye el siguiente mensaje:
#
# 'ola k ase'
#     ^-^------> espacios sencillos.
#
# E imprime: "ola k ase" -- sin las comillas dobles
#
# Cómo puedo lograr lo que quería entonces? Cómo puedo deshabilitar
# la separación de palabras? Revisar `xxx-escape.bash'. Para no
# dejarlos con la duda, la respuesta simple es: protege tu mensaje
# con comillas sencillas:

echo 'ola          k    ase'


# ----------------------------------------------------------------------------
#
# Pff... eso fue un rollote. Ahora veamos printf.
#
# Para los que saben C y lenguajes derivados, seguramente conocerán
# la funcion printf: printf(fmt, args...)
#
# Donde tenían una cadena de formato, y una serie de argumentos. Los
# formatos, si no los manejan ya, son un tema muy complejo. Para ver
# más a detalle: `xxx-printf.bash'. Por el momento, nos conformaremos
# con que el formato '%s\n' me imprimirá los N argumentos que le de a
# printf, separados por nuevas líneas -- o cada uno en su línea, como
# lo entiendan mejor.

printf '%s\n' 'Hola, Mundo!' # -> Hola, Mundo!

# Si olvidan el detalle de la separación de palabras y no protegen el
# mensaje:

printf '%s\n' Hola, Mundo! # -> Hola,
                           #    Mundo!

# La razón: printf recibe dos argumentos posicionales, en vez de uno,
# e imprime cada uno en su propia línea.




# ----------------------------------------------------------------------------
# Eso es todo por hoy. Lo que aprendimos
#
# * Un comando es una acción, o verbo.
# * Los comandos reciben argumentos, opcionales y posicionales.
# * El shell separa los distintos argumentos en base a los espacios,
#   llamamos a esto: separación de palabras.
# * Para prevenir la separación de palabras de una cadena, la
#   protegimos con comillas sencillas.
# * Hay dos (o más) comandos para imprimir a pantalla: `echo' y
#   `printf'.
