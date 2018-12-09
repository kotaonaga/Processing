int num = 0;

void setup(){
  size(900, 900);
  smooth();
  drawSircle();
}
void draw(){}

void mousePressed(){
  if(num < 10){
    drawSircle();
  }else{
  line(400,599, 59,47);
    }
  }
  
void drawSircle(){
  float x = random(width);
  float y = random(height);
  float w = random(100,220);
  float h = random(100,200);
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  ellipse(x,y,w,h);
  fill(r,g,b);
  num += 1;
}
