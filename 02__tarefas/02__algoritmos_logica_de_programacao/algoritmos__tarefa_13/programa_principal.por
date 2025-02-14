/**
 * Escreva um algoritmo que leia um valor para a variável A e um valor para a variável B.
 * Logo após, o algoritmo deverá fazer com que a variável A guarde o valor da variável B e a variável B guarde o valor da variável A.
 * Apresentar os valores das variáveis A e B antes e depois da troca.
 */

programa { 		
	inclua biblioteca Util
		
	funcao inicio() {	
		real valor_a = 0.0
		real valor_b = 0.0				
		real temporaria = 0.0
		real vetorValoresAntesTroca[2]
		real vetorValoresDepoisTroca[2]
		inteiro comprimentoVetorValoresAntesTroca = Util.numero_elementos(vetorValoresAntesTroca)
		inteiro comprimentoVetorValoresDepoisTroca = Util.numero_elementos(vetorValoresDepoisTroca)

		
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Informe um valor para 'A' ..: ")
		leia(valor_a)

		escreva("- Informe um valor para 'B' ..: ")
		leia(valor_b)

		vetorValoresAntesTroca[0] = valor_a
		vetorValoresAntesTroca[1] = valor_b

		temporaria = valor_a
		valor_a = valor_b
		valor_b = temporaria

		vetorValoresDepoisTroca[0] = valor_a
		vetorValoresDepoisTroca[1] = valor_b
		
		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		
		escreva("- Valores antes da troca\n")			
		escreva("A ..: ", vetorValoresAntesTroca[0], "\n")
		escreva("B ..: ", vetorValoresAntesTroca[1], "\n\n")
		
		escreva("- Valores depois da troca\n")			
		escreva("A ..: ", vetorValoresDepoisTroca[0], "\n")
		escreva("B ..: ", vetorValoresDepoisTroca[1], "\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1263; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */