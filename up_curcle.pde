boolean pressed;
float v, g;
int time = 0;
Player player;
Box box;
float bottom = 400;
void setup() {
  size(400, 600); // window size
  frameRate(30); // set frameRate
  player = new Player(width/2,bottom,50);
  box = new Box(0,random(0, height - 50), bottom);
  g = -9.8; 
}

void draw() {
  background(204);
  if(v != 0)v = v - g / 10;
  if(player.getY() > bottom){
    v = 0;player.setY(bottom);
  }
  player.setY(player.getY() + v);
  box.check();
  player.display();
  box.display();
  box.hit(player.getX(), player.getY());
}

void keyPressed() {
  pressed = true;
  int keyIndex = 0;
  if (key == ' ') {
    v = -20;
    player.setY(player.getY() - 1);
  }
   if (key >= 'A' && key <= 'Z') {
    keyIndex = key - 'A' + 1;
  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key - 'a' + 1;
  }
  switch(keyIndex-1) {
  case 'a' - 'a':
    break;
  case 'd' - 'a':
    break;
  case 'w' - 'a':
    break;
  case 's' - 'a':
    break; 
  default :
  }
}
void keyReleased() {
  pressed = false;
}