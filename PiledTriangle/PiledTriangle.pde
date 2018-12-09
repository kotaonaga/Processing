/*
図形の明度を簡単にコントロールするために
HSBモードにしておくと良いかも
加算合成モードにして
図形の重なりが多いところは明るくなるようにする
背景の明るさも加算されてしまうから背景は暗く
*/

void setup(){
  size(960, 540, P2D);
  // HSB
  colorMode(HSB, 360, 100, 100, 100);
  blendMode(ADD);
  noLoop();
}

void draw(){
  background(200, 99, 15);
 
  for(int i = 0; i < 40; i++){
    float x1 = random(width);    
    float y1 = random(height);   
    float x2 = random(width);    
    float y2 = random(height);
    float x3 = random(width);    
    float y3 = random(height);
    // float w = random(50, 100);
    // float h = random(50, 100);  
    int hue = (int)random(160, 230); 
    int saturation = (int)random(60, 90);  
    int brightness = 30;    
    noStroke();
    fill(hue, saturation, brightness);
    triangle(x1, y1, x2, y2, x3, y3);
  }
  
  saveFrame("image/img.jpg");
}

void mousePressed(){
  redraw();
}
