void setup(){
  size(1200, 600, P3D);
}

void draw(){
  translate(random(width), random(height), random(-300, 300)); 
  noFill();
  stroke(random(80, 100), random(60,160), random(79, 140));
  box(random(3, 400));
}
