/**
 * Elabore um algoritmo que leia dois números e mostre a soma deles.
 */

programa {
	inclua biblioteca Matematica
		
	funcao inicio() {
		real primeiroNumero
		real segundoNumero
		real somaNumeros
		

		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		
		escreva("- Informe o primeiro número ..: ")
		leia(primeiroNumero)

		escreva("- Informe o segundo número ...: ")
		leia(segundoNumero)

		somaNumeros = primeiroNumero + segundoNumero
		somaNumeros = Matematica.arredondar(somaNumeros, 2)

		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Soma dos números recebidos ..: ", somaNumeros, "\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 625; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */