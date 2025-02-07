programa {
	inclua biblioteca Texto --> tx
	
	funcao inicio() {
		cadeia numero
		caracter digito
		logico binario = verdadeiro

		escreva("Informe um número no formato binário (Ex.: 1101001): ")
		leia(numero)

		// Usamos um laço para percorrer todos os caracteres da cadeia. Começando 
		// no caracter 0 e indo até o último caracter, tx.numero_caracteres(numero) - 1
		para (inteiro indice = 0; indice <= tx.numero_caracteres(numero) - 1; indice++) {
			// Obtemos o caracter na posição indicada pelo índice
			digito = tx.obter_caracter(numero, indice)

			// Verificamos o caracter nesta posição. Se não for 0 nem 1, 
			// então o número não é binário		
			se (digito != '0' e digito != '1') {
				binario = falso

				// Já sabemos que o número não é binário, então não precisamos continuar
				// verificando. Por isso interrompemos o laço com o comando "pare"
				pare
			}
		}

		limpa()

		se (binario) {
			escreva("O número informado é binário\n")
		}
		senao {
			escreva("O número informado não é binário\n")
		}
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1034; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */