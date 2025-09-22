:- use_module(library(readutil)).
:- use_module(library(lists)).
:- use_module(library(apply)).

ler_n_refeicoes(N, Refeicoes) :-
    %write(N),
    N > 0,
    %write(N),
    read_line_to_string(user_input, Input_cru),
    split_string(Input_cru, " ", "\s\t\n", Input_list),
    maplist(number_string, Input, Input_list),
    %write(Input), nl,
    %write(N), nl,
    Novo_N is N-1,
    ler_n_refeicoes(Novo_N, Tail),
    %write(Tail), nl,
    append(Input, Tail, Refeicoes), !.

ler_n_refeicoes(0, []).

calcular_calorias_restantes([], Restantes, Restantes).

calcular_calorias_restantes(Refeicoes, Limite, Restantes) :-
    Limite > 0,
    [Proteina|[Gordura|[Carboidrato|Resto]]] = Refeicoes,
    Calorias_Refeicao is Proteina * 4 + Gordura * 9 + Carboidrato * 4,
    Novo_limite is Limite - Calorias_Refeicao,
    calcular_calorias_restantes(Resto, Novo_limite, Restantes), !.

calcular_calorias_restantes(Refeicoes, _, 0).

main :-
    read_line_to_string(user_input, Input),
    split_string(Input, " ", "\n", Tmp),
    maplist(number_string, [N| [Max_Calorias|_]], Tmp),    
    %write(N), nl, write(Max_Calorias), nl,
    ler_n_refeicoes(N, Refeicoes),
    %write(Refeicoes), nl,
    calcular_calorias_restantes(Refeicoes, Max_Calorias, Restantes),
    write(Restantes), nl.

    
