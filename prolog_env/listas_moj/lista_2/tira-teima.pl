use_module(library(readutil)).

tira_teima(X,Y,Resultado) :-
    X >= 0, X =< 432,
    Y >= 0, Y =< 468,
    Resultado = "dentro", !.

tira_teima(X,Y,Resultado) :- Resultado = "fora".

main :-
    read_line_to_string(user_input, Input),
    split_string(Input, " ", "\s\t\n", Coordenadas_Strings),
    maplist(number_string, Coordenadas, Coordenadas_Strings),
    [X|[Y|Resto]] = Coordenadas,
    tira_teima(X, Y, Resultado),
    write(Resultado), nl.