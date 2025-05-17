# Tarea de:
## Hacer 5 funciones de volumenes y 5 de areas
## Funciones primitivas de lisp

Este código en Lisp incluye funciones para calcular volúmenes y áreas de figuras geométricas como cubos, esferas, cilindros, conos, cuadrados, círculos, triángulos y rectángulos. También maneja operaciones con listas, como obtener o eliminar elementos, y operaciones matemáticas básicas como suma, resta, multiplicación y división. Es una herramienta útil para trabajar con cálculos y manipulación de datos en Lisp de manera sencilla.


```lisp
;; Hacer 5 funciones de volumenes y 5 de areas
;; Funciones primitivas de lisp

;; Volumen de un cubo
(defun volumen-cubo (lado)
    (* lado lado lado))

;; Volumen de una esfera
(defun volumen-esfera (radio)
    (* (/ 4 3) pi (expt radio 3)))

;; Volumen de un cilindro
(defun volumen-cilindro (radio altura)
    (* pi (expt radio 2) altura))

;; Volumen de un cono
(defun volumen-cono (radio altura)
    (/ (* pi (expt radio 2) altura) 3))

;; Volumen de un prisma rectangular
(defun volumen-prisma-rectangular (largo ancho altura)
    (* largo ancho altura))

;; Área de un cuadrado
(defun area-cuadrado (lado)
    (* lado lado))

;; Área de un círculo
(defun area-circulo (radio)
    (* pi (expt radio 2)))

;; Área de un triángulo
(defun area-triangulo (base altura)
    (/ (* base altura) 2))

;; Área de un rectángulo
(defun area-rectangulo (largo ancho)
    (* largo ancho))

;; Área de un trapecio
(defun area-trapecio (base-mayor base-menor altura)
    (/ (* (+ base-mayor base-menor) altura) 2))

(car '(1 2 3)) ; Saca el primer elemento de la lista => 1
(cdr '(1 2 3)) ; Elimina el primer elemento y te da el resto => (2 3)
(cons 0 '(1 2 3)) ; Mete el 0 al principio de la lista => (0 1 2 3)
(list 1 2 3 4) ; Crea una lista con estos números => (1 2 3 4)
(append '(1 2) '(3 4)) ; Junta estas dos listas en una sola => (1 2 3 4)
(length '(1 2 3)) ; Te dice cuántos elementos tiene la lista => 3
(+ 1 2 3) ; Suma todo esto => 6
(- 10 4) ; Resta 10 menos 4 => 6
(* 2 3 4) ; Multiplica todo => 24
(/ 10 2) ; Divide 10 entre 2 => 5
(expt 2 3) ; Calcula 2 elevado a la 3 => 8
(sqrt 16) ; Saca la raíz cuadrada de 16 => 4
(and t nil t) ; Solo devuelve verdadero si TODO es verdadero => nil
(or nil nil t) ; Devuelve verdadero si ALGO es verdadero => t
(not t) ; Le da la vuelta a t, lo convierte en falso => nil
(= 3 3) ; Pregunta si 3 es igual a 3 => t
(> 5 3) ; Pregunta si 5 es mayor que 3 => t
(< 2 4) ; Pregunta si 2 es menor que 4 => t
(equal '(1 2 3) '(1 2 3)) ; Pregunta si estas listas son iguales => t
(string= "hola" "hola") ; Comprueba si las dos cadenas son iguales => t
(concatenate 'string "Hola, " "mundo!") ; Junta estas cadenas en una sola => "Hola, mundo!"
(string-length "Lisp") ; Te dice cuántas letras tiene esta cadena => 4
(reduce #'+ (append '(1 2 3) '(4 5 6))) ; Junta las listas y suma todo => 21
(defun es-par (n)
    "Devuelve t si n es un número par, nil en caso contrario."
    (zerop (mod n 2)))

(es-par 4) ; => t
(es-par 5) ; => nil

```



## Actualizacion 24 Feb 2025

Hice cambios manipule los metodos para que preguntaran con ciertas funciones al usuairo que metodo o que queria saber sobre algunos calculos. 


Este código tiene funciones para calcular volúmenes y áreas de figuras geométricas.

### `print-terminal`
- La función recibe una lista `terminal` (que contiene opciones de cálculo) y recorre cada una de ellas.
- Para cada opción, imprime el número de la opción y la función asociada (por ejemplo, "1 cubo-volumen").
- Utiliza recursión para imprimir todas las opciones, llamándose a sí misma con el siguiente elemento de la lista hasta que se acaben.

### `start-calc`
- Muestra un mensaje pidiendo al usuario que elija qué cálculo desea realizar.
- Llama a `print-terminal` para mostrar el menú de opciones.
- Recibe la respuesta del usuario, que es el número de la opción seleccionada.
- Busca en la lista `*terminal*` la función correspondiente a ese número y la ejecuta con `funcall`, llamando a la función seleccionada.

```lisp
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
```
