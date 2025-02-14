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
	funcao inicio() {
		const inteiro quantidadePosicoesVetoresCidadaniaLinguaNativa = 6
		inteiro contador = 0
		caracter opcaoMenu = 'x'
		cadeia vetorCidadania[quantidadePosicoesVetoresCidadaniaLinguaNativa] = {"Brasileiro", "Alemão", "Inglês", "Italiano", "Espanhol", "Francês"}
		cadeia vetorLinguaNativa[quantidadePosicoesVetoresCidadaniaLinguaNativa] = {"Português", "Alemão", "Inglês", "Italiano", "Espanhol", "Francês"}
		cadeia resultadoCidadania = ""

		
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("-=-=- Menu Opções -=-=- \n")

		para(contador = 0; contador < quantidadePosicoesVetoresCidadaniaLinguaNativa; contador++) {
			escreva("- [", (contador + 1), "] ", vetorCidadania[contador], "\n")
		}

		escreva("\n- Escolha uma opção ..: ")
		leia(opcaoMenu)

		escolha(opcaoMenu) {
			caso '1':
				escreva("  Opção escolhida ....: Brasileiro \n")
				resultadoCidadania = "- Lingua nativa ..: " + vetorLinguaNativa[0]
				pare

			caso '2':
				escreva("  Opção escolhida ....: Alemão \n")
				resultadoCidadania = "- Lingua nativa ..: " + vetorLinguaNativa[1]
				pare

			caso '3':
				escreva("  Opção escolhida ....: Inglês \n")
				resultadoCidadania = "- Lingua nativa ..: " + vetorLinguaNativa[2]
				pare

			caso '4':
				escreva("  Opção escolhida ....: Italiano \n")
				resultadoCidadania = "- Lingua nativa ..: " + vetorLinguaNativa[3]
				pare

			caso '5':
				escreva("  Opção escolhida ....: Espanhol \n")
				resultadoCidadania = "- Lingua nativa ..: " + vetorLinguaNativa[4]
				pare

			caso '6':
				escreva("  Opção escolhida ....: Francês \n")
				resultadoCidadania = "- Lingua nativa ..: " + vetorLinguaNativa[5]
				pare
			
			caso contrario:
				escreva("  Opção escolhida ....: Indisponível \n")
				resultadoCidadania = "- A língua nativa não pode ser verificada."
				pare
		}

		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva(resultadoCidadania, "\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2253; 
 * @DOBRAMENTO-CODIGO = [0];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */