/**
 * Elabore um algoritmo que leia o valor do lado do quadrado e calcule a área, em seguida calcule o dobro da área. 
 * Mostre a área e o dobro.
 */

programa {
	inclua biblioteca Matematica

	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao real arredondarValor(real valor, inteiro casasDecimais) {
		retorne Matematica.arredondar(valor, casasDecimais)
	}

	funcao real calcularAreaQuadrado(real medida) {
		retorne Matematica.potencia(medida, 2)
	}
	 		
	funcao inicio() {
		real medidaLadosQuadrado
		real areaQuadrado
		real dobroAreaQuadrado
		
		
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")		

		exibirMensagem("- Informe o valor dos lados de um quadrado [cm] ..: ")		
		leia(medidaLadosQuadrado)

		areaQuadrado = calcularAreaQuadrado(medidaLadosQuadrado)				
		areaQuadrado = arredondarValor(areaQuadrado, 2)	
		
		dobroAreaQuadrado = (areaQuadrado * 2)		
		dobroAreaQuadrado = Matematica.arredondar(dobroAreaQuadrado, 2)
		
		arredondarValor(dobroAreaQuadrado, 2)		

		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Área do quadrado ...........: ", areaQuadrado, "cm² \n")
		escreva("- Dobro da área do quadrado ..: ", dobroAreaQuadrado, "cm² \n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 548; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */