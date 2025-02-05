programa {
	funcao inicio() {
		const inteiro CONDICAO = 0
		inteiro numero
		
		escreva("Digite um número inteiro: ")
		leia(numero)

		// Verifica se o número é positivo
		se(numero > CONDICAO) { 
			escreva("O número é positivo")
		}
		// Verifica se o número é negativo
		senao se(numero < CONDICAO) { 
			escreva("O número é negativo")
		}
		// Se não é positivo nem negativo, só pode ser igual a zero 
		senao {
			escreva("O número é igual zero")
		}

		escreva("\n")		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 302; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */