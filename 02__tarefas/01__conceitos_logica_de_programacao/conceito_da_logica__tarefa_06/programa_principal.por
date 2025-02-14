/**
 * Faça um algoritmo que leia o valor que um funcionário ganha por hora e o número de horas trabalhadas no mês. 
 * Calcule e mostre o total do seu salário no referido mês.
 */

programa { 	
	inclua biblioteca Matematica
	
	funcao inicio() {
		real valorPorHora
		real horasTrabalhadasMes
		real salarioMes
		
		
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Informe o valor que o funcionário recebe por hora ..: R$")
		leia(valorPorHora)

		escreva("- Informe o número de horas trabalhadas no mês .......: ")
		leia(horasTrabalhadasMes)

		salarioMes = (valorPorHora * horasTrabalhadasMes)
		salarioMes = Matematica.arredondar(salarioMes, 2)	
				
		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Salário a receber no referido mês ..: R$", salarioMes, "\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 490; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */