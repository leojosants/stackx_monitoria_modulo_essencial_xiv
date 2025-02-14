programa {	
	inclua biblioteca Util
	
	funcao inicio() {
		cadeia nomes[3]
		inteiro quantidadeAlunos
		inteiro contador
		inteiro tamanhoVetorNomes = Util.numero_elementos(nomes)

		escreva("\n-=-=-=- Cadastro de Alunos -=-=-=-\n\n")

		para(quantidadeAlunos = 0; quantidadeAlunos < tamanhoVetorNomes; quantidadeAlunos++) {
			escreva("Digite o nome do ", (quantidadeAlunos + 1), "° aluno(a): ")
			leia(nomes[quantidadeAlunos])
		}

		escreva("\n", tamanhoVetorNomes, " alunos cadastrados com sucesso!\n")

		escreva("\nRelação de alunos cadastrados\n")
		
		para(contador = 0; contador < tamanhoVetorNomes; contador++) {
			escreva("- Aluno na posição [", contador, "]: ", nomes[contador], "\n")	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 539; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */