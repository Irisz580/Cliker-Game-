void intro(){
  theme.play();
  imageMode(CENTER);
    image(BG3,350,350,700,700);
   textFont(S);
//START BUTTON: CLICK TO START
fill(255);


strokeWeight(1);
fill(0); 
textSize(60);
text("CLIKER GAME",170,300);
fill(255);
tactileintro(420,530,200,80);
rect(420,530,200,80);
fill(0);
textFont(Q);
text("start",450,590);
fill(255);
tactileintro(140,530,200,80);
rect(140,530,200,80);
fill(0);
text("option",150,590);
}


void introClicks(){
  if (mouseX>420&&mouseX<620&&mouseY>530&&mouseY<610)
  mode=GAME;
  if (mouseX>140&&mouseX<340&&mouseY>530&&mouseY<610)
  mode=OPTION;
}

void tactileintro(int x, int y, int w, int h){
  if (mouseX>x&&mouseX<x+w&& mouseY>y&&mouseY<y+h) {
    stroke(255,150,134);
    strokeWeight(5);
     } else {
       stroke(0);
       strokeWeight(2);
     }
     }
