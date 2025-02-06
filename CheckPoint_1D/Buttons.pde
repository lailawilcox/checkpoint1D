void buttonLeft() {
  fill(white);
  tactile(75, 450, 50, 25);
  rect(75, 450, 100, 50, 10);
  textSize(25);
  fill(black);
  text( "LEFT", 75, 460);
}

void buttonRight() {
  fill(white);
  tactile(425, 450, 50, 25);
  rect(425, 450, 100, 50, 10);
  textSize(25);
  fill(black);
  text( "RIGHT", 425, 460);
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x-w && mouseX < x+w && mouseY > y-h && mouseY < y+h) {
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }
}

void mousePressed() {
  if (mouseX > 25 && mouseX < 125 && mouseY > 425 && mouseY < 475) {
    if (mode < 3) {
      mode++;
    } else {
      mode = 1;
    }
  }

  if (mouseX > 375 && mouseX < 475 && mouseY > 425 && mouseY < 475) {
    if (mode > 1) {
      mode--;
    } else {
      mode = 3;
    }
  }
}
