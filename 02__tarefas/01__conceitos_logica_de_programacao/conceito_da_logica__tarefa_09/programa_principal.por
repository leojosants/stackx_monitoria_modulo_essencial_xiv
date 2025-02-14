/**
 * Desenvolva um algoritmo que receba o salário de um funcionário.
 * Calcule e mostre seu novo salário com reajuste de 15%.
 */

programa { 
	inclua biblioteca Matematica
	
	funcao inicio() {	
		const real porcentagemReajuste = 0.15
		real salarioFuncionario = 0.0
		real valorAumento = 0.0
		real novoSalario = 0.0

		
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Informe o salário do funcionário: R$")
		leia(salarioFuncionario)

		valorAumento = (salarioFuncionario * porcentagemReajuste)
		valorAumento = Matematica.arredondar(valorAumento, 2)

		novoSalario = (salarioFuncionario + valorAumento)	
		novoSalario = Matematica.arredondar(novoSalario, 2)	
		
		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Novo salário do funcionário ..: R$", novoSalario, "\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 865; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */