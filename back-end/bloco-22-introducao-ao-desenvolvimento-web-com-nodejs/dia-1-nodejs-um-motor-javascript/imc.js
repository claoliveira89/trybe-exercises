const readline = require('readline-sync');

const peso = readline.questionFloat('Qual seu peso? ');
let altura = readline.questionInt('Qual sua altura? ');

altura = altura / 100;

const IMC = peso / (altura * altura);

console.log(`O IMC é: ${IMC}`);