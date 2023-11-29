public void drawCircle(int x, int y) {
  circle(x, y, circleRadius);
}

public void drawX(int x, int y) {
  //x and y correspond to the center of the X
  line(x - (xSize / 2), y - (xSize / 2), x + (xSize / 2), y + (xSize / 2));
  line(x + (xSize / 2), y - (xSize / 2), x - (xSize / 2), y +(xSize / 2));
}

public void drawBoard() {
  line(boardSize / 3, 0, boardSize / 3, boardSize);
  line(2 * (boardSize / 3), 0, 2 * (boardSize / 3), boardSize);
  line(0, boardSize / 3, boardSize, boardSize / 3);
  line(0, 2 * (boardSize / 3), boardSize, 2 * (boardSize / 3));
}
