progenitor('jose', 'joao').
progenitor('jose', 'ana').

progenitor('maria', 'ana').
progenitor('maria', 'joao').

progenitor('ana', 'helena').
progenitor('ana', 'joana').

progenitor('joao', 'mario').

progenitor('helena', 'carlos').

progenitor('mario', 'carlos').

filho(X,Y):- progenitor(Y,X).
irmao(X,Y):- progenitor(Z,X), progenitor(Z,Y), not(X = Y).
primo(X,Y):- progenitor(Z,X), progenitor(W,Y), irmao(Z,W).

sobrinho(Tio,Sobrinho):- irmao(Z,Tio), progenitor(Z,Sobrinho).
%% ascendentes(X, A):- progenitor(A,X); progenitor(Z,A).  


