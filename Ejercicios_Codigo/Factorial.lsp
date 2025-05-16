(defun suma ()
  (let ((c (+ 4 5)))  
    (format t "Resultado: ~D~%" c)))  ; Imprimir el resultado correctamente

(defun facto (x)
  (if (= x 0)
      1
      (* x (facto (- x 1)))))  
