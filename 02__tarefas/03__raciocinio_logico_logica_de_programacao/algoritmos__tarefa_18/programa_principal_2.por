/**
 * Elabore um algoritmo que leia um determinado número e apresente na tela a tabuada de divisão deste número. 
 * Por exemplo, digamos que o número informado foi 5, o programa deverá apresentar na tela:
 * 	5 / 5 = 2
 * 	10 / 5 = 4
 * 	15 / 5 = 6
 * 	50 / 5 = 20
 */

programa { 			
	inclua biblioteca Util


	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio lerEntrada(inteiro &variavel) {
		leia(variavel)
	}

	funcao vazio calcularTabuadaDivisaoPreencherVetorValorTabuada(inteiro contador, inteiro quantidadePosicoes, inteiro &vetorValorTabuada[], inteiro valorTabuada) {
		exibirMensagem("  Calculando ... \n")	
		Util.aguarde(1500)
		
		para(contador = 0; contador < quantidadePosicoes; contador++) {
			vetorValorTabuada[contador] = ((contador + 1) / valorTabuada)
		}
	}

	funcao vazio exibirTabuadaMultiplicacao(inteiro contador, inteiro quantidadePosicoes, inteiro valorTabuada, inteiro vetorValorTabuada[]) {
		para(contador = quantidadePosicoes; contador > 0; contador--) {		
			escreva("  ", (contador), " / ", valorTabuada, " = ", vetorValorTabuada[contador - 1], "\n")

			se(
				(contador % 10) == 1
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

		exibirMensagem("- Informe um valor que deseja ver sua tabuada de divisão ..: ")
		lerEntrada(valorTabuada)
		
		calcularTabuadaDivisaoPreencherVetorValorTabuada(contador, quantidadePosicoes, vetorValorTabuada, valorTabuada)	

		exibirDados(contador, quantidadePosicoes, valorTabuada, vetorValorTabuada)
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
 * @POSICAO-CURSOR = 2166; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */