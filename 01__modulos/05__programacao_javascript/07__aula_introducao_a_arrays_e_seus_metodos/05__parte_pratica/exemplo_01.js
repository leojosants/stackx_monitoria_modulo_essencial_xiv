const vegetais = ["Cenoura", "Tomate", "Alface", "Batata", "Pepino"];


// console.log("Tamanho ..:", vegetais.length);

console.log(vegetais.toString());

let vegetalRemovido = vegetais.pop();
// console.log("Vegetal Removido ..:", vegetalRemovido);
// console.log("Vegetais ..:", vegetais);

vegetais.push("Brócolis");
// console.log("Vegetais ..:", vegetais);

vegetalRemovido = vegetais.shift();
// console.log("Vegetal Removido ..:", vegetalRemovido);
// console.log("Vegetais ..:", vegetais);

vegetais.unshift("Espinafre");
// console.log("Vegetais ..:", vegetais);

// console.log(vegetais.join(" - "));

delete vegetais[0];
// console.log("Vegetais ..:", vegetais);

let maisVegetais = ["Abóbora", "Cebola"];
let todosVegetais = vegetais.concat(maisVegetais);
// console.log("Todos os vegetais ..:", todosVegetais);

let vegetaisAninhados = [["Cenoura", "Tomate"], ["Alface", "Batata"]];
// console.log("Antes do método flat...:", vegetaisAninhados);
// console.log("Depois do método flat..:", vegetaisAninhados.flat());

// console.log("Todos os vegetais ..:", todosVegetais);
todosVegetais.splice(2, 0, "Milho", "Arroz");
// console.log("Todos os vegetais ..:", todosVegetais);

// console.log("Todos os vegetais ..:", todosVegetais);
let algunsVegetais = todosVegetais.slice(2, 5);
// console.log(algunsVegetais);