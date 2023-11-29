import java.lang.Math;

public class Board {
  
  private int move;
 
  public Board() {
    drawBoard();
  }
  
  private void robotPlays() {
    int botMove = (int)(8 * (Math.random()));
    drawShape(botMove, false);
  }
  
  public void playerPressed(int inputKey) {
    move = inputKey;
    move -= 48; //making key code to correlate to the actual number pressed
  }
}
