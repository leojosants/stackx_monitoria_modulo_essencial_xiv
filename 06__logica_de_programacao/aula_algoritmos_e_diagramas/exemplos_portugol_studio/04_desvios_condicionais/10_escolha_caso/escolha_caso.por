programa {
	funcao inicio() {
		inteiro opcao
		
		escreva("1) Elogio \n")
		escreva("2) Ofensa \n")
		escreva("3) Sair \n\n")

		escreva("Escolha uma opção: ")
		leia(opcao)

		limpa()

		escolha (opcao) {
			caso 1: 
		 		escreva ("Voce é lindo(a)!")
		 		pare   
		 	
		 	caso 2: 
		 		escreva ("Voce é um monstro!")
		 		pare   
		 	
		 	caso 3: 
		 		escreva ("Tchau!")
		 		pare
		 	
		 	// Será executado para qualquer opção diferente de 1, 2 ou 3
		 	caso contrario: 
		 		escreva ("Opção Inválida !")
		}

		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 275; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */