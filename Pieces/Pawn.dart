class Pawn extends Piece {
  Pawn(String col) : super(col);
  
  String toString() {
    return isWhite() ? 'P' : 'p';
  }
  
  String pieceName() {
    return 'Pawn';
  }
}
