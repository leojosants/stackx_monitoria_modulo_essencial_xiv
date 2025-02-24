console.time();

console.log("\nInício do código! \n");

async function exibirNome(nome) {
    const rand = Math.random() * 5000;

    console.log(`${nome} em ${rand} segundos`);

    await setTimeout(
        () => {
            console.log(`Nome ..: ${nome}`);
        }, rand
    );
}

exibirNome("Fábio");
exibirNome("João");
exibirNome("José");

console.log("\nFim do código! \n")

console.timeEnd();
