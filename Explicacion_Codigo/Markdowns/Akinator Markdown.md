# Ejercicio en clase 
### Este trabajo es un akiantor el cual nos ayuda a manipular las listas de manera mas rapida y conscisa

Este código es como un "Akinator" que adivina personajes con preguntas de sí/no.

*nodos*: Es como un árbol gigante con personajes. Está dividido en categorías como "humanos", "extraterrestres", "robots", etc. Y dentro de cada categoría, hay personajes como Rick o Morty.

akinator: Esta función va haciendo preguntas sobre los personajes. Si ya sabe cuál es el personaje (cuando llega a un nombre), lo dice. Si no, te pregunta algo como "¿es un humano?" y según tu respuesta, sigue eligiendo la rama correcta hasta adivinarlo.

start-akinator: Solo arranca el juego llamando a akinator con todo el árbol de personajes.

```lisp
(defparameter *nodos* 
  '(
      (humanos
        (sanchez-familia
          (dimension-c137
            (cientifico-loco (alcoholico (rick-sanchez)))
            (nieto (compañero-de-rick (morty-smith)))
          )
          (hermana (aventurera (summer-smith)))
          (madre (cirujana-de-caballos (beth-smith)))
          (padre (desempleado (jerry-smith)))
        )
        (escuadron-vindicators
          (lider (controla-energia (supernova)))
          (hormiga-reina (million-ants))
          (mitad-cocodrilo (mitad-robot (crocubot)))
        )
        (ciudadanos-de-la-tierra
          (profesor (adicto-a-los-sueños (mr-goldenfold)))
          (director-escuela (principal-vagina))
          (abuela-de-morty (abuelita-smith))
        )
      )
      (extraterrestres
        (federacion-galactica
          (amigo-de-rick
            (resistencia (birdperson))
            (squanchador (squanchiano (squanchy)))
          )
          (asesino-a-sueldo (krombopulos-michael))
          (agente-encubierta (tammy-guetermann))
        )
        (planeta-gazorpazorp
          (gato-salvaje (odia-a-los-lunes (gazorpazorpfield)))
          (lider-suprema (reina-gazorpiana))
        )
        (habitantes-del-microverso
          (cientifico (rival-de-rick (zeep-xanflorp)))
          (habitante (esclavo-energético (habitante-random)))
        )
      )
      (robots
        (creaciones-de-rick
          (experimento-fallido (abradolf-lincler))
          (ayudante (meeseeks))
          (sirviente (robo-butler))
        )
        (robots-independientes
          (controlado-por-unity (unity-drone))
          (aficionado-al-gear-wars (gearhead))
        )
        (exterminadores
          (programado-para-matar (robo-asesino))
          (morty-mejorado (cyber-morty))
        )
      )
      (dimensiones-alternas
        (mortys
          (presidente-del-citadel (evil-morty))
          (modificado (morty-cyborg))
          (tonto-pero-bueno (morty-doofus))
        )
        (ricks
          (lider-del-consejo (rick-primer-ministro))
          (inteligencia-artificial (rick-robot))
          (rick-normal (rick-simple))
        )
        (realidades-extrañas
          (rick-en-forma-de-pepino (pickle-rick))
          (lado-malvado-de-rick (toxic-rick))
          (lado-malvado-de-morty (toxic-morty))
        )
      )
  )
)



(defun akinator (nodos)
    (if (atom nodos)
        (progn
            (princ "Ya se tu personaje padrino, es: ")
            (princ nodos)
        )
        (progn
            (princ "Tu personaje es: ")
            (setq path (car (first nodos)))
            (princ path)
            (princ "(si/no)")
            (princ #\newLine)

            (setq resp(read-line))
            (if (string= resp "si")
                (progn 
                    (setq *nuevo_nodo* (cdr (assoc path nodos)) )
                    (if (equal (cdar *nuevo_nodo*) nil)
                        (setq *nuevo_nodo* (caar *nuevo_nodo*) ) 
                    )
                    (akinator *nuevo_nodo*)
                )
                (progn
                    (setq *nuevo_nodo* (cdr nodos))
                    (akinator *nuevo_nodo*)
                )
            )
        )
    )
)
        

(defun start-akinator ()
  (akinator *nodos*)
)

```