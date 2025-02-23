function exercicio01() {
    /**
     * Criar um array com 5 nomes de frutas.
     * Adicione duas novas frutas ao final e outra ao início.
     * Remova a última fruta e exiba o array final no console
     */

    const frutas = ["Banana", "Macã", "Mamão", "Pêra", "Uva"];
    let frutaRemovida;

    frutas.push("manga", "melancia");
    frutas.unshift("Goiaba");
    frutaRemovida = frutas.pop();

    return frutas;
};
// console.log(exercicio01());


function exercicio02() {
    /**
     * Crie um array com números e verifique se um número específico está presente usando o método *includes*
     * Se o número estiver presente, exiba uma mansagem no console
     */

    const numeros = [28, 46, 95, 36, 65, 52, 46, 22, 41];
    const numeroBuscado = 95
    const numeroExisteArray = numeros.includes(numeroBuscado);

    if (numeroExisteArray) {
        return "O número existe no array!";
    }

    return "O número não existe no array!"

};
// console.log(exercicio02());


function exercicio03() {
    /**
     * Crie um array com nome de pessoas.
     * Percorra o array usando FOR OF.
     * Exibe uma saudação personalizada para cada nome.
     */

    const nomes = ["João", "Júlia", "Mara", "José", "Margarida", "Felipe"];


    for (const nome of nomes) {
        console.log(`Olá ${nome}, seja bem-vindo(a)!`);
    }
};
// exercicio03();


function exercicio04() {
    /**
     * Crie um array com valores duplicados.
     * Remova os duplicados e exiba o array final
     */

    const valoresDuplicados = [3, 4, 6, 12, 9, 4, 3, 8, 2, 9, 7, 0, 12];
    const valoresUnicos = [];


    for (let i = 0; i < valoresDuplicados.length; i++) {
        if (!valoresUnicos.includes(valoresDuplicados[i])) {
            valoresUnicos.push(valoresDuplicados[i]);
        }
    }

    return valoresUnicos;
};
// console.log(exercicio04());


function exercicio05() {
    /**
     * Crie um array vazio.
     * Adicione de 1 a 10 dinamicamente usando um loop for.
     * Exiba o array final.
     */

    const numeros = [];


    for (let i = 1; i <= 10; i++) {
        numeros.push(i);
    }

    return numeros;
};
console.log(exercicio05());