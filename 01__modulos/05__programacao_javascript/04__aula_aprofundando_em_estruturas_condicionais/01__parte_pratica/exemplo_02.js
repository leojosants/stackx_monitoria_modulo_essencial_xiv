/**
 * Exemplo condições aninhadas
 */


const idade = 20;
const temCNH = true;


if (idade >= 18) {
    if (temCNH) {
        console.log("Pode dirigir.");
    }
    else {
        console.log("Precisa tirar CNH.");
    }
}
else {
    console.log("Ainda não pode dirigir.");
}