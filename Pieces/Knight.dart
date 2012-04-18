class Knight extends Piece {
  Knight(String col) : super(col);
  
  String toString() {
    return isWhite() ? 'N' : 'n';
  }
  
  String pieceName() {
    return 'Knight';
  }
}
