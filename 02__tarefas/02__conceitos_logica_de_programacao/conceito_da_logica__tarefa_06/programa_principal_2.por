/**
 * Faça um algoritmo que leia o valor que um funcionário ganha por hora e o número de horas trabalhadas no mês. 
 * Calcule e mostre o total do seu salário no referido mês.
 */

programa { 	
	inclua biblioteca Matematica

	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio solicitarDados(real &variavel) {
		leia(variavel)
	}

	funcao real arredondarValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne Matematica.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao vazio exibirDados(real salarioMes) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Salário a receber no referido mês ..: R$", salarioMes, "\n\n")
	}
	
	funcao inicio() {
		real valorPorHora = 0.0
		real horasTrabalhadasMes = 0.0
		real salarioMes = 0.0
		
		
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		exibirMensagem("- Informe o valor que o funcionário recebe por hora ..: R$")
		solicitarDados(valorPorHora)

		exibirMensagem("- Informe o número de horas trabalhadas no mês .......: ")
		solicitarDados(horasTrabalhadasMes)

		salarioMes = (valorPorHora * horasTrabalhadasMes)
		salarioMes = arredondarValor(salarioMes, 2)	

		exibirDados(salarioMes)		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1191; 
 * @DOBRAMENTO-CODIGO = [8, 12];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */