void pattern1() {
  int x = 0;
  int y = 0;
  int i = 0;

  fill(medPink);
  noStroke();
  rect(250, 250, 500, 500);
  strokeWeight(1);

  while (i <= 10) {
    if (x <= 500) {

      stroke(darkPink);
      fill(medPink);
      circle(x-10+dx1, y-10, 20);
      circle(x+10-dx1, y+10, 20);
      fill(lightPink);
      circle(x+10, y-10+ly1, 20);
      circle(x-10, y+10-ly1, 20);

      fill(darkPink);
      stroke(lightPink);
      circle(x, y, 12);

      x = x+50;
    } else {
      x = 0;
      y = y+50;
      i++;
    }
  }
  stroke(darkPink);
}
