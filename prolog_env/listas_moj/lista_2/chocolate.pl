:- use_module(library(readutil)).

chocolate(Lado, Total_chocolates) :-
    Lado < 2,
    Total_chocolates = 1, !.

chocolate(Lado, Total_chocolates) :-
    Lado >= 2,
    chocolate(Lado / 2, N),
    Total_chocolates is 4 * N.

main :-
    read_line_to_string(user_input, Input),
    number_string(Max_lados, Input),
    chocolate(Max_lados, Resultado),
    write(Resultado), nl.
