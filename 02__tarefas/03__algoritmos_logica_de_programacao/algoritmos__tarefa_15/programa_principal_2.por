/**
 * Escreva um algoritmo que leia a cidadania de uma pessoa, codificada da seguinte forma:
 * 1 -> Brasileiro
 * 2 -> Alemão
 * 3 -> Inglês
 * 4 -> Italiano
 * 5 -> Espanhol 
 * 6 -> Francês
 * O algoritmo deverá mostrar na tela a língua nativa do cidadão, de acordo com a cidadania selecionada. 
 * Caso não seja informado nenhum código válido, informar na tela que a língua nativa da pessoa não pode ser verificada.
 */

programa { 		
	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio exibirMenu(inteiro contador, inteiro quantidadePosicoesVetoresCidadaniaLinguaNativa, cadeia vetorCidadania[]) {
		exibirMensagem("-=-=- Menu Opções -=-=- \n")

		para(contador; contador < quantidadePosicoesVetoresCidadaniaLinguaNativa; contador++) {
			escreva("- [", (contador + 1), "] ", vetorCidadania[contador], "\n")
		}	
	}

	funcao vazio lerEntrada(caracter &variavel) {
		leia(variavel)
	}

	funcao vazio escolherCasoOpcaoMenu(caracter opcaoMenu, cadeia &resultadoCidadania, cadeia vetorLinguaNativa[]) {
		escolha(opcaoMenu) {
			caso '1':
				exibirMensagem("  Opção escolhida ....: Brasileiro \n")
				resultadoCidadania = "- Lingua nativa ..: " + vetorLinguaNativa[0]
				pare

			caso '2':
				exibirMensagem("  Opção escolhida ....: Alemão \n")
				resultadoCidadania = "- Lingua nativa ..: " + vetorLinguaNativa[1]
				pare

			caso '3':
				exibirMensagem("  Opção escolhida ....: Inglês \n")
				resultadoCidadania = "- Lingua nativa ..: " + vetorLinguaNativa[2]
				pare

			caso '4':
				exibirMensagem("  Opção escolhida ....: Italiano \n")
				resultadoCidadania = "- Lingua nativa ..: " + vetorLinguaNativa[3]
				pare

			caso '5':
				exibirMensagem("  Opção escolhida ....: Espanhol \n")
				resultadoCidadania = "- Lingua nativa ..: " + vetorLinguaNativa[4]
				pare

			caso '6':
				exibirMensagem("  Opção escolhida ....: Francês \n")
				resultadoCidadania = "- Lingua nativa ..: " + vetorLinguaNativa[5]
				pare
			
			caso contrario:
				exibirMensagem("  Opção escolhida ....: Indisponível \n")
				resultadoCidadania = "- A língua nativa não pode ser verificada."
				pare
		}
	}

	funcao vazio exibirDados(cadeia resultadoCidadania) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva(resultadoCidadania, "\n\n")
	}
		
	funcao programaPrincipal() {
		const inteiro quantidadePosicoesVetoresCidadaniaLinguaNativa = 6
		inteiro contador = 0
		caracter opcaoMenu = 'x'
		cadeia vetorCidadania[quantidadePosicoesVetoresCidadaniaLinguaNativa] = {"Brasileiro", "Alemão", "Inglês", "Italiano", "Espanhol", "Francês"}
		cadeia vetorLinguaNativa[quantidadePosicoesVetoresCidadaniaLinguaNativa] = {"Português", "Alemão", "Inglês", "Italiano", "Espanhol", "Francês"}
		cadeia resultadoCidadania = ""

		
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		exibirMenu(contador = 0, quantidadePosicoesVetoresCidadaniaLinguaNativa, vetorCidadania) 

		exibirMensagem("\n- Escolha uma opção ..: ")
		lerEntrada(opcaoMenu)

		escolherCasoOpcaoMenu(opcaoMenu, resultadoCidadania, vetorLinguaNativa)

		exibirDados(resultadoCidadania)
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
 * @POSICAO-CURSOR = 3141; 
 * @DOBRAMENTO-CODIGO = [0, 13, 17, 25, 29];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */