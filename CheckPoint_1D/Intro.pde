void intro() {
  fill(white);
  noStroke();
  rect(250, 250, 500, 500);
  strokeWeight(1);

  preview();

  textSize(50);
  fill(black);
  text("Pattern Gallery", 250, 150);
  textSize(30);
  text("Animated", 250, 100);

  stroke(black);
  noFill();
  tactileRect(250, 250, 100, 37);
  rect(250, 250, 200, 75, 20);
  textSize(40);
  fill(black);
  text("View", 250, 262);
}

void preview() {
  //pattern 2
  pushMatrix();
  translate(180, 325);
  scale(0.25);
  pattern2();
  strokeWeight(300);
  stroke(white);
  noFill();
  rect(250, 250, 750, 750);
  popMatrix();

  //pattern 1
  pushMatrix();
  translate(30, 325);
  scale(0.25);
  pattern1();
  strokeWeight(50);
  stroke(white);
  noFill();
  rect(250, 250, 500, 500);
  popMatrix();
  
  //pattern 3
  pushMatrix();
  translate(330, 325);
  scale(0.25);
  pattern3();
  strokeWeight(150);
  stroke(white);
  noFill();
  rect(250, 250, 600, 600);
  popMatrix();
}
