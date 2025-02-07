programa {
	inclua biblioteca Util --> util
	
	funcao inicio() {
		// Declara uma variável
		inteiro vet = 0 
		
		preenche(vet)
		
		escreva("Variavel antes:\n")
		
		exibe(vet)

		escreva("\n\nVariavel após:\n")		
		
		exibe(vet)

		escreva("\n")
	}

	// Preenche a variavel com um número aleatório. Neste caso, a varivavel é
	// passada por referência
	funcao preenche (inteiro &v) {
		v = util.sorteia (1, 100)
	}

	// Exibe o valor contido na variavel. Neste caso, a variavel é 
	// passada por valor
	funcao exibe (inteiro v) {
		escreva (v, " ")
	
		// O valor é alterado dentro da função, mas fora da função
		// o valor permanece o mesmo, pois a variavel foi passada por valor
		v = 5
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 418; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */