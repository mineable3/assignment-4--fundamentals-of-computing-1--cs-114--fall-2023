Board tictactoe;

void setup() {
  size(500, 500);
  tictactoe = new Board();
}

void draw() {
  
}

void keyReleased() {
  tictactoe.playerPressed(int(key));
}
