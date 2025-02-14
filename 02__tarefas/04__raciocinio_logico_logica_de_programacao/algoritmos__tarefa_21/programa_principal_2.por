/**
 * Elabore um algoritmo que leia a medida em metros de frente e profundidade de um número indeterminado de terrenos. 
 * O algoritmo deverá calcular e mostrar a área do terreno. 
 * Deverá parar somente quando a área de um terreno for inferior a 100 metros quadrados.
 */
 

programa { 
	inclua biblioteca Matematica


	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao real arredondarValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne Matematica.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao vazio lerEntradaReal(real &variavel) {
		leia(variavel)
	}

	funcao real calcularAreaTerreno(real medidaFrenteTerreno, real medidaProfundadeTerreno) {
		retorne (medidaFrenteTerreno * medidaProfundadeTerreno)
	}

	funcao logico verificarSeAreaTerrenoEhInferior100m(real areaTerreno) {
		retorne (areaTerreno < 100)
	}
		
	funcao programaPrincipal() {
		real medidaFrenteTerreno = 0.0
		real medidaProfundadeTerreno = 0.0
		real areaTerreno = 0.0
		logico areaTerrenoEhInferior100m = falso

		
		exibirMensagem("\n -=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		enquanto(verdadeiro) {			
			exibirMensagem("- Informe a medida de frente do terreno [m] ........: ")
			lerEntradaReal(medidaFrenteTerreno)
			
			medidaFrenteTerreno = arredondarValor(medidaFrenteTerreno, 2)
	
			exibirMensagem("- Informe a medida de profundidade do terreno [m] ..: ")
			lerEntradaReal(medidaProfundadeTerreno)

			medidaProfundadeTerreno = arredondarValor(medidaProfundadeTerreno, 2)
	
			areaTerreno = calcularAreaTerreno(medidaFrenteTerreno, medidaProfundadeTerreno)
			areaTerreno = arredondarValor(areaTerreno, 2)

			exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
			
			escreva("- Área do terreno ..: ", areaTerreno, "m² \n")

			areaTerrenoEhInferior100m = verificarSeAreaTerrenoEhInferior100m(areaTerreno)

			se(areaTerrenoEhInferior100m) {
				exibirMensagem("- Área do terreno inferior a 100m² \n\n")
				pare
			}

			exibirMensagem("\n- Área do terreno superior a 100m², digite novos dados \n")
		}

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
 * @POSICAO-CURSOR = 1899; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */