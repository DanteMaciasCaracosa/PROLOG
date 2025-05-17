;; Hacer 5 funciones de volumenes y 5 de areas
;; Funciones primitivas de lisp

;; Volumen de un cubo
;; EDICION: ahora se va a leer datos para el calculo de estas funciones el dia 24 de febrero
;; Definir constante de pi
(defconstant pi 3.141592653589793)

;; Funciones de volumen
(defun cubo-volumen ()
  (format t "Introduce el lado del cubo: ")
  (setq lado (read))
  (format t "Volumen del cubo: ~a~%" (* lado lado lado)))

(defun esfera-volumen ()
  (format t "Introduce el radio de la esfera: ")
  (setq radio (read))
  (format t "Volumen de la esfera: ~a~%" (* (/ 4 3) pi (expt radio 3))))

(defun cilindro-volumen ()
  (format t "Introduce el radio del cilindro: ")
  (setq radio (read))
  (format t "Introduce la altura del cilindro: ")
  (setq altura (read))
  (format t "Volumen del cilindro: ~a~%" (* pi (expt radio 2) altura)))

(defun cono-volumen ()
  (format t "Introduce el radio del cono: ")
  (setq radio (read))
  (format t "Introduce la altura del cono: ")
  (setq altura (read))
  (format t "Volumen del cono: ~a~%" (/ (* pi (expt radio 2) altura) 3)))

(defun prisma-rectangular-volumen ()
  (format t "Introduce el largo del prisma: ")
  (setq largo (read))
  (format t "Introduce el ancho del prisma: ")
  (setq ancho (read))
  (format t "Introduce la altura del prisma: ")
  (setq altura (read))
  (format t "Volumen del prisma rectangular: ~a~%" (* largo ancho altura)))

;; Funciones de área
(defun cuadrado-area ()
  (format t "Introduce el lado del cuadrado: ")
  (setq lado (read))
  (format t "Área del cuadrado: ~a~%" (* lado lado)))

(defun circulo-area ()
  (format t "Introduce el radio del círculo: ")
  (setq radio (read))
  (format t "Área del círculo: ~a~%" (* pi (expt radio 2))))

(defun triangulo-area ()
  (format t "Introduce la base del triángulo: ")
  (setq base (read))
  (format t "Introduce la altura del triángulo: ")
  (setq altura (read))
  (format t "Área del triángulo: ~a~%" (/ (* base altura) 2)))

(defun rectangulo-area ()
  (format t "Introduce el largo del rectángulo: ")
  (setq largo (read))
  (format t "Introduce el ancho del rectángulo: ")
  (setq ancho (read))
  (format t "Área del rectángulo: ~a~%" (* largo ancho)))

(defun trapecio-area ()
  (format t "Introduce la base mayor del trapecio: ")
  (setq base-mayor (read))
  (format t "Introduce la base menor del trapecio: ")
  (setq base-menor (read))
  (format t "Introduce la altura del trapecio: ")
  (setq altura (read))
  (format t "Área del trapecio: ~a~%" (/ (* (+ base-mayor base-menor) altura) 2)))


(defparameter *terminal* '(
    (1 (cubo-volumen))
    (2 (esfera-volumen))
    (3 (cilindro-volumen))
    (4 (cono-volumen))
    (5 (prisma-rectangular-volumen))
    (6 (cuadrado-area))
    (7 (circulo-area))
    (8 (triangulo-area))
    (9 (rectangulo-area))
    (10 (trapecio-area))
))

(defun print-terminal (terminal)
    (when terminal
        (format t "~a ~a~%" (caar terminal) (caadar terminal))
        (print-terminal (cdr terminal))
    )
)
(defun start-calc ()
    (format t "Escoge con un numero que calculo deseas realizar:~%")
    (print-terminal *terminal*)
    (setq resp (read))
    (setq funcion (caadr(assoc resp *terminal*)) )
    (funcall funcion)
)
