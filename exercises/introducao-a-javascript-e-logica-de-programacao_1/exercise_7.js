let nota = 98;

switch (true) {
  case nota < 0 || nota > 100:
    console.log('Nota inválida! Informe outra nota.');
    break;
  case nota >= 90:
    console.log('A');
    break;
  case nota >= 80:
    console.log('B');
    break;
  case nota >= 70:
    console.log('C');
    break;
  case nota >= 60:
    console.log('D');
    break;
  case nota >= 50:
    console.log('E');
    break;
  case nota < 50:
    console.log('F');
    break;
  default:
    console.log('Nota inválida! Informe outra nota.');
}

// Fonte para escrever linha 3 do meu código: https://stackoverflow.com/questions/46700224/how-can-you-use-comparisons-in-switch-statements
