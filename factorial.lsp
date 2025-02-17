(defun suma ()
  (let ((c (+ 4 5)))  ; Definir la variable local `c`
    (format t "Resultado: ~D~%" c)))  ; Imprimir el resultado correctamente

(defun facto (x)
  (if (= x 0)
      1
      (* x (facto (- x 1)))))  ; Recursión para calcular el factorial
