programa {
	funcao inicio() {
		inteiro idade
		
		faca {
			escreva ("Informe sua idade (valores aceitos de 5 a 150): ")
			leia (idade)
		}
		enquanto (
			(idade < 5) ou (idade > 150)
		)
		
		// A partir deste ponto do código é garantido que a idade 
		// terá um valor válido e não causará erros inesperados		

		escreva ("\nCorreto!\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 189; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */