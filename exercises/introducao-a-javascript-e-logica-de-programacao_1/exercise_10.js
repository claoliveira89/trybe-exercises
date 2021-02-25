let valorCusto = 1;
let valorVenda = 2;
let produtosVendidos = 1000;
let impostoSobreOCusto = 0.2 * valorCusto; 
let valorCustoTotal = valorCusto + impostoSobreOCusto;
let lucro = valorVenda - valorCustoTotal;

if (valorCusto < 0 || valorVenda < 0) {
  console.log('Valores de custo ou venda do produto estão abaixo de 0. Informe outros valores.');
} else {
  console.log('Se vender ' + produtosVendidos + ' unidades do produto, a empresa terá um lucro de ' + produtosVendidos * lucro);
}