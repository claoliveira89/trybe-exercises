const selectState = document.getElementById('input-estado');
const states = ['AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'];

function stateOptions(statesList) {
  let option = document.createElement('option');
    option.innerText = '--';
    selectState.appendChild(option);
  for (state of statesList) {
    option = document.createElement('option');
    option.innerText = state;
    selectState.appendChild(option);

  }
}

function checkDateFormat() {
  
}

stateOptions(states);