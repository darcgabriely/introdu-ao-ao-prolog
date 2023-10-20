% Fatos
pessoa(ana).
pessoa(bia).
pessoa(lia).
pessoa(eva).
pessoa(ivo).
pessoa(ary).

femenino(ana).
femenino(bia).
femenino(lia).
femenino(eva).
masculino(ivo).
masculino(ary).

idade(ana, 23).
idade(bia, 19).
idade(lia, 17).
idade(eva, 28).
idade(ivo, 22).
idade(ary, 25). 

altura(ana, 1.55).
altura(bia, 1.71).
altura(lia, 1.85).
altura(eva, 1.75). 
altura(ivo, 1.80).
altura(ary, 1.72). 

peso(ana, 56.0).
peso(bia, 61.3).
peso(lia, 57.3). 
peso(eva, 68.7).
peso(ivo, 70.5).
peso(ary, 68.9).

% Regras
mulherComMaisDe20Anos(X) :- femenino(X), idade(X, Idade), Idade > 20.

pessoaComAlturaEPeso(X) :- pessoa(X), peso(X, Peso), Peso < 65.0, altura(X, Altura), Altura < 1.70.

casal(Homem, Mulher) :-
    masculino(Homem),           % Homem é do gênero masculino
    femenino(Mulher),          % Mulher é do gênero feminino
    altura(Homem, AlturaHomem), % Altura do homem
    altura(Mulher, AlturaMulher), % Altura da mulher
    AlturaHomem > AlturaMulher.  % O homem é mais alto que a mulher


