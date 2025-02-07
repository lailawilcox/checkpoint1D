void playPauseButton() {
  fill(white);
  tactileCircle(250, 450, 25);
  circle(250, 450, 50);
  fill(black);
  if (play) {
    strokeWeight(3);
    stroke(black);
    line(245, 440, 245, 460);
    line(255, 440, 255, 460);
  } else {
    strokeWeight(1);
    stroke(black);
    triangle(245, 440, 245, 460, 260, 450);
  }
}

void buttonLeft() {
  fill(white);
  tactileRect(75, 450, 50, 25);
  rect(75, 450, 100, 50, 10);
  textSize(25);
  fill(black);
  text("LEFT", 75, 460);
}

void buttonRight() {
  fill(white);
  tactileRect(425, 450, 50, 25);
  rect(425, 450, 100, 50, 10);
  textSize(25);
  fill(black);
  text("RIGHT", 425, 460);
}


void tactileRect(int x, int y, int w, int h) {
  if (mouseX > x-w && mouseX < x+w && mouseY > y-h && mouseY < y+h) {
    strokeWeight(5);
  } else {
    strokeWeight(2);
  }
}

void tactileCircle(float x, float y, float r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    strokeWeight(5);
  } else {
    strokeWeight(2);
  }
}

void mousePressed() {

  //play/pause button
  if (dist(250, 450, mouseX, mouseY) < 25 && play) {
    play = false;
  } else if (dist(250, 450, mouseX, mouseY) < 25 && !play) {
    play = true;
  }

  //left button
  if (mouseX > 25 && mouseX < 125 && mouseY > 425 && mouseY < 475) {
    if (mode < 3) {
      mode++;
      reset();
    } else {
      mode = 1;
      reset();
    }
  }

  //right button
  if (mouseX > 375 && mouseX < 475 && mouseY > 425 && mouseY < 475) {
    if (mode > 1) {
      mode--;
      reset();
    } else {
      mode = 3;
      reset();
    }
  }

  //intro button
  if (mouseX > 150 && mouseX < 350 && mouseY > 212.5 && mouseY < 287.5) {
    intro = false;
  }
}
