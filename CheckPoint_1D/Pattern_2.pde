void pattern2() {

  fill(lightBlue);
  noStroke();
  rect(250, 250, 500, 500);

  pushMatrix();
  translate(250, 605);
  rotate(PI/0.8);
  lines();
  popMatrix();

  float x = 39;
  float y = 39;
  boolean shift = true;


  while (y < 600) {

    pushMatrix();
    translate(x, y);
    crossHair();
    popMatrix();
    x = x+141;

    if (x > 500) {
      y = y+70.6;
      shift = !shift;
      if (shift) {
        x = 39.5;
      } else {
        x = 109.2;
      }
    }
  }
}

void lines() {
  int yD = -150;
  int xM = -150;
  int c = 0;

  while (c < 8) {
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
  pushMatrix();
  rotate(-PI/r2);
  stroke(medBlue);
  fill(medBlue);
  strokeWeight(1);
  rect(0, 0, 25, 25);

  strokeWeight(1);
  stroke(darkBlue);
  fill(darkBlue);
  triangle(-12.5, -12.5, -12.5, 12.5, 12.5, -12.5);
  popMatrix();
}
