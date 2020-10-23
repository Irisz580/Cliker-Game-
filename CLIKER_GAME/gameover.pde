void gameover() {
  gameover.play();
  image(BG4, 350, 350, 700, 700);
  theme.pause();

  fill(255);
  tactilegameover(50, 550, 300, 80);
  rect(50, 550, 200, 80);
  tactilegameover(450, 550, 200, 80);
  rect(450, 550, 200, 80);
  fill(0);
  textSize(75);
  text("QUIT", 490, 610);
  textSize(65);
  text("RESTART", 60, 615);
  if (score>highscore) {
    highscore = score;
  }
  fill(0);
  textSize(90);
  text("GAME OVER", 190, 280);
  textSize(50);
  fill(255);
  text("HIGH SCORE :"+highscore, 200, 380);
}
void reset() {
  //target
  x=width/2;
  y=height/2;
  vx= random(-5, 5);
  vy= random(-5, 5);

  //game initialization
  score=0;
  lives=3;
  sliderY=460;
}



void gameoverClicks() {
  reset();
  if (mouseX>50&&mouseX<250&&mouseY>550&&mouseY<630) {
    mode=INTRO;
  }
  if (mouseX>450&& mouseX<650&& mouseY>550&&mouseY<630) {
    exit();
  }
}

void tactilegameover(int x, int y, int w, int h) {//=======
  if (mouseX>x&&mouseX<x+w&& mouseY>y&&mouseY<y+h) {
    strokeWeight(5);
  } else {
    strokeWeight(2);
  }
}
