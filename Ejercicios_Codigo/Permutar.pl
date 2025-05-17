permutacion([], []).
permutacion(L, [X|R]) :- 
    select(X, L, R1), 
    permutacion(R1, R).
