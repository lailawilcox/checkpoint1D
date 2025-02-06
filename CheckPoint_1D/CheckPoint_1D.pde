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
int mode = 2;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  textAlign(CENTER);
}

void draw() {

  if (mode == 1) {
    pattern1();
  } else if (mode == 3) {
    pattern3();
  } else {
    pattern2();
  }
  
  buttonLeft();
  buttonRight();
}
