programa {
	// Inclui a biblioteca Matemática
	inclua biblioteca Matematica --> mat  
	
	funcao inicio() {
		real valor, potencia, raiz_quadrada
		
		escreva("Digite um valor: ") 
		leia(valor)

		// Calcula o valor elevado ao cubo
		potencia = mat.potencia(valor, 3.0)  	
		
		// Calcula a raiz quadrada do valor
		raiz_quadrada = mat.raiz(valor, 2.0) 	

		// Exibe os resultados		
		escreva("\nO número ao cubo é: ", potencia, "\n")
		escreva("A raiz quadrada do número é: ", raiz_quadrada, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 355; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */