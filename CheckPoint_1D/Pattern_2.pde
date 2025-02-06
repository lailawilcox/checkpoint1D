void pattern2() {
  fill(lightBlue);
  noStroke();
  rect(250, 250, 500, 500);

  pushMatrix();
  translate(250, 605);
  rotate(PI/0.8);
  lines();
  popMatrix();

  int c = 0;
  float x = 39;
  float y = 39;
  boolean shift = true;


  while (c < 25) {
    pushMatrix();
    translate(x, y);
    crossHair();
    popMatrix();
    x = x+141;

    c++;

    if (x > 500) {
      y = y+70.5;
      shift = !shift;
      if (shift) {
        x = 39;
      } else {
        x = 109.5;
      }
    }
  }
}

void lines() {
  int yD = -150;
  int xM = -150;
  int c = 0;

  while (c < 12) {
    stroke(darkBlue);
    strokeWeight(25);
    line(-100, yD, 600, yD);

    stroke(medBlue);
    strokeWeight(25);
    line(xM, -100, xM, 600);

    yD = yD+100;
    xM = xM+100;
    c++;
  }
}

void crossHair() {
  strokeWeight(1);

  stroke(medBlue);
  fill(medBlue);
  triangle(-1, 18, -18, 1, -1, -16);

  stroke(darkBlue);
  fill(darkBlue);
  triangle(-1, 18, 16, 1, -1, -16);
}
