class Chessboard {
  List<Piece> board;
  
  Chessboard() {
    board = new List<Piece>(64);
  }

  setFEN(String fen) {
    int squareCount = 0;
    for(int i = 0; i < fen.length; i++){
      if(fen[i] == '/') {
        continue;
      } else if('12345678'.indexOf(fen[i]) != -1) {
        squareCount += Math.parseInt(fen[i]);
      } else {
        addPieceAtCoords(ChessUtils.fenToPiece(fen[i]),[squareCount%8,(squareCount/8).floor().toInt()]);
        squareCount++;
      }
    }
  }

  String getFEN() {
    String returnable = '';
    int emptyCount = 0;
    for(int i = 0; i < 8; i++) {
      for(int j = 0; j < 8; j++) {
        Piece piece = board[i*8+j];
        if(piece != null) {
          if(emptyCount != 0) {
            returnable += emptyCount;
            emptyCount = 0;
          }
          returnable += piece;
        } else {
          emptyCount++;
        }
      }
      if(emptyCount != 0) {
        returnable += emptyCount;
        emptyCount = 0;
      }
      if(i < 7) {
        returnable += '/';
      }
    }
    return returnable;
  }

  void addPiece(Piece piece, String square) {
    List<int> coords = ChessUtils.squareToCoords(square);
    board[coords[0]+coords[1]*8] = piece;
  }
  
  void addPieceAtCoords(Piece piece, List<int> coords) {
    board[coords[0]+coords[1]*8] = piece;
  }

  Piece pieceAt(String square) {
    List<int> coords = ChessUtils.squareToCoords(square);
    return board[coords[0]+coords[1]*8];
  }

  bool isEnemyAt(coord) {

  }

  bool isAllyAt(coord) {
  
  }

  void movePiece() {

  }
}