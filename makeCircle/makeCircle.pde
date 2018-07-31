void setup(){
  size(900,900);
  drawCircle();
}

void draw(){}

class Circle{
  float x ,y;
  float ra;
  float r, g, b;
  
  Circle(){
    x = random(width);
    y = random(height);
    ra = random(100,200);
    r = random(0,255);
    g = random(0,255);
    b = random(0,255);
  }
  
  void drawMe(){
    noStroke();
    ellipse(x,y,ra*2,ra*2);
    fill(r, g, b);
  }
  
}

  void drawCircle(){
    Circle thisCirc = new Circle();
    thisCirc.drawMe();
}

 void mousePressed(){
   drawCircle();
 }