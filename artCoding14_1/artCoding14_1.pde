float x1, y1; 
float x2, y2; 

void setup() {
  size(600, 600);
  x1 = 0; 
  y1 = 150;
  x2 = 300; 
  y2 = 0;
}

void draw() {
  background(200, 230, 255); 
  bear(x1, y1, 10); 
  bear(x2, y2, 12); 
  x1 += 3; 
  if (x1 > width + 100) {
    x1 = -100; 
  }
  y2 += 2; 
  if (y2 > height + 100) {
    y2 = -100; 
  }
}
void bear(float x, float y, float d) {
  stroke(0);
  strokeWeight(d/4);

  // face
  fill(80, 30, 0); 
  circle(x, y, 10 * d);

  // ears
  circle(x - 5 * d, y - 3 * d, 3 * d); 
  circle(x + 5 * d, y - 3 * d, 3 * d); 

  // glasses1
  fill(255); 
  circle(x - 2 * d, y - d, 3 * d);
  circle(x + 2 * d, y - d, 3 * d);

  // glasses2
  line(x - d, y - d, x + d, y - d);
  
  // pupil
  fill(0); 
  circle(x - 2 * d, y - d, 1 * d);
  circle(x + 2 * d, y - d, 1 * d);

  // mouth
  fill(255, 0, 0);
  arc(x, y + 2 * d, 4 * d, 2 * d, 0, PI);
}
