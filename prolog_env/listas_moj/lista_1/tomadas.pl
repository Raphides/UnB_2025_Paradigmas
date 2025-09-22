:- use_module(library(readutil)).


contar_tomadas([], 1).

contar_tomadas([H|T], Resultado) :-
    contar_tomadas(T, Parcial),
    Resultado is H + Parcial - 1.

main :-
    read_line_to_string(user_input, Input),
    split_string(Input, " ", "\s\t\n",  Tomadas_Strings),
    maplist(number_string, Tomadas, Tomadas_Strings),
    contar_tomadas(Tomadas, Resultado),
    write(Resultado), nl.
    


