programa {	
	inclua biblioteca Util
	inclua biblioteca Matematica
	
	funcao inicio() {
		const real NOTA_APROVACAO = 7.0
		cadeia nomes[3]
		cadeia situacao
		real notas[3][3]
		real media[3]
		real soma
		inteiro contador_1
		inteiro contador_2
		inteiro tamanhoVetorNomes = Util.numero_elementos(nomes)
		inteiro tamanhoVetorNotas = Util.numero_elementos(nomes)

		escreva("\n-=-=-=- Cadastro de Alunos e Notas -=-=-=-\n\n")

		para (contador_1 = 0; contador_1 < tamanhoVetorNomes; contador_1++) {
			escreva("Informe os dados do ", (contador_1 + 1), "° aluno\n")
			
			escreva("- Nome .....: ")
			leia(nomes[contador_1])

			soma = 0.0

			para (contador_2 = 0; contador_2 < tamanhoVetorNotas; contador_2++) {
				escreva("- ", (contador_2 + 1), "ª nota ..: ")
				leia(notas[contador_1][contador_2])

				soma += notas[contador_1][contador_2]
			}

			escreva("\n")

			media[contador_1] = soma / tamanhoVetorNomes
		}

		escreva("Relação de alunos cadastrados\n")
		
		para (contador_1 = 0; contador_1 < tamanhoVetorNomes; contador_1++) {
			se (media[contador_1] >= NOTA_APROVACAO) {
				situacao = "Aprovado"
			}
			senao {
				situacao = "Reprovado"
			}

			media[contador_1] = Matematica.arredondar(media[contador_1], 2)

			escreva("- Nome ......: ", nomes[contador_1], "\n")	
			escreva("- Média .....: ", media[contador_1], "\n")
			escreva("- Situação ..: ", situacao, "\n\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1195; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */