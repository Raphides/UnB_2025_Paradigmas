:- use_module(library(readutil)).


quantos_convidados(N_grandes, N_pequenas, Convidados) :-
    Convidados is N_grandes * 8 + N_pequenas * 4 - 2.

main :-
    read_line_to_string(user_input, N_grandes_string),
    read_line_to_string(user_input, N_pequenas_string),
    number_string(N_grandes, N_grandes_string),
    number_string(N_pequenas, N_pequenas_string),
    quantos_convidados(N_grandes, N_pequenas, Convidados),
    write(Convidados), nl.
