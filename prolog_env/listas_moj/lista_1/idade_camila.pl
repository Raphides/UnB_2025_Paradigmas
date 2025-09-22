:- use_module(library(readutil)).

main :-
    read_line_to_string(user_input, C1),
    read_line_to_string(user_input, C2),
    read_line_to_string(user_input, C3),
    maplist(number_string, Idades, [C1,C2,C3]),
    msort(Idades, Ordenado),
    [H|[Resultado|T]] = Ordenado,
    write(Resultado), nl.

