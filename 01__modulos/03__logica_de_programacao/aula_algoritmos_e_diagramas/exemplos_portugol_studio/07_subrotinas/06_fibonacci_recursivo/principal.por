programa {
	funcao inicio() {
		inteiro numero
		 
		escreva("Quantos elementos da sequência de Fibonacci deseja calcular? ")
		leia(numero)

		// O laço de repetição percorre todos os valores de 1 até a posição informada,
		// calculando o elemento correspondente na sequência		
		para (inteiro i = 1; i <= numero ; i++) {
			escreva(fibonacci(i), " ")  // Calcula e exibe o número da sequência na posição atual
		}

		escreva("\n")
	}

	// Função recursiva que calcula o enésimo valor da sequência de Fibonnaci.
	// Exemplo: caso seja passado 3 por parametro a função irá retornar 2, ou seja, o terceiro valor da sequencia de Fibonacci	
	funcao inteiro fibonacci(inteiro posicao) {		
		se (posicao == 1) {
			retorne 0
		}
		senao se (posicao == 2) {
			retorne 1
		}

		retorne fibonacci(posicao - 1) + fibonacci(posicao - 2)		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 765; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */