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

		/*
		programa
 {
	
	inclua biblioteca Texto --> tx
	inclua biblioteca Matematica --> mat
		
	funcao inicio()
 {
		const inteiro QUANTIDADE_NOTAS = 3
		const inteiro QUANTIDADE_DIGITOS = 3
		real vetorNotas[QUANTIDADE_NOTAS]
		real somaNotas = 0.0
		real mediaNotas = 0.0
		inteiro quantidadeDigitosCodigo = 0
		cadeia codigoAluno = ""
	
		faca {
			escreva("Informe o código do aluno com 3 dígitos [xxx]: ")
			leia(codigoAluno)

			quantidadeDigitosCodigo = tx.numero_caracteres(codigoAluno)

			logico quantidadeDigitosCodigoEh_1 = (quantidadeDigitosCodigo == 1)
			logico quantidadeDigitosCodigoEh_2 = (quantidadeDigitosCodigo == 2)
			logico quantidadeDigitosCodigoEh_3 = (quantidadeDigitosCodigo == 3)
			logico codigoAlunoIgual_0 = (codigoAluno == "0")
			logico codigoAlunoIgual_00 = (codigoAluno == "00")
			logico codigoAlunoIgual_000 = (codigoAluno == "000")

			se(
				(quantidadeDigitosCodigoEh_1 ou quantidadeDigitosCodigoEh_2 ou quantidadeDigitosCodigoEh_3) e
				(codigoAlunoIgual_0 ou codigoAlunoIgual_00 ou codigoAlunoIgual_000)
			) {
				escreva("\n--> Programa encerrado <--\n")
				retorne
			}

			se(quantidadeDigitosCodigo < QUANTIDADE_DIGITOS ou quantidadeDigitosCodigo > QUANTIDADE_DIGITOS) {
				escreva("--> A quantidade de dígitos deve ser somente de 3, tente novamente.\n\n")				
			}			
		}
		enquanto(quantidadeDigitosCodigo < QUANTIDADE_DIGITOS ou quantidadeDigitosCodigo > QUANTIDADE_DIGITOS)

		escreva("\nInforme 3 notas do aluno \n")

		para(inteiro contador = 0; contador < QUANTIDADE_NOTAS; contador++) {
			real nota = 0.0
			
			escreva("Digite a ", (contador + 1), "ª nota: ")
			leia(nota)

			nota = mat.arredondar(nota, 2)

			vetorNotas[contador] = nota
		}

		para(inteiro contador = 0; contador < QUANTIDADE_NOTAS; contador++) {
			somaNotas = somaNotas + vetorNotas[contador] 
		}

		somaNotas = mat.arredondar(somaNotas, 2)

		mediaNotas = somaNotas / QUANTIDADE_NOTAS
		mediaNotas = mat.arredondar(mediaNotas, 2)

		escreva("\nDados do aluno\n")
		escreva("Código ..: ", codigoAluno, "\n")
		escreva("Média ...: ", mediaNotas, "\n\n")
	}
}



		*/
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