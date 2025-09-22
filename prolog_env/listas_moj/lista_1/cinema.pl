:- use_module(library(readutil)).

preco_idade(Preco, Idade) :-
    Idade =< 17,
    Preco = 15,
    !.

preco_idade(Preco, Idade) :-
    Idade >= 60,
    Preco = 20,
    !.

preco_idade(30, _).

main :-
    read_line_to_string(user_input, I1_S),
    read_line_to_string(user_input, I2_S),
    number_string(I1, I1_S),
    number_string(I2, I2_S),
    preco_idade(P1, I1),
    preco_idade(P2, I2),
    P is P1 + P2,
    write(P), nl.