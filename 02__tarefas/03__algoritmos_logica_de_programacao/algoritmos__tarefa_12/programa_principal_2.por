/**
 * O valor unitário de um livro na promoção custa R$ 12,00. 
 * Caso o cliente compre acima de 10 livros, o preço unitário do livro fica por R$ 8,00.
 * Escreva um algoritmo que leia o número de livros comprados, calcule e mostre o valor total que o cliente deverá pagar.
 */

programa { 		
	inclua biblioteca Matematica
	

	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio lerEntrada(inteiro &variavel) {
		leia(variavel)
	}

	funcao real calcularValorTotalPagar(inteiro quantidadeLivrosComprados, real valorUnitarioLivroAcima10Un, real valorUnitarioLivro) {
		real totalPagar = 0.0
		
		se(quantidadeLivrosComprados > 10) {
			totalPagar = (quantidadeLivrosComprados * valorUnitarioLivroAcima10Un)
		}
		senao {
			totalPagar = (quantidadeLivrosComprados * valorUnitarioLivro)
		}

		totalPagar = arredondarValor(totalPagar, 2)

		retorne totalPagar
	}

	funcao real arredondarValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne Matematica.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao vazio exibirDados(inteiro quantidadeLivrosComprados, real valorTotalPagar) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Quantidade de livro(s) comprado(s) ..: ", quantidadeLivrosComprados, "UN \n")
		escreva("- Valor total da compra ...............: R$", valorTotalPagar, "\n\n")
	}
	
	funcao programaPrincipal() {			
		const real valorUnitarioLivro = 12.0
		const real valorUnitarioLivroAcima10Un = 8.0
		real valorTotalPagar = 0.0
		inteiro quantidadeLivrosComprados = 0

		
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		exibirMensagem("- Informe o quantidade de livros comprados [un] ..: ")
		lerEntrada(quantidadeLivrosComprados)

		valorTotalPagar = calcularValorTotalPagar(quantidadeLivrosComprados, valorUnitarioLivroAcima10Un, valorUnitarioLivro)	
		valorTotalPagar = arredondarValor(valorTotalPagar, 2)
		
		exibirDados(quantidadeLivrosComprados, valorTotalPagar)
	}

	funcao inicio() {	
		programaPrincipal()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2000; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */