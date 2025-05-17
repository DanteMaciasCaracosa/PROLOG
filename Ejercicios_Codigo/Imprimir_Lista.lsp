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
