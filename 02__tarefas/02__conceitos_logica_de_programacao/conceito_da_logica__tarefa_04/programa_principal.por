/**
 * Desenvolva um algoritmo que receba uma quantidade de um alimento em quilos.
 * Calcule e mostre quantos dias durará esse alimento para uma pessoa que consome 50 gramas desse alimento por dia.
 */

programa {	
	inclua biblioteca Matematica
	
	funcao inicio() {
		const real CONSUMO_GRAMAS = 50.0
		real quantidadeAlimentoKg
		real converteKgEmGramas
		real tempoDuracaoDias
		

		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		
		escreva("- Informe uma quantidade de um alimento [kg] ..: ")
		leia(quantidadeAlimentoKg)

		converteKgEmGramas = (quantidadeAlimentoKg * 1000)
		converteKgEmGramas = Matematica.arredondar(converteKgEmGramas, 2)

		tempoDuracaoDias = (converteKgEmGramas / CONSUMO_GRAMAS)
		tempoDuracaoDias = Matematica.arredondar(tempoDuracaoDias, 2)

		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- O alimento durará ", tempoDuracaoDias, " dia(s) \n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 800; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */