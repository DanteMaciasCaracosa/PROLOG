# Acertijo de los Científicos y sus Laboratorios Cinco científicos
# trabajan en un centro de investigación. Cada uno tiene un laboratorio en
# un color diferente y se especializa en una rama distinta de la
# ciencia. Además, cada científico usa un tipo diferente de equipo y
# prefiere una bebida específica mientras trabaja.

# Pistas El científico en el laboratorio rojo investiga en Biología.  El
# físico trabaja en el laboratorio azul.  El químico usa un microscopio.
# La persona en el laboratorio verde toma té.  El laboratorio verde está a
# la derecha del laboratorio blanco.  El científico que usa un
# espectrofotómetro investiga en Química.  El investigador del laboratorio
# amarillo usa una centrífuga.  El científico en el laboratorio del centro
# toma café.  El investigador del laboratorio naranja trabaja en
# Matemáticas.  El científico en el primer laboratorio usa un microscopio.
# El científico que usa una pipeta trabaja junto al que investiga en
# Física.  El científico que usa una balanza trabaja junto al que usa un
# espectrofotómetro.  El investigador que trabaja en Ciencias de la
# Computación usa una laptop.  Uno de los científicos usa un osciloscopio.
# El científico en el laboratorio negro bebe agua.  Preguntas a responder
# con Prolog ¿En qué laboratorio trabaja el científico de Química?  ¿Quién
# usa la pipeta?  ¿Cuál es la bebida preferida del científico que
# investiga en Matemáticas?


#predicados monarios que se van a ocupar:

# Expresiones monarias
color(rojo).
color(azul).
color(negro).
color(verde).
color(blanco).
color(amarillo).
color(naranja).


especialidad(biologia).
especialidad(matematicas).
especialidad(computacion).
especialidad(fisica).
especialidad(quimica).

objeto(microscopio).
objeto(espectrofotometro).
objeto(centrifuga).
objeto(pipeta).
objeto(balanza).
objeto(laptop).
objeto(osciloscopio).

bebida(te).
bebida(cafe).
bebida(agua).


# Hechos
# laboratorio( color, esp, onjeto, bebida)
hecho(laboratorio(rojo, biologia, _, _)).
hecho(laboratorio(azul, fisica, _, _)).
hecho(laboratorio(_, quimica, microscopio, _)).
hecho(laboratorio(verde, _, _, te)).
hecho(laboratorio(amarillo, _, centrifuga, _)).
hecho(laboratorio(naranja, _,matematicas, _, _)).
hecho(laboratorio(negro, _, _, _, agua)).
