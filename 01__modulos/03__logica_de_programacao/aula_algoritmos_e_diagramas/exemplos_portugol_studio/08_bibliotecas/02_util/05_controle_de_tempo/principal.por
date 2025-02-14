programa {
	inclua biblioteca Util --> u
	
	funcao inicio() {
		inteiro tempo_inicial = 0
		inteiro tempo_atual = 0
		inteiro tempo_total = 0

		logico mensagem1 = falso
		logico mensagem2 = falso
		logico mensagem3 = falso

		// Armazena na variável a quantidade de tempo em milissegundos
		// desde que a biblioteca foi carregada pela primeira vez
		tempo_inicial = u.tempo_decorrido()		

		faca {
			// Armazena novamente o tempo na variável. Desta vez, o valor
			// retornado pela função será diferente do valor retornado
			// anteriormente
			tempo_atual = u.tempo_decorrido()
			
			// Diminuindo o tempo atual do tempo inicial, podemos descobrir
			// quanto tempo se passou (em milissegundos) desde que armazenamos
			// o tempo inicial
			tempo_total = tempo_atual - tempo_inicial

			// Exibe uma mensagem após 1 segundo
			se (tempo_total >= 1000 e mensagem1 == falso) {
				escreva("Primeira mensagem\n")
				mensagem1 = verdadeiro
			}
			// Exibe uma mensagem após 5 segundos
			senao se (tempo_total >= 5000 e mensagem2 == falso) {
				escreva("Segunda mensagem\n")
				mensagem2 = verdadeiro
			}
			// Exibe uma mensagem após 7 segundos
			senao se (tempo_total >= 7000 e mensagem3 == falso) {
				escreva("Terceira mensagem\n")
				mensagem3 = verdadeiro
			}			
		}	
		// Finaliza o programa após 10 segundos
		enquanto (tempo_total < 10000)

		limpa()
				
		escreva("Tempo Inicial: ", tempo_inicial, "\n")
		escreva("Tempo Atual: ", tempo_atual, "\n")
		escreva("Tempo Total: ", tempo_total, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1525; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */