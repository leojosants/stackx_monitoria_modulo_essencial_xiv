
console.log("Estes são os livros que li este ano");

console.time("livros");

console.table(
    [
        {
            titulo: "Gatilhos mentais",
            author: "Gustavo Ferreira",
            ano: 2019,
            editora: "DVS",
        },
        {
            titulo: "Reescrevendo limites",
            author: "Andrei Rosset",
            ano: 2023,
            editora: null,
        },
        {
            titulo: "Atravessando o abismo",
            author: "Geoffrey A. Moore",
            ano: 2021,
            editora: "Alta Books",
        },
        {
            titulo: "Neuromarketing",
            author: "Daren Bridger",
            ano: 2018,
            editora: "Autentica",
        },
        {
            titulo: "Marketing 5.0",
            author: "Philip",
            ano: 2023,
            editora: "Sextante",
        },
    ]
);

console.timeEnd("livros");