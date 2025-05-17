% maplist: Aplica un predicado P a cada elemento de una lista de entrada y genera una lista de salida.
% Caso base: Si ambas listas son vacías, el predicado se satisface.
maplist(_, [], []).

% Caso recursivo: Aplica el predicado P al primer elemento de las listas de entrada y salida,
% y luego llama recursivamente a maplist/con las colas de las listas.
maplist(P, [H|T], [H1|T1]) :- call(P, H, H1), maplist(P, T, T1).

% cuadrado: Calcula el cuadrado de un número.
% X: Número de entrada.
% Y: Resultado del cuadrado de X.
cuadrado(X, Y) :- Y is X*X.

% Ejemplo de uso:
% Aplica el predicado cuadrado a cada elemento de la lista [1,2,3,4]
% y genera la lista de salida L con los cuadrados de los números.
% maplist(cuadrado, [1,2,3,4], L).
