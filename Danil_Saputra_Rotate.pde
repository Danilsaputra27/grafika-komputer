void setup() {
  size(400, 400);
}

void draw() {
  background(220);
  translate(width/2, height/2);  
  rotate(radians(frameCount));
  fill(0,50,50);
  rect(50, 50,50, 50);  
  rectMode(CENTER);
  fill(255,35,255);
  triangle(-100, 0, -50, -100, 0, 0); 
  fill(50,0,200);
  ellipse(100,100, 50, 50);
}
