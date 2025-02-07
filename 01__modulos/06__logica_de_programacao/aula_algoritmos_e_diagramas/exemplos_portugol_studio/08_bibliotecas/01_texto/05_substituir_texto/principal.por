programa {
	inclua biblioteca Texto --> tx
	
	funcao inicio() {
		cadeia texto = "PATO"
		cadeia substituicao

		/*
		 * Ao substituir um texto, devem ser considerados os seguintes aspectos:
		 * 
		 * 1 - A função "substituir" não altera o valor da variável original, mas 
		 *     retorna um novo valor. Desta forma, a variável "texto" vai possuir
		 *     sempre o valor "PATO", a não ser que o valor retornado pela função
		 *     seja atribuído à ela
		 *     
		 * 2 - A função "substituir" diferencia letras maíusculas e minúsculas na
		 *     hora de procurar o texto que se quer substituir
		 */

		//-----------------------------------------------------------------------------------//

		// Aqui substituímos a sequência de caracteres "PA" pela
		// sequência de caracteres "RA" para formar a palavra "RATO"
		substituicao = tx.substituir(texto, "PA", "RA")
		
		// A variável "texto" manteve seu valor
		escreva(texto) 					
		
		// A variável "substituicao" possui o novo valor
		escreva(" --> ", substituicao, "\n") 	
		
		//-----------------------------------------------------------------------------------//

		// Aqui substituímos a sequência de caracteres "PA" pela
		// sequência de caracteres "GA" para formar a palavra "GATO"
		substituicao = tx.substituir(texto, "PA", "GA")
		
		// A variável "texto" manteve seu valor
		escreva(texto)
		
		// A variável "substituicao" possui o novo valor
		escreva(" --> ", substituicao, "\n")

		//-----------------------------------------------------------------------------------//

		// Aqui substituímos a sequência de caracteres "A" pela
		// sequência de caracteres "AR" para formar a palavra "PARTO"
		substituicao = tx.substituir(texto, "A", "AR")

		// A variável "texto" manteve seu valor
		escreva(texto)
		
		// A variável "substituicao" possui o novo valor
		escreva(" --> ", substituicao, "\n")

		//-----------------------------------------------------------------------------------//
		
		// Aqui substituímos a sequência de caracteres "AT" pela
		// sequência de caracteres "ELICAN" para formar a palavra "PELICANO"
		substituicao = tx.substituir(texto, "AT", "ELICAN")

		// A variável "texto" manteve seu valor
		escreva(texto)
		
		// A variável "substituicao" possui o novo valor
		escreva(" --> ", substituicao, "\n")
		
		//-----------------------------------------------------------------------------------//

		// Aqui substituímos a sequência de caracteres "TO" pela
		// sequência de caracteres "MONHA" para formar a palavra "PAMONHA"
		substituicao = tx.substituir(texto, "TO", "MONHA")
		
		// A variável "texto" manteve seu valor
		escreva(texto)
		
		// A variável "substituicao" possui o novo valor
		escreva(" --> ", substituicao, "\n")

		//-----------------------------------------------------------------------------------//

		// Aqui realizamos uma substituição, mas como informamos uma sequência de caracteres
		// em letras minúsculas, a substituição não irá ocorrer
		substituicao = tx.substituir(texto, "to", "MONHA")
		
		// A variável "texto" manteve seu valor
		escreva(texto)
		
		// A variável "substituicao" manteve seu valor
		escreva(" --> ", substituicao, "\n")

		//-----------------------------------------------------------------------------------//
		
		// Aqui realizamos uma substituição, mas como informamos uma sequência de caracteres
		// que não existe no texto, a substituição não irá ocorrer
		substituicao = tx.substituir(texto, "LI", "MA")
		
		// A variável "texto" manteve seu valor
		escreva(texto) 
		
		// A variável "substituicao" manteve seu valor
		escreva(" --> ", substituicao, "\n")

		//-----------------------------------------------------------------------------------//


		// Aqui realizamos uma substituição e atribuímos o valor retornado à
		// variável "texto"
		texto = tx.substituir(texto, "PA", "LAGAR")
		
		// A variável "texto" possui o novo valor
		escreva(texto) 
		
		// A variável "substituicao" manteve seu valor
		escreva(" --> ", substituicao, "\n")

		//-----------------------------------------------------------------------------------//
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4102; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */