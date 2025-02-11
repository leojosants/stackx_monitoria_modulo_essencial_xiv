/**
 * Elaborar um algoritmo que lê o público total de um jogo de futebol e fornece a renda do jogo.
 * Sabendo-se que havia 4 tipos de ingressos assim distribuídos:
 * 	- Popular 10% do público a R$ 5,00
 * 	- Geral 50% do público a R$ 10,00
 * 	- Arquibancada 30% do público a R$ 20,00 
 * 	- Cadeiras 10% do público a R$ 30,00
 */

programa { 	
	inclua biblioteca Matematica
	
	
	funcao inicio() {	
		real publicoTotalJogoFutebol = 0.0
		real rendaTotalJogo = 0.0
		real tipoIngressoPopular = 0.0
		real tipoIngressoGeral = 0.0
		real tipoIngressoArquibancada = 0.0
		real tipoIngressoCadeiras = 0.0

		
		escreva("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		escreva("- Informe o público total de um jogo de futebol ..: ")
		leia(publicoTotalJogoFutebol)

		tipoIngressoPopular = ((publicoTotalJogoFutebol * 0.1) * 5.0)
		tipoIngressoPopular = Matematica.arredondar(tipoIngressoPopular, 2)
		
		tipoIngressoGeral = ((publicoTotalJogoFutebol * 0.5) * 10.0)
		tipoIngressoGeral = Matematica.arredondar(tipoIngressoGeral, 2)
		
		tipoIngressoArquibancada = ((publicoTotalJogoFutebol * 0.3) * 20.0)
		tipoIngressoArquibancada = Matematica.arredondar(tipoIngressoArquibancada, 2)
		
		tipoIngressoCadeiras = ((publicoTotalJogoFutebol * 0.1) * 30.0)
		tipoIngressoCadeiras = Matematica.arredondar(tipoIngressoCadeiras, 2)

		rendaTotalJogo = (tipoIngressoPopular + tipoIngressoGeral + tipoIngressoArquibancada + tipoIngressoCadeiras)
		rendaTotalJogo = Matematica.arredondar(rendaTotalJogo, 2)
		
		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Renda total do jogo de futebol ..: R$", rendaTotalJogo, "\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */