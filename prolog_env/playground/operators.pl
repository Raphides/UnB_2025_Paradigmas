polygon(triangle, 3).
polygon(square, 4).
polygon(rectangle, 4).
polygon(hexagon, 6).

:- op(100, 'xf', has_four_sides).
:- op(90, 'xfx', soma_lados).

has_four_sides(X) :-
    polygon(X, 4).

soma_lados(X, Y) :-
    polygon(X, W),
    polygon(Y, Z),
    Resultado is W+Z,
    write(Resultado),
    nl.