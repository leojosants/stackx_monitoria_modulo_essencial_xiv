/**
 * Chico tem 1,50 metro e cresce 2 centímetros por ano, enquanto Zé tem 1,10 metro e cresce 3 centímetros por ano. 
 * Construa um algoritmo que calcule e imprima quantos anos serão necessários para que Zé seja maior que Chico.
 */

programa { 			
	inclua biblioteca Matematica 

	funcao real calcularAumentoAltura(real altura, real aumento) {
		real calculo = 0.0
		calculo += (altura + aumento)	
		retorne calculo	
	}

	funcao real arredondarValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne Matematica.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao vazio exibirAlturasAumentadasAno(inteiro quantidadeAnosAlturaZeSejaMaiorAlturaChico, real alturaChicoAumentadaAno, real alturaZeAumentadaAno) {
		escreva("- Aumento das alturas no ", quantidadeAnosAlturaZeSejaMaiorAlturaChico, "° ano \n")
		escreva("  Chico ..: ", alturaChicoAumentadaAno, "m \n")
		escreva("  Zé .....: ", alturaZeAumentadaAno, "m \n")
		escreva("\n")
	}

	funcao vazio exibirDados(inteiro quantidadeAnosAlturaZeSejaMaiorAlturaChico) {
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Ano(s) necessário(s) para que Zé tenha a altura maior que a de Chico ..: ", quantidadeAnosAlturaZeSejaMaiorAlturaChico, " ano(s)\n\n")
	}
	
	funcao inicio() {	
		const real alturaChico = 1.50
		const real alturaZe = 1.10
		const real alturaChicoCresceAno = 0.02
		const real alturaZeCresceAno = 0.03
		inteiro quantidadeAnosAlturaZeSejaMaiorAlturaChico = 0
		real alturaChicoAumentadaAno = alturaChico
		real alturaZeAumentadaAno = alturaZe

		
		faca {
			alturaChicoAumentadaAno = calcularAumentoAltura(alturaChicoAumentadaAno, alturaChicoCresceAno)
			alturaChicoAumentadaAno = arredondarValor(alturaChicoAumentadaAno, 2)
			
			alturaZeAumentadaAno = calcularAumentoAltura(alturaZeAumentadaAno, alturaZeCresceAno	)
			alturaZeAumentadaAno = arredondarValor(alturaZeAumentadaAno, 2)	

			quantidadeAnosAlturaZeSejaMaiorAlturaChico++
		
			// exibirAlturasAumentadasAno(quantidadeAnosAlturaZeSejaMaiorAlturaChico, alturaChicoAumentadaAno, alturaZeAumentadaAno)		
		}
		enquanto(alturaZeAumentadaAno <= alturaChicoAumentadaAno)		

		exibirDados(quantidadeAnosAlturaZeSejaMaiorAlturaChico)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2151; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */