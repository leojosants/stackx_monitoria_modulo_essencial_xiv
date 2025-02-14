/**
 * Faça um algoritmo para transformar uma distância expressa em milhas para quilômetros.
 * Sabe-se que uma milha corresponde a 1.6214 km.
 */

programa { 
	inclua biblioteca Matematica
		
	funcao inicio() {
		const real MILHA_EM_QUILOMETROS = 1.6214
		real distanciaMilhas
		real distanciaQuilometros
		
		
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Informe uma distância [mi] ..: ")
		leia(distanciaMilhas)

		distanciaMilhas = Matematica.arredondar(distanciaMilhas, 2)

		distanciaQuilometros = (distanciaMilhas * MILHA_EM_QUILOMETROS)
		distanciaQuilometros = Matematica.arredondar(distanciaQuilometros, 2)
		
		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- ", distanciaMilhas, "mi, equivalem a ", distanciaQuilometros, "km\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 660; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */