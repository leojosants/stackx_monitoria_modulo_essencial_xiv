const idade = 25;
const idadeEhMaiorQue18EMenorQue25 = ((idade > 18) && (idade < 25));
const idadeMenor18OuEstritamenteIgual20 = ((idade < 18) || (idade === 20));
const idadeNaoEhMaior30 = (!(idade > 30));

console.log(idadeEhMaiorQue18EMenorQue25);
console.log(idadeMenor18OuEstritamenteIgual20);
console.log(idadeNaoEhMaior30);