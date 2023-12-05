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
    findIfBotWon();
  }

  private void playOneTurn() {
    if((board[playerMove] == 0)) {
      drawShape(playerMove, CIRCLE_SHAPE);
      board[playerMove] = 2;
      findIfPlayerWon();
      if(playing) {
        println("game is still in play");
        robotPlays();
      }
    } else {
      println("That cell is already taken!");
    }
  }

  public void playerPressed(int inputKey) {
    if(playing) {
      playerMove = inputKey;
      playerMove -= 48; //making key code to correlate to the actual number pressed
      playOneTurn();
    } else {
      println("The game has ended");
    }
  }

  private void findIfPlayerWon() {
    //horizontal rows
    if(board[0] == board[1] && board[1] == board[2] && board[2] == 2) {
      playing = false;
      println("The player has won!");
      return ;
    } else if(board[3] == board[4] && board[4] == board[5] && board[5] == 2) {
      playing = false;
      println("The player has won!");
      return ;
    } else if(board[6] == board[7] && board[7] == board[8] && board[8] == 2) {
      playing = false;
      println("The player has won!");
      return ;
    }

    //vertical rows
    if(board[0] == board[3] && board[3] == board[6] && board[6] == 2) {
      playing = false;
      println("The player has won!");
      return ;
    } else if(board[1] == board[4] && board[4] == board[7] && board[7] == 2) {
      playing = false;
      println("The player has won!");
      return ;
    } else if(board[2] == board[5] && board[5] == board[8] && board[8] == 2) {
      playing = false;
      println("The player has won!");
      return ;
    }

    //diagonals
    if(board[0] == board[4] && board[4] == board[8] && board[8] == 2) {
      playing = false;
      println("The player has won!");
      return ;
    } else if(board[2] == board[4] && board[4] == board[6] && board[6] == 2) {
      playing = false;
      println("The player has won!");
      return ;
    }
  }

  private void findIfBotWon() {
    //horizontal rows
    if(board[0] == board[1] && board[1] == board[2] && board[2] == 1) {
      playing = false;
      println("The computer has won!");
      return ;
    } else if(board[3] == board[4] && board[4] == board[5] && board[5] == 1) {
      playing = false;
      println("The computer has won!");
      return ;
    } else if(board[6] == board[7] && board[7] == board[8] && board[8] == 1) {
      playing = false;
      println("The computer has won!");
      return ;
    }

    //vertical rows
    if(board[0] == board[3] && board[3] == board[6] && board[6] == 1) {
      playing = false;
      println("The computer has won!");
      return ;
    } else if(board[1] == board[4] && board[4] == board[7] && board[7] == 1) {
      playing = false;
      println("The computer has won!");
      return ;
    } else if(board[2] == board[5] && board[5] == board[8] && board[8] == 1) {
      playing = false;
      println("The computer has won!");
      return ;
    }

    //diagonals
    if(board[0] == board[4] && board[4] == board[8] && board[8] == 1) {
      playing = false;
      println("The computer has won!");
      return ;
    } else if(board[2] == board[4] && board[4] == board[6] && board[6] == 1) {
      playing = false;
      println("The computer has won!");
      return ;
    }
  }
}
