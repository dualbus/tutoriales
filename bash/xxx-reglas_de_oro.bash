#!/usr/bin/env bash

# Compilación de reglas que cuando las aplico, me salen mis
# programas.

# 1. Si estoy expandiendo un parámetro (por ejemplo, una variable), y
#    no está entre comillas dobles, seguramente algo estoy haciendo
#    mal.
#
#    nota: también aplica para sustituciones de comandos ( $(...) y
#    `...`)
#
#    ver: xxx-escape.bash


# 2. Si veo el siguiente patrón: for x in `...`  o  for x in $(...),
#    seguramente algo estoy haciendo mal.
#
#    A muchos nos enseñaron a leer líneas con:
#
#     for line in $(cat file); do ...
#
#    El cual es pésimo. Primero que nada, no lee líneas, lee palabras
#    separadas por espacios (recuerdas la separación de palabras?).
#    Si hay por ahí un glob, como *.mp3, y resulta que un archivo
#    coincide con el patrón, adiós precisión.
#
#    Claro, después nos enseñaron a modificar IFS para que funcione
#    con líneas, y a usar set -f para evitar la expansión de globs.
#    ¿En serio?
#
#    "Ugh, no puedo cortar este pedazo de chuleta con el tenedor. Voy
#    a trinchar un extremo, y lo desgarro con los dientes. O lo hago
#    con las manos -- Oye, ¿y si mejor usas un cuchillo? -- No, yo lo
#    quiero hacer con el tenedor!"
#
#
#    La forma correcta de leer líneas (el cuchillo):
#
#    while IFS= read -r line; do
#      echo "$line"
#    done < archivo
#
#
#    La forma *INCORRECTA*:
#
#    oIFS=$IFS IFS=$'\n'
#    set -f
#    for line in $(cat file); do
#      echo "$line"
#    done
#    IFS=$oIFS


# 3.
