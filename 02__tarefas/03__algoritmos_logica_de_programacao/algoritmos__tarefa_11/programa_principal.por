/**
 * Escreva um algoritmo que leia a quantidade de combustível abastecido em um automóvel em litros, bem como, a distância que o automóvel percorre por litro abastecido. 
 * O algoritmo deverá calcular e mostrar a distância máxima que o automóvel poderá atingir.
 */

programa { 		
	inclua biblioteca Matematica
	
	
	funcao inicio() {		
		real quantidadeAbastecidaAutomovel = 0.0
		real distanciaPercorrePorLitro = 0.0
		real distanciaMaximaAutomovelAtinge = 0.0
		
		
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Informe a quantidade de combustível abatecido no automóvel [Litros]: ")
		leia(quantidadeAbastecidaAutomovel)

		quantidadeAbastecidaAutomovel = Matematica.arredondar(quantidadeAbastecidaAutomovel, 2)

		escreva("- Informe a distância que o automóvel percorre por litro abastecido [km]: ")
		leia(distanciaPercorrePorLitro)

		distanciaPercorrePorLitro = Matematica.arredondar(distanciaPercorrePorLitro, 2)

		distanciaMaximaAutomovelAtinge = (quantidadeAbastecidaAutomovel * distanciaPercorrePorLitro)
		distanciaMaximaAutomovelAtinge = Matematica.arredondar(distanciaMaximaAutomovelAtinge, 2)
		
		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- O automóvel poderá atingir ", distanciaMaximaAutomovelAtinge,"km, com a quantide de ", quantidadeAbastecidaAutomovel,"L de combustível\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 846; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */