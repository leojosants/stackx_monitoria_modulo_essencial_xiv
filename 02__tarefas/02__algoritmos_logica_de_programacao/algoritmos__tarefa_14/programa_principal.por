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
	funcao inicio() {
		real primeiroValor = 0.0
		real segundoValor = 0.0
		real resultadoOperacao = 0.0
		caracter opcaoMenu = 'x'

			
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Informe o primeiro valor ..: ")
		leia(primeiroValor)
		
		escreva("- Informe o segundo valor ...: ")
		leia(segundoValor)

		escreva("\n\n-=- Menu de opções -=- \n\n")
		escreva("Adição...........[1] \n")
		escreva("Subtração........[2] \n")
		escreva("Divisão .........[3] \n")
		escreva("Multiplicação ...[4] \n\n")

		escreva("- Informe uma opção ..: ")
		leia(opcaoMenu)

		escolha(opcaoMenu) {
			caso '1': 
				escreva("Opção escolhida [", opcaoMenu, "] - Adição \n")
				
				resultadoOperacao = (primeiroValor + segundoValor)
				
				escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
				escreva("- Resultado ..: ", resultadoOperacao, "\n\n")
				pare
				
			caso '2': 
				escreva("Opção escolhida [", opcaoMenu, "] - Subtração \n")

				resultadoOperacao = (primeiroValor - segundoValor)

				escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
				escreva("- Resultado ..: ", resultadoOperacao, "\n\n")
				pare
				
			caso '3': 
				escreva("Opção escolhida [", opcaoMenu, "] - Divisão \n")

				se(segundoValor == 0) {
					escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
					escreva("Não é possível realizar divisão por zero \n\n")
					pare
				}
				senao {
					resultadoOperacao = (primeiroValor / segundoValor)

					escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
					escreva("- Resultado ..: ", resultadoOperacao, "\n\n")
					pare	
				}				
				
			caso '4': 
				escreva("Opção escolhida [", opcaoMenu,"] - Multiplicação \n")
				
				resultadoOperacao = (primeiroValor * segundoValor)
				
				escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
				escreva("- Resultado ..: ", resultadoOperacao, "\n\n")
				pare
				
			caso contrario: 
				escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
				escreva("Opção escolhida indisponível \n\n")
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2101; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */