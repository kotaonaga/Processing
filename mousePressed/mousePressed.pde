void setup(){
    size(800, 800);
    strokeWeight(20);
    colorMode(RGB,256);
    fill(0,0,255);
}

void draw(){
    if(mousePressed == true){
       ellipse(mouseX, mouseY, pmouseY, pmouseY);
    }else{
      line(mouseX, mouseY, pmouseY, pmouseY);
    }
}

void mouseReleased(){
    background(204);
}