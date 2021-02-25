let pecaDeXadrez = 'xablau';

switch (pecaDeXadrez.toLowerCase()) {
  case 'king':
    console.log(pecaDeXadrez + ' moves one square in any direction, so long as that square is not attacked by an enemy piece. Additionally, kings are able to make a special move, know as castling.');
    break;
  case 'queen':
    console.log(pecaDeXadrez + ' moves diagonally, horizontally, or vertically any number of squares. They are unable to jump over pieces.');
    break;
  case 'rook':
    console.log(pecaDeXadrez + ' moves horizontally or vertically any number of squares. They are unable to jump over pieces. Rooks move when the king castles.');
    break;
  case 'bishop':
    console.log(pecaDeXadrez + ' moves diagonally any number of squares. They are unable to jump over pieces.');
    break;
  case 'knight':
    console.log(pecaDeXadrez + ' moves in an ‘L’ shape’: two squares in a horizontal or vertical direction, then move one square horizontally or vertically. They are the only piece able to jump over other pieces.');
    break;
  case 'pawn':
    console.log(pecaDeXadrez + ' moves vertically forward one square, with the option to move two squares if they have not yet moved. Pawns are the only piece to capture different to how they move. Pawns capture one square diagonally in a forward direction. Pawns are unable to move backward on captures or moves. Upon reaching the other side of the board a pawn promotes into any other piece, except for a king. Additionally, pawns can make a special move named En Passant.');
    break;
  default:
    console.log('Essa peça não existe. Informe outra peça!');
}

// Informações sobre preças e seus movimentos retiradas do site: https://www.ichess.net/blog/chess-pieces-moves/