const readline = require('readline');
const fileSystem = require('fs');
const EventEmitter = require('events');
const eventEmitter = new EventEmitter();

const leitor = readline.createInterface(
    {
        input: process.stdin,
        output: process.stdout,
    }
);


/* - - - - - - - - - - funções - - - - - - - - - - */
function programaPrincipal() {
    leitor.question(
        "\nDigite o caminho do arquivo [exemplo.txt]: ", (caminhoArquivo) => {

            const caminhoTratado = caminhoArquivo.replaceAll(" ", "")
                .replace(/[0-9]/g, '')
                .toLowerCase()
                .trim();

            console.time("-> Quanto tempo demorou a execução");

            async function lerArquivo() {
                await fileSystem.readFile(
                    caminhoTratado, "utf8", (erro, dados) => {
                        if (erro) {
                            console.log("-> erro, arquivo não encontrado!");
                            leitor.close();
                            return;
                        }

                        const linhasArquivo = dados.split(/\r?\n/);
                        let totalLinhasSomenteNumeros = 0;
                        let totalSomenteNumerosNaLinha = 0;
                        let totalLinhasTexto = 0;
                        const numerosArquivo = [];

                        for (let indice = 0; indice < linhasArquivo.length; indice++) {
                            const stringPossuiSomenteNumero = /^\d+$/.test(linhasArquivo[indice]);
                            const stringNaoPossuiSomenteNumero = !(/^\d+$/.test(linhasArquivo[indice]));

                            if (stringPossuiSomenteNumero) {
                                totalLinhasSomenteNumeros++;
                                totalSomenteNumerosNaLinha += Number(linhasArquivo[indice]);
                            }

                            if (stringNaoPossuiSomenteNumero) {
                                totalLinhasTexto++;
                            }

                            numerosArquivo.push(
                                Number(linhasArquivo[indice].replace(/[^0-9]/g, ''))
                            );
                        }

                        const somaNumeros = numerosArquivo.reduce((acumulador, valor) => acumulador + valor);

                        const resumo = {
                            totalLinhasSomenteNumeros,
                            totalSomenteNumerosNaLinha,
                            totalLinhasTexto,
                            somaNumeros,
                            caminhoTratado,
                        };

                        eventEmitter.emit("exibirResumo", resumo);

                        console.timeEnd("-> Quanto tempo demorou a execução");

                        solicitarPerguntaNovaExecucao();
                    }
                );
            }

            lerArquivo();
        }
    );
}

function exibirResumo(resumo) {
    console.log(`\n-> Resumo do arquivo "${resumo.caminhoTratado}"`);

    console.table(
        [
            ["Conte quantas linhas possuem somente números", resumo.totalLinhasSomenteNumeros],
            ["Soma dos números destas linhas", resumo.totalSomenteNumerosNaLinha],
            ["Quantas linhas possuem texto", resumo.totalLinhasTexto],
            ["Soma dos números dentro deste arquivo", resumo.somaNumeros],
            ["Quantas linhas continham texto", resumo.totalLinhasTexto],
        ]
    );
}

function solicitarPerguntaNovaExecucao() {
    leitor.question(
        "\nQuer executar novamente [S/N]? ", (resposta) => {
            const respostaTratada = resposta.replaceAll(" ", "")
                .replace(/[0-9]/g, '')
                .toUpperCase()
                .trim()
                .charAt(0);

            if (respostaTratada === "S") {
                eventEmitter.emit("recebeuRespostaSim");
            }
            else if (respostaTratada === "N") {
                eventEmitter.emit("recebeuRespostaNao");
            }
            else {
                eventEmitter.emit("recebeuRespostaInvalida");
            }
        }
    )
}

function processarRespostaNao() {
    console.log("Programa finalizado!");
    leitor.close();
}

function processarRespostaInvalida() {
    console.log("Responda somente [S/N]");
    solicitarPerguntaNovaExecucao();
}


/* - - - - - - - - - - eventos - - - - - - - - - - */
eventEmitter.on(
    "exibirResumo", (resumo) => {
        exibirResumo(resumo);
    }
);

eventEmitter.on(
    "recebeuRespostaSim", () => {
        programaPrincipal();
    }
);

eventEmitter.on(
    "recebeuRespostaNao", () => {
        processarRespostaNao();
    }
);

eventEmitter.on(
    "recebeuRespostaInvalida", () => {
        processarRespostaInvalida();
    }
);


/* - - - - - - - - - - programa principal - - - - - - - - - - */
programaPrincipal();