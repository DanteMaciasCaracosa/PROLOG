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




(defparameter *nodes*  '((femenino (
											
									(fuego(azula))		
									(tierra(top))		
									(agua (katara))))
						 (masculino(
									(aire (Hola  rayo masculino))		
									(fuego(Hola  fuego))		
									(tierra(Hola Tierra))		
									(agua (poder de agua))))
						 (ovni(
							   (aire (alto(junito ovni ())

									  ))		
							   (fuego(Hola fuego))		
							   (tierra(Hola Tierra))		
							   (agua2 (poder de agua)))
						  )
						 (aleatorio(
									(aire (Hola rayo))		
									(fuego(Hola fuego))		
									(tierra(Hola Tierra))		
									(agua (poder de agua)))
						  )
						 ))

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

(defun akinator2 (nodos)
  (when nodos
    (princ "Nodos:")
    (princ nodos)
    (princ #\newLine)

      (if (atom (car nodos))
        (progn
          (princ "Tu personaje es: ")
          (princ (car nodos))
        )
        (progn 
            
          (let ((elemento (car nodos)))
            (format t "Tu personaje es ~a?~%" (car elemento))
            (setq a (read))
            (if (string-equal a "si")
                (progn 
                  (setq b (cadr (assoc (car elemento) nodos)))
                  (princ "despues del si")
                  (princ b)
                  (akinator2 b)
                )
                (akinator2 (cdr nodos))
            )
          )

        )
        
    )
  )

)

(defun start-akinator ()
  (akinator *nodos*)
)

(defun start-akinator2 ()
  (akinator2 *nodes*)
)
