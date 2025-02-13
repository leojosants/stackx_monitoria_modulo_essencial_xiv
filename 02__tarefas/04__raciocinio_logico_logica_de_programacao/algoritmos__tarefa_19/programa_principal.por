/**
 * Chico tem 1,50 metro e cresce 2 centímetros por ano, enquanto Zé tem 1,10 metro e cresce 3 centímetros por ano. 
 * Construa um algoritmo que calcule e imprima quantos anos serão necessários para que Zé seja maior que Chico.
 */

programa { 			
	inclua biblioteca Matematica 

	
	funcao inicio() {	
		const real alturaChico = 1.50
		const real alturaZe = 1.10
		const real alturaChicoCresceAno = 0.02
		const real alturaZeCresceAno = 0.03
		inteiro quantidadeAnosAlturaZeSejaMaiorAlturaChico = 0
		real alturaChicoAumentadaAno = alturaChico
		real alturaZeAumentadaAno = alturaZe

		
		faca {
			alturaChicoAumentadaAno += alturaChicoCresceAno
			alturaChicoAumentadaAno = Matematica.arredondar(alturaChicoAumentadaAno, 2)
			
			alturaZeAumentadaAno += alturaZeCresceAno	
			alturaZeAumentadaAno = Matematica.arredondar(alturaZeAumentadaAno, 2)	

			quantidadeAnosAlturaZeSejaMaiorAlturaChico++

			// escreva("- Alturas aumentadas no ", quantidadeAnosAlturaZeSejaMaiorAlturaChico, "° ano \n")
			// escreva("  Chico ..: ", alturaChicoAumentadaAno, "m \n")
			// escreva("  Zé .....: ", alturaZeAumentadaAno, "m \n")
			// escreva("\n")
		}
		enquanto(alturaZeAumentadaAno <= alturaChicoAumentadaAno)
		

		escreva("\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Ano(s) necessário(s) para que Zé tenha a altura maior que a de Chico ..: ", quantidadeAnosAlturaZeSejaMaiorAlturaChico, " ano(s)\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1131; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */