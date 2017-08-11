passaro('tweety').
peixe('goldie').
minhoca('squiggly').
gato('felix').
pessoa('joao').
gosta(P,M):- passaro(P), minhoca(M); gato(P),peixe(M); gato(P),passaro(M); gato(P),pessoa(M).
amigos(X,Y):- gosta(X,Y), gosta(X,Y). 
comer(X,Y):- gato(X), gosta(X,Y).
