public class Board {
  
  private int move;
 
  public Board() {
    drawBoard();
  }
  
  public void playerPressed(int inputKey) {
    move = inputKey;
    move -= 48; //making key code to correlate to the actual number pressed
  }
}
