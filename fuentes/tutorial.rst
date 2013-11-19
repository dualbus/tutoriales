===========================
 Instalación desde fuentes
===========================


Pre-requisitos
--------------

1. Entorno de desarrollo:

   - build-essential
   - autotools-dev
   - libtool

   o

   - GNU gcc, tcc, llvm, ...
   - GNU autotools (automake, autoconf)
   - diff
   - patch ...

2. ¡Acceso a Internet!

3. Herramientas para acceder al código: git, hg, wget, tar, ...

-------------------------------------------------------------------------------



Consiguiendo el código
----------------------

1. Encontrar las fuentes!

2. La gran mayoría de los programas están escritos en C. Nos
   enfocaremos en ellos. Para compilar para X lenguaje, conseguir los
   compiladores apropiados, y consultar las referencias del lenguaje
   en cuanto a localizaciones y variables de entorno.

3. El lugar de inicio es Google(tm). Buscamos la página oficial del
   programa a conseguir.

4. Descargar y extraer el código:

  - ``*.tar.gz``
  - ``*.tar.bz2``
  - ``git clone *``
  - ``hg clone *``
  - bzr, svn, cvs, zip, rar, tar.xz ...

5. Consultar el archivo README.

-------------------------------------------------------------------------------



Dependencias
------------


En el desarrollo de software se busca con pasión:

  - Modularidad
  - Reutilización de código

Estos elementos son el origen de las librerías y las dependencias.

Dependencia:
  Es un elemento de software necesario para la utilización de otro
  elemento de software. X es una dependencia de Y, si la ejecución de
  Y depende en cierta forma de X. Se dice que Y depende de X.

¡Las dependencias son nuestro dolor de cabeza! La razón de ser de los
manejadores de paquetes es esencialmente el manejo inteligente de
dependencias. Al instalar desde fuente, es posible llegar a perder
esa magia.

-------------------------------------------------------------------------------



Cabeceras (headers)
-------------------

- ¡ Son los ``*.h`` !

- Pueden considerarse como contratos o especificaciones de interfaces
  entre programas.

- Los utiliza el compilador para validar que las llamadas a funciones
  externas al programa se hayan realizado de forma correcta -- y
  otras tareas.

- Solo son definiciones, no implementaciones.

- Localizaciones típicas:

  - /usr/include/
  - /usr/local/include/

- /usr/include/math.h:


  ::

    ...

    /* All floating-point numbers can be put in one of these categories.  */
    enum
      {
        FP_NAN =
    # define FP_NAN 0
          FP_NAN,
        FP_INFINITE =
    # define FP_INFINITE 1
          FP_INFINITE,
        FP_ZERO =

    ...

-------------------------------------------------------------------------------



Librerías
---------

- ``*.so`` y ``*.a`` (en Windows: ``*.dll``)

- Estáticas y compartidas (static, shared)

- Contienen implementaciones de una interfaz.

- Una agrupación de piezas de código ejecutable:

  ...
  [foo   ][0100010100101001]
  [bar   ][1010100101000111]
  [print ][1010111100000111]
  ...

- Se asocian con el código del programa a compilar en la etapa de
  enlazamiento.

- Localizaciones típicas:

  - /usr/lib
  - /usr/local/lib
  - /usr/lib32
  - /usr/lib64

- Comando ldd:

  ::

    $ ldd "$(type -P nc)" # type -P nc  es un comando de bash para
                            imprimir la ruta al binario.
    	linux-vdso.so.1 (0x00007fff4bdff000)
    	libbsd.so.0 => /usr/lib/libbsd.so.0 (0x00007fefc2041000)
    	libresolv.so.2 => /usr/lib/libresolv.so.2 (0x00007fefc1e2a000)
    	libc.so.6 => /usr/lib/libc.so.6 (0x00007fefc1a7d000)
    	/lib/ld-linux-x86-64.so.2 (0x00007fefc224e000)

-------------------------------------------------------------------------------



Entorno
-------

PATH:
  Variable de entorno más importante para nosotros. Es una lista de
  directorios que contienen ejecutables.

LD_LIBRARY_PATH:
  Lista de directorios que contienen librerías.


Usaremos PATH para apuntar a un directorio local, para evitar hacer
instalaciones como super-usuario. Por ejemplo:

  ::

    PATH=$HOME/local/bin:$PATH

-------------------------------------------------------------------------------



Autotools
---------

- Un grupo de programas para generar recetas de instalación.

- Para el programador: "Simplificación" del proceso de desarrollo
  multiplataforma.

- Para el usuario: Tres comandos mágicos que hacen todo:
  
  ::

    ./configure && make && make install

-------------------------------------------------------------------------------



configure
---------

- Script auto-generado para generación de configuraciones estáticas.

- Detecta dependencias faltantes.

- Permite la configuración particular de aspectos de los programas.

- Opciones importantes: --help, --prefix

-------------------------------------------------------------------------------



Makefile
--------

- Recetas para realizar procesos con dependencias.

- Recetas típicas importantes: all, clean, install, test

- Paralelización de procesos con -j.

-------------------------------------------------------------------------------



Y lo más importante: No hay que tener miedo de modificar cosas! Los
programadores no son perfectos.
