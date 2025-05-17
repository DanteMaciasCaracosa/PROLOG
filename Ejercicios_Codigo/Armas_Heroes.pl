/*
Problemas 2: Las armas de los héroes Cuatro héroes mitológicos
Las armas de los héroes Cuatro héroes mitológicos (Aquiles, Perseo, Hércules y Teseo) poseen armas únicas (espada, lanza, arco y escudo). Sabemos que: Aquiles no usa el escudo ni el arco. Perseo no usa la espada. Hércules no usa la lanza ni el escudo. Teseo usa el arco o el escudo. Pregunta: ¿Qué arma pertenece a cada héroe?
*/

heroe(aquiles).
heroe(perseo).
heroe(hercules).
heroe(teseo).

arma(espada).
arma(lanza).
arma(arco).
arma(escudo).

% tabla con los hechos
/*
            espada lanza arco escudo
    aquiles       x          x        
    perseo        x
    hercules            x           x
    teseo                 x    x   
*/

usa(aquiles, A) :- arma(A), A \= escudo, A \= arco.
usa(perseo, A) :- arma(A), A \= espada.
usa(hercules, A) :- arma(A), A \= lanza, A \= escudo.
usa(teseo, A) :- arma(A), (A = arco ; A = escudo).

asignar_armas :-
    usa(aquiles, A1),
    usa(perseo, A2),
    usa(hercules, A3),
    usa(teseo, A4),
    A1 \= A2, A1 \= A3, A1 \= A4,
    A2 \= A3, A2 \= A4,
    A3 \= A4,
    write('aquiles es '), write(A1),
    write(' perseo es '), write(A2),
    write(' hercules es '), write(A3),
    write(' teseo es '), write(A4).
