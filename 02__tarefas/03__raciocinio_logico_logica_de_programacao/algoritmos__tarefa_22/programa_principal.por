/**
 * Escreva um algoritmo que leia 50 valores e encontre o maior e o menor deles.
 * Mostre o resultado.
 */
 

programa { 
	inclua biblioteca Util

			
	funcao inicio() {
		const inteiro QUANTIDADE_VALORES = 50
		inteiro vetorValoresAleatorios[QUANTIDADE_VALORES]		
		inteiro maiorValorVetorValoresAleatorios = 0
		inteiro menorValorVetorValoresAleatorios = 0
		

		para(inteiro contador = 5; contador >= 0; contador--) {
			limpa()

			escreva("\n-=-=-=-=-=-=-=-=-=-=- Gerando ", QUANTIDADE_VALORES, " valores aleatórios -=-=-=-=-=-=-=-=-=-=- \n\n")
			escreva("aguarde... ", contador, "\n\n")
		
			Util.aguarde(1000)
		}

		escreva("\n-=-=-=-=-=-=-=-=-=-=- Exibindo valores gerados -=-=-=-=-=-=-=-=-=-=- \n")

		Util.aguarde(1000)
	
		para(inteiro contador = 0; contador < QUANTIDADE_VALORES; contador++) {
			vetorValoresAleatorios[contador] = Util.sorteia(1, 1000)
			escreva("- ", (contador + 1),"° valor ..: ", vetorValoresAleatorios[contador], "\n")
			Util.aguarde(100)
		}

		maiorValorVetorValoresAleatorios = vetorValoresAleatorios[0]

		para(inteiro contador = 0; contador < QUANTIDADE_VALORES; contador++) {
			se(vetorValoresAleatorios[contador] > maiorValorVetorValoresAleatorios) {
				maiorValorVetorValoresAleatorios = vetorValoresAleatorios[contador]
			}
		}

		menorValorVetorValoresAleatorios = maiorValorVetorValoresAleatorios

		para(inteiro contador = 0; contador < QUANTIDADE_VALORES; contador++) {
			se(vetorValoresAleatorios[contador] < menorValorVetorValoresAleatorios) {
				menorValorVetorValoresAleatorios = vetorValoresAleatorios[contador]
			}
		}

		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Menor valor gerado ..: ", menorValorVetorValoresAleatorios, "\n")
		escreva("- Maior valor gerado ..: ", maiorValorVetorValoresAleatorios, "\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 365; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */