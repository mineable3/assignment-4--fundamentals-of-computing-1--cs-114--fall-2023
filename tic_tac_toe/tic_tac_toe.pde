import java.util.*;

Board tictactoe;

void setup() {
  size(500, 500);
  tictactoe = new Board();
  tictactoe.robotPlays();
  println("press a number between 0 and 8 to make a move");
}

void draw() {}

void keyReleased() {
  try {
    tictactoe.playerPressed(keyCode);
  } catch(Exception e) {
    println("Moves can only be numbers 0 through 8");
  }
}
