/**
 * Escreva um algoritmo que leia dez valores numéricos inteiros e apresente na tela o somatório dos valores.
 */

programa { 			
	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio lerEntrada(inteiro &variavel[], inteiro posicao) {
		leia(variavel[posicao])
	}

	funcao vazio solicitarDadosPreencherVetorValoresNumericos(inteiro contador, inteiro quantidadePosicoesVetor, inteiro &vetorValoresNumericos[]) {
		exibirMensagem("Informe dez valores numéricos \n")
		
		para(contador; contador < quantidadePosicoesVetor; contador++) {
			escreva("- ", (contador + 1), "° valor ..: ")
			lerEntrada(vetorValoresNumericos, contador)
		}
	}

	funcao vazio somarValoresVetorValoresNumericos(inteiro contador, inteiro quantidadePosicoesVetor, inteiro vetorValoresNumericos[], inteiro &somaVetorValoresNumericos) {
		para(contador; contador < quantidadePosicoesVetor; contador++) {
			somaVetorValoresNumericos += vetorValoresNumericos[contador]
		}
	}

	funcao vazio exibirDados(inteiro somaVetorValoresNumericos) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Soma dos valores do vetor ..: ", somaVetorValoresNumericos, "\n\n")
	}
	
	funcao programaPrincipal() {		
		const inteiro quantidadePosicoesVetorValoresNumericos = 10
		inteiro vetorValoresNumericos[quantidadePosicoesVetorValoresNumericos]
		inteiro contador = 0
		inteiro somaVetorValoresNumericos = 0
		
		
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		solicitarDadosPreencherVetorValoresNumericos(contador = 0, quantidadePosicoesVetorValoresNumericos, vetorValoresNumericos)
		
		somarValoresVetorValoresNumericos(contador = 0, quantidadePosicoesVetorValoresNumericos, vetorValoresNumericos, somaVetorValoresNumericos)

		exibirDados(somaVetorValoresNumericos)
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
 * @POSICAO-CURSOR = 243; 
 * @DOBRAMENTO-CODIGO = [22];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */