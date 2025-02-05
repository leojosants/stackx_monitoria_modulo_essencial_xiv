programa {
	inclua biblioteca Texto --> tx
	
	funcao inicio() {
		// A função "preencher_a_esquerda" insere repetidamente um de caracter
		// à esquerda de uma cadeia até que a cadeia atinja um tamanho desejado. 
		//
		// Vamos supor, por exemplo, que queremos exibir o número 5 em binário.
		// O valor a ser exibido seria 101. No entanto, precisamos que o número
		// seja exibido sempre com 32 bits, independente de qual número seja.
		//
		// A função "preencher_a_esquerda" pode auxiliar nesta tarefa. Para resolver
		// o problema proposto, basta pedir à função que preencha a cadeia com zeros (0)
		// à esquerda até que o tamanho dela seja de 32 caracteres (32 bits)
		
		cadeia binario, binario_8bits, binario_16bits, binario_32bits

		escreva("Digite um número em binário: ")
		leia(binario)

		limpa()
		escreva("\nNúmero binário informado: ", binario, "\n")

		// Preenche a cadeia com zeros à esquerda até que o tamanho seja 8 caracteres
		binario_8bits = tx.preencher_a_esquerda('0', 8, binario)
		
		escreva("\nNúmero binário com 8 bits: ", binario_8bits)

		// Preenche a cadeia com zeros à esquerda até que o tamanho seja 16 caracteres
		binario_16bits = tx.preencher_a_esquerda('0', 16, binario)
		
		escreva("\nNúmero binário com 16 bits: ", binario_16bits)

		// Preenche a cadeia com zeros à esquerda até que o tamanho seja 32 caracteres
		binario_32bits = tx.preencher_a_esquerda('0', 32, binario)
		
		escreva("\nNúmero binário com 32 bits: ", binario_32bits, "\n")		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1496; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */