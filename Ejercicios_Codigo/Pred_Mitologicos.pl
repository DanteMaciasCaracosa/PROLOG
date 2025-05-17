% 1 Aplanar una lista anidadas

flatten([], []).
flatten([H|T], R) :-
    flatten(H, RH),
    flatten(T, RT),
    append(RH, RT, R).
flatten(X, [X]) :-
    X \= [],
    X \= [_|_].

?- flatten( [1, [2, [3, 4], 5], [6]], Resultado).

% 2 Encontrar todas las permutaciones de una lista
permutacion([], []).
permutacion([H|T], P) :-
    permutacion(T, R),
    insertar(H, R, P).

insertar(X, L, [X|L]).
insertar(X, [H|T], [H|R]) :- insertar(X, T, R).

?- permutacion([a,b,c], P).

% 3 Genera subconjutnos de una lista

subconjunto([], []).
subconjunto([H|T], [H|R]) :-
    subconjunto(T, R).
subconjunto([_|T], R) :-
    subconjunto(T, R).

?- subconjunto([1,2,3], S).


% 4. Encontrar todos los números en un rango que cumplen una condición

?- findall(X, (between(1, 20, X), X mod 2 =:= 1), L).

% 5 Concatenar dos listas
append([], L, L).
append([H|T], L, [H|R]) :-
    append(T, L, R).

?- append([1,2], [3,4], R).

% 6 Encontrar elemenetos unicos en una lista

duplicados([], []).
duplicados([H|T], [H|R]) :-
    \+ member(H, T),
    duplicados(T, R).
duplicados([H|T], R) :-
    member(H, T),
    duplicados(T, R).

?- duplicados([1,3, 2, 2, 3, 3, 3, 4], Resultado).


% 7. Calcular la potencia de un número
potencia(X, N, R) :-
    N >= 0,
    findall(X, between(1, N, _), L),
    foldl(multiply, L, 1, R).

multiply(A, B, R) :- R is A * B.

?- potencia(2, 3, Resultado).

% 8. Alinear equipos de un torneo
equipo_alineacion(Equipos, Alineaciones) :-
    permutacion(Equipos, Alineaciones).

?- equipo_alineacion([a, b, c], Alineaciones).

% 9. Resolver problemas de caminos
arco(a, b).
arco(b, c).
arco(c, d).
arco(a, d).

ruta(Inicio, Fin, Camino) :-
    ruta_recursiva(Inicio, Fin, [Inicio], Camino).

ruta_recursiva(Nodo, Nodo, CaminoActual, CaminoActual).

ruta_recursiva(Inicio, Fin, CaminoActual, Camino) :-
    arco(Inicio, Siguiente),
    \+ member(Siguiente, CaminoActual), % Evitar ciclos
    ruta_recursiva(Siguiente, Fin, [Siguiente|CaminoActual], Camino).

?- findall(Camino, ruta(a, d, Camino), Rutas).
