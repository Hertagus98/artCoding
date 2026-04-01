float x1, y1 ;
float x2, y2 ;
void setup(){
  size(600,600);
  x1 = 200; y1 = 150;
  x2 = 400; y2 = 150;
}
void draw(){
  background(0,255,255);
  YB(x1,y1,10);
  x1 = x1 + 2;
  if(x1>width) x1=0;
  YB(x2,y2,2);
  y2 = y2 + 4;
  if(y2>height) y2=0; 
}

void YB(float x, float y,float d){ 
  fill(255,255,0);
  circle(x-3*d,y-5*d,d*2); //left ear
  circle(x+3*d,y-5*d,d*2); //right ear
  fill(0);
  circle(x-3*d,y-5*d,d*1); //left ear
  circle(x+3*d,y-5*d,d*1); //right ear
  fill(255,255,0);
  circle(x,y,d*10); //face
  fill(255);
  circle(x-2*d,y-1.5*d,d*2); //left eye
  circle(x+2*d,y-1.5*d,d*2); //right eye
  fill(0);
  circle(x-2*d,y-2*d,d*0.8); //left pupil
  circle(x+2*d,y-2*d,d*0.8); //right pupil
  fill(200,0,0);
  circle(x,y,d*1); //nose
  fill(255,100,0);
  arc(x,y+2*d,5*d,2*d,0,PI); //mouse
}
