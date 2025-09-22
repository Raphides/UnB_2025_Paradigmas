fib(0, 0).
fib(1, 1).

fib(Posicao, Valor) :- fib_de_cauda(Posicao, Valor, 0, 1).

fib_de_cauda(0, Valor, _,Valor).
fib_de_cauda(Posicao, Valor, A, B) :-
    Posicao > 0,
    NovaPosicao is Posicao-1,
    Proximo_fib is A + B,
    fib_de_cauda(NovaPosicao, Valor, B, Proximo_fib).
