void pause() {

  theme.pause();
  fill(0);
  textSize(100);
  text("PAUSE", 250, 450);
  fill(255);
  strokeWeight(5);
  circle(100, 100, 100);
  fill(0);
  triangle(90, 80, 120, 100, 90, 120);
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100)<50) {
    mode=GAME;
  }
}
