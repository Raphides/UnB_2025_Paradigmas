appendT([], X, X).
appendT([H|T1], X, [H, _T2]):-
    appendT(T1, X, _T2).
% --------
% Tentando explicar
% sobre o T2 sendo uma variável diferente em diferentes escopos.
% 
% appendT([], X, ?=X=_T2).
% appendT([H|T1], X, ?=_T2=[H, __T2]):-
%     appendT(T1, X, __T2).
% 
% ----------
% #Explicação
% 
% appendT1([1,2,3], X=[4,5,6], Y).
% appendT1([H=1|T1=[2,3]], X=[4,5,6], Y=[1, _T2])
% 
% appendT2([2,3], X=[4, 5, 6], _T2)
% appendT2([H=2|T1=[3]], X=[4, 5, 6], _T2=[2, __T2])
% 
% appendT3([3], X=[4, 5, 6], __T2)
% appendT3([H=3 | T1=[]], X=[4, 5, 6], __T2=[3,___T2])
% 
% appendT4([], X=[4, 5, 6], ___T2)
% # chega no caso base.
% # appendT([], X, X) resulta em __T2 = [4,5,6].
% appendT4([], X=[4, 5, 6], ___T2=[4,5,6]).
% 
% #VOLTANDO:
% appendT3([H=3 | T1=[]], X=[4, 5, 6], __T2=[3,___T2=[4,5,6]])
% appendT2([H=2|T1=[3]], X=[4, 5, 6], _T2=[2, __T2=[3,4,5,6]])
% appendT1([H=1|T1=[2,3]], X=[4,5,6], Y=[1, _T2=[2,3,4,5,6]])
% Y=[1,2,3,4,5,6].