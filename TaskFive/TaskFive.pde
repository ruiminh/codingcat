int cols=8;
int rows=8;

void setup(){
   size(240,240);
  
}


void draw(){
background(255);
for(int i=0;i<cols;i++){
  for(int j=0;j<rows;j++){
    if(i%2==0 && j%2==0 || (i%2==1 && j%2==1)){
    fill(0);
    rect(i*30,j*30,30,30);
    }
    noFill();
    stroke(0);
    rect(i*30,j*30,30,30);
  }
}
}
