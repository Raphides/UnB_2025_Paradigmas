numeros(1).
numeros(2).
numeros(3).

numeros :-
    write("X"), nl,
    numeros(X),
    write(X), nl,
    fail.

numeros.