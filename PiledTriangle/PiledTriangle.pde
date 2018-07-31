/*
図形の明度を簡単にコントロールするために
HSBモードにしておくと良いかも
加算合成モードにして
図形の重なりが多いところは明るくなるようにする
背景の明るさも加算されてしまうから背景は暗く
*/

void setup(){
  size(960, 540, P2D);
  // HSBカラーモード
  colorMode(HSB, 360, 100, 100, 100);
  // 加算合成モード
  blendMode(ADD);
  noLoop();
}

void draw(){
  // 背景は暗め
  background(200, 99, 15);
  
  // 値がランダムな長方形を300個描く
  for(int i = 0; i < 40; i++){
    float x1 = random(width);    // x座標
    float y1 = random(height);   // y座標
    float x2 = random(width);    // x座標
    float y2 = random(height);
    float x3 = random(width);    // x座標
    float y3 = random(height);
    // float w = random(50, 100);  // 幅
    // float h = random(50, 100);  // 高さ
    int hue = (int)random(160, 230); // 色相
    int saturation = 80;             // 彩度
    int brightness = 30;             // 明度
    noStroke();
    fill(hue, saturation, brightness);
    triangle(x1, y1, x2, y2, x3, y3);
  }
  
  saveFrame("image/img.jpg");
}

void mousePressed(){
  redraw();
}
