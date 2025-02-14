programa {
	inclua biblioteca Matematica --> mat
	
	funcao inicio () {
		real m1, m2, m3, media

		escreva ("Informe a média 1: " )
		leia (m1)
		
		escreva( "Informe a média 2: ")
		leia (m2)
		
		escreva ("Informe a média 3: ")
		leia (m3)

		media = (m1 + m2 + m3) / 3 

		limpa()
		
		escreva ("A média final é: ", mat.arredondar(media, 2), "\n\n")


		se (m1 < media) { 
			escreva ("A média 1 é menor que a média final\n") 
		}
		
		se (m2 < media) {
			escreva ("A média 2 é menor que a média final\n")
		}
		
		se (m3 < media) {
			escreva ("A média 3 é menor que a média final\n")
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 600; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */