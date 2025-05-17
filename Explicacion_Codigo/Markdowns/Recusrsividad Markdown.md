# Ejercicios
## Estos ejercicios fueron un reto en clase que nos ayudo a aprovechar las funciones y condiciones de lisp

Este código define tres funciones en Lisp. La primera, imprimirLista, recorre e imprime todos los elementos de una lista. La segunda, listaPares, filtra y solo imprime los números pares de una lista. La tercera, es-par, verifica si un número es par utilizando el operador mod para determinar el residuo de la división entre el número y 2. Es una manera de manipular listas y realizar filtros en Lisp, trabajando con estructuras y operaciones básicas de manera recursiva.

```lisp
(defun imprimirLista (lista)
  
  (format t " ~d" (car lista))
  (if lista
      (imprimirLista (cdr lista))
  )
)


;; Dada una lista, solo imprimir pares de una lista
(defun listaPares (lista)
  (if lista
      (progn
        (if (zerop (es-par (car lista)))
            (format t " ~d" (car lista))
        )
        (listaPares (cdr lista))
        )
        )
)


(defun es-par (n)
     (mod n 2)
)
```






