/*
Construa um algoritmo que leia 4 notas e mostre a média.
*/

programa {	
	inclua biblioteca Util

	funcao inicio() {
		real notas[4]
		real somaNotas
		real mediaNotas
		inteiro contador_1
		inteiro contador_2
		inteiro totalPosicoes

		totalPosicoes = Util.numero_elementos(notas)

		// preencheu o vetor
		para(contador_1 = 0; contador_1 < totalPosicoes; contador_1++) {
			escreva("Digite a ", (contador_1 + 1), "ª nota: ")
			leia(notas[contador_1])
		}

		escreva("\n")

		somaNotas = 0.0

		// exibir as notas
		para(contador_2 = 0; contador_2 < totalPosicoes; contador_2++) {
			somaNotas = somaNotas + notas[contador_2]
		}

		mediaNotas = somaNotas / totalPosicoes

		escreva("Média: ", mediaNotas, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 241; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */