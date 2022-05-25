const readline = require('readline-sync');

function calculaImc(peso, altura) {
    console.log(`Peso: ${peso}, Altura: ${altura}`);

altura = altura / 100;

const IMC = peso / (altura * altura);


if (IMC < 18.5) {
    console.log('Situação: Abaixo do peso (magreza)');
    return;
  }

  if (IMC >= 18.5 && IMC < 25) {
    console.log('Situação: Peso normal');
    return;
  }

  if (IMC >= 25 && IMC < 30) {
    console.log('Situação: Acima do peso (sobrepeso)');
    return;
  }

  if (IMC >= 30 && IMC < 35) {
    console.log('Situação: Obesidade grau I');
    return;
  }

  if (IMC >= 35 && IMC < 40) {
    console.log('Situação: Obesidade grau II');
    return;
  }

  console.log('Situação: Obesidade graus III e IV');

  // return IMC;
}

function main() {
    const peso = readline.questionFloat('Qual o seu peso? (em kg)');
    const altura = readline.questionInt('Qual a sua altura? (em cm)');
   
    const imc = calculaImc(peso, altura);
  
    // console.log(`IMC: ${imc.toFixed(2)}`);
  }
  
  main();