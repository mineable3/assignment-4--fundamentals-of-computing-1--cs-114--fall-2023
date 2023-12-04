private void drawCircle(int x, int y) {
  circle(x, y, width / 3);
}

private void drawX(int x, int y) {
  //x and y correspond to the center of the X
  line(x - (width / 6), y - (height / 6), x + (width / 6), y + (height / 6));
  line(x + (width / 6), y - (height / 6), x - (width / 6), y + (height / 6));
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
      drawShape(0, 0, isCircle);
      break;
    case 1:
      drawShape(width / 6, height / 6, isCircle);
      break;
    case 2:
      drawShape((2 * width) / 3, 0, isCircle);
      break;
    case 3:
      drawShape(0, 250, isCircle);
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
  line(width / 3, 0, width / 3, height);
  line(2 * (width / 3), 0, 2 * (width / 3), height);
  line(0, height / 3, width, height / 3);
  line(0, 2 * (height / 3), width, 2 * (height / 3));
}
