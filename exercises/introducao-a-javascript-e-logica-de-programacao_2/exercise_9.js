let numbers = [];
let resultadoDivisão = 0;

for(index = 0; index < 25; index += 1) {
  numbers[index] = index +1;
}

for(index = 0; index < numbers.length; index += 1) {
  resultadoDivisão = numbers[index] / 2;
  console.log(resultadoDivisão);
}
