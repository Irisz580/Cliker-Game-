void game() {
  theme.play();
  image(BG2,350,350,700,700);
  textSize(50);
  fill(0);
  text("Score:" +score, width/2, 50);
  text("Lives:"+lives, width/2, 100);
  strokeWeight(5);


  imageMode(CENTER); 

  circle(x, y, r);
  image(selection, x, y, thickness, thickness);

//movement
  x=x+vx;
  y=y-vy;

  //bouncing
  if (x>=width-thickness/2 || x<=thickness/2) {
    vx=vx*-1;
  }

  if (y>=width-thickness/2  || y<=thickness/2) {
    vy=vy*-1;
  }

  //pause button
  stroke(0);
  fill(255);
  circle(100, 100, 100);
  rect(80,75,5,45);
   rect(110,75,5,45);
}


void gameClicks() {
  if (dist(mouseX, mouseY, x, y)<thickness/2) {
    score=score+1;
    vx=vx*1.1;
    vy=vy*1.1;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 100, 100)<50) {
    mode=PAUSE;
  } else {
    lives=lives-1;
    if (lives==0) mode=GAMEOVER;
    bump.play();
    bump.rewind();
  }

  //pause button
}
