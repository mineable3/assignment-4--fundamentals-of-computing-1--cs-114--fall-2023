private void drawCircle(int x, int y) {
  circle(x, y, CIRCLE_RADIUS);
}

private void drawX(int x, int y) {
  //x and y correspond to the center of the X
  line(x - (X_SIZE / 2), y - (X_SIZE / 2), x + (X_SIZE / 2), y + (X_SIZE / 2));
  line(x + (X_SIZE / 2), y - (X_SIZE / 2), x - (X_SIZE / 2), y +(X_SIZE / 2));
}

public void drawShape(int x, int y, boolean isCircle) {
  if(isCircle) {
    drawCircle(x, y);
  } else {
    drawX(x, y);
  }
}

public void drawShape(int move, boolean isCircle) {
  switch(move) {
    case 0:
      drawShape(83, 83, isCircle);
      break;
    case 1:
      drawShape(250, 83, isCircle);
      break;
    case 2:
      drawShape(417, 83, isCircle);
      break;
    case 3:
      drawShape(83, 250, isCircle);
      break;
    case 4:
      drawShape(250, 250, isCircle);
      break;
    case 5:
      drawShape(417, 250, isCircle);
      break;
    case 6:
      drawShape(83, 417, isCircle);
      break;
    case 7:
      drawShape(250, 417, isCircle);
      break;
    case 8:
      drawShape(417, 417, isCircle);
      break;
  }
}



public void drawBoard() {
  line(BOARD_SIZE / 3, 0, BOARD_SIZE / 3, BOARD_SIZE);
  line(2 * (BOARD_SIZE / 3), 0, 2 * (BOARD_SIZE / 3), BOARD_SIZE);
  line(0, BOARD_SIZE / 3, BOARD_SIZE, BOARD_SIZE / 3);
  line(0, 2 * (BOARD_SIZE / 3), BOARD_SIZE, 2 * (BOARD_SIZE / 3));
}
