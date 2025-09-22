% Implemente, em Prolog, o predicado lucas/2, cujos parâmetros são N e X e que retorna
% verdadeiro se X é o N -ésimo número de Lucas. A sequência Ln dos números de Lucas é definida pela
% relação de recorrência

lucas(2,1).
lucas(1,2).

lucas(X, N) :-
    N > 2,
    NovoN1 is N-1,
    NovoN2 is N-2,
    lucas(Y, NovoN1),
    lucas(Z, NovoN2),
    X is Y + Z.










% consulta: lucas(X,5).

% lucas(X, 5) :-
%     lucas(Y=4, 4), #paramos aqui.
%     lucas(Z=3, 3),
%    X is Y=4 + Z=3. # X = 7.

% lucas(X, 4),
%     lucas(Y=3, 3), #paramos aqui.
%     lucas(Z=1, 2),
%     X is Y=3 + Z=1. # X = 4.

% lucas(X, 3),
%     lucas(Y=1, 2), #paramos aqui.
%     lucas(Z=2, 1),
%     X is 1 + 2. # X = 3.

% lucas(1, 2).
% lucas(2, 1).

