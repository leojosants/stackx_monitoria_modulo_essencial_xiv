/*
Construa um algoritmo que leia 4 notas e mostre a média.
*/

programa {	
	inclua biblioteca Matematica
	inclua biblioteca Util

	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao inteiro pegarQuantidadeElementosVetor(real vetor[]) {
		retorne Util.numero_elementos(vetor)
	}

	funcao vazio solicitarNotas(inteiro contador, inteiro quantidadePosicoesVetor, real vetor[]) {
		para(contador; contador < quantidadePosicoesVetor; contador++) {
			escreva("- Digite a ", (contador + 1), "ª nota ..: ")
			leia(vetor[contador])
		}
	}

	funcao vazio somarNotasVetor(inteiro contador, inteiro quantidadePosicoesVetor, real &somaNotas, real vetor[]) {	
		para(contador; contador < quantidadePosicoesVetor; contador++) {
			somaNotas += vetor[contador]
		}
	}

	funcao real arredondarValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne Matematica.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao real calcularMedia(real somaNotas, inteiro quantidadePosicoesVetor) {
		retorne (somaNotas / quantidadePosicoesVetor)
	}

	funcao vazio exibirDados(real mediaNotas) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Média das notas recebidas ..: ", mediaNotas, "\n\n")
	}
	
	funcao inicio() {
		const inteiro QUANTIDADE_NOTAS = 4
		real notas[QUANTIDADE_NOTAS]
		real somaNotas = 0.0
		real mediaNotas = 0.0
		inteiro contador_1
		inteiro contador_2
		inteiro quantidadePosicoesVetorNotas = pegarQuantidadeElementosVetor(notas)
		

		exibirMensagem("\n-=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		solicitarNotas(contador_1 = 0, quantidadePosicoesVetorNotas, notas)

		somarNotasVetor(contador_2 = 0, quantidadePosicoesVetorNotas, somaNotas, notas)

		somaNotas = arredondarValor(somaNotas, 2)

		mediaNotas = calcularMedia(somaNotas, quantidadePosicoesVetorNotas)
		mediaNotas = arredondarValor(mediaNotas, 2)

		exibirDados(mediaNotas)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1933; 
 * @DOBRAMENTO-CODIGO = [12, 16, 23, 29, 33];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */