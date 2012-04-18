class Bishop extends Piece {
  Bishop(String col) : super(col);
  
  String toString() {
    return isWhite() ? 'B' : 'b';
  }
  
  String pieceName() {
    return 'Bishop';
  }
}