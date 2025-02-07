programa {
	inclua biblioteca Texto --> tx
	
	funcao inicio() {
		cadeia nome, bem_vindo
		
		escreva("Digite seu nome em letras maiúsculas: ")
		leia(nome)

		// Transforma os caracteres da cadeia em caracteres minúsculos
		nome = tx.caixa_baixa(nome)
		
		// Transforma os caracteres da cadeia em caracteres minúsculos
		bem_vindo = tx.caixa_baixa("BEM VINDO(A)")

		limpa()
		
		escreva(bem_vindo, " ", nome, "!!\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 379; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */