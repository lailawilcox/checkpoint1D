void pattern1() {
  int x = 0;
  int y = 0;
  int i = 0;

  fill(red);
  rect(0, 0, 500, 500);

  while (i <= 10) {
    if (x <= 500) {
      noStroke();
      fill(black);
      circle(x, y, 50);

      stroke(#000000);
      fill(red);
      circle(x-10, y-10, 20);
      circle(x+10, y+10, 20);
      fill(darkRed);
      circle(x+10, y-10, 20);
      circle(x-10, y+10, 20);

      fill(yellow);
      circle(x, y, 12);

      x = x+50;
    } else {
      x = 0;
      y = y+50;
      i++;
    }
  }
}
