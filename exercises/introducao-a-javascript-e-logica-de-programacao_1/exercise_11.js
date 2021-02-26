let salarioBruto = 3000.00;
let inss, inssMaximo;
let impostoRendaIR, parcelaIR;
let valorIR;
let salarioBase, salarioLiquido;

switch(true) {
  case salarioBruto > 0 && salarioBruto <= 1556.94:
    inss = 0.08;
    break;
  case salarioBruto >= 1556.95 && salarioBruto <= 2594.92:
    inss = 0.09;
    break;
  case salarioBruto >= 2594.93 && salarioBruto <= 5189.82:
    inss = 0.11;
    break;
  case salarioBruto > 5189.82:
    inssMaximo = 570.88;
    break;
  default:
    console.log('Insira um valor de salário bruto válido.');
}

if(salarioBruto > 5189.82) {
  salarioBase = salarioBruto - inssMaximo;
} else {
  salarioBase = salarioBruto - inss * salarioBruto;
}

switch(true) {
 case salarioBase > 0 && salarioBase <= 1903.98:
   impostoRendaIR = 0;
   parcelaIR = 0;
   break;
  case salarioBase >= 1903.98 && salarioBase <= 2826.65:
    impostoRendaIR = 0.075;
    parcelaIR = 142.80;
    break;
  case salarioBase >= 2826.66 && salarioBase <= 3751.05:
    impostoRendaIR = 0.15;
    parcelaIR = 354.80;
    break;
  case salarioBase >= 3751.06 && salarioBase <= 4664.68:
    impostoRendaIR = 0.225;
    parcelaIR = 636.13;
  break;
  case salarioBase > 4664.68:
    impostoRendaIR = 0.275;
    parcelaIR = 869.36;
  break;
  default:
    console.log('Salário Base inválido! Verifique as informações inseridas.');
}

valorIR = impostoRendaIR * salarioBase - parcelaIR;

salarioLiquido = salarioBase - valorIR;

console.log('Salário bruto informado: R$' + salarioBruto);

if(salarioBruto > 5189.82) {
  console.log('Total descontado (alíquota máxima) de INSS: R$' + inssMaximo);
} else {
  console.log('Alíquota de INSS: ' + inss * 100 + '%');
  console.log('Total descontado de INSS: R$' + inss * salarioBruto);
}

console.log('Salário base para imposto de renda(IR): R$' + salarioBase);
console.log('Alíquota do IR: ' + impostoRendaIR * 100 + '%');
console.log('Parcela do IR a deduzir do imposto: R$' + parcelaIR)
console.log('Valor total descontado de IR: R$' + valorIR);

console.log('O salário líquido a ser recebido é: R$' + salarioLiquido);
