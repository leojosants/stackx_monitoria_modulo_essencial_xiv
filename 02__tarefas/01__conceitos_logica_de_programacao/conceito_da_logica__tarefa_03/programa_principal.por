/**
 * Desenvolva um algoritmo que receba dois valores numéricos inteiros.
 * Calcule e mostre a soma do quadrado desses dois números.
 */

programa {	
	inclua biblioteca Matematica
	
	funcao inicio() {
		inteiro primeiroNumero
		inteiro segundoNumero
		inteiro quadradoPrimeiroNumero
		inteiro quadradoSegundoNumero
		inteiro somaQuadrados
		

		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		
		escreva("- Informe o primeiro número inteiro ..: ")
		leia(primeiroNumero)

		escreva("- Informe o segundo número inteiro ...: ")
		leia(segundoNumero)

		quadradoPrimeiroNumero = Matematica.potencia(primeiroNumero, 2)

		quadradoSegundoNumero = Matematica.potencia(segundoNumero, 2)

		somaQuadrados = (quadradoPrimeiroNumero + quadradoSegundoNumero)

		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Soma do quadrado dos números recebidos ..: ", somaQuadrados, "\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 920; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */