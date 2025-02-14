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

		
	funcao inicio() {	
		const inteiro quantidadePosicoes = 100
		inteiro valorTabuada = 0
		inteiro contador = 0
		inteiro vetorValorTabuada[quantidadePosicoes]

				
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Informe um valor que deseja ver sua tabuada de divisão ..: ")
		leia(valorTabuada)

		escreva("  Calculando ... \n")	
		Util.aguarde(1500)
		
		para(contador = 0; contador < quantidadePosicoes; contador++) {
			vetorValorTabuada[contador] = ((contador + 1) / valorTabuada)
		}

		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		para(contador = quantidadePosicoes; contador > 0; contador--) {		
			escreva("  ", (contador), " / ", valorTabuada, " = ", vetorValorTabuada[contador - 1], "\n")

			se(
				(contador % 10) == 1
			) {
				escreva("----------------\n")
			}
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1090; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */