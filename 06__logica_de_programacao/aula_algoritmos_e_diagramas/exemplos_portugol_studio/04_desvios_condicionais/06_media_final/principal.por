programa {
	inclua biblioteca Matematica --> mat
	
	funcao inicio() {
		const inteiro NOTA_APROVACAO = 6
		cadeia nome
		real nota1, nota2, nota3, media
		
		escreva("Digite seu nome: ")
		leia(nome)

		escreva("\n")
		
		escreva("Digite a primeira nota: ")
		leia(nota1)

		escreva("Digite a segunda nota: ")
		leia(nota2)

		escreva("Digite a terceira nota: ")
		leia(nota3)

		/* Calcula a média final do usuário */
		media = (nota1 + nota2 + nota3) / 3
		
		limpa()
		
		se (media >= NOTA_APROVACAO) {
		 	escreva("Parabéns ", nome, "!\nVocê foi aprovado com a média ", mat.arredondar(media, 2))
		}
		senao {
			escreva("Que pena ", nome, "!\nVocê foi reprovado com a média ", mat.arredondar(media, 2))
		}

		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 502; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */