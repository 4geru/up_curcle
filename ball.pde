class Player {
  float x, y, r, sp, sx, dx, sy, dy;
  Player(float x, float y, float r){
     this.x = x; this.y = y;
     this.r = r; this.sp = 10;
  }
  
  void display() { 
    x = (checkWidth(x, r) != 0 ? checkWidth(x, r) : x + sx * sp / 5);
    y = (checkHeight(y, r) != 0 ? checkHeight(y, r) : y + sy * sp / 5);
    fill(#AAAAAA);
    noStroke();
    ellipse(x, y, this.r, this.r); 
    if(this.sx != 0 && !pressed)this.sx += dx * -1 / 2;
    if(this.sy != 0 && !pressed)this.sy += dy * -1 / 2;
    noFill();
  }
  
  float checkHeight(float y,float r){
    if(y < r/2){ sy = 0; dy = 0; return r/2; } // attach up
    if(y > height - r/2){ sy = 0; dy = 0; return height - r/2; }// attach bottom
    return 0;
  }
  float checkWidth(float x,float r){
    if(x < r/2){ sx = 0; dx = 0; return r/2; } // attach left
    if(x > width - r/2){ sx = 0; dx = 0; return width - r/2; }// attach right
    return 0;
  }
  float getX(){ return x;}
  float getY(){ return y;}
  void setX(float x){ this.x = x; }
  void setY(float y){ this.y = y; }
}