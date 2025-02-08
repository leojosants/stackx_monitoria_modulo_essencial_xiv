/*
Construa um algoritmo que leia 4 notas e mostre a média.
*/

programa {	
	inclua biblioteca Matematica
	
	funcao inicio() {
		real primeiraNota
		real segundaNota
		real terceiraNota
		real quartaNota
		real somaNotas
		real mediaNotas
		

		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Digite a primeira nota ..: ")
		leia(primeiraNota)
		
		escreva("- Digite a segunda nota ...: ")
		leia(segundaNota)
		
		escreva(" -Digite a terceira nota ..: ")
		leia(terceiraNota)
		
		escreva("- Digite a quarta nota ....: ")
		leia(quartaNota)

		somaNotas = (primeiraNota + segundaNota + terceiraNota + quartaNota)
		somaNotas = Matematica.arredondar(somaNotas, 2)

		mediaNotas = (somaNotas / 2)
		mediaNotas = Matematica.arredondar(mediaNotas, 2)

		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Média das notas recebidas ..: ", mediaNotas, "\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 787; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */