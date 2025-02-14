/**
 * Elabore um algoritmo que leia a medida em metros de frente e profundidade de um número indeterminado de terrenos. 
 * O algoritmo deverá calcular e mostrar a área do terreno. 
 * Deverá parar somente quando a área de um terreno for inferior a 100 metros quadrados.
 */
 

programa { 
	inclua biblioteca Matematica

		
	funcao inicio() {
		real medidaFrenteTerreno = 0.0
		real medidaProfundadeTerreno = 0.0
		real resultadoAreaTerreno = 0.0
		logico areaTerrenoInferior100m = falso

		
		escreva("\n -=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		enquanto(verdadeiro) {			
			escreva("- Informe a medida de frente do terreno [m] ........: ")
			leia(medidaFrenteTerreno)
			
			medidaFrenteTerreno = Matematica.arredondar(medidaFrenteTerreno, 2)
	
			escreva("- Informe a medida de profundidade do terreno [m] ..: ")
			leia(medidaProfundadeTerreno)

			medidaProfundadeTerreno = Matematica.arredondar(medidaProfundadeTerreno, 2)
	
			resultadoAreaTerreno = (medidaFrenteTerreno * medidaProfundadeTerreno)
			resultadoAreaTerreno = Matematica.arredondar(resultadoAreaTerreno, 2)

			escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
			escreva("- Área do terreno ..: ", resultadoAreaTerreno, "m² \n")

			areaTerrenoInferior100m = (resultadoAreaTerreno < 100)

			se(areaTerrenoInferior100m) {
				escreva("- Área do terreno inferior a 100m² \n\n")
				pare
			}

			escreva("\n- Área do terreno superior a 100m², digite novos dados \n")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1387; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */