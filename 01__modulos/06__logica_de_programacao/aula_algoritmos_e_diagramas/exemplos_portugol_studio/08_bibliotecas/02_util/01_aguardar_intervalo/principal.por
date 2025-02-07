programa {
	inclua biblioteca Util --> u
	
	funcao inicio() {
		para (inteiro contador = 10; contador >= 0; contador--) {
			limpa()
			
			escreva("Lançando o foguete em: ", contador)

			/* Faz com que o programa espere 1 segundo antes de fazer a próxima contagem.
			 *  
			 * O intervalo que o programa deve aguardar é informado sempre em milissegundos. 
			 * Como 1 segundo equivale a 1000 milissegundos, neste caso, informamos o valor 
			 * 1000.
			 * 
			 * Para fazer com que o programa aguarde apenas meio segundo, podemos informar o 
			 * valor 500, isto também fará com que a contagem seja mais rápida.
			 */
			u.aguarde(1000)
		}

		limpa()
		
		escreva("O foguete foi lançado!!\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 662; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */