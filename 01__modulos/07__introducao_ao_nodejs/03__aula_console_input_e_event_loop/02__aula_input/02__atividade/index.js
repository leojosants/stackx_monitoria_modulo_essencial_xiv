const readline = require("readline");
const fileSystem = require("fs");

const leitor = readline.createInterface(
    {
        input: process.stdin,
        output: process.stdout,
    }
);


leitor.question(
    "\nDigite um número ..: ", (resposta) => {
        if (isNaN(resposta)) {
            console.log("Informe somente número!")
            leitor.close();
            return;
        }

        fileSystem.readFile(
            "arquivo.txt", "utf-8", (err, data) => {
                if (err) {
                    console.error(err);
                    return;
                }

                let somaTotal = Number(resposta);
                const linhasArquivo = data.trim().split(/\r?\n/);

                const numeros = linhasArquivo.map(
                    (linha) => Number(linha)
                );

                for (let i = 0; i < numeros.length; i++) {
                    somaTotal += numeros[i];
                }

                console.log(somaTotal);
            }
        );

        leitor.close();
    }
);