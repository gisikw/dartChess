class ChessUtils {
  static final String files = 'abcdefgh';
  
  static List<int> squareToCoords(String square) {
    return [files.indexOf(square[0]),8-Math.parseInt(square[1])];
  }
  
  static Piece fenToPiece(String fen) { 
    Piece piece = null;
    switch(fen.toUpperCase()) {
      case 'P':
        piece = new Pawn('white');
        break;
      case 'N':
        piece = new Knight('white');
        break;
      case 'B':
        piece = new Bishop('white');
        break;
      case 'R':
        piece = new Rook('white');
        break;
      case 'Q':
        piece = new Queen('white');
        break;
      case 'K':
        piece = new King('white');
    }
    if(fen.toLowerCase() == fen) {
      piece.color = 'black';
    }
    return piece;
  }
  
  static fenToString(String fen) {
    int rank = 0;
    String returnable = ' ----------\n8|';
    for(int i = 0; i < fen.length; i++){
      if(fen[i] == '/') {
        returnable += '|\n${7-rank}|';
        rank++;
      } else if('12345678'.indexOf(fen[i]) == -1) {
        returnable += fen[i];
      } else {
        for(int j = 0; j < Math.parseInt(fen[i]); j++) {
          returnable += '.';
        }
      }
    }
    returnable += '|\n ----------\n  ${files}';
    return returnable;
  }
}