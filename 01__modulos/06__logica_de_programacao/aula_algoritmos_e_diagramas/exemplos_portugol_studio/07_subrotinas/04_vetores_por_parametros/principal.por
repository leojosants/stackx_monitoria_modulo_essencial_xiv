programa {
	inclua biblioteca Util --> util
	
	funcao inicio() {
		// Declara um vetor com 10 posições
		inteiro vet [10]
		
		preenche (vet)
		
		escreva("Vetor antes da ordenação:\n")
		
		exibe(vet)

		ordena(vet)

		escreva("\n\nVetor após a ordenação:\n")		
		
		exibe(vet)

		escreva("\n")
	}

	// Preenche o vetor com números aleatórios. Neste caso, o vetor é
	// passado por referência
	// vetores não precisam do & pois eles sempre são passados por referencia automaticamente
	funcao preenche (inteiro v[]) {
		para (inteiro i = 0; i < 10; i++) {
			v[i] = util.sorteia (1, 100)			
		}
	}
	
	funcao exibe (inteiro v[]) {
		para(inteiro i = 0; i < 10; i++) {
			escreva (v[i], " ")
		}
	}

	// Ordena o vetor em ordem crescente.
	funcao ordena (inteiro v[]) {
		para (inteiro i = 0; i < 10; i++) {
			para (inteiro j = 0; j < 9; j++) {
				se (v [j] > v[j+1]) {
					troca (v, j, j+1)
				}
			}
		}
	}
	
	funcao troca (inteiro v[], inteiro a, inteiro b) {
		inteiro c = v[a]
		v[a] = v[b]
		v[b] = c
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1013; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */