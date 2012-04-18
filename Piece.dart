class Piece {
  String color;
  
  Piece(this.color);
  
  String toString() {
    return 'x';
  }
  
  bool isWhite() {
    return color == 'white';
  }
  
  bool isBlack() {
    return color != 'white';
  }
  
  String pieceName() {
    
  }
  
  List<String> getCandidateMoves() {
    
  }
}