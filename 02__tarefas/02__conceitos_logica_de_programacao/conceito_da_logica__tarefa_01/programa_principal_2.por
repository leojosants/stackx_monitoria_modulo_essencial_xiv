/**
 * Elabore um algoritmo que leia dois números e mostre a soma deles.
 */

programa {
	inclua biblioteca Matematica

	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao real arredondarValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne Matematica.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao vazio exibirDados(real salarioMes) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Salário a receber no referido mês ..: R$", salarioMes, "\n\n")
	}

	funcao vazio solicitarDados(real &variavel) {
		leia(variavel)
	}
		
	funcao inicio() {
		real primeiroNumero = 0.0
		real segundoNumero = 0.0
		real somaNumeros = 0.0
		

		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		
		exibirMensagem("- Informe o primeiro número ..: ")
		solicitarDados(primeiroNumero)

		exibirMensagem("- Informe o segundo número ...: ")
		solicitarDados(segundoNumero)

		somaNumeros = primeiroNumero + segundoNumero
		somaNumeros = arredondarValor(somaNumeros, 2)
	
		exibirDados(somaNumeros)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 711; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */