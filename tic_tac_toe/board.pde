import java.lang.Math;

public class Board {

  private int playerMove, botMove = (int)(9 * Math.random());
  public boolean playing = true;
  private int[] board = new int[9];

  public Board() {
    drawBoard();
  }

  public void robotPlays() {
    for(int i = 0;!(board[botMove] == 0) && i < 100; i++) {
      botMove = (int)(9 * (Math.random()));
    }
    drawShape(botMove, X_SHAPE);
    board[botMove] = 1;
  }

  private void playerPlays() {
    if((board[playerMove] == 0)) {
      drawShape(playerMove, CIRCLE_SHAPE);
      board[playerMove] = 2;
      robotPlays();
      findWinner();
    } else {
      println("That cell is already taken!");
    }
  }

  public void playerPressed(int inputKey) {
    if(playing) {
      playerMove = inputKey;
      playerMove -= 48; //making key code to correlate to the actual number pressed
      playerPlays();
    } else {
      println("The game has ended");
    }
  }

  private void findWinner() {}
}
