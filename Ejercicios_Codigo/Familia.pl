hombre(adrian).
hombre(bruno).
hombre(cesar).
hombre(dario).
hombre(ernesto).
hombre(felipe).
hombre(gonzalo).
hombre(hugo).
hombre(isaac).
hombre(javier).

mujer(alicia).
mujer(beatriz).
mujer(camila).
mujer(daniela).
mujer(estrella).
mujer(fatima).
mujer(gabriela).
mujer(helena).
mujer(ines).
mujer(julieta).

padre(adrian, bruno).
padre(adrian, beatriz).
padre(cesar, dario).
padre(cesar, daniela).
padre(bruno, ernesto).
padre(bruno, estrella).
padre(gonzalo, felipe).
padre(gonzalo, fatima).
padre(hugo, helena).
padre(hugo, gabriela).
padre(dario, isaac).
padre(dario, ines).

madre(alicia, bruno).
madre(alicia, beatriz).
madre(camila, dario).
madre(camila, daniela).
madre(beatriz, ernesto).
madre(beatriz, estrella).
madre(daniela, felipe).
madre(daniela, fatima).
madre(gabriela, helena).
madre(ines, julieta).
madre(fatima, javier).

padrede(adrian, alicia).
padrede(cesar, camila).
padrede(bruno, beatriz).
padrede(gonzalo, daniela).
padrede(hugo, gabriela).
padrede(dario, ines).

madrede(alicia, adrian).
madrede(camila, cesar).
madrede(beatriz, bruno).
madrede(daniela, gonzalo).
madrede(gabriela, hugo).
madrede(ines, dario).

% Abuelo
abuelode(X, Y) :- padre(X, W), padre(W, Y).
% Abuela
abuelade(X, Y) :- madre(X, W), madre(W, Y).
% Nieto
nietode(X, Y) :- abuelode(Y, X).
% Nieta
nietade(X, Y) :- abuelade(Y, X).
% Hermano
hermanode(X, Y) :- padre(Z, X), padre(Z, Y).
% Hermana
hermande(X, Y) :- madre(Z, X), madre(Z, Y).
% Tio
tiode(X, Y) :- hermanode(X, Z), padre(Z, Y).
% Tia
tiade(X, Y) :- hermanode(X, Z), madre(Z, Y).
% Primo
primode(X, Y) :- padre(Z, X), padre(W, Y), hermanode(Z, W).
% Prima
primode(X, Y) :- padre(Z, X), padre(W, Y), hermande(Z, W).
% Sobrino
sobrinode(X, Y) :- tiode(Y, X).
% Sobrina
sobrinade(X, Y) :- tiade(Y, X).
