(defun calcular-sueldo (anios)
  (let ((sueldo-base 40000))
    (cond
      ((> anios 10) (* sueldo-base 1.10))  
      ((> anios 5) (* sueldo-base 1.07))   
      ((> anios 3) (* sueldo-base 1.05))   
      (t (* sueldo-base 1.03)))))
