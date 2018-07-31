int numPoints = 1000; // 点の数
int lengthLimit = 80; // 距離制限
int hueColor;         // hueの値
color bgColor;        // 背景色
Point[] points;

boolean save = false;

void setup(){
  size(displayWidth, displayHeight, P3D);
  // アンチエイリアスの品質を設定
  smooth(32);
  // HSBカラーモード
  colorMode(HSB, 360, 100, 100, 100);
  // 加算合成モード
  blendMode(ADD);
  noLoop();
  reset();
}

void reset(){
  // hueの値をランダムに設定
  hueColor = int(random(360));
  // 背景色を設定
  bgColor = color(hueColor, 80, 15);
  // 点を生成
  points = new Point[numPoints];
  for(int i = 0; i < numPoints; i++){
    points[i] = new Point();
  }
}

void draw(){
  background(bgColor);
  translate(width/2, height/2, 0);
  
  // 全ての点に対して、他の全ての点との距離を計算し
  // lengthLimit以下である点同士で多角形を作る
  for(int i = 0; i < points.length; i++){
    Point fromP = points[i];
    // 近くの点を格納するArrayList
    ArrayList<Point> nearPs = new ArrayList<Point>();
    for(int j = 0; j < points.length; j++){
      Point toP = points[j];
      // fromPとtoPの距離を計算
      float dist = dist(fromP.x, fromP.y, fromP.z, toP.x, toP.y, toP.z);
      // lengthLimit以下ならnearPsに追加
      if(dist < lengthLimit){
        nearPs.add(toP);
      }
    }
    // 多角形を描画
    strokeWeight(0.5);
    stroke(200, 50);
    fill(fromP.col);
    beginShape();
    for(Point p : nearPs){
      vertex(p.x, p.y, p.z);
    }
    endShape(CLOSE);
  }
  
  if(save){
    saveFrame("img/img-"+(int)random(10000)+".jpg");
    save = false;
  }
}

// 左クリックでresetして再描画
// 右クリックで画像保存
void mousePressed(){
  if(mouseButton == LEFT){
    reset();
    redraw();
  }
  else if(mouseButton == RIGHT){
    save = true;
    redraw();
  }
}

// Pointクラス
class Point{
  float x, y, z; // 座標
  float radius;  // 半径
  color col;     // 色
  
  Point(){
    // 球体上の座標を計算
    // 球体のつむじ側に点を少なく
    // 球体のお腹側に点を多く配置するようにする
    float s = 0;
    int r = (int)random(7);
    // 下側のつむじ
    if(r == 0)           s = random(0, QUARTER_PI);
    // お腹周り
    if(r >= 1 && r <= 5) s = random(QUARTER_PI, 3*QUARTER_PI);
    // 上側のつむじ
    if(r == 6)           s = random(3*QUARTER_PI, PI);
    float t = random(TWO_PI);
    radius = random(200, 500);
    x = radius * sin(s) * cos(t);
    y = radius * cos(s);
    z = radius * sin(s) * sin(t);
    // hueColorをベースにランダムな色を設定
    col = color(hueColor+random(60), random(100), random(40));
  }
}