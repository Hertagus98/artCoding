float x1, y1;
float x2, y2;

void setup(){
  size(600, 600);
  x1 = 0;   y1 = 300;
  x2 = 300; y2 = 0;
}

void draw(){
  background(100, 160, 0);
  
  model(x1, y1, 5); 
  x1 = x1 + 2;
  if(x1 > width) x1 = 0;
  
  model(x2, y2, 10);
  y2 = y2 + 4;
  if(y2 > height) y2 = 0; 
}

void model(float x, float y, float z) {
  fill(0,150,250); 
  circle(x,y,z*20); //outer face
  fill(255,255,255);
  circle(x,y+z*3,z*14); //inner face
  circle(x-z*3,y-z*5,z*4); //right eye
  circle(x+z*3,y-z*5,z*4); //left eye
  fill(0,0,0);
  circle(x-z*3,y-z*5,z*2); //right pupil
  circle(x+z*3,y-z*5,z*2); //left pupil
  fill(250,0,0);
  circle(x,y-z*2,z*4); //nose
  arc(x,y+z*3,z*10,z*10,0,PI); //mouth
  line(x-z*2, y, x-z*8, y-z*2); // right mustache 1
  line(x-z*2, y+z, x-z*8, y+z); // right mustache 2
  line(x-z*2, y+z*2, x-z*8, y+z*4); //right mustache 3
  line(x+z*2, y, x+z*8, y-z*2); // left mustache 1
  line(x+z*2, y+z, x+z*8, y+z); // left mustache 2
  line(x+z*2, y+z*2, x+z*8, y+z*4); // left mustache 3
}
