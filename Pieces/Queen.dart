class Queen extends Piece {
  Queen(String col) : super(col);
  
  String toString() {
    return isWhite() ? 'Q' : 'q';
  }
  
  String pieceName() {
    return 'Queen';
  }
}