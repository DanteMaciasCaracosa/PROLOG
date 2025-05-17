;; 4 personas deben ccruzar un puente de noches
;; el problema es que solo tiene una linterna
;; el puente solo soporta a 2 personas a la vez
;; y cuando 2 cruzan juntos debe moverse a velocidad del mas lenta
;; cada persona tiene una velocidad de cruce diferente
;; ej: la persona A en 1 min, B en 2, C en 5 y la D en 10
;; no pueden cruzar sin la linterna, solo 2 pesonas puede curzar a la vez
;; debe encontrar la forma mas facil de pasar
;; todos deben cruzar el puente en menos de 17 minutos

;; estrategia optima  para cruzar mejor posible
;; Se puede hacer un programa en lisp?
;; cuantos viajen se necesitan


(defun cruzar-puente ()
    (let ((personas '((A 1) (B 2) (C 5) (D 10)))
                (tiempo-total 0))
        (labels ((cruzar (izquierda derecha linterna)
                             (if (null izquierda)
                                     tiempo-total
                                     (let ((mejor-tiempo 1000))
                                         (dolist (p1 izquierda)
                                             (dolist (p2 (remove p1 izquierda))
                                                 (let* ((tiempo (max (second p1) (second p2)))
                                                                (nueva-izquierda (remove p2 (remove p1 izquierda)))
                                                                (nueva-derecha (cons p1 (cons p2 derecha))))
                                                     (if (<= (+ tiempo-total tiempo) 17)
                                                             (let ((tiempo-retorno (cruzar nueva-izquierda nueva-derecha (not linterna))))
                                                                 (when (< tiempo-retorno mejor-tiempo)
                                                                     (setf mejor-tiempo tiempo-retorno)))))))
                                         mejor-tiempo))))
            (cruzar personas nil t))))

(format t "El tiempo mínimo para cruzar el puente es: ~d minutos~%" (cruzar-puente))
