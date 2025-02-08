/*
Desenvolva um algoritmo que receba uma quantidade de um alimento em quilos, 
calcule e mostre quantos dias durará esse alimento para uma pessoa que consome 50 gramas desse alimento por dia.
*/

programa {	
	funcao inicio() {
		const real gramas = 50.0
		real quantidadeAlimentoKg
		real quantidadeEmGramas
		real consumoPorDia
	
		escreva("Informa uma quantidade de um alimento em kg: ")
		leia(quantidadeAlimentoKg)

		quantidadeEmGramas = quantidadeAlimentoKg * 1000

		consumoPorDia = quantidadeEmGramas / gramas

		escreva("O alimento durará ", consumoPorDia, " dia(a)")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 527; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */