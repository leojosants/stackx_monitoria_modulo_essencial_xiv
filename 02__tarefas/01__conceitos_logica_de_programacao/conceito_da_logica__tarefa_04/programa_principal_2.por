/**
 * Desenvolva um algoritmo que receba uma quantidade de um alimento em quilos.
 * Calcule e mostre quantos dias durará esse alimento para uma pessoa que consome 50 gramas desse alimento por dia.
 */

programa {	
	inclua biblioteca Matematica

	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio lerEntrada(real &variavel) {
		leia(variavel)
	}

	funcao real converterkgParaGramas(real valorEmKg) {
		const real kg = 1000.00
		retorne (valorEmKg * kg)
	}

	funcao real arredondarValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne Matematica.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao real calcularTempoDuracaoDias(real converteKgEmGramas,real CONSUMO_GRAMAS) {
		retorne (converteKgEmGramas / CONSUMO_GRAMAS)
	}

	funcao vazio exibirDados(real tempoDuracaoDias) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- O alimento durará ", tempoDuracaoDias, " dia(s) \n\n")
	}
	
	funcao programaPrincipal() {
		const real CONSUMO_GRAMAS = 50.0
		real quantidadeAlimentoKg = 0.0
		real converteKgEmGramas = 0.0
		real tempoDuracaoDias = 0.0
		

		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		
		exibirMensagem("- Informe uma quantidade de um alimento [kg] ..: ")
		lerEntrada(quantidadeAlimentoKg)

		converteKgEmGramas = converterkgParaGramas(quantidadeAlimentoKg)
		converteKgEmGramas = arredondarValor(converteKgEmGramas, 2)

		tempoDuracaoDias = calcularTempoDuracaoDias(converteKgEmGramas, CONSUMO_GRAMAS)
		tempoDuracaoDias = arredondarValor(tempoDuracaoDias, 2)

		exibirDados(tempoDuracaoDias)
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
 * @POSICAO-CURSOR = 1628; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */