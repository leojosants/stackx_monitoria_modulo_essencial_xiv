/**
 * Construa um algoritmo que calcule a média aritmética das 3 notas dos alunos de uma classe. 
 * O algoritmo deverá ler, além das notas, o código (de três dígitos) do aluno e deverá ser encerrado quando o código for igual a zero.
 */

programa { 			
	inclua biblioteca Texto
	inclua biblioteca Matematica

	
	funcao inteiro pegarNumeroCaracteres(cadeia codigoAluno) {
		retorne Texto.numero_caracteres(codigoAluno)
	}
	
	funcao vazio exibirMensagem(cadeia texto) {
		escreva(texto)
	}

	funcao vazio lerEntradaCadeia(cadeia &variavel) {
		leia(variavel)
	}

	funcao vazio lerEntradaReal(real &variavel) {
		leia(variavel)
	}

	funcao real arredondarValor(real valor, inteiro quantidadeCasasDecimais) {
		retorne Matematica.arredondar(valor, quantidadeCasasDecimais)
	}

	funcao vazio exibirDados(cadeia codigoAluno, real mediaNotasAluno) {
		exibirMensagem("\n\n-=-=-=-=-=-=-=-=-=-=- Exibindo dados -=-=-=-=-=-=-=-=-=-=- \n\n")
		escreva("- Código do aluno ..: ", codigoAluno, "\n")
		escreva("- Média  do aluno ..: ", mediaNotasAluno, "\n\n")
	}

	funcao logico validarCodigoAluno(cadeia codigoAluno, inteiro quantidadeCaracteresCodigoAluno) {
		logico codigoAlunoValido = falso
		logico quantidadeCaracteresEhTres = ( (quantidadeCaracteresCodigoAluno == 3 ) )

		se (quantidadeCaracteresEhTres) {
			codigoAlunoValido = verdadeiro
		}

		retorne codigoAlunoValido
	}

	funcao cadeia solicitarCodigoAluno(inteiro &quantidadeCaracteresCodigoAluno, logico &codigoAlunoValido) {
		cadeia codigoAluno = ""

		faca {
			exibirMensagem("- Informe o código do aluno com 3 dígitos [xxx] ..: ")
			lerEntradaCadeia(codigoAluno)
	
			quantidadeCaracteresCodigoAluno = pegarNumeroCaracteres(codigoAluno)

			codigoAlunoValido = validarCodigoAluno(codigoAluno, quantidadeCaracteresCodigoAluno) 
	
			se (codigoAlunoValido == falso) {
				exibirMensagem("  --> A quantidade de dígitos deve ser somente 3, tente novamente. \n\n")
			}
		}
		enquanto(codigoAlunoValido == falso)

		retorne codigoAluno
	}

	funcao vazio solicitarNotasPreencherVetorNotasAluno(inteiro quantidadeNotas, real &vetorNotasAluno[]) {
		para(inteiro contador = 0; contador < quantidadeNotas; contador++) {
			real nota = 0.0
			
			escreva("  ", (contador + 1), "ª nota ..: ")
			lerEntradaReal(nota)

			nota = arredondarValor(nota, 2)
			
			vetorNotasAluno[contador] = nota
		}
	}

	funcao real calcularSomaNotasAluno(inteiro quantidadeNotas, real vetorNotasAluno[]) {
		real soma = 0.0

		para(inteiro contador = 0; contador < quantidadeNotas; contador++) {
			soma += vetorNotasAluno[contador]
		}
		
		retorne soma
	}

	funcao real calcularMediaNotasAluno(real somaNotasAluno, inteiro quantidadeNotas) {
		retorne (somaNotasAluno / quantidadeNotas)
	}
	
	funcao programaPrincipal() {	
		const inteiro quantidadeNotas = 3
		inteiro quantidadeCaracteresCodigoAluno = 0
		cadeia codigoAluno = ""
		real vetorNotasAluno[quantidadeNotas]
		real somaNotasAluno = 0.0
		real mediaNotasAluno = 0.0
		logico codigoAlunoValido = falso

		
		exibirMensagem("\n -=-=-=-=-=-=-=-=-=-=- Solicitando dados -=-=-=-=-=-=-=-=-=-=- \n\n")

		codigoAluno = solicitarCodigoAluno(quantidadeCaracteresCodigoAluno, codigoAlunoValido)

		exibirMensagem("\n- Informe 3 notas do aluno \n")

		solicitarNotasPreencherVetorNotasAluno(quantidadeNotas, vetorNotasAluno)

		somaNotasAluno = calcularSomaNotasAluno(quantidadeNotas, vetorNotasAluno)

		somaNotasAluno = arredondarValor(somaNotasAluno, 2)

		mediaNotasAluno = calcularMediaNotasAluno(somaNotasAluno, quantidadeNotas) 
		mediaNotasAluno = arredondarValor(mediaNotasAluno, 2)
		
		exibirDados(codigoAluno, mediaNotasAluno)
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
 * @POSICAO-CURSOR = 3670; 
 * @DOBRAMENTO-CODIGO = [10, 14, 18, 22, 26, 30, 36, 47, 67];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */