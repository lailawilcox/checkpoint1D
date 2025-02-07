//Laila Wilcox
//Feb 3rd

//pallet
color black = #000000;
color white = #FFFFFF;

//pattern 1
color darkPink = #FE636E;
color medPink = #FEBAC6;
color lightPink = #FFDEE3;

//patern 2
color darkBlue = #1F2772;
color medBlue = #3F5BC2;
color lightBlue = #6683E3;

//patern 2
color darkGreen = #304A3C;
color medGreen = #59886F;
color lightGreen = #77A68E;


//variables
boolean intro = true;

int mode = 1;
boolean play = false;

float r2 = 4;
float m3 = 0;
float c3 = 255;
float dx1 = 0;
float ly1 = 0;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  textAlign(CENTER);
}

void draw() {

  if (intro) {
    intro();
  } else{

  if (mode == 1) {
    pattern1();

    //pattern 3 animation
    if (play && dx1 < 20) {
      dx1 = dx1 + 0.5;
      ly1 =  ly1 + 0.5;
    }
    if (!play && dx1 > 0) {
      dx1 = dx1 - 1;
      ly1 =  ly1 - 1;
    }
  } else if (mode == 3) {
    pattern3();

    //pattern 3 animation
    if (play && m3 < 42) {
      m3 = m3 + 0.5;
      c3 = c3 - 4;
    }
    if (!play && m3 > 0) {
      m3 = m3 - 2;
      c3 = c3 + 16;
    }
  } else {
    pattern2();

    //pattern 2 animation
    if (play && r2 > -4) {
      r2 = r2 - 0.01;
    }
    if (!play && r2 <= 4) {
      r2 = r2 + 0.1;
    }
  }

  buttonLeft();
  buttonRight();
  playPauseButton();
  }
}

void reset() {
  play = false;
  r2 = 4;
  m3 = 0;
  c3 = 255;
  dx1 = 0;
  ly1 = 0;
}
