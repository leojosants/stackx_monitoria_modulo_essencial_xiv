/**
 * Escreva um algoritmo que leia um valor para a variável A e um valor para a variável B.
 * Logo após, o algoritmo deverá fazer com que a variável A guarde o valor da variável B e a variável B guarde o valor da variável A.
 * Apresentar os valores das variáveis A e B antes e depois da troca.
 */

programa { 		
	inclua biblioteca Util


	funcao inteiro pegarNumeroElementosVetor(real vetor[]) {
		retorne Util.numero_elementos(vetor)
	}

	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio LerEntrada(real &variavel) {
		leia(variavel)
	}

	funcao vazio preencherVetor(real &vetor[], real valor_a, real valor_b) {
		vetor[0] = valor_a
		vetor[1] = valor_b
	}

	funcao vazio realizarTrocaVariaveis(real &temporaria, real &valor_a, real &valor_b) {
		temporaria = valor_a
		valor_a = valor_b
		valor_b = temporaria
	}

	funcao vazio exibirDados(real vetorValoresAntesTroca[], real vetorValoresDepoisTroca[]) {
		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		
		escreva("- Valores antes da troca\n")			
		escreva("A ..: ", vetorValoresAntesTroca[0], "\n")
		escreva("B ..: ", vetorValoresAntesTroca[1], "\n\n")
		
		escreva("- Valores depois da troca\n")			
		escreva("A ..: ", vetorValoresDepoisTroca[0], "\n")
		escreva("B ..: ", vetorValoresDepoisTroca[1], "\n\n")
	}
		
	funcao programaPrincipal() {
		const inteiro posicoesVetore = 2	
		real valor_a = 0.0
		real valor_b = 0.0				
		real temporaria = 0.0
		real vetorValoresAntesTroca[posicoesVetore]
		real vetorValoresDepoisTroca[posicoesVetore]
		inteiro comprimentoVetorValoresAntesTroca = pegarNumeroElementosVetor(vetorValoresAntesTroca)
		inteiro comprimentoVetorValoresDepoisTroca = pegarNumeroElementosVetor(vetorValoresDepoisTroca)

		
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		exibirMensagem("- Informe um valor para 'A' ..: ")
		LerEntrada(valor_a)

		exibirMensagem("- Informe um valor para 'B' ..: ")
		LerEntrada(valor_b)

		preencherVetor(vetorValoresAntesTroca, valor_a, valor_b)

		realizarTrocaVariaveis(temporaria, valor_a, valor_b)

		preencherVetor(vetorValoresDepoisTroca, valor_a, valor_b)
		
		exibirDados(vetorValoresAntesTroca, vetorValoresDepoisTroca)
	}

	funcao inicio() {	
		programaPrincipal()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2249; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */