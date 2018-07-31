void setup(){
    size(600, 600);
    noLoop();
}

void draw() {
    for (int i = 0; i < 250; i++) {
        float p1, p2, p3, p4;
        p1 = random(width);
        p2 = random(height);
        p3 = random(width);
        p4 = random(height);
        strokeWeight(random(1, 7));
        stroke(random(0, 255), random(0, 255), random(0, 255));
        line(p1, p2, p3, p4);
    }
    for (int i = 0; i < 100; i++) {
      float pd1, pd2;
      pd1 = random(width);
      pd2 = random(height);
      strokeWeight(random(5, 7));
      stroke(random(0, 255), random(0, 255), random(0, 255));
      point(pd1, pd2);
    }
}
