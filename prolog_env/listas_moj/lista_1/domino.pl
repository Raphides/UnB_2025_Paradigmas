:- use_module(library(readutil)).

main :-
    read_line_to_string(user_input, X),
    number_string(N,X),
    Y is (((N+1)*(N+2))/ 2),
    write(Y), nl.