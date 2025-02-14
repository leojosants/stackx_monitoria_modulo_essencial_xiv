programa {
	funcao inicio() {
		// Chama o procedimento
		mensagem("Bem Vindo")
		
	     // Chama a função no escreva		
	     escreva("O resultado do primeiro cálculo é: ", calcula(3.0, 4.0))
	     
	     escreva("\nO resultado do segundo cálculo é: ", calcula(7.0, 2.0), "\n")
	     // Chama a função no escreva		

	     // Chama o procedimento
	     mensagem("Tchau")  
	}

	funcao mensagem (cadeia texto) {
		inteiro i
		
		// Insere uma linha antes do texto da mensagem		
		para(i = 0; i < 50; i++) {
		  escreva ("-")
		}
		
		// escreve a mensagem
		escreva ("\n", texto, "\n") 
		
		// Insere uma linha após do texto da mensagem
		para(i = 0; i < 50; i++) {
		  escreva ("-")
		}

		escreva("\n")
	}

	// Função que realiza um cálculo e retorna o resultado
	funcao real calcula (real a, real b) {
		real resultado
		resultado = a * a + b * b		
		retorne resultado
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 322; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */