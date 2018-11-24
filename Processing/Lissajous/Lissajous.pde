void setup(){
  size(600,600);
  background(60, 162, 232);
  colorMode(HSB);

}

float t = 0;
float a = 1;
float c = 2;
float k = 0;
float r;

void draw() {
  if(mousePressed){
    background(#3CA2E8);
    a = a + 1;
    c = c + 1;
  }
  if(r > 255){
    r = 0;
  }else{
    r++;
  }    
  stroke(r, 255, 255);
  fill(r, 255, 255);
  ellipse(300 + 150*sin(a*t/2 + PI/2), 300 + 150*sin(c*t/2), 10, 10);
  t = t + .025;
}