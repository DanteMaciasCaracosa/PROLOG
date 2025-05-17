auto(mustang).
auto(chevy).

padre(juan).
padre(jose).

madre(maria).
madre(luisa).
madre(tere).

padrede(juan, jose).
padrede(jose, maria).
padrede(jose, luisa).
padrede(jose, tere).

madrede(maria, juan).
madrede(maria, maria).
madrede(maria, luisa).
madrede(maria, tere).

abuelo(X,Y):-padrede(X,Z),padrede(Z,Y);madrede(X,Z),padrede(Z,Y).
