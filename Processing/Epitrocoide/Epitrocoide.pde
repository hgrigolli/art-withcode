void setup(){
  size(600,600);
  background(150);
  colorMode(HSB);

}

float angle = 0;
float R = 45;
float d = 40;
float r = 40;
float c = 0;

void draw() {
  if((int(angle)%5) == 0){
    if(c > 255){
      c = 0;
    }else{
      c++;
    }
  }
  stroke(c,255,255);
  fill(c,255,255);
  ellipse(300 + (R+r)*cos(angle) - d*cos((R+r)/r*angle),300 + (R+r)*sin(angle) - d*sin((R+r)/r*angle) , 3, 3);
  angle = angle + 0.025;
  println("angle = ", (int(angle)%5));
  println("C = ", c);
}