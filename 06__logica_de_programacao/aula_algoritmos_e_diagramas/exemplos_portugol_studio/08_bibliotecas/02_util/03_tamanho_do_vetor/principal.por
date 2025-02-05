programa {
	inclua biblioteca Util --> u
	
	funcao inicio() {
		// Cria um vetor com 5 elementos
		// inteiro vet[] = { 4, 2, 9, 3, 8 }

		// Experimente substituir o vetor acima por este e veja que 
		// o programa consegue percorrer normalmente o novo vetor		 
		inteiro vet[] = { 4, 2, 9, 3, 8, 6, 5, 6, 2, 3, 9, 1 }

		inteiro elementos = u.numero_elementos(vet)

		escreva("O vetor possui ", elementos, " elementos:\n\n")

		// Utilizamos o valor obtido anteriormente para percorrer
		// o vetor e exibir seus valores
		para (inteiro elemento = 0; elemento < elementos; elemento++) {
			se (elemento == 0) {
				escreva("{ ")
			}
			
			escreva(vet[elemento])

			se (elemento < elementos - 1) {
				escreva(", ")
			}

			se (elemento == elementos - 1) {
				escreva(" }")
			}
		}

		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 102; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */