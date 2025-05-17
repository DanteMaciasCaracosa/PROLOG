# Ejercicio en clase
### El profesor puso ejercicios para utilizar las funciones car y cdr
Este conjunto de ejemplos muestra cómo usar las funciones car y cdr para extraer elementos de listas anidadas en Lisp. Explicacion rapida
car y cdr:
car: Devuelve el primer elemento de una lista.
cdr: Devuelve la lista sin el primer elemento.
Combinación de car y cdr: Las combinaciones como cadr, cddr, caadr, cdadr, y así sucesivamente, combinan varias llamadas a car y cdr para navegar a través de listas anidadas y extraer elementos de niveles más profundos.

``` lisp
1 Problemas con car y cdr
═════════════════════════

  Lista: (a b c d e) → Extraer d

  r = (cadddr '(a b c d e))

  Lista: ((1 2) (3 4) (5 6)) → Extraer 5

  r =  (caaddr '((1 2) (3 4) (5 6)))

  Lista: ((a b) (c d) (e f)) → Extraer e

  r=  (caaddr '( (a b) (c d) (e f) ) )

  Lista: ((x y) ((p q) (r s)) (z w)) → Extraer z

  r= (caaddr '((x y) ((p q) (r s)) (z w)) )

  Lista: ((1 (2 3)) (4 (5 6))) → Extraer 6

  r=  (cadr(cadadr '((1 (2 3)) (4 (5 6)))))

  Lista: (((a b) c) d e) → Extraer c

  r= (cadr (car '(((a b) c) d e) ))

  Lista: (((1 2) 3) ((4 5) 6)) → Extraer 6

  r = (cadadr '(((1 2) 3) ((4 5) 6)) )

  Lista: ((p (q (r s))) t u) → Extraer (r s)

  r = ( cadr (cadar ' ((p (q (r s))) t u) ))

  Lista: (((a) b) (c (d e)) f) → Extraer d

  r= (caadr(cadr '(((a) b) (c (d e)) f) ) )

  Lista: ((1 (2 (3 4))) (5 6)) → Extraer 3

  r= (caadr(cadar ' ((1 (2 (3 4))) (5 6)))) 

  Lista: (((x) (y)) ((z) (w))) → Extraer (w)

  r=  (car (cadadr '(((x) (y)) ((z) (w))) ))

  Lista: ((a (b (c d))) (e f)) → Extraer c

  r= ( caadr(cadar '((a (b (c d))) (e f)) ) )

  Lista: ((1 (2 (3 (4 5)))) (6 7)) → Extraer 4

  r= (caadar(cdadar '((1 (2 (3 (4 5)))) (6 7)) ))

  Lista: (((a b) c) ((d e) f) ((g h) i)) → Extraer g

  r= (car (caaddr '(((a b) c) ((d e) f) ((g h) i))))

  Lista: (((x y) (z w)) ((p q) (r s))) → Extraer r

  r= (car(cadadr '(((x y) (z w)) ((p q) (r s)))))

  Lista: ((1 (2 (3 (4 (5 6))))) (7 8)) → Extraer 5

  r= (caadr (cadar (cdadar '((1 (2 (3 (4 (5 6))))) (7 8))) ) )

  Lista: ((a (b (c (d e)))) (f g)) → Extraer d

  r= ( caar ( cdadar (cdar ' ((a (b (c (d e)))) (f g))) ) )

  Lista: (((1 2) (3 4)) ((5 6) (7 8))) → Extraer 7

  r=  (car (cadadr ' (((1 2) (3 4)) ((5 6) (7 8))) ) )

  Lista: ((x (y (z (w v))))) → Extraer w

  r= (caadar (cdadar ' ((x (y (z (w v))))) ) )

  Lista: (((a b c) (d e f)) ((g h i) (j k l))) → Extraer j

  r=   (car (cadadr '(((a b c) (d e f)) ((g h i) (j k l))) ) )

```