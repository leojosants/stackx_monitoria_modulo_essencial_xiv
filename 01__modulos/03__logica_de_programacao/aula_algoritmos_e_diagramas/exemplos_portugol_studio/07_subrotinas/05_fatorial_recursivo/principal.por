programa {
	funcao inicio() {
		inteiro numero
				
		escreva("Digite um número: ")
		leia(numero)

		limpa()
		
		escreva("O fatorial de ", numero, " é: ", fatorial(numero), "\n") 
	}

	// Função recursiva que calcula o fatorial do número passado		
	funcao inteiro fatorial(inteiro numero) {
		se (
			(numero == 1) ou (numero == 0)
		) { retorne 1 }
		
		retorne numero * fatorial(numero - 1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 350; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */