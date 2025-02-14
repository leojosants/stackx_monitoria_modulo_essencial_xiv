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

		
	funcao inicio() {	
		const inteiro quantidadePosicoes = 100
		inteiro valorTabuada = 0
		inteiro contador = 0
		inteiro vetorValorTabuada[quantidadePosicoes]

				
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Informe um valor que deseja ver sua tabuada de multiplicação ..: ")
		leia(valorTabuada)

		escreva("  Calculando ... \n")	
		Util.aguarde(1500)
		
		para(contador = 0; contador < quantidadePosicoes; contador++) {
			vetorValorTabuada[contador] = (valorTabuada * (contador + 1))
		}

		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		para(contador = 0; contador < quantidadePosicoes; contador++) {		
			escreva("  ", valorTabuada, " x ", (contador + 1), " = ", vetorValorTabuada[contador], "\n")

			se(
				(contador + 1) % 10 == 0
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
 * @POSICAO-CURSOR = 317; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */