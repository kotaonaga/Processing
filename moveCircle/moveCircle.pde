int _num = 10;
Circle[] _circleArr = {};   

void setup() {
  size(900,700); 
  background(255);
  smooth();
  strokeWeight(1);
  fill(150, 50);
  drawCircles();
}

void draw() {
  background(250);
  for (int i=0; i<_circleArr.length; i++) {
    Circle thisCirc = _circleArr[i];
    thisCirc.updateMe();
  }
}

void mouseReleased() {
  drawCircles();
}

void drawCircles() {
  for (int i=0; i<_num; i++) { 
    Circle thisCirc = new Circle();
    thisCirc.drawMe();
    _circleArr = (Circle[])append(_circleArr, thisCirc);
  }
}


//================================= objects

class Circle {

  // properties
  float x, y;
  float radius; 
  color linecol, fillcol; 
  float alph;
  float xmove, ymove;
  
  // constructor
  Circle () {
    x = random(width);
    y = random(height);
    radius = random(100) + 10; 
    linecol = color(random(255), random(255), random(255));
    fillcol = color(random(255), random(255), random(255));
    alph = random(255);
    xmove = random(10) - 5;   
    ymove = random(10) - 5;  
  }
  
  // method - render me to screen
  void drawMe() { 
    noStroke(); 
    fill(fillcol, alph);
    ellipse(x, y, radius*2, radius*2);
    stroke(linecol, 150);
    noFill();
  }
  
  // method - called on the frameloop
  void updateMe() {
    x += xmove;  
    y += ymove;  
    if (x > (width+radius)) { x = 0 - radius; }  
    if (x < (0-radius)) { x = width+radius; }  
    if (y > (height+radius)) { y = 0 - radius; }
    if (y < (0-radius)) { y = height+radius; }  
    drawMe();  
    circleController();
  }
  
 
  void circleController(){
    if (keyPressed) {
    if (key == 'r') {
      x = width*0.7;
      y = height*0.7;
    }else if(key == 'l'){
      x = width/3;
      y = height/3;
    }else if(key == 'd'){
      x = width/3;
      y = height*0.7;
    }else if(key == 'u'){
      x = width/3;
      y = height*0.7;
    }else if (key == 'c') {
      x = width/2;
      y = height/2;
    }else if(key == 'z'){
      x = width/4;
      y = height/4;
    }else if(key == 't'){
      x = width/3;
      y = height/3;
    }else if(key == 'x'){
      x = width / random(10);
      y = height / random(10);
    }
  } 
}


  
 
 
}