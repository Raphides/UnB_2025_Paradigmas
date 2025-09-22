:- use_module(library(readutil)).

quantos_bolos(Trigo, Ovos, Leite, Bolos) :-
    Trigo >= 2, Ovos >= 3, Leite >= 5,
    quantos_bolos(Trigo-2, Ovos-3, Leite-5, Mais_bolos),
    Bolos is 1 + Mais_bolos, !.

quantos_bolos(Trigo, Ovos, Leite, Bolos) :- Bolos = 0.

main :-
    read_line_to_string(user_input, Input),
    split_string(Input, " ", "\n", Quantidades_String),
    maplist(number_string, Quantidades, Quantidades_String),
    [Trigo|[Ovos|[Leite|_]]] = Quantidades,
    quantos_bolos(Trigo, Ovos, Leite, Bolos),
    write(Bolos), nl.