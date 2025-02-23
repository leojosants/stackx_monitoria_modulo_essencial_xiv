/**
 * Concatenação de Arrays
 * Crie dois arrays, um com nomes de cidades brasileiras e outro com nomes de cidades estrangeiras.
 * Utilize o método concat para unir esses dois arrays em um único.
 * Exiba o array resultante no console.
 */


function unirCidades(vetorCidadesA, vetorCidadesB) {
    return vetorCidadesA.concat(vetorCidadesB);
};

function exibirResultadoFinal(uniaoCidades) {
    console.log(uniaoCidades);
}


const cidadesBrasileiras = [
    "São Paulo", "Rio de Janeiro", "Belo Horizonte", "Salvador", "Brasília",
    "Curitiba", "Porto Alegre", "Recife", "Fortaleza", "Manaus"
];

const cidadesEstrangeiras = [
    "Nova York", "Londres", "Paris", "Tóquio", "Berlim",
    "Sydney", "Toronto", "Madri", "Roma", "Cidade do Cabo"
];

const uniaoCidades = unirCidades(cidadesBrasileiras, cidadesEstrangeiras);


exibirResultadoFinal(uniaoCidades);