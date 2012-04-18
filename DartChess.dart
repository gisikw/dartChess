#import('dart:html');

#source('ChessUtils.dart');
#source('Piece.dart');
#source('Pieces/Pawn.dart');
#source('Pieces/Knight.dart');
#source('Pieces/Bishop.dart');
#source('Pieces/Rook.dart');
#source('Pieces/Queen.dart');
#source('Pieces/King.dart');
#source('Chessboard.dart');

main() {
  // Initialize models
  Chessboard board = new Chessboard();
  Piece chessPiece = new Pawn('white');
  board.setFEN('r1bq2r1/b4pk1/p1pp1p2/1p2pP2/1P2P1PB/3P4/1PPQ2P1/R3K2R');

  print(board.getFEN());
  print(board.pieceAt('h1'));
  
  // Create squares
  Element dom_board = document.query('#chess');
  for(int i = 0; i < 64; i++) {
    DivElement div = new Element.tag('div');
    String color = (i + (i/8).floor().toInt())%2 == 0 ? 'light' : 'dark';
    div.classes.add('square ${color}');
    int top = (i/8).floor().toInt() * 50;
    int left = i%8 * 50;
    div.attributes['style'] = 'width:${50}px; height: 50px; top: ${top}px; left:${left}px';
    dom_board.nodes.add(div);
  }
  
  // Write FEN
  for(int i = 0; i < 8; i++) {
    for(int j = 0; j < 8; j++) {
      Piece piece = board.pieceAt("${'abcdefgh'[j]}${8-i}");
      if (piece != null) {
        DivElement div = new Element.tag('div');
        div.classes.add('piece ${piece.pieceName().toLowerCase()}');
        if(piece.isBlack()) {
          div.classes.add('black');
        }
        div.draggable = true;
        div.on.dragEnd.add(event(e) {
          document.query("#status").innerHTML = "So impressed";
        });
        div.on.drop.add(event(e) {
          print('mmhmm');
        });
        int top = i * 50;
        int left = j * 50;
        div.attributes['style'] = 'width:50px; height: 50px; top:${top}px; left:${left}px';
        dom_board.nodes.add(div);
      }
    }
  }
}