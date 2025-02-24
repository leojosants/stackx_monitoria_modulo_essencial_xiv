const exemplo01 = () => {
    const minhaPromise = new Promise(
        (resolve, reject) => {
            setTimeout(
                () => {
                    const retorno = "minhaPromise foi resolvida";
                    resolve(retorno);
                }, 500
            );
        }
    );

    const a = minhaPromise;

    console.log(a);
};
// exemplo01();


const exemplo02 = () => {
    const minhaPromise = new Promise(
        (resolve, reject) => {
            setTimeout(
                () => {
                    const retorno = "minhaPromise foi resolvida";
                    resolve(retorno);
                }, 500
            );
        }
    );

    const testeMinhaPromise = async () => {
        const a = await minhaPromise;
        console.log(a);
    };

    testeMinhaPromise();
};
// exemplo02();


// sem tratamento de erro
const exemplo03 = () => {
    const minhaPromise = new Promise(
        (resolve, reject) => {
            setTimeout(
                () => {
                    const retorno = "erro qualquer";
                    reject(retorno);
                }, 500
            );
        }
    );

    const testeMinhaPromise = async () => {
        const a = await minhaPromise;
        console.log(a);
    };

    testeMinhaPromise();
};
// exemplo03();


// com tratamento de erro
const exemplo04 = () => {
    const minhaPromise = new Promise(
        (resolve, reject) => {
            setTimeout(
                () => {
                    const retorno = "erro qualquer";
                    reject(retorno);
                }, 500
            );
        }
    );

    const sucesso = () => {
        console.log("Sucesso");
    };

    const erro = () => {
        console.log("Erro");
    };

    minhaPromise.then(sucesso, erro);
};
exemplo04();