mente('leao','segunda').
mente('leao','terca').
mente('leao','quarta').


mente('unicornio','quinta').
mente('unicornio','sexta').
mente('unicornio','sabado').

ontem('domingo','segunda').
ontem('segunda','terca').
ontem('terca','quarta').
ontem('quarta','quinta').
ontem('quinta','sexta').
ontem('sexta','sabado').
ontem('sabado','domingo').

pergunta(D):- 	ontem(X,D), 
				(
					mente('leao',D), not(mente('leao',X)); not(mente('leao',D)), mente('leao', X)
				),
				(
					mente('unicornio', D), not(mente('unicornio', X)); not(mente('unicornio', D)),mente('unicornio',X)
				).
