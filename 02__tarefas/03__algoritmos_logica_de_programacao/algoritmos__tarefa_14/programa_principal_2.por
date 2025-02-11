/**
 * CALCULADORA: 
 * Escreva um algoritmo para ler 2 valores e uma das seguintes operações a serem executadas codificada da seguinte forma:
 * 1.Adição
 * 2.Subtração
 * 3.Divisão
 * 4.Multiplicação
 * Calcular e escrever o resultado dessa operação sobre os dois valores lidos.
 */

programa { 			
	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio lerEntradaReal(real &variavel) {
		leia(variavel)
	}

	funcao vazio lerEntradaCaracter(caracter &variavel) {
		leia(variavel)
	}

	funcao vazio solicitarValores(real &primeiroValor, real &segundoValor) {
		exibirMensagem("- Informe o primeiro valor ..: ")
		lerEntradaReal(primeiroValor)
		
		exibirMensagem("- Informe o segundo valor ...: ")
		lerEntradaReal(segundoValor)
	}

	funcao vazio exibirMenuOpcoes() {
		exibirMensagem("\n\n-=- Menu de opções -=- \n\n")
		exibirMensagem("Adição...........[1] \n")
		exibirMensagem("Subtração........[2] \n")
		exibirMensagem("Divisão .........[3] \n")
		exibirMensagem("Multiplicação ...[4] \n\n")
	}

	funcao vazio solicitarOpcao(caracter &opcaoMenu) {
		exibirMensagem("- Informe uma opção ..: ")
		lerEntradaCaracter(opcaoMenu)
	}

	funcao vazio exibirDados(real resultadoOperacao, real segundoValor, caracter opcaoMenu) {
		se(segundoValor == 0) {
			exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
			escreva("Não é possível realizar divisão por zero \n\n")
		}		
		senao se(opcaoMenu < '1' ou opcaoMenu > '4') {
			exibirMensagem("  Opção escolhida  ...: Opção indisponível \n\n")
		}
		senao {
			exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
			escreva("- Resultado ..: ", resultadoOperacao, "\n\n")	
		}
	}

	funcao real executarOperacaoAdicao(real primeiroValor, real segundoValor) {
		retorne (primeiroValor + segundoValor)
	}

	funcao real executarOperacaoSubtracao(real primeiroValor, real segundoValor) {
		retorne (primeiroValor - segundoValor)
	}

	funcao real executarOperacaoMultiplicacao(real primeiroValor, real segundoValor) {
		retorne (primeiroValor * segundoValor)
	}

	funcao real executarOperacaoDivisao(real primeiroValor, real segundoValor) {
		retorne (primeiroValor / segundoValor)
	}

	funcao vazio escolherCaso(caracter opcaoMenu, real &resultadoOperacao, real primeiroValor, real segundoValor) {
		escolha(opcaoMenu) {
			caso '1': 
				exibirMensagem("  Opção escolhida  ...: Adição \n")
				resultadoOperacao = executarOperacaoAdicao(primeiroValor, segundoValor)
				exibirDados(resultadoOperacao, segundoValor,opcaoMenu)
				pare
				
			caso '2': 
				exibirMensagem("  Opção escolhida  ...: Subtração \n")
				resultadoOperacao = executarOperacaoSubtracao(primeiroValor, segundoValor)
				exibirDados(resultadoOperacao, segundoValor, opcaoMenu)
				pare
				
			caso '3': 
				exibirMensagem("  Opção escolhida  ...: Divisão \n")

				se(segundoValor == 0) {
					exibirDados(resultadoOperacao, segundoValor, opcaoMenu)
					pare
				}
				senao {
					resultadoOperacao = executarOperacaoDivisao(primeiroValor, segundoValor)
					exibirDados(resultadoOperacao, segundoValor, opcaoMenu)
					pare	
				}				
				
			caso '4': 
				exibirMensagem("  Opção escolhida  ...: Multiplicação \n")
				resultadoOperacao = executarOperacaoMultiplicacao(primeiroValor, segundoValor)
				exibirDados(resultadoOperacao, segundoValor, opcaoMenu)
				pare
				
			caso contrario: 
				exibirDados(resultadoOperacao, segundoValor, opcaoMenu)
				pare
		}
	}
	
	funcao programaPrincipal() {
		real primeiroValor = 0.0
		real segundoValor = 0.0
		real resultadoOperacao = 0.0
		caracter opcaoMenu = 'x'

			
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		solicitarValores(primeiroValor, segundoValor)

		exibirMenuOpcoes()

		solicitarOpcao(opcaoMenu)

		escolherCaso(opcaoMenu, resultadoOperacao, primeiroValor, segundoValor) 
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
 * @POSICAO-CURSOR = 1531; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */