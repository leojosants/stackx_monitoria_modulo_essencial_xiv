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
	
	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao real arredondarValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne Matematica.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao vazio lerEntrada(real &variavel) {
		leia(variavel)
	}

	funcao real calcularTipoIngressoPopular(real publicoTotal) {
		retorne ((publicoTotal * 0.1) * 5.0)
	}

	funcao real calcularTipoIngressoGeral(real publicoTotal) {
		retorne ((publicoTotal * 0.5) * 10.0)
	}

	funcao real calcularTipoIngressoArquibancada(real publicoTotal) {
		retorne ((publicoTotal * 0.3) * 20.0)
	}

	funcao real calcularTipoIngressoCadeiras(real publicoTotal) {
		retorne ((publicoTotal * 0.1) * 30.0)
	}

	funcao real calcularTipoIngresso(caracter tipoIngresso, real publicoTotal) {		
		escolha(tipoIngresso) {
			caso 'P':
				retorne calcularTipoIngressoPopular(publicoTotal)
				
			caso 'G':
				retorne calcularTipoIngressoGeral(publicoTotal)
			
			caso 'A':
				retorne calcularTipoIngressoArquibancada(publicoTotal)

			caso 'C':
				retorne calcularTipoIngressoCadeiras(publicoTotal)
				
			caso contrario: 
				escreva("Opção indisponível para tipo de ingresso: ", tipoIngresso)
				retorne 0.0
		}
	}

	funcao real calcularRendaTotalJogo(real tipoIngressoPopular, real tipoIngressoGeral, real tipoIngressoArquibancada, real tipoIngressoCadeiras) {
		retorne (tipoIngressoPopular + tipoIngressoGeral + tipoIngressoArquibancada + tipoIngressoCadeiras)
	}

	funcao vazio exibirDados(real rendaTotalJogo) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Renda total do jogo de futebol ..: R$", rendaTotalJogo, "\n\n")
	}
	
	funcao programaPrincipal() {	
		real publicoTotalJogoFutebol = 0.0
		real rendaTotalJogo = 0.0
		real tipoIngressoPopular = 0.0
		real tipoIngressoGeral = 0.0
		real tipoIngressoArquibancada = 0.0
		real tipoIngressoCadeiras = 0.0
		caracter popular = 'P'
		caracter geral = 'G'
		caracter arquibancada = 'A'
		caracter cadeiras = 'C'

		
		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		exibirMensagem("- Informe o público total de um jogo de futebol ..: ")
		lerEntrada(publicoTotalJogoFutebol)

		tipoIngressoPopular = calcularTipoIngresso(popular, publicoTotalJogoFutebol)
		tipoIngressoPopular = arredondarValor(tipoIngressoPopular, 2)
				
		tipoIngressoGeral = calcularTipoIngresso(geral, publicoTotalJogoFutebol)
		tipoIngressoGeral = arredondarValor(tipoIngressoGeral, 2)
		
		tipoIngressoArquibancada = calcularTipoIngresso(arquibancada, publicoTotalJogoFutebol)
		tipoIngressoArquibancada = arredondarValor(tipoIngressoArquibancada, 2)
		
		tipoIngressoCadeiras = calcularTipoIngresso(cadeiras, publicoTotalJogoFutebol)
		tipoIngressoCadeiras = arredondarValor(tipoIngressoCadeiras, 2)
		
		rendaTotalJogo = calcularRendaTotalJogo(tipoIngressoPopular, tipoIngressoGeral, tipoIngressoArquibancada, tipoIngressoCadeiras)
		rendaTotalJogo = arredondarValor(rendaTotalJogo, 2)
		
		exibirDados(rendaTotalJogo)
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
 * @POSICAO-CURSOR = 3313; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */