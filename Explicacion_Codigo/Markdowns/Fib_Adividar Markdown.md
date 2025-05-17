# Código en Lisp

## Juego de Adivinar un Número y Fibonacci

Este código implementa un juego en el que el programa intenta adivinar un número dentro de un rango definido y el programa de fibanacci para aprovechar la recursividad

### Códigos:
```lisp
;; GuesMyNumber
(defparameter *small* 1)
(defparameter *big* 100)

(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over ()
  (setf *small* 1)
  (setf *big* 100)
  (guess-my-number))
```

```lisp
;;Fibonnacci
(defun fibonacci (n)
  (if (<= n 1)
      n
      (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))

```