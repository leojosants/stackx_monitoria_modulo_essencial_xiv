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

	funcao vazio lerEntrada(real &variavel) {
		leia(variavel)
	}

	funcao real calcularDobroAreaQuadrado(real areaQuadrado) {
		retorne (areaQuadrado * 2)	
	}

	funcao vazio exibirDados(real areaQuadrado, real dobroAreaQuadrado) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Área do quadrado ...........: ", areaQuadrado, "cm² \n")
		escreva("- Dobro da área do quadrado ..: ", dobroAreaQuadrado, "cm² \n\n")
	}
	 		
	funcao programaPrincipal() {
		real medidaLadosQuadrado = 0.0
		real areaQuadrado = 0.0
		real dobroAreaQuadrado = 0.0
		
		
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")		

		exibirMensagem("- Informe o valor dos lados de um quadrado [cm] ..: ")		
		lerEntrada(medidaLadosQuadrado)

		areaQuadrado = calcularAreaQuadrado(medidaLadosQuadrado)				
		areaQuadrado = arredondarValor(areaQuadrado, 2)	
		
		dobroAreaQuadrado = calcularDobroAreaQuadrado(areaQuadrado)		
		dobroAreaQuadrado = arredondarValor(dobroAreaQuadrado, 2)	

		exibirDados(areaQuadrado, dobroAreaQuadrado)
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
 * @POSICAO-CURSOR = 1519; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */