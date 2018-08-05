int deg=0;
void setup(){
  size(400,300);
  strokeWeight(10);
}

void draw(){
 background(200,200,200);
  
//赤い線を書く処理
 stroke(255,0,0);
 pushMatrix();  //通常の座標を保存
 translate(width/4,height/2);  //座標変換処理。赤い線の中心を原点にする
 rotate(deg*PI/180);  //座標回転処理。上記で変換した原点を中心に、座標を回転する
 line(0,0,width,0);  //座標を回転した状態で線をかく
 popMatrix();  //通常の座標に戻す

//緑の線を書く処理
 stroke(0,255,0);
 pushMatrix();  //通常の座標を保存
 translate(3*width/4,height/2);  //座標変換処理。緑の線の中心を原点にする
 rotate(deg*PI/180);  //座標回転処理。上記で変換した原点を中心に、座標を回転する
 line(0,0,width,0);//座標を回転した状態で線をかく
 popMatrix();  //通常の座標に戻す

 deg++;
}
