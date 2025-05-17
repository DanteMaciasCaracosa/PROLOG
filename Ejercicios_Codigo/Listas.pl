% Definición del predicado miembro/2
miembro(X, [X | _]). % Caso base: X es el primer elemento de la lista.
miembro(X, [_ | L]) :- miembro(X, L). % Caso recursivo: busca X en el resto de la lista.

% Explicación:
% El predicado `miembro/2` verifica si un elemento `X` pertenece a una lista.
% - En el caso base, si `X` es igual al primer elemento de la lista `[X | _]`, entonces es miembro.
% - En el caso recursivo, si `X` no es el primer elemento, se ignora el primero (`_`) y se busca en el resto de la lista (`L`).

% Ejemplo de uso:
% ?- miembro(3, [1, 2, 3, 4]).
% true.
% ?- miembro(5, [1, 2, 3, 4]).
% false.


% Definición del predicado tamanio/2
tamanio([], 0). % Caso base: la lista vacía tiene tamaño 0.
tamanio([_ | L], N) :- tamanio(L, N1), N is N1 + 1. % Caso recursivo: el tamaño es 1 + tamaño de la cola.

% Explicación:
% El predicado `tamanio/2` calcula el tamaño de una lista.
% - En el caso base, el tamaño de una lista vacía (`[]`) es 0.
% - En el caso recursivo, se ignora el primer elemento (`_`) y se calcula el tamaño de la cola (`L`).
%   Luego, se suma 1 al tamaño de la cola para obtener el tamaño total.

% Ejemplo de uso:
% ?- tamanio([1, 2, 3, 4], N).
% N = 4.
% ?- tamanio([], N).
% N = 0.

% Definición del predicado ultimo/3
ultimo([X], X). % Caso base: si la lista tiene un solo elemento, ese es el último.
ultimo([_ | L], X) :- ultimo(L, X). % Caso recursivo: ignora el primer elemento y busca en la cola.
% Explicación:
% El predicado `ultimo/2` encuentra el último elemento de una lista.
% - En el caso base, si la lista tiene un solo elemento (`[X]`), ese es el último.
% - En el caso recursivo, se ignora el primer elemento (`_`) y se busca en la cola (`L`).
