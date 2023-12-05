import java.util.InputMismatchException;

Board tictactoe;

void setup() {
  size(500, 500);
  tictactoe = new Board();
  tictactoe.robotPlays();
  println("press a number between 0 and 8 to make a move");
}

void draw() {}

void keyReleased() {
  if(keyCode >= 48 && keyCode <= 56) {
    tictactoe.playerPressed(keyCode);
  } else {
    throw new InputMismatchException("Moves can only be numbers 0 through 8");
  }
}
