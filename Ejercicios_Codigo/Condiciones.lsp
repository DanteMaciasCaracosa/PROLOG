; 1.- Que calcule el sueldo que le corresponde al trabajador de una
; empresa que cobra 40.000 euros anuales, el programa debe realizar los
; cálculos en función de los siguientes criterios:

; • Si lleva más de 10 años en la empresa se le aplica un aumento del 10%.
; • Si lleva menos de 10 años pero más que 5 se le aplica un aumento del
;   7%.
; • Si lleva menos de 5 años pero más que 3 se le aplica un aumento del
;   5%.
; • Si lleva menos de 3 años se le aplica un aumento del 3%.()
(defvar *final-salary* 40000)

(defun salary(age)
    (cond ((> age 10) (* *final-salary* 1.1))
          ((> age 5) (* *final-salary* 1.07))
          ((> age 3) (* *final-salary* 1.05))
          (t (* *final-salary* 1.03))
    )
)

(defun salary-with-when (age)
  (when (> age 10)
    (princ (* *final-salary* 1.1)))

  (when (and (<= age 10) (> age 5))
    (princ (* *final-salary* 1.07)))

  (when (and (<= age 5) (> age 3))
    (princ (* *final-salary* 1.05)))

  (when (<= age 3)
    (princ (* *final-salary* 1.03)))
)

(defun salary-with-unless (age)
  (unless (< age 10)
    (princ (* *final-salary* 1.1))
    (return-from salary-with-unless 'done))   

  (unless (and (< age 10) (< age 5))
    (princ (* *final-salary* 1.07))
    (return-from salary-with-unless 'done))   

  (unless (and (< age 5) (< age 3))
    (princ (* *final-salary* 1.05))
    (return-from salary-with-unless 'done))   

  (unless (> age 3)
    (princ (* *final-salary* 1.03))
    (return-from salary-with-unless 'done))   
)

(defun salary-with-case (age)
    (case t
        ((> age 10) (* *final-salary* 1.1))
        ((and (< age 10) (> age 5)) (* *final-salary* 1.07))
        ((and (< age 5) (> age 3)) (* *final-salary* 1.05))
        (t (* *final-salary* 1.03)))
)


; 2.- Hacer un algortimo que tome el peso en libras de una cantidad de
; ropa a lavar en una lavadora y nos devuelva el nivel dependiendo del
; peso; además nos informe la cantidad de litros de agua que
; necesitamos. Se sabe que con más de 30 libras la lavadora no funcionara
; ya que es demasiado peso. Si la ropa pesa 22 ó más libras, el nivel será
; de máximo; si pesa 15 ó más nivel será de alto; si pesa 8 ó más será un
; nivel medio o de lo contrario el nivel será minimo

(defun wash(pounds)
    (cond ((> pounds 30) "Lavadora no funcionara")
           ((> pounds 22) "maximo")
           ((> pounds 15) "alto")
           ((> pounds 8) "medio")
              (t "minimo")
    )
 )

 (defun wash-with-when (pounds)
    (when (> pounds 30)
      (princ "Lavadora no funcionara"))

    (when (> pounds 22)
      (princ "maximo"))

    (when (> pounds 15)
      (princ "alto"))

    (when (> pounds 8)
      (princ "medio"))

    (when (< pounds 8)
      (princ "minimo"))
 )


 (defun wash-with-unless (pounds)
    (unless (< pounds 30)
      (princ "Lavadora no funcionara")
      (return-from wash-with-unless 'done))

    (unless (< pounds 22)
      (princ "maximo")
      (return-from wash-with-unless 'done))

    (unless (< pounds 15)
      (princ "alto")
      (return-from wash-with-unless 'done))

    (unless (< pounds 8)
      (princ "medio")
      (return-from wash-with-unless 'done))

    (unless (> pounds 8)
      (princ "minimo")
      (return-from wash-with-unless 'done))
 )


(defun wash-with-case (pounds)
  (let ((condicion_rango
         (cond ((> pounds 30) 'nowork)
               ((>= pounds 22) 'max)
               ((>= pounds 15) 'alto)
               ((>= pounds 8) 'medio)
               (t 'min))))
    (case condicion_rango
      (nowork (princ "Lavadora no funcionará"))
      (max (princ "Máximo"))
      (alto (princ "Alto"))
      (medio (princ "Medio"))
      (min (princ "Mínimo")))))




; 3.- Martha va a realizar su fiesta de quince años. Por lo cual ha
; invitado a una gran cantidad de personas. Pero también ha decidido
; algunas reglas: Que todas las personas con edades mayores a los quince
; años, sólo pueden entrar si traen regalos; que jóvenes con los quince
; años cumplidos entra totalmente gratis pero los de menos de quince años
; no pueden entrar a la fiesta. Hacer un algoritmo donde se tome la edad
; de una persona y que requisito de los anteriores le toca cumplir si
; quiere entrar.

(defun party(age)
    (cond ((> age 15) "con regalos")
          ((= age 15) "entran gratis")
          (t "No entran")
    )
)
(defun party-with-when (age)

    (when (> age 15)
      (princ "con regalos"))

    (when (= age 15)
      (princ "entran gratis"))

    (when (< age 15)
      (princ "No entran"))
)   
(defun party-with-unless (age)
    (unless (<= age 15)
        (princ "con regalos")
        (return-from party-with-unless 'done))

    (unless (/= age 15)
        (princ "entran gratis")
        (return-from party-with-unless 'done))

    (unless (>= age 15)
        (princ "No entran")
        (return-from party-with-unless 'done))
)

(defun party-with-case (age)
  (case t
    ((> age 15) (princ "con regalos"))
    ((= age 15) (princ "entran gratis"))
    ((< age 15) (princ "No entran"))))
