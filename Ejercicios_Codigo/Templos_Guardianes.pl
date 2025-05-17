/* 
Problema 1: Los guardianes de los templos
Cuatro guardianes (Apolo, Hécate, Ares y Hermes) custodian templos mitológicos asociados con diferentes elementos (fuego, agua, tierra y aire). Sabemos que:

Apolo no cuida el templo de fuego ni el de tierra.
Hécate no cuida el templo de aire.
Ares no cuida el templo de agua ni de aire.
Hermes cuida el templo de fuego o de agua.
Pregunta: ¿Qué templo cuida cada guardián?
*/

guardian(apolo).
guardian(hecate).
guardian(ares).
guardian(hermes).

templo(fuego).
templo(agua).
templo(tierra).
templo(aire).

% tabla con los hechos
/*
            fuego agua tierra aire
    apolo       x          x        
    hécate                      x
    ares            x           x
    hermes                 x    x   
*/
% Hechos

cuida(apolo, T) :- templo(T), T \= fuego, T \= tierra.
cuida(hecate, T) :- templo(T), T \= aire.
cuida(ares, T) :- templo(T), T \= agua, T \= aire.
cuida(hermes, T) :- templo(T), (T = fuego ; T = agua).

asignar_guardianes :-
    cuida(apolo, T1),
    cuida(hecate, T2),
    cuida(ares, T3),
    cuida(hermes, T4),
    T1 \= T2, T1 \= T3, T1 \= T4,
    T2 \= T3, T2 \= T4,
    T3 \= T4,
    write('apolo es '), write(T1),
    write(' hecate es '), write(T2),
    write(' ares es '), write(T3),
    write(' hermes es '), write(T4).
