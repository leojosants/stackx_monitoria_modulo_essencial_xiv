/**
 * Removendo e Substituindo Elementos com Splice
 * Crie um array com 6 nomes de animais.
 * Use o método splice para remover 2 animais a partir da terceira posição e substituí-los por outros 2 animais diferentes.
 * Exiba o array resultante no console.
 * Exemplo:
 *  Entrada array = [leão, capivara, calopsita, onça, gavião, porco]
 *  Saída esperada: leão, capivara, calopsita, tigre, cavalo, porco.
 */

function executarSplice(vetorAlterado, aPartirPosicao, quatidadeRemocao, ...elementosAdicionar) {
    return vetorAlterado.splice(aPartirPosicao, quatidadeRemocao, elementosAdicionar);
};

function exibirResultadoFinal(animais) {
    console.log(animais.flat());
};


const animais = [
    "Leão", "Capivara", "Calopsita", "Onça", "Gavião", "Porco"
];

executarSplice(animais, 3, 2, "tigre", "cavalo");

exibirResultadoFinal(animais);