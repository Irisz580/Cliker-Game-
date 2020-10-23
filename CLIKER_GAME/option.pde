void option() {
  imageMode(CENTER);
  image(BG,350,350,700,700);
  tactileimage(240,230,100);
circle(240, 230, 200);
  tactileimage(540,230,100);
circle(540, 230, 200);
  image(sakura, 240, 230, 200, 200);

  image(zz, 540, 230, 200, 200);

  textSize(60);
  fill(0);
  text("OPTION", 100, 110);
  image(selection, 350, 500, thickness, thickness);
  fill(255);
 if (mouseX>580&&mouseX<680&&mouseY>600&&mouseY<650) {
    strokeWeight(5);
  } else {
    strokeWeight(2);
  }
  rect( 580, 600, 100, 50);
  fill(0);
  textSize(55);
  text("OK", 605, 645);
  thickness= map(sliderY, 450, 560, 100, 250);
  //slider
  if (dist(100, sliderY, mouseX, mouseY)<10) {
    strokeWeight(8);
  } else {
    strokeWeight(5);
  }
  stroke(0);

  line (100, 460, 100, 580);
  fill(255);
  circle(100, sliderY, 20);
}


void optionClicks() {
  controlSlider();
  if (dist(240, 230, mouseX, mouseY)<100) {

    selection=sakura;
  }
  if (dist(540, 230, mouseX, mouseY)<100) {

    selection=zz ;
  }
  if (mouseX>580&&mouseX<680&&mouseY>600&&mouseY<650) {
    mode=GAME;
  }
}




void mouseDragged() {
  controlSlider();
}

void controlSlider() {//===== 
  if (mouseX>90 && mouseX<110&& mouseY>460 &&mouseY<580) {
    sliderY=mouseY;
  }
}

void tactileimage(int x, int y, int r) {//==========
  if ( dist(x, y, mouseX, mouseY) <r) {
    strokeWeight(5);
  } else { 
   strokeWeight(2);
  }//
}
