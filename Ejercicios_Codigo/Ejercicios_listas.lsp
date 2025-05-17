; Ejercicios de Lisp: car, cdr y condicionales
; Eduardo Alcaraz
; February 28, 2025
; Contents
; Estos ejercicios están diseñados para practicar el uso de ‘car‘, ‘cdr‘ y
; condicionales en Common Lisp.
; Ejercicio 1: Primer elemento de una lista
; Implementa una función que devuelva el primer elemento de una lista dada.
(defun implFirstElement (listEx)
    (car listEx)
)
; Ejercicio 2: Segundo elemento de una lista
; Escribe una función que devuelva el segundo elemento de una lista.
; #+ENDSRC
(defun implSecondElement (listEx)
    (car (cdr listEx))
)
; Ejercicio 3: Último elemento de una lista
; Escribe una función que devuelva el último elemento de una lista.

(defun implLastElement (listEx)
    (if (cdr listEx)
        (implLastElement (cdr listEx))
        (princ (car listEx))
    )
)
; Ejercicio 4: Longitud de una lista
; Implementa una función que calcule la cantidad de elementos en una lista.

(defun implLengthList (listEx)
    (if (null listEx)
        0
        (+ 1 (implLengthList (cdr listEx)))
    )
)

; Ejercicio 5: Suma de una lista de números
; Crea una función que sume todos los elementos de una lista de números.
(defun implPlsList(listEx)
    (if (car listEx)
        (+ (car listEx) (implPlsList (cdr listEx)))
        (+ 0)
    )
)

; Ejercicio 6: Verificar si un elemento está en una lista
; Escribe una función que determine si un elemento está en una lista.
(defun implVerifList (listEx element)
   (if (null listEx)
        nil
        (or (equal (car listEx) element) (implVerifList (cdr listEx) element))
   )
)
; Ejercicio 7: Invertir una lista
; Escribe una función para invertir el orden de los elementos de una lista.

(defun implInvList(listEx)
    (if (null listEx)
        nil
        (append (implInvList (cdr listEx)) (list (car listEx)))
    )
)
; Ejercicio 8: Eliminar todas las ocurrencias de un
; elemento
; Implementa una función que elimine todas las ocurrencias de un elemento
; en una lista.
(defun implDltList(listEx)

)
; Ejercicio 9: Obtener el enésimo elemento de una lista
; Escribe una función que devuelva el elemento enésimo de una lista.

(defun implEnList(listEx emo)
    (if (equal 0 (- emo 1))
        (car listEx)
        (implEnList (cdr listEx) (- emo 1))
    )
)

; Ejercicio 10: Concatenar dos listas
; Implementa una función que concatene dos listas.
(defun implCompList(listEx1 listEx2)
    (append listEx1 listEx2)
)
