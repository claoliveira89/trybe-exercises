let numbers = [5, 9, 3, 19, 70, 8, 100, 2, 35, 27];
let contaValorImpar = 0;

for(index = 0; index < numbers.length; index += 1) {
  if(numbers[index] % 2) {
    contaValorImpar += 1;
  }
}

if(contaValorImpar > 0) {
  console.log('Existem ' + contaValorImpar + ' valores ímpares na array!');
} else {
  console.log('Nenhum valor ímpar encontrado!');
}