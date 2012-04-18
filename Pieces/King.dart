class King extends Piece {
  King(String col) : super(col);
  
  String toString() {
    return isWhite() ? 'K' : 'k';
  }
  
  String pieceName() {
    return 'King';
  }
}