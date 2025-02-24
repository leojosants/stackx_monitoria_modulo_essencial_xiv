
const readline = require("readline");

const leitor = readline.createInterface(
    {
        input: process.stdin,
        output: process.stdout,
    }
);


leitor.question(
    "\nQual módulo para ler dados no nodeJs? ", (resposta) => {
        console.log(`\nSua resposta..: ${resposta}`);
        leitor.close();
    }
);