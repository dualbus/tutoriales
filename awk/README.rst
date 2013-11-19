Gawk
====

:nombre: Eduardo Alan Bustamante López
:correo: dualbusNOSPAM@gmail.com
:irc:    #gultij  irc.freenode.net
         #awk     irc.freenode.net
:github: http://github.com/dualbus/tutorial_gawk

Qué
---

Es un lenguaje de programación orientado al procesamiento de texto.

Cómo
----

La estructura de un programa de Gawk se orienta a la forma:

  patrón - acción

Datos:
  Eduardo
  Ernesto
  Hermenegildo
  Esteban
  Eolo
  Juanito

Programa:
  ¿El nombre empieza con 'e'?
    si -> cuenta las letras; dime el nombre y su longitud
    no -> dime "Error"

Resultados:
  Eduardo 7
  Ernesto 7
  Error
  Esteban 7
  Eolo    4
  Error

gawk '{ if (/^[Ee]/) {print $0, length} else {print "Error"} }' <<\:
Eduardo
Ernesto
Hermenegildo
Esteban
Eolo
Juanito
:
#>>

Referencias
-----------

- ''man awk''
- ''info gawk''
- http://www.gnu.org/software/gawk/manual/gawk.html
- http://awk.info/
- http://awk.freeshell.org/
- http://www.catonmat.net/category/awk-programming
- http://pubs.opengroup.org/onlinepubs/9699919799/utilities/awk.html
- http://blog.alvarezp.org/2012/04/19/stats-gawk/
- http://blog.alvarezp.org/2012/07/03/mexico-tendra-el-gobierno-que-quiere-y-se-merece/
- http://blog.alvarezp.org/2009/09/28/bell-on-new-line/
- http://blog.alvarezp.org/2008/08/27/convert-mailq-to-tabbedgawk/
