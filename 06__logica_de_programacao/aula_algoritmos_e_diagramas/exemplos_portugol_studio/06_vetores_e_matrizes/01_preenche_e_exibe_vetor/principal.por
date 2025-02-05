programa {
	inclua biblioteca Util --> util
	
	funcao inicio() {
		inteiro vetor[10]
		
		// preenche o vetor
		para (inteiro posicao = 0; posicao < 10; posicao++) {
			// Sorteia um número e atribui à posição do vetor
			vetor[posicao] = util.sorteia(1, 100) 
		}

		// Exibe o vetor na ordem original
		escreva ("Vetor na ordem original:\n")
		
		para(inteiro posicao = 0; posicao < 10; posicao++) {
			escreva (vetor[posicao], " ")
		}
		
		// Exibe o vetor na ordem inversa
		escreva ("\n\nVetor na ordem inversa:\n")
		
		para(inteiro posicao = 9; posicao >=0; posicao--) {
			escreva (vetor[posicao], " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 577; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */