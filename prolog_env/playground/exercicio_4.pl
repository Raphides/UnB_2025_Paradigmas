:- use_module(library(solution_sequences)).

estudante(ana, 1, software).
estudante(beto, 2, software).
estudante(carlos, 1, eletronica).
estudante(dolores, 6, eletronica).
estudante(emerson, 3, energia).
estudante(fatima, 1, energia).

matricula(calculo, ana).
matricula(calculo, carlos).
matricula(calculo, fatima).
matricula(calculo, beto).

matricula(ial, ana).
matricula(ial, carlos).
matricula(ial, fatima).


tem_calouros(Disciplina) :-
    distinct(Disciplina, (estudante(Estudante, 1, _), matricula(Disciplina, Estudante))).

turma_mista(Disciplina) :-
    findall(_, matricula(X, _), D),
    list_to_set(D, Disciplinas),
    findall(_, estudante(_,_,C), Cur),
    list_to_set(Cur, Cursos),
    estudante(A, _, ).

software :-
    estudante(A, _, 'Engenharia de Software'),
    write(A), nl,
    fail.

software.