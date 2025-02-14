/**
 * Escreva um algoritmo que leia 50 valores e encontre o maior e o menor deles.
 * Mostre o resultado.
 */
 

programa { 
	inclua biblioteca Util


	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio aguardarTempo(inteiro tempo) {
		Util.aguarde(tempo)
	}

	funcao vazio exibirMensagemAguardandoTempo(inteiro QUANTIDADE_VALORES) {
		para(inteiro contador = 1; contador <= QUANTIDADE_VALORES; contador++) {
			limpa()

			escreva("\n-=-=-=-=-=-=-=-=-=-=- Gerando ", QUANTIDADE_VALORES, " valores aleatórios -=-=-=-=-=-=-=-=-=-=- \n\n")
			escreva("Gerando... ", contador, "° \n\n")
		
			aguardarTempo(10)
		}
	}

	funcao inteiro gerarValorAleatorio(inteiro intervaloInicial, inteiro intervaloFinal) {
		retorne Util.sorteia(intervaloInicial, intervaloFinal)
	}

	funcao vazio exibirVetorValoresAleatorios(inteiro QUANTIDADE_VALORES, inteiro &vetorValoresAleatorios[]) {
		para(inteiro contador = 0; contador < QUANTIDADE_VALORES; contador++) {
			vetorValoresAleatorios[contador] = gerarValorAleatorio(1, 1000)
			escreva("- ", (contador + 1),"° valor ..: ", vetorValoresAleatorios[contador], "\n")
			aguardarTempo(80)
		}
	}

	funcao inteiro pegarMaiorValorVetorValoresAleatorios(inteiro QUANTIDADE_VALORES, inteiro vetorValoresAleatorios[]) {
		inteiro maiorValor = vetorValoresAleatorios[0]
		
		para(inteiro contador = 0; contador < QUANTIDADE_VALORES; contador++) {
			se(vetorValoresAleatorios[contador] > maiorValor) {
				maiorValor = vetorValoresAleatorios[contador]
			}
		}

		retorne maiorValor
	}

	funcao inteiro pegarMenorValorVetorValoresAleatorios(inteiro maiorValorVetorValoresAleatorios, inteiro QUANTIDADE_VALORES, inteiro vetorValoresAleatorios[]) {
		inteiro menorValor = maiorValorVetorValoresAleatorios
		
		para(inteiro contador = 0; contador < QUANTIDADE_VALORES; contador++) {
			se(vetorValoresAleatorios[contador] < menorValor) {
				menorValor = vetorValoresAleatorios[contador]
			}
		}

		retorne menorValor
	}

	funcao vazio exibirDados(inteiro menorValorVetorValoresAleatorios, inteiro maiorValorVetorValoresAleatorios) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Menor valor gerado ..: ", menorValorVetorValoresAleatorios, "\n")
		escreva("- Maior valor gerado ..: ", maiorValorVetorValoresAleatorios, "\n\n")
	}
			
	funcao programaPrincipal() {
		const inteiro QUANTIDADE_VALORES = 50
		inteiro vetorValoresAleatorios[QUANTIDADE_VALORES]		
		inteiro maiorValorVetorValoresAleatorios = 0
		inteiro menorValorVetorValoresAleatorios = 0
		

		exibirMensagemAguardandoTempo(QUANTIDADE_VALORES)

		aguardarTempo(500)

		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Exibindo valores gerados -=-=-=-=-=-=-=-=-=-=- \n")

		aguardarTempo(1000)
	
		exibirVetorValoresAleatorios(QUANTIDADE_VALORES, vetorValoresAleatorios)

		maiorValorVetorValoresAleatorios = pegarMaiorValorVetorValoresAleatorios(QUANTIDADE_VALORES, vetorValoresAleatorios) 

		menorValorVetorValoresAleatorios = pegarMenorValorVetorValoresAleatorios(maiorValorVetorValoresAleatorios, QUANTIDADE_VALORES, vetorValoresAleatorios) 

		exibirDados(menorValorVetorValoresAleatorios, maiorValorVetorValoresAleatorios) 
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
 * @POSICAO-CURSOR = 3161; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */