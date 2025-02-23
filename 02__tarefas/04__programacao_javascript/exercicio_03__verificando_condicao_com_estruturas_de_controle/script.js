/**
 * Verificando Condição com Estruturas de Controle
 * Crie um array com vários números, incluindo alguns maiores que 50.
 * Use estruturas de controle simples para verificar se há pelo menos um número maior que 50.
 * Exiba uma mensagem no console informando o resultado.
 * Exemplo:
 *  Entrada array = [10, 20, 30, 40, 60]
 *  Saída esperada: “O array possui 1 número maior que 50ˮ.
 */

function verificarQuantidadeOcorrenciasNumeroMaior50(vetor) {
    let contador = 0;

    for (let i = 0; i < vetor.length; i++) {
        if (vetor[i] > 50) {
            contador++;
        }
    }

    return contador;
};

function exibirResultadoFinal(mensagem) {
    console.log(mensagem);
};


const numeros = [
    10, 20, 30, 40, 60, 70
];

let contador = 0;
let mensagem = "";


contador = verificarQuantidadeOcorrenciasNumeroMaior50(numeros);

if (contador === 0) {
    mensagem = `O array não possui nenhum número maior que 50`;
}
else {
    mensagem = `O array possui ${contador} número(s) maior que 50`;
}

exibirResultadoFinal(mensagem);