const idade = 31;
const idadeEhMaior18MenorOuIgual30 = ((idade > 18) && (idade <= 30));

if (idadeEhMaior18MenorOuIgual30) {
    console.log("Idade está entre 18 e 30 anos");
}
else {
    console.log("Idade não está entre 18 e 30 anos");
}