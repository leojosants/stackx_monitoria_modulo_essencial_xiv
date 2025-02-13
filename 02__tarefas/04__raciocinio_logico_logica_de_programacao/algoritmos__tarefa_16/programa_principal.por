/**
 * Escreva um algoritmo que leia dez valores numéricos inteiros e apresente na tela o somatório dos valores.
 */

programa { 			
	funcao inicio() {		
		const inteiro quantidadePosicoesVetorValoresNumericos = 10
		inteiro vetorValoresNumericos[quantidadePosicoesVetorValoresNumericos]
		inteiro contador = 0
		inteiro somaVetorValoresNumericos = 0
		
		
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("Informe dez valores numéricos \n")

		para(contador = 0; contador < quantidadePosicoesVetorValoresNumericos; contador++) {
			escreva("- ", (contador + 1), "° valor ..: ")
			leia(vetorValoresNumericos[contador])
		}

		para(contador = 0; contador < quantidadePosicoesVetorValoresNumericos; contador++) {
			somaVetorValoresNumericos += vetorValoresNumericos[contador]
		}

		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Soma dos valores do vetor ..: ", somaVetorValoresNumericos, "\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 981; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */