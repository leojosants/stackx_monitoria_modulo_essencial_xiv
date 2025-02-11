/**
 * O valor unitário de um livro na promoção custa R$ 12,00. 
 * Caso o cliente compre acima de 10 livros, o preço unitário do livro fica por R$ 8,00.
 * Escreva um algoritmo que leia o número de livros comprados, calcule e mostre o valor total que o cliente deverá pagar.
 */

programa { 		
	inclua biblioteca Matematica
	
	
	funcao inicio() {			
		const real valorUnitarioLivro = 12.0
		const real valorUnitarioLivroAcima10Un = 8.0
		real valorTotalPagar = 0.0
		inteiro quantidadeLivrosComprados = 0

		
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Informe o quantidade de livros comprados [un] ..: ")
		leia(quantidadeLivrosComprados)

		se(quantidadeLivrosComprados > 10) {
			valorTotalPagar = (quantidadeLivrosComprados * valorUnitarioLivroAcima10Un)
		}
		senao {
			valorTotalPagar = (quantidadeLivrosComprados * valorUnitarioLivro)
		}
		
				
		valorTotalPagar = Matematica.arredondar(valorTotalPagar, 2)
		
		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Quantidade de livro(s) comprado(s) ..: ", quantidadeLivrosComprados, "UN \n")
		escreva("- Valor total da compra ...............: R$", valorTotalPagar, "\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 434; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */