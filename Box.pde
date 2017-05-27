class Box {
  float x, y, h, w, sp, dx, bottom,r;
  String state = "";
  Box(float x, float y, float bottom){
     this.x = x; this.y = y;
     this.bottom = bottom;
     boxShape();
     boxPosition();
     sp = 5;
     r = 50;
  }
  
  void display() { 
    fill(#ff0000);
    noStroke();
    x += dx * sp;
    rect(x, y, w, h); 
    noFill();
  }
  
  float getX(){ return x;}
  float getY(){ return y;}
  float getHeight(){ return h;}
  float getWidth(){ return w;}
  void setX(float x){ this.x = x; }
  void setY(float y){ this.y = y; }
  boolean check(){ if(x >= width + w || x <= - w ) { boxPosition(); return true;} return false;}
  void boxShape(){ w = random(50,100); h = random(50,150); }
  void boxPosition(){
    boxShape();
    y = random(0,height - bottom); 
    if((int)random(0,2) == 1){
      x = width + w; dx = -1;
    } else {
      x = -w; dx = 1;
    }
  }
  boolean hit(float px, float py){
    float topLeft     = dist(x,y    ,px,py);
    float topRight    = dist(x,y+h  ,px,py);
    float bottomLeft  = dist(x+w,y  ,px,py);
    float bottomRight = dist(x+w,y+h,px,py);
    if(topLeft <= r || topRight <= r || bottomRight <= r && bottomLeft <= r){
      state = "hit";
      return true;  
    }
    return false;
  }
}