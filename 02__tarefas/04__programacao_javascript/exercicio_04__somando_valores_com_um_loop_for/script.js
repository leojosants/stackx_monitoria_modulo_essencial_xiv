/**
 * Somando Valores com um Loop for
 * Crie um array com vários números inteiros.
 * Use um loop for somar todos os números do array.
 * Exiba o resultado da soma no console.
 * Exemplo:
 *  Entrada array = [5, 5, 10]
 *  Saída esperada: 20
 */

function somarValoresVetor(numeros) {
    let soma = 0;

    for (let numero of numeros) {
        soma += numero;
    }

    return soma;
}

function exibirResultadoFinal(somaValores) {
    console.log(somaValores);
}


const numeros = [
    3, 6, 2, 12, 45, 72
];

let somaValores = 0;


somaValores = somarValoresVetor(numeros);

exibirResultadoFinal(somaValores);