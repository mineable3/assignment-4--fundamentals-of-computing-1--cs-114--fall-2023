private void drawCircle(int x, int y) {
  circle(x, y, width / 3);
}

private void drawX(int x, int y) {
  //x and y correspond to the center of the X
  line(x - (width / 6), y - (height / 6), x + (width / 6), y + (height / 6));
  line(x + (width / 6), y - (height / 6), x - (width / 6), y + (height / 6));
}

public void drawShape(int x, int y, int shape) {
  if(shape == 0) {
    drawCircle(x, y);
  } else {
    drawX(x, y);
  }
}

public void drawShape(int move, int shape) {
  switch(move) {
    case 0:
      drawShape(width / 6, height / 6, shape);
      break;
    case 1:
      drawShape((3 * width) / 6, height / 6, shape);
      break;
    case 2:
      drawShape((5 * width) / 6, height / 6, shape);
      break;
    case 3:
      drawShape(width / 6, (3 * height) / 6, shape);
      break;
    case 4:
      drawShape((3 * width) / 6, (3 * height) / 6, shape);
      break;
    case 5:
      drawShape((5 * width) / 6, (3 * height) / 6, shape);
      break;
    case 6:
      drawShape(width / 6, (5 * height) / 6, shape);
      break;
    case 7:
      drawShape((3 * width) / 6, (5 * height) / 6, shape);
      break;
    case 8:
      drawShape((5 * width) / 6, (5 * height) / 6, shape);
      break;
  }
}

public void drawBoard() {
  line(width / 3, 0, width / 3, height);
  line(2 * (width / 3), 0, 2 * (width / 3), height);
  line(0, height / 3, width, height / 3);
  line(0, 2 * (height / 3), width, 2 * (height / 3));
}
