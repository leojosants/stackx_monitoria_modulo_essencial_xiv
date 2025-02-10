/**
 * Escreva um algoritmo que leia a quantidade de combustível abastecido em um automóvel em litros, bem como, a distância que o automóvel percorre por litro abastecido. 
 * O algoritmo deverá calcular e mostrar a distância máxima que o automóvel poderá atingir.
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

	funcao real calcularDistanciaMaximaAutomovelAtinge(real quantidadeAbastecidaAutomovel, real distanciaPercorrePorLitro) {
		retorne (quantidadeAbastecidaAutomovel * distanciaPercorrePorLitro)
	}

	funcao vazio exibirDados(real distanciaMaximaAutomovelAtinge, real quantidadeAbastecidaAutomovel) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- O automóvel poderá atingir ", distanciaMaximaAutomovelAtinge,"km, com a quantide de ", quantidadeAbastecidaAutomovel,"L de combustível\n\n")
	}
	
	funcao programaPrincipal() {		
		real quantidadeAbastecidaAutomovel = 0.0
		real distanciaPercorrePorLitro = 0.0
		real distanciaMaximaAutomovelAtinge = 0.0
		
		
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		exibirMensagem("- Informe a quantidade de combustível abatecido no automóvel [Litros] .....: ")
		leia(quantidadeAbastecidaAutomovel)

		quantidadeAbastecidaAutomovel = arredondarValor(quantidadeAbastecidaAutomovel, 2)

		exibirMensagem("- Informe a distância que o automóvel percorre por litro abastecido [km] ..: ")
		lerEntrada(distanciaPercorrePorLitro)

		distanciaPercorrePorLitro = arredondarValor(distanciaPercorrePorLitro, 2)

		distanciaMaximaAutomovelAtinge = calcularDistanciaMaximaAutomovelAtinge(quantidadeAbastecidaAutomovel, distanciaPercorrePorLitro)
		distanciaMaximaAutomovelAtinge = arredondarValor(distanciaMaximaAutomovelAtinge, 2)
		
		exibirDados(distanciaMaximaAutomovelAtinge, quantidadeAbastecidaAutomovel)
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
 * @POSICAO-CURSOR = 1480; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */