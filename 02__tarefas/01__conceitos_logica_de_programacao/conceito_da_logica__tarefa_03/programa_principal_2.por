/**
 * Desenvolva um algoritmo que receba dois valores numéricos inteiros.
 * Calcule e mostre a soma do quadrado desses dois números.
 */

programa {	
	inclua biblioteca Matematica

	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio lerEntrada(inteiro &variavel) {
		leia(variavel)
	}

	funcao real calcularPotencia(inteiro base, inteiro expoente) {
		retorne Matematica.potencia(base, expoente)
	}

	funcao inteiro calcularQuadrado(inteiro primeiroNumero, inteiro segundoNumero) {
		retorne (primeiroNumero + segundoNumero)
	}

	funcao vazio exibirDados(inteiro somaQuadrados) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Soma do quadrado dos números recebidos ..: ", somaQuadrados, "\n\n")
	}
	
	funcao programaPrincipal() {
		inteiro primeiroNumero = 0
		inteiro segundoNumero = 0
		inteiro quadradoPrimeiroNumero = 0
		inteiro quadradoSegundoNumero = 0
		inteiro somaQuadrados = 0
		

		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		
		exibirMensagem("- Informe o primeiro número inteiro ..: ")
		lerEntrada(primeiroNumero)

		exibirMensagem("- Informe o segundo número inteiro ...: ")
		lerEntrada(segundoNumero)

		quadradoPrimeiroNumero = calcularPotencia(primeiroNumero, 2)
		quadradoSegundoNumero = calcularPotencia(segundoNumero, 2)

		somaQuadrados = calcularQuadrado(quadradoPrimeiroNumero, quadradoSegundoNumero)

		exibirDados(somaQuadrados)
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
 * @POSICAO-CURSOR = 1531; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */