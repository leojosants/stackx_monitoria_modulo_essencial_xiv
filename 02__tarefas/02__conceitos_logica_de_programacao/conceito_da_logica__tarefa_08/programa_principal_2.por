/**
 * Faça um algoritmo para transformar uma distância expressa em milhas para quilômetros.
 * Sabe-se que uma milha corresponde a 1.6214 km.
 */

programa { 
	inclua biblioteca Matematica

	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio lerEntrada(real &variavel) {
		leia(variavel)
	}

	funcao real arredondarValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne Matematica.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao real calcularDistanciaQuilometros(real distanciaMilhas, real MILHA_EM_QUILOMETROS) {
		retorne (distanciaMilhas * MILHA_EM_QUILOMETROS)
	}

	funcao vazio exibirDados(real distanciaMilhas, real distanciaQuilometros) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- ", distanciaMilhas, "mi, equivalem a ", distanciaQuilometros, "km\n\n")	
	}
		
	funcao programaPrincipal() {
		const real MILHA_EM_QUILOMETROS = 1.6214
		real distanciaMilhas = 0.0
		real distanciaQuilometros = 0.0
		
		
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		exibirMensagem("- Informe uma distância [mi] ..: ")
		lerEntrada(distanciaMilhas)

		distanciaMilhas = arredondarValor(distanciaMilhas, 2)

		distanciaQuilometros = calcularDistanciaQuilometros(distanciaMilhas, MILHA_EM_QUILOMETROS)
		distanciaQuilometros = arredondarValor(distanciaQuilometros, 2)
		
		exibirDados(distanciaMilhas, distanciaQuilometros)		
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
 * @POSICAO-CURSOR = 1437; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */