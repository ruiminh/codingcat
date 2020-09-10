//3.a a Draw a traffic light using colors stored in variables - one for each of the 4 colors (background is the 4th).

void setup(){
size(200,400);
stroke (0);
strokeWeight(5);
fill(255);
rect(10,10,40,110);
}
void draw(){
  stroke (0);
  fill (255,0,0);
  strokeWeight(1);
  
  ellipse (30,30,30,30);
  stroke (0);
  fill (255,255,0);
  strokeWeight(1);
  ellipse (30,65,30,30);
  
  stroke (0);
  fill (0,255,0);
  strokeWeight(1);
  ellipse (30,100,30,30);
}
//3.b add a gray color for the turned off effect
int colorG=155;
//3.c have the light turn on/off (green or red) by pressing keys on the keyboard.
