/**
 * Com base na altura de uma pessoa, construa um algoritmo que calcule seu peso ideal, usando a seguinte fórmula: (72.7 × altura) − 58.
 */

programa { 
	inclua biblioteca Matematica

	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio solicitarAltura(real &alturaPessoa) {
		leia(alturaPessoa)
	}

	funcao real arredondarValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne Matematica.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao real calcularPesoIdeal(real alturaPessoa) {
		retorne ((72.7 * alturaPessoa) - 58)
	}

	funcao vazio exibirDados(real alturaPessoa, real pesoIdeal) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Peso ideal para ", alturaPessoa, "cm ..: ", pesoIdeal, "kg\n\n")
	}
	
	funcao programaPrincipal() {
		real alturaPessoa = 0.0
		real formulaCalculoIMC = 0.0
		real pesoIdeal = 0.0
		

		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		exibirMensagem("- Informe a altura de uma pessoa [cm] ..: ")
		solicitarAltura(alturaPessoa)

		alturaPessoa = arredondarValor(alturaPessoa, 2)

		formulaCalculoIMC = calcularPesoIdeal(alturaPessoa)
		formulaCalculoIMC = arredondarValor(formulaCalculoIMC, 2)

		pesoIdeal = formulaCalculoIMC
		pesoIdeal = arredondarValor(pesoIdeal, 2)

		exibirDados(alturaPessoa, pesoIdeal) 
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
 * @POSICAO-CURSOR = 916; 
 * @DOBRAMENTO-CODIGO = [7, 11, 15];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */