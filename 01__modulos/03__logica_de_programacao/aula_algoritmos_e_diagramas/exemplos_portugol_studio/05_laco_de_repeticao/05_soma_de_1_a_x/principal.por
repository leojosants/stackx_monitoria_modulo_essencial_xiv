programa {
	funcao inicio() {
		inteiro soma = 0, numero, contador
		
		escreva("Digite o número até o qual deseja somar: ")
		leia(numero)

		// Repete até o contador atingir o valor informado pelo usuário		
		para (contador = 0; contador <= numero; contador ++) {
			soma = soma + contador // Soma o valor atual do contador
		}
		
		escreva("A soma de 1 até ", numero, " é: ", soma, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 332; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */