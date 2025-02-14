/**
 * Construa um algoritmo que calcule a média aritmética das 3 notas dos alunos de uma classe. 
 * O algoritmo deverá ler, além das notas, o código (de três dígitos) do aluno e deverá ser encerrado quando o código for igual a zero.
 */

programa { 			
	inclua biblioteca Texto
	inclua biblioteca Matematica

	
	funcao inicio() {	
		const inteiro quantidadeNotas = 3
		inteiro quantidadeCaracteresCodigoAluno = 0
		cadeia codigoAluno = ""
		real vetorNotasAluno[quantidadeNotas]
		real somaNotasAluno = 0.0
		real mediaNotasAluno = 0.0

		
		escreva("\n -=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		faca {
			escreva("- Informe o código do aluno com 3 dígitos [xxx] ..: ")
			leia(codigoAluno)
	
			quantidadeCaracteresCodigoAluno = Texto.numero_caracteres(codigoAluno)
	
			se (
				(quantidadeCaracteresCodigoAluno < 3) ou (quantidadeCaracteresCodigoAluno > 3)
			) {
				escreva("  --> A quantidade de dígitos deve ser somente 3, tente novamente. \n\n")
			}
		}
		enquanto(
			(quantidadeCaracteresCodigoAluno < 3) ou (quantidadeCaracteresCodigoAluno > 3)
		)

		escreva("\n- Informe 3 notas do aluno \n")

		para(inteiro contador = 0; contador < quantidadeNotas; contador++) {
			real nota = 0.0
			
			escreva("  ", (contador + 1), "ª nota ..: ")
			leia(nota)

			nota = Matematica.arredondar(nota, 2)
			
			vetorNotasAluno[contador] = nota
		}

		para(inteiro contador = 0; contador < quantidadeNotas; contador++) {
			somaNotasAluno += vetorNotasAluno[contador]
		}

		somaNotasAluno = Matematica.arredondar(somaNotasAluno, 2)

		mediaNotasAluno = (somaNotasAluno / quantidadeNotas)
		mediaNotasAluno = Matematica.arredondar(mediaNotasAluno, 2)
		
		escreva("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Código do aluno ..: ", codigoAluno, "\n")
		escreva("- Média  do aluno ..: ", mediaNotasAluno, "\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1846; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */