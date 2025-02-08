/**
 * Com base na altura de uma pessoa, construa um algoritmo que calcule seu peso ideal, usando a seguinte fórmula: (72.7 × altura) − 58.
 */

programa { 
	inclua biblioteca Matematica
	
	funcao inicio() {
		real alturaPessoa
		real formulaIMC
		real pesoIdeal
		

		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Informe a altura de uma pessoa [cm] ..: ")
		leia(alturaPessoa)

		alturaPessoa = Matematica.arredondar(alturaPessoa, 2)

		formulaIMC = ((72.7 * alturaPessoa) - 58)
		formulaIMC = Matematica.arredondar(formulaIMC, 2)

		pesoIdeal = formulaIMC
		pesoIdeal = Matematica.arredondar(pesoIdeal, 2)

		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Peso ideal para ", alturaPessoa, "cm ..: ", pesoIdeal, "kg\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 807; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */