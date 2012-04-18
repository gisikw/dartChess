class Rook extends Piece {
  Rook(String col) : super(col);
  
  String toString() {
    return isWhite() ? 'R' : 'r';
  }
  
  String pieceName() {
    return 'Rook';
  }
}