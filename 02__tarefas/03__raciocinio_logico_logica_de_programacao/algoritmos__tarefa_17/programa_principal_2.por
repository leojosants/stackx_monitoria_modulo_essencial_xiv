/**
 * Elabore um algoritmo que leia um determinado número e apresente na tela a tabuada de multiplicação deste número. 
 * Por exemplo, digamos que o número informado foi 2, o programa deverá apresentar na tela:
 * 	1 x 2 = 2
 * 	2 x 2 = 4
 * 	3 x 2 = 6
 * 	10 x 2 = 20
 */

programa { 	
	inclua biblioteca Util

		
	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio lerEntrada(inteiro &variavel) {
		leia(variavel)
	}

	funcao vazio calcularTabuadaMultiplicacaoPreencherVetorValorTabuada(inteiro contador, inteiro quantidadePosicoes, inteiro &vetorValorTabuada[], inteiro valorTabuada) {
		exibirMensagem("  Calculando ... \n")	
		Util.aguarde(1500)
		
		para(contador; contador < quantidadePosicoes; contador++) {
			vetorValorTabuada[contador] = (valorTabuada * (contador + 1))
		}
	}

	funcao vazio exibirTabuadaMultiplicacao(inteiro contador, inteiro quantidadePosicoes, inteiro valorTabuada, inteiro vetorValorTabuada[]) {
		para(contador; contador < quantidadePosicoes; contador++) {
			escreva("  ", valorTabuada, " x ", (contador + 1), " = ", vetorValorTabuada[contador], "\n")

			se(
				(contador + 1) % 10 == 0
			) {
				exibirMensagem("----------------\n")
			}
		}
	}

	funcao vazio exibirDados(inteiro contador, inteiro quantidadePosicoes, inteiro valorTabuada, inteiro vetorValorTabuada[]) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		exibirTabuadaMultiplicacao(contador, quantidadePosicoes, valorTabuada, vetorValorTabuada)	
		exibirMensagem("\n")
	}
		
	funcao programaPrincipal() {	
		const inteiro quantidadePosicoes = 100
		inteiro valorTabuada = 0
		inteiro contador = 0
		inteiro vetorValorTabuada[quantidadePosicoes]

				
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		exibirMensagem("- Informe um valor que deseja ver sua tabuada de multiplicação ..: ")
		lerEntrada(valorTabuada)
		
		calcularTabuadaMultiplicacaoPreencherVetorValorTabuada(contador = 0, quantidadePosicoes, vetorValorTabuada, valorTabuada)
		
		exibirDados(contador = 0, quantidadePosicoes, valorTabuada, vetorValorTabuada)		
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
 * @POSICAO-CURSOR = 1192; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */