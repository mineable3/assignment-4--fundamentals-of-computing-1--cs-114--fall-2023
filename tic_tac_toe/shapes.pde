public void drawCircle(int x, int y) {
  circle(x, y, CIRCLE_RADIUS);
}

public void drawX(int x, int y) {
  //x and y correspond to the center of the X
  line(x - (X_SIZE / 2), y - (X_SIZE / 2), x + (X_SIZE / 2), y + (X_SIZE / 2));
  line(x + (X_SIZE / 2), y - (X_SIZE / 2), x - (X_SIZE / 2), y +(X_SIZE / 2));
}

public void drawBoard() {
  line(BOARD_SIZE / 3, 0, BOARD_SIZE / 3, BOARD_SIZE);
  line(2 * (BOARD_SIZE / 3), 0, 2 * (BOARD_SIZE / 3), BOARD_SIZE);
  line(0, BOARD_SIZE / 3, BOARD_SIZE, BOARD_SIZE / 3);
  line(0, 2 * (BOARD_SIZE / 3), BOARD_SIZE, 2 * (BOARD_SIZE / 3));
}
