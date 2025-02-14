programa {
	inclua biblioteca Texto --> tx
	
	funcao inicio() {
		cadeia nome
		inteiro tamanho

		escreva("Digite seu nome: ")
		leia(nome)

		// Obtém o número de caracteres armazenados na variável
		tamanho = tx.numero_caracteres(nome)

		escreva("Seu nome possui ", tamanho, " caracteres\n")		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 295; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */