/**
 * Desenvolva um algoritmo que receba o salário de um funcionário.
 * Calcule e mostre seu novo salário com reajuste de 15%.
 */

programa { 
	inclua biblioteca Matematica

	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio lerEntrada(real &variavel) {
		leia(variavel)
	}

	funcao real calcularValorAumento(real salarioFuncionario, real porcentagemReajuste) {
		retorne (salarioFuncionario * porcentagemReajuste)
	}

	funcao real arredondarValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne Matematica.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao real calcularNovoSalario(real salarioFuncionario, real valorAumento) {
		retorne (salarioFuncionario + valorAumento)	
	}

	funcao vazio exibirDados(real novoSalario) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Novo salário do funcionário ..: R$", novoSalario, "\n\n")	
	}
	
	funcao programaPrincipal() {	
		const real porcentagemReajuste = 0.15
		real salarioFuncionario = 0.0
		real valorAumento = 0.0
		real novoSalario = 0.0

		
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		exibirMensagem("- Informe o salário do funcionário: R$")
		lerEntrada(salarioFuncionario)

		valorAumento = calcularValorAumento(salarioFuncionario, porcentagemReajuste)
		valorAumento = arredondarValor(valorAumento, 2)

		novoSalario = calcularNovoSalario(salarioFuncionario, valorAumento)	
		novoSalario = arredondarValor(novoSalario, 2)	
		
		exibirDados(novoSalario)		
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
 * @POSICAO-CURSOR = 1544; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */